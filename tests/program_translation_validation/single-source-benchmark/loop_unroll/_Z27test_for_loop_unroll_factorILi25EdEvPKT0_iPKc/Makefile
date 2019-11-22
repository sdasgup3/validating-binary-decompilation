PROG=_Z27test_for_loop_unroll_factorILi25EdEvPKT0_iPKc
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=../binary/
OUTDIR=mcsema/

.PHONY: clean compd compd_opt match extract aainfo

all: compd compd_opt match

compd: ${INDIR}test
	mkdir -p mcsema
	time ${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test.reloc --use-reloc-info 1>compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --compd

compd_opt: ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S  -O3    ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll


match: ${OUTDIR}test.proposed.ll ${INDIR}test.mcsema.ll
	PYTHONPATH=/home/ubuntu/Github/llir-matcher:${PYTHONPATH} python3 -m matcher.match --config /home/ubuntu/Github/llir-matcher/config.yaml --max-iter 64 ${OUTDIR}test.proposed.ll:${PROG} ${INDIR}test.mcsema.calls_renamed.ll:${PROG}  1>match.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --match

extract:${INDIR}test.mcsema.opt.ll
	llvm-extract -S  -rfunc="sub_.*_${PROG}" ${INDIR}test.mcsema.opt.ll -o ${OUTDIR}test.mcsema.opt.extract.ll


aainfo:${OUTDIR}test.mcsema.opt.extract.ll ${OUTDIR}test.proposed.opt.ll
	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.proposed.opt.ll -disable-output  1>${OUTDIR}test.proposed.aa 2>&1
	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.proposed.aa
	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.mcsema.opt.extract.ll -disable-output  1>${OUTDIR}test.mcsema.aa 2>&1
	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.mcsema.aa
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --aainfo ${OUTDIR}test.mcsema.aa.pruned ${OUTDIR}test.proposed.aa.pruned



clean:
	rm mcsema/*.bc mcsema/*.ll

