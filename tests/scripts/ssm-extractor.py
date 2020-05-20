#!/usr/bin/python
# A tool that uses the provided LLVM Pass (libfuncPass.so) to pick out functions from binaries
# and extract specific functions from them for testing

import os
import sys
import argparse
import subprocess
import pprint
import json
import shutil

help_str = """
This programs uses the libfuncPass to extract individual functions from LLVM IR files.
Please have llvm-extract, llvm-dis, and opt installed and in your PATH.
"""

parser = argparse.ArgumentParser(help_str)
parser.add_argument(
    "inputFile",
    type=str,
    help="Path to input LLVM Bitcode or IR file")

parser.add_argument("-P", "--passLocation", default=os.path.join(os.path.dirname(os.path.abspath(__file__)), "func", "build", "func", "libfuncPass.so"),
                    type=str, help="Path to input libFuncPass.so LLVM pass")

parser.add_argument(
    "-O",
    "--outputDirectory",
    default=os.path.join(
        os.getcwd(),
        "..",
        "..",
        "tests"),
    type=str,
    help="Path to output directory for extracted LLVM function")


# Runs the pass on the input file, outputs a 2D array with each element being the
# function name, number of instructions, and whether the function is valid
# or not
def runPass(inputFile, passLocation):
    command = [
        "opt",
        "-load",
        passLocation,
        "-disable-output",
        "-func-analyze",
        inputFile]
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
    toWrite = dict(zip([func[0] for func in functions], [dict(zip(
        ["function_name", "num_inst", "has_float", "has_vector"], func)) for func in functions]))
    with open('{}.json'.format(file_basename), 'w') as js:
        json.dump(toWrite, js, indent=2)


def writeTXT(output_str, file_basename):
    content = output_str.splitlines()
    res = ""
    for x in content:
        res += "{0}/{1}\n".format(file_basename, x)

    with open('{}.txt'.format(file_basename), 'w') as txt:
        txt.write(res)


def runLLVMDis(inputFile):
    if(inputFile[-3:] == ".bc"):
        command1 = [
            'llvm-dis',
            inputFile,
            '-o',
            'test.ll']

    if(inputFile[-3:] == ".ll"):
        command1 = [
            'cp',
            inputFile,
            'test.ll']

    command2 = [
        'cp',
        inputFile,
        'test.bc']

    ret = True
    if subprocess.check_output(command1) != b'':
        ret = False
    if subprocess.check_output(command2) != b'':
        ret = False
    return ret


def createMakefile(funcName):

    makeFile = open("Makefile", 'w')
    makeFile.write("PROG=" + funcName + "\n\n")

    makeFile.write("REPO=" + "${HOME}/Github/" + "\n")
    makeFile.write("ifdef REPO_PATH" + "\n")
    makeFile.write("  REPO=${REPO_PATH}" + "\n")
    makeFile.write("endif" + "\n")
    makeFile.write("\n\n")

    makeFile.write(
        "TOOLDIR=${REPO}/validating-binary-decompilation/source/build/bin/" + "\n")
    makeFile.write(
        "SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/" + "\n")
    makeFile.write("INDIR=../src/" + "\n")
    makeFile.write("OUTDIR=output/" + "\n")
    makeFile.write("\n\n")

    makeFile.write(
        ".PHONY: clean imatch" +
        "\n\n")

    makeFile.write("all:  imatch")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "imatch:" +
        "\n")
    makeFile.write(
        "	@${SCRIPTDIR}//matcher_driver.sh --query ${INDIR}test.query.ll --target ${INDIR}test.target.ll --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --imatch")
    makeFile.write("" + "\n\n")

    makeFile.write("clean:" + "\n")
    makeFile.write("	rm output/*.bc output/*.ll" + "\n")
    makeFile.write("" + "\n")

    makeFile.close()


def main():
    args = parser.parse_args()
    inputFile = os.path.abspath(args.inputFile)
    passLocation = os.path.abspath(args.passLocation)
    outputDirectory = os.path.join(os.path.abspath(
        args.outputDirectory), os.path.basename(args.inputFile[0:-3]))

    # print(
    # "\n\tinputFile: {}\n\tpassLocation: {}\n\toutputDirectory: {}\n\n".format(
    # inputFile,
    # passLocation,
    # outputDirectory))

    # check if pass file and input file exists and are of right type
    if not os.path.isfile(os.path.abspath(inputFile)):
        sys.exit(
            "inputFile: {} does not exist or cannot be accessed.".format(inputFile))
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

    # Generate the src artifacts
    if not os.path.isdir("src"):
        os.mkdir("src")
    os.chdir("src")

    if not runLLVMDis(inputFile):
        print("llvm-dis failed to run for function {}".format(func[0]))
    os.chdir(os.path.join(os.getcwd(), ".."))

    # Generate programName/Makefile
    # createParentMakefile(functions)

    # run llvm-extract for only those functions that do not have floating
    # point types/vector operations
    for func in functions:
        if not os.path.isdir(func[0]):
            os.mkdir(func[0])
        os.chdir(func[0])

        if not os.path.isdir("output"):
            os.mkdir("output")

        # Create Makefile
        createMakefile(func[0])

        os.chdir(os.path.join(os.getcwd(), ".."))


if __name__ == '__main__':
    main()
