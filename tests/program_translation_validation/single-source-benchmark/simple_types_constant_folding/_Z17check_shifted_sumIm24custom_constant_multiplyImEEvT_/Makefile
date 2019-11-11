PROG=_Z17check_shifted_sumIm24custom_constant_multiplyImEEvT_
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=../binary/
OUTDIR=mcsema/

.PHONY: clean compd compd_opt match

all: compd compd_opt match

compd: ${INDIR}test
	time ${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test.reloc --use-reloc-info 1>compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd

compd_opt: ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll


match: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll
	time ${TOOLDIR}/matcher --file1 ${INDIR}test.mcsema.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>match_mcsema_proposed.log 2>&1
	time ${TOOLDIR}/matcher --file1 ${OUTDIR}test.proposed.opt.ll:${PROG} --file2 ${INDIR}test.mcsema.opt.ll:${PROG}  1>match_proposed_mcsema.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

clean:
	rm mcsema/*.bc mcsema/*.ll

