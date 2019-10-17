PROG=_Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=../binary/
OUTDIR=mcsema/

.PHONY: clean compd compd_opt match

all: compd compd_opt match

compd: ${INDIR}test
	${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test 1>compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd

compd_opt: ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll


match: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll
	${TOOLDIR}/matcher --file1 ${INDIR}test.mcsema.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>match.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

clean:
	rm mcsema/*.bc mcsema/*.ll

