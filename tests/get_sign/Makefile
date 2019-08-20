# OPT solution is deprecated
#OPT=${HOME}/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so
#OPT_ARG=--var_corr -debug-only=variable_correspondence  -disable-output
# Stoke libs can be accessed using the tool variable_bb_correspondence
#STOKE=${HOME}/Github/paa-stoke/bin/
#${OPT} < $${llfile}  ${OPT_ARG} -target-function _${PROG} -init-state-function _init_var_correspondence --output-dfg-file $${llfile}.dot ;

BINDIR=binary
PROG=get_sign
TOOL=${HOME}/Github/validating-binary-decompilation/source/build/bin/variable_bb_correspondence

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

ldfg:
	cd mcsema; \
        for llfile in `ls *.ll`; \
		do \
                ${OPT} < $${llfile}  ${OPT_ARG} -target-function _${PROG} -init-state-function _init_var_correspondence --output-dfg-file $${llfile}.dot ; \
                dot -Tpdf $${llfile}.dot -o $${llfile}.pdf; \
                rm -rf $${llfile}.dot; \
        done; \
        cd ..

xdfg:
	${STOKE}/stoke_debug_dfg --target binary/${ASM} --dfg -o mcsema/${PROG}.pdf

binary:
	gcc -O0 binary/${C} -o binary/${BIN}


clean:
	rm mcsema/*.bc mcsema/*.ll mcsema/*.dfg
