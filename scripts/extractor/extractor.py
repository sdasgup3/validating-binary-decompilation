#!/usr/bin/python
# A tool that uses the provided LLVM Pass (libfuncPass.so) to pick out functions from binaries
# and extract specific functions from them for testing

import os, sys
import argparse
import subprocess
import pprint
import json

help_str = """
This programs uses the libfuncPass to extract individual functions from LLVM IR files.
Please have llvm-extract-6.0, llvm-dis-6.0, and opt-6.0 installed and in your PATH.
"""

parser = argparse.ArgumentParser(help_str)
parser.add_argument("inputFile", type=str, help="Path to input LLVM Bitcode or IR file")
parser.add_argument("-P", "--passLocation", default=os.path.join(os.path.dirname(os.path.abspath(__file__)), "func", "build", "func", "libfuncPass.so"), 
                    type=str, help="Path to input libFuncPass.so LLVM pass")
parser.add_argument("-O", "--outputDirectory", default=os.path.join(os.getcwd(), "..", "..", "tests"), type=str, help="Path to output directory for extracted LLVM function")


# Runs the pass on the input file, outputs a 2D array with each element being the
# function name, number of instructions, and whether the function is valid or not
def runPass(inputFile, passLocation):
    command = ["opt-6.0", "-load", passLocation, "-disable-output", "-func", inputFile]
    output_str = subprocess.check_output(command).decode("utf-8")[0:-1]
    formatting = output_str.split("\n")
    output_split = []
    for i in range(0, len(formatting)):
        output_split.append(formatting[i].split(", "))
        output_split[i][0] = str(output_split[i][0])
        output_split[i][1] = int(output_split[i][1])
        output_split[i][2] = True if output_split[i][2] == "True" else False
        output_split[i][3] = True if output_split[i][3] == "True" else False
    return output_split, output_str

def writeJSON(functions, file_basename):
    toWrite = dict(zip([func[0] for func in functions], [dict(zip(["function_name", "num_inst", "has_float", "has_vector"], func)) for func in functions])) 
    with open('{}.json'.format(file_basename), 'w') as js:
        json.dump(toWrite, js, indent=2)

def writeTXT(output_str, file_basename):
    with open('{}.txt'.format(file_basename), 'w') as txt:
        txt.write(output_str)

def runLLVMExtract(inputFile, func_name, num_inst):
    command1 = ['llvm-extract-6.0', '-func={}'.format(func_name), "-rglob=.*", inputFile, "-o", "{}.bc".format(func_name, num_inst)]
    command2 = ['llvm-dis-6.0', '{}.bc'.format(func_name, num_inst), '-o', '{}.ll'.format(func_name, num_inst)]
    ret = True
    if subprocess.check_output(command1) != b'':
        ret = False
    if subprocess.check_output(command2) != b'':
        ret = False
    return ret


def main():
    args = parser.parse_args()
    inputFile = os.path.abspath(args.inputFile)
    passLocation = os.path.abspath(args.passLocation)
    outputDirectory = os.path.join(os.path.abspath(args.outputDirectory), os.path.basename(args.inputFile[0:-3]))

    # check if pass file and input file exists and are of right type
    if not os.path.isfile(os.path.abspath(inputFile)):
        sys.exit("inputFile: {} does not exist or cannot be accessed.".format(inputFile))
    if(inputFile[-3:] != ".ll" and inputFile[-3:] != ".bc"):
        sys.exit("LLVM Bitcode file not passed as input file.")
    if not os.path.isfile(os.path.abspath(passLocation)):
        sys.exit("libfuncPass.so cannot be found.")

    # make output directory if it does not exist
    if not os.path.isdir(os.path.abspath(outputDirectory)):
        os.makedirs(outputDirectory)
    os.chdir(outputDirectory)

    # run pass
    functions, summary_str = runPass(inputFile, passLocation)

    # write JSON and TXT summary
    writeJSON(functions, os.path.basename(args.inputFile[0:-3]))
    writeTXT(summary_str, os.path.basename(args.inputFile[0:-3]))

    # run llvm-extract for only those functions that do not have floating point types/vector operations
    for func in functions:
        if not os.path.isdir(func[0]):
            os.mkdir(func[0])
        os.chdir(func[0])

        if not os.path.isdir("binary"):
            os.mkdir("binary")
        if not os.path.isdir("mcsema"):
            os.mkdir("mcsema")
        os.chdir("binary")

        if not runLLVMExtract(inputFile, func[0], func[1]):
            print("llvm-extract failed to run for function {}".format(func[0]))
        os.chdir(os.path.join(os.getcwd(), "..", ".."))

if __name__ == '__main__':
    main()
