PROG=main
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=../binary/
OUTDIR=mcsema/

.PHONY: clean

all: binary mcsema compd opt match

binary: ${INDIR}test
objdump: ${INDIR}/test.objdump
mcsema: ${OUTDIR}test.ll
compd: ${OUTDIR}test.proposed.ll
opt: ${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll

${INDIR}test: ${INDIR}test.ll
	clang -O0 ${INDIR}test.ll -o ${INDIR}test

${INDIR}/test.objdump: ${INDIR}test
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

${OUTDIR}test.ll: ${INDIR}test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${OUTDIR}test.cfg --binary ${INDIR}test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg mcsema/test.cfg --output ${OUTDIR}test.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${OUTDIR}test.bc -o ${OUTDIR}test.ll

${OUTDIR}test.proposed.ll: ${INDIR}test
	${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test 1>compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd

${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll: ${OUTDIR}test.ll ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll
	opt -S  -inline   ${OUTDIR}test.ll -o ${OUTDIR}test.inline.ll;  opt -S  -O3    ${OUTDIR}test.inline.ll -o ${OUTDIR}test.opt.ll

match: ${OUTDIR}test.proposed.opt.ll ${OUTDIR}test.opt.ll
	${TOOLDIR}/matcher --file1 ${OUTDIR}test.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>match.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

clean:
	rm mcsema/*.bc mcsema/*.ll mcsema/*.cfg

