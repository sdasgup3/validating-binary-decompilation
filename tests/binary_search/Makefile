#./bin/variable_bb_correspondence --decompiled-output ~/Github/validating-binary-decompilation/tests/get_sign/mcsema/get_sign.bin.unoptimized.ll  --target-function _get_sign --init-state-function _init_var_correspondence --llvm-dfg-dot-out x.dot --target ~/Github/validating-binary-decompilation/tests/get_sign/binary/get_sign.asm -v
BINDIR=binary
PROG=binary_search
OPT=${HOME}/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so
TOOL=${HOME}/Github/validating-binary-decompilation/ir_analyzer/build/bin/variable_bb_correspondence


STOKE=${HOME}/Github/paa-stoke/bin/
OPT_ARG=--var_corr -debug-only=variable_correspondence  -disable-output

#C=$(shell find ${BINDIR} -maxdepth 1   -name "*.c" | sort -V)
#BIN=$(patsubst %.c,%.bin, $(C))
#ASM=$(patsubst %.c,%.asm, $(C))
#LABEL=$(patsubst %.c,%, $(C))
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
	../../../scripts/mcsema_out.sh ../binary/${BIN} main ; \
        cd ..

#${OPT} < $${llfile}  ${OPT_ARG} -target-function _${PROG} -init-state-function _init_var_correspondence --output-dfg-file $${llfile}.dot ;
ldfg:
	cd mcsema; \
        for llfile in `ls *.ll`; \
		do \
                ${TOOL} --decompiled-output $${llfile} --target-function _${PROG} --init-state-function _init_var_correspondence --llvm-dfg-dot-out $${llfile}.dot ; \
                dot -Tpdf $${llfile}.dot -o $${llfile}.pdf; \
                rm -rf $${llfile}.dot; \
        done; \
        cd ..

xdfg:
	${TOOL} --target binary/${ASM} --no-fresh-mem --x86-dfg-pdf-out mcsema/${PROG}.pdf

binary:
	gcc -O0 binary/${C} -o binary/${BIN}

opt:
	cd mcsema; \
	opt -S  -inline   test.proposed.ll -o test.proposed.inline.ll ; opt -S  -O3 -strip   test.proposed.inline.ll -o test.proposed.opt.ll; \
	opt -S  -inline   ${PROG}.bin.unoptimized.ll -o ${PROG}.bin.unoptimized.inline.ll ; opt -S  -O3 -strip   ${PROG}.bin.unoptimized.inline.ll -o ${PROG}.bin.unoptimized.opt.ll; \
        cd ..

match:
	cd mcsema; \
	~/Github/validating-binary-decompilation/source/build/bin/matcher --file1 test.unoptimized.mod.opt.ll:sub_6c0_binary_search --file2 test.proposed.opt.ll:bnary_search ; \
        cd ..

clean:
	rm mcsema/*.bc mcsema/*.ll mcsema/*.dfg
