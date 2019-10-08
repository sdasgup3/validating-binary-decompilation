BINDIR=binary
PROG=get_sign
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/

C=${PROG}.c
BIN=${PROG}.bin
ASM=${PROG}.asm

$(info $$C is [${C}])
$(info $$BIN is [${BIN}])
$(info $$LABEL is [${LABEL}])
$(info  ) 

all: binary mcsema ldfg xdfg
.PHONY: clean binary mcsema

objdump: binary/${BIN}
	objdump -d $< > binary/${PROG}.objdump

mcsema:
	mkdir -p mcsema; \
	cd mcsema; \
	../../../../scripts/mcsema_out.sh ../binary/${BIN} main ; \
        cd ..

binary:
	gcc -O0 binary/${C} -o binary/${BIN}

opt:
	cd mcsema; \
	opt -S  -inline   test.proposed.ll -o test.proposed.inline.ll ; opt -S  -O3    test.proposed.inline.ll -o test.proposed.opt.ll; \
	opt -S  -inline   ${PROG}.bin.unoptimized.ll -o ${PROG}.bin.unoptimized.inline.ll ; opt -S  -O3    ${PROG}.bin.unoptimized.inline.ll -o ${PROG}.bin.unoptimized.opt.ll; \
        cd ..

match:
	${TOOLDIR}/matcher --file1 mcsema/get_sign.bin.unoptimized.opt.ll:sub_660_get_sign --file2 mcsema/test.proposed.opt.ll:${PROG}

compd:
	${TOOLDIR}/decompiler  --output mcsema/test.proposed.ll --path ${ARTIFACTDIR} --function ${PROG} --input binary/${BIN}

clean:
	rm mcsema/*.bc mcsema/*.ll mcsema/*.dfg
