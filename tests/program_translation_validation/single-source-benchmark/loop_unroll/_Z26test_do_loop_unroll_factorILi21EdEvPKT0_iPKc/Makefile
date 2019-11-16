PROG=_Z26test_do_loop_unroll_factorILi21EdEvPKT0_iPKc
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


match: ${OUTDIR}test.proposed.ll ${INDIR}test.mcsema.ll
	PYTHONPATH=/home/ubuntu/Github/llir-matcher:${PYTHONPATH} python3 -m matcher.match --config /home/ubuntu/Github/llir-matcher/config.yaml --max-iter 64 ${OUTDIR}test.proposed.ll:${PROG} ${INDIR}test.mcsema.calls_renamed.ll:${PROG} 1>match.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

clean:
	rm mcsema/*.bc mcsema/*.ll

