PROG=viterbi_chunks_init_generic

REPO=${HOME}/Github/
ifdef REPO_PATH
  REPO=${REPO_PATH}
endif


TOOLDIR=${REPO}/validating-binary-decompilation/source/build/bin/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
INDIR=../src/
OUTDIR=output/


.PHONY: clean imatch

all:  imatch

imatch:
#@${SCRIPTDIR}//matcher_driver.sh --query ${INDIR}test.query.ll --target ${INDIR}test.target.ll --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --imatch
	opt -S -load ${TOOLDIR}../lib/LLVMesp_codegen.so -esp_codegen --targetspec ${INDIR}test.target.ll:${PROG} ${INDIR}test.query.ll --disable-output  1>${OUTDIR}imatch.log 2>&1

clean:
	rm output/*.bc output/*.ll

