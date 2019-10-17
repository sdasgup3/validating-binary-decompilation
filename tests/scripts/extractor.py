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
    with open('{}.txt'.format(file_basename), 'w') as txt:
        txt.write(output_str)


def runLLVMDis(inputFile):
    command1 = [
        'llvm-dis',
        inputFile,
        '-o',
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


def runLLVMExtract(inputFile, func_name, num_inst):
    #command1 = ['llvm-extract', '-func={}'.format(func_name), "-rglob=.*", inputFile, "-o", "{}.bc".format(func_name, num_inst)]
    command1 = [
        'llvm-extract',
        '-S',
        '-func={}'.format(func_name),
        inputFile,
        "-o",
        "test.bc"]
#    command2 = [
#        'llvm-dis',
#        'test.bc',
#        '-o',
#        'test.ll']
    ret = True
    if subprocess.check_output(command1) != b'':
        ret = False
#    if subprocess.check_output(command2) != b'':
#        ret = False
    return ret


def createParentMakefile(functions):

    allFuncNames = ""
    for func in functions:
        allFuncNames = allFuncNames + " " + func[0]

    makeFile = open("Makefile", 'w')
    makeFile.write(".PHONY: binary objdump mcsema mcsema_opt " + allFuncNames + "\n")
    makeFile.write("INDIR=binary/")
    makeFile.write("\n\n")
    makeFile.write("all: binary objdump mcsema mcsema_opt " + allFuncNames + "\n")
    makeFile.write("compd:" + allFuncNames + "\n")
    makeFile.write("compd_opt:" + allFuncNames + "\n")
    makeFile.write("match:" + allFuncNames + "\n\n")

    makeFile.write("binary:" + "\n")
    makeFile.write("	clang -O0 -lm ${INDIR}test.ll -o ${INDIR}test" + "\n\n")
    makeFile.write("objdump:" + "\n")
    makeFile.write("	objdump -d ${INDIR}test > ${INDIR}/test.objdump" + "\n\n")
    makeFile.write("mcsema:" + "\n")
    makeFile.write("	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main" + "\n")
    makeFile.write("	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer" + "\n")
    makeFile.write("	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll" + "\n\n")
    makeFile.write("mcsema_opt:" + "\n")
    makeFile.write("	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll" + "\n\n");

    for func in functions:
        makeFile.write(func[0] + ":" + "\n")
        makeFile.write("	@echo" + "\n")
        makeFile.write("	${MAKE} -C " + func[0] + " $(MAKECMDGOALS)")
        makeFile.write("" + "\n")

    makeFile.write("clean:" + "\n")
    makeFile.write("	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump" + "\n")	

    makeFile.close()


def createMakefile(funcName):

    makeFile = open("Makefile", 'w')
    makeFile.write("PROG=" + funcName + "\n")
    makeFile.write(
        "TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/" + "\n")
    makeFile.write(
        "SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/" + "\n")
    makeFile.write(
        "ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/" + "\n")
    makeFile.write("INDIR=../binary/" + "\n")
    makeFile.write("OUTDIR=mcsema/" + "\n")
    makeFile.write("" + "\n")
    makeFile.write(
        ".PHONY: clean compd compd_opt match" +
        "\n\n")

    makeFile.write("all: compd compd_opt match")
    makeFile.write("" + "\n\n")

    makeFile.write("compd: ${INDIR}test" + "\n")
    makeFile.write(
        "	${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test 1>compd.log 2>&1" + "\n")
    makeFile.write(
        "	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "compd_opt: ${OUTDIR}test.proposed.ll" +
        "\n")
    makeFile.write(
        "	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll" + "\n")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "match: ${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll" +
        "\n")
    makeFile.write(
        "	${TOOLDIR}/matcher --file1 ${OUTDIR}test.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>match.log 2>&1" + "\n")
    makeFile.write(
        "	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match")
    makeFile.write("" + "\n\n")

    makeFile.write("clean:" + "\n")
    makeFile.write("	rm mcsema/*.bc mcsema/*.ll" + "\n")
    makeFile.write("" + "\n")

    makeFile.close()


def main():
    args = parser.parse_args()
    inputFile = os.path.abspath(args.inputFile)
    passLocation = os.path.abspath(args.passLocation)
    outputDirectory = os.path.join(os.path.abspath(
        args.outputDirectory), os.path.basename(args.inputFile[0:-3]))

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

    # Generate the binary artifacts
    if not os.path.isdir("binary"):
        os.mkdir("binary")
    os.chdir("binary")
    if not runLLVMDis(inputFile):
        print("llvm-extract failed to run for function {}".format(func[0]))
    os.chdir(os.path.join(os.getcwd(), ".."))

    # Generate programName/Makefile
    createParentMakefile(functions)

    # run llvm-extract for only those functions that do not have floating
    # point types/vector operations
    for func in functions:
        if not os.path.isdir(func[0]):
            os.mkdir(func[0])
        os.chdir(func[0])

        if not os.path.isdir("mcsema"):
            os.mkdir("mcsema")

        # Create Makefile
        createMakefile(func[0])

        os.chdir(os.path.join(os.getcwd(), ".."))


if __name__ == '__main__':
    main()
