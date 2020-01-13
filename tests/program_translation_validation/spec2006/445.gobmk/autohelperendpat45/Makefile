PROG=autohelperendpat45

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


NORM_PASS=-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse
ifdef NORM
  NORM_PASS=-${NORM}
endif


.PHONY: clean compd compd_opt match extract aainfo lltodot

all: compd compd_opt match

compd: ${INDIR}test
	mkdir -p ${OUTDIR}
	-time ${TOOLDIR}/decompiler  --output ${OUTDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test.reloc --use-reloc-info 1>${OUTDIR}compd.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR} --compd

compd_opt: ${OUTDIR}test.proposed.ll
	opt -S  -inline   ${OUTDIR}test.proposed.ll -o ${OUTDIR}test.proposed.inline.ll;  opt -S ${NORM_PASS} ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll


match: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll
	-time ${TOOLDIR}/matcher --file1 ${INDIR}test.mcsema.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} 1>${OUTDIR}match_mcsema_proposed.log 2>&1
	-time ${TOOLDIR}/matcher --file1 ${OUTDIR}test.proposed.opt.ll:${PROG} --file2 ${INDIR}test.mcsema.opt.ll:${PROG}  1>${OUTDIR}match_proposed_mcsema.log 2>&1
	@${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR}  --match

lltodot: ${OUTDIR}test.proposed.opt.ll ${INDIR}test.mcsema.opt.ll
	-time ${TOOLDIR}/lltodot --llir_file ${INDIR}test.mcsema.opt.ll:${PROG} --outfile mcsema/test.mcsema.opt.dot
	-dot -Tpdf mcsema/test.mcsema.opt.dot -O 
	-time ${TOOLDIR}/lltodot --llir_file ${OUTDIR}test.proposed.opt.ll:${PROG} --outfile mcsema/test.proposed.opt.dot
	-dot -Tpdf mcsema/test.proposed.opt.dot -O 


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

