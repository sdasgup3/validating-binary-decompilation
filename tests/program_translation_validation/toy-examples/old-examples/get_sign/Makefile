PROG=get_sign
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
INDIR=binary/
OURDIR=mcsema/

.PHONY: binary mcsema objdump match opt clean compd

objdump: ${INDIR}test
	objdump -d $< > ${INDIR}/test.objdump

mcsema: ${INDIR}test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${OURDIR}test.cfg --binary $< --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg mcsema/test.cfg --output ${OURDIR}test.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${OURDIR}test.bc -o ${OURDIR}test.ll

binary: ${INDIR}test.c
	gcc -O0 ${INDIR}test.c -o ${INDIR}test

opt: ${OURDIR}test.ll ${OURDIR}test.proposed.ll
	opt -S  -inline   ${OURDIR}test.proposed.ll -o ${OURDIR}test.proposed.inline.ll ; opt -S  -O3    ${OURDIR}test.proposed.inline.ll -o ${OURDIR}test.proposed.opt.ll
	opt -S  -inline   ${OURDIR}test.ll -o ${OURDIR}test.inline.ll ; opt -S  -O3    ${OURDIR}test.inline.ll -o ${OURDIR}test.opt.ll

match:
	${TOOLDIR}/matcher --file1 ${OURDIR}test.opt.ll:sub_660_get_sign --file2 ${OURDIR}test.proposed.opt.ll:${PROG}

compd:
	${TOOLDIR}/decompiler  --output ${OURDIR}test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input ${INDIR}test

clean:
	rm mcsema/*.bc mcsema/*.ll
