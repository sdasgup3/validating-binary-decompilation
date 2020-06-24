PROG=fft

REPO=${HOME}/work_dir/
ifdef REPO_PATH
  REPO=${REPO_PATH}
endif


LIBDIR=${REPO}/esp-matcher/source/build/lib/
SCRIPTDIR=${TOOLDIR}/../../../tests/scripts/
INDIR=../src/
OUTDIR=output/


.PHONY: clean imatch

all:  imatch

imatch:
#@${SCRIPTDIR}//matcher_driver.sh --query ${INDIR}test.query.ll --target ${INDIR}test.target.ll --outdir ${OUTDIR} --indir ${INDIR} --tooldir ${TOOLDIR} --prog ${PROG} --imatch
	opt -S -load ${LIBDIR}/LLVMesp_codegen.so -esp_codegen --targetspec ${INDIR}test.target.ll:${PROG} ${INDIR}test.query.ll --disable-output 1>${OUTDIR}imatch.log 2>&1

clean:
	rm output/*.bc output/*.ll

