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
#content = [x.strip() for x in content]
#content = ["{0}/{1}".format(file_basename, x) for x in content]

    with open('{}.txt'.format(file_basename), 'w') as txt:
#txt.write(output_str)
        txt.write(res)


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


#OPT = "-licm -gvn -early-cse -globalopt -mem2reg -inline -simplifycfg -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -instcombine"
#OPT="-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg"
#OPT="-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse"
OPT="-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse -gvn -basicaa -aa -memdep -dse -memcpyopt"
def createParentMakefile(functions):

    allFuncNames = ""
    for func in functions:
        allFuncNames = allFuncNames + " " + func[0]
    makeFile = open("Makefile", 'w')
    makeFile.write(".PHONY: binary objdump mcsema " + allFuncNames + "\n\n")

    makeFile.write("ifndef BIN_OPT" + "\n")
    makeFile.write("  BIN_OPT=O0" + "\n")
    makeFile.write("  INDIR=binary/" + "\n")
    makeFile.write("else" + "\n")
    makeFile.write("  ifeq (${BIN_OPT},O0)" + "\n")
    makeFile.write("    INDIR=binary/" + "\n")
    makeFile.write("  else" + "\n")
    makeFile.write("    INDIR=binary_${BIN_OPT}/" + "\n")
    makeFile.write("  endif" + "\n")
    makeFile.write("endif" + "\n")
    makeFile.write("\n\n")

    makeFile.write("all: binary objdump mcsema " + allFuncNames + "\n")
    makeFile.write("compd:" + allFuncNames + "\n")
    makeFile.write("compd_opt:" + allFuncNames + "\n")
    makeFile.write("match:" + allFuncNames + "\n\n")
    makeFile.write("imatch:" + allFuncNames + "\n\n")

    makeFile.write("binary:" + "\n")
    makeFile.write("	mkdir -p ${INDIR}" + "\n")
    makeFile.write("	/usr/bin/clang-6.0 -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test" + "\n\n")

    makeFile.write("reloc_binary:" + "\n")
    makeFile.write("	/usr/bin/clang-6.0 -Wl,-emit-relocs -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test.reloc" + "\n\n")

    makeFile.write("objdump:" + "\n")
    makeFile.write("	objdump -d ${INDIR}test > ${INDIR}/test.objdump" + "\n\n")

    makeFile.write("mcsema:" + "\n")
    makeFile.write("	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main" + "\n")
    makeFile.write("	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer" + "\n")
    makeFile.write("	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll" + "\n")
    makeFile.write("	../../../scripts/remove_definitions.pl --file ${INDIR}test.mcsema.ll --out ${INDIR}test.mcsema.calls_renamed.ll" + "\n")
    makeFile.write("	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll" + "\n");
    makeFile.write("\n\n")

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
    makeFile.write("PROG=" + funcName + "\n\n")

    makeFile.write("REPO=" + "${HOME}/Github/" + "\n")
    makeFile.write("ifdef REPO_PATH" + "\n")
    makeFile.write("  REPO=${REPO_PATH}" + "\n")
    makeFile.write("endif" + "\n")
    makeFile.write("\n\n")

    makeFile.write(
        "ARTIFACTDIR=${REPO}/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/" + "\n")
    makeFile.write("ifdef COMPD_CACHE" + "\n")
    makeFile.write("  ARTIFACTDIR=${COMPD_CACHE}" + "\n")
    makeFile.write("endif" + "\n")
    makeFile.write("\n\n")

    makeFile.write(
        "TOOLDIR=${REPO}/validating-binary-decompilation/source/build/bin/" + "\n")
    makeFile.write(
        "SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/" + "\n")
#makeFile.write("INDIR=../binary/" + "\n")

    makeFile.write("ifndef BIN_OPT" + "\n")
    makeFile.write("  BIN_OPT=O0" + "\n")
    makeFile.write("  INDIR=../binary/" + "\n")
    makeFile.write("  OUTDIR=mcsema/" + "\n")
    makeFile.write("else" + "\n")
    makeFile.write("  ifeq (${BIN_OPT},O0)" + "\n")
    makeFile.write("    INDIR=../binary/" + "\n")
    makeFile.write("    OUTDIR=mcsema/" + "\n")
    makeFile.write("  else" + "\n")
    makeFile.write("    INDIR=../binary_${BIN_OPT}/" + "\n")
    makeFile.write("    OUTDIR=mcsema_${BIN_OPT}/" + "\n")
    makeFile.write("  endif" + "\n")
    makeFile.write("endif" + "\n")
    makeFile.write("\n\n")

    makeFile.write(
        ".PHONY: clean compd compd_opt mcsema_opt match extract aainfo lltodot" +
        "\n\n")

    makeFile.write("all: compd compd_opt mcsema_opt match")
    makeFile.write("" + "\n\n")


    makeFile.write("compd: ${INDIR}test" + "\n")
    makeFile.write(
        "	mkdir -p ${OUTDIR}" + "\n")
    makeFile.write(
        "	-time ${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test.reloc --use-reloc-info 1>${OUTDIR}compd.log 2>&1" + "\n")
    makeFile.write(
        "	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR} --compd" + "\n")
    makeFile.write(
        "	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll" + "\n")
    makeFile.write("" + "\n\n")


    makeFile.write(
        "compd_opt: ${OUTDIR}test.proposed.ll" +
        "\n")
    makeFile.write(
        "	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --prog ${PROG} --compd_opt" + "\n")
    makeFile.write("" + "\n\n")


    makeFile.write("mcsema_opt:" + "\n")
    makeFile.write("	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --indir ${INDIR} --prog ${PROG} --mcsema_opt" + "\n");
    makeFile.write("\n\n")


    makeFile.write(
        "match:" +
        "\n")
    makeFile.write(
        "	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --match")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "imatch:" +
        "\n")
    makeFile.write(
        "	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --imatch")
    makeFile.write("" + "\n\n")


    makeFile.write(
        "lltodot: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll" +
        "\n")
    makeFile.write(
        "	-time ${TOOLDIR}/lltodot --llir_file ${INDIR}test.mcsema.opt.ll:${PROG} --outfile mcsema/test.mcsema.opt.dot" + "\n")
    makeFile.write(
        "	-dot -Tpdf mcsema/test.mcsema.opt.dot -O " + "\n")
    makeFile.write(
        "	-time ${TOOLDIR}/lltodot --llir_file ${OUTDIR}test.proposed.opt.ll:${PROG} --outfile mcsema/test.proposed.opt.dot" + "\n")
    makeFile.write(
        "	-dot -Tpdf mcsema/test.proposed.opt.dot -O " + "\n")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "tuner: ${OUTDIR}test.proposed.ll ${INDIR}test.mcsema.ll" +
        "\n")
    makeFile.write(
        "	-time ${SCRIPTDIR}/opentuner/examples/normalizer/normalizer_tuner.py --func ${PROG} --outdir ${OUTDIR} --matcher ${TOOLDIR}matcher --no-dups --test-limit=1000 --parallel-compile 1>${OUTDIR}tuner.log 2>&1" + "\n")
    makeFile.write(
        "	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR}  --tuner")
#makeFile.write(
#        "	python -m json.tool normalizer_final_config.json")
    makeFile.write("" + "\n\n")


    makeFile.write(
        "extract:${INDIR}test.mcsema.opt.ll" +
        "\n")
    makeFile.write(
    	"	llvm-extract -S  -rfunc=\"sub_.*_${PROG}\" ${INDIR}test.mcsema.opt.ll -o ${OUTDIR}test.mcsema.opt.extract.ll" + "\n")
    makeFile.write("" + "\n\n")


    makeFile.write(
        "aainfo:${OUTDIR}test.mcsema.opt.extract.ll ${OUTDIR}test.proposed.opt.ll" + 
        "\n")
    makeFile.write(
    	"	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.proposed.opt.ll -disable-output  1>${OUTDIR}test.proposed.aa 2>&1" + "\n")
    makeFile.write(
    	"	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.proposed.aa" + "\n")
    makeFile.write(
    	"	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.mcsema.opt.extract.ll -disable-output  1>${OUTDIR}test.mcsema.aa 2>&1" + "\n")
    makeFile.write(
    	"	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.mcsema.aa" + "\n")
    makeFile.write(
        "	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --aainfo ${OUTDIR}test.mcsema.aa.pruned ${OUTDIR}test.proposed.aa.pruned")
    makeFile.write("" + "\n\n")

    makeFile.write(
        "llstat:${OUTDIR}test.proposed.inline.ll" +
        "\n")
    makeFile.write(
        "	@sed -n '/define.*${PROG}/,/}/p' ${OUTDIR}test.proposed.inline.ll 1>${OUTDIR}test.proposed.inline.ll.tmp 2>&1" + ";"
        "	echo -n \"size: \"; wc -l < ${OUTDIR}test.proposed.inline.ll.tmp ; echo -n \"blocks: \"; grep block ${OUTDIR}test.proposed.inline.ll.tmp | wc -l " +
        "\n")
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
    if not os.path.isdir("src"):
        os.mkdir("src")
    os.chdir("src")
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
