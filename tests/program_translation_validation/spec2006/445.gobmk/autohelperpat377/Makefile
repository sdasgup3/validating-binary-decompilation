PROG=autohelperpat377

REPO=${HOME}/Github/
ifdef REPO_PATH
  REPO=${REPO_PATH}
endif


ARTIFACTDIR=${REPO}/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
ifdef COMPD_CACHE
  ARTIFACTDIR=${COMPD_CACHE}
endif


TOOLDIR=${REPO}/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
ifndef BIN_OPT
  BIN_OPT=O0
  INDIR=../binary/
  OUTDIR=mcsema/
else
  ifeq (${BIN_OPT},O0)
    INDIR=../binary/
    OUTDIR=mcsema/
  else
    INDIR=../binary_${BIN_OPT}/
    OUTDIR=mcsema_${BIN_OPT}/
  endif
endif


.PHONY: clean compd compd_opt mcsema_opt match extract aainfo lltodot

all: compd compd_opt mcsema_opt match

compd: ${INDIR}test
	mkdir -p ${OUTDIR}
	-time ${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test.reloc --use-reloc-info 1>${OUTDIR}compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR} --compd
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll


compd_opt: ${OUTDIR}test.proposed.ll
	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --prog ${PROG} --compd_opt


mcsema_opt:
	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --indir ${INDIR} --prog ${PROG} --mcsema_opt


match:
	@${SCRIPTDIR}//matcher_driver.sh  --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --match

lltodot: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll
	-time ${TOOLDIR}/lltodot --llir_file ${INDIR}test.mcsema.opt.ll:${PROG} --outfile mcsema/test.mcsema.opt.dot
	-dot -Tpdf mcsema/test.mcsema.opt.dot -O 
	-time ${TOOLDIR}/lltodot --llir_file ${OUTDIR}test.proposed.opt.ll:${PROG} --outfile mcsema/test.proposed.opt.dot
	-dot -Tpdf mcsema/test.proposed.opt.dot -O 


tuner: ${OUTDIR}test.proposed.ll ${INDIR}test.mcsema.ll
	-time ${SCRIPTDIR}/opentuner/examples/normalizer/normalizer_tuner.py --func ${PROG} --outdir ${OUTDIR} --matcher ${TOOLDIR}matcher --no-dups --test-limit=1000 --parallel-compile 1>${OUTDIR}tuner.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR}  --tuner

extract:${INDIR}test.mcsema.opt.ll
	llvm-extract -S  -rfunc="sub_.*_${PROG}" ${INDIR}test.mcsema.opt.ll -o ${OUTDIR}test.mcsema.opt.extract.ll


aainfo:${OUTDIR}test.mcsema.opt.extract.ll ${OUTDIR}test.proposed.opt.ll
	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.proposed.opt.ll -disable-output  1>${OUTDIR}test.proposed.aa 2>&1
	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.proposed.aa
	opt -cfl-anders-aa  -aa-eval -print-all-alias-modref-info  mcsema/test.mcsema.opt.extract.ll -disable-output  1>${OUTDIR}test.mcsema.aa 2>&1
	${SCRIPTDIR}/check_mem_edges.pl --file ${OUTDIR}test.mcsema.aa
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --aainfo ${OUTDIR}test.mcsema.aa.pruned ${OUTDIR}test.proposed.aa.pruned

llstat:${OUTDIR}test.proposed.inline.ll
	@sed -n '/define.*${PROG}/,/}/p' ${OUTDIR}test.proposed.inline.ll 1>${OUTDIR}test.proposed.inline.ll.tmp 2>&1;	echo -n "size: "; wc -l < ${OUTDIR}test.proposed.inline.ll.tmp ; echo -n "blocks: "; grep block ${OUTDIR}test.proposed.inline.ll.tmp | wc -l 


clean:
	rm mcsema/*.bc mcsema/*.ll

