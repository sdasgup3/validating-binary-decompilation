PROG=_Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=../binary/
OUTDIR=mcsema/

.PHONY: clean

all: binary compd opt match

binary: ${INDIR}test
objdump: ${INDIR}/test.objdump
compd: ${OUTDIR}test.proposed.ll
opt: ${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll

${INDIR}test: ${INDIR}test.ll
	clang -O0 -lm ${INDIR}test.ll -o ${INDIR}test

${INDIR}/test.objdump: ${INDIR}test
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

${OUTDIR}test.proposed.ll: ${INDIR}test
	${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test 1>compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd

${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.mcsema.opt.ll: ${INDIR}test.mcsema.ll ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${OUTDIR}test.inline.ll;  opt -S  -O3    ${OUTDIR}test.inline.ll -o ${OUTDIR}test.opt.ll

match: ${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll
	${TOOLDIR}/matcher --file1 ${OUTDIR}test.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>match.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

clean:
	rm mcsema/*.bc mcsema/*.ll mcsema/*.cfg

