PROG=sbbl_r32_r32
.PHONY: objdump mcsema assemble binary lprove xprove declutter kli xstate collect kompile genxspec genlspec genz3 provez3 clean
KPROVE_OPTS=--log-cells "(\#initTerm),(\#target),(\#result),(registers),(memory)" --log-basic  --state-log --log-success --no-alpha-renaming --restore-original-names --output kast
XPROVE_OPTS= --output-flatten "_Map_"
LPROVE_OPTS= --output-flatten "_Map_"
CLEAN_ASM=${HOME}/Github/X86-64-semantics/scripts/remove_directives.pl
Mkdir=@mkdir -p $(@D)
SCRIPT_DIR=${HOME}/Github/X86-64-semantics/scripts
RUN_SH=${SCRIPT_DIR}/run.pl
DVAL_SCRIPT_DIR=${HOME}/Github/validating-binary-decompilation/tests/scripts/
TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
OUTDIR=Output

binary: test.c
	gcc -Os $< -o test

objdump: test
	objdump -d $< > test.objdump

assemble: test.c
	gcc -Os $< -S -o test.s
	${CLEAN_ASM} -i --file test.s

##
## LLVM Targets
##

mcsema: test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary $< --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis test.bc -o test.ll

declutter: test.ll
	${DVAL_SCRIPT_DIR}/declutter.pl --file $<  --singleiv --opc ${PROG}


kli: test.mod.ll
	mkdir -p ${OUTDIR}
	time ${HOME}/Github/llvm-verified-backend/scripts/kli $< 1> Output/test-lstate.out 2>&1
	${DVAL_SCRIPT_DIR}/check_status.sh --msg ${PROG} --kli

genlspec: Output/test-lstate.out
	${DVAL_SCRIPT_DIR}/create_lspec.pl --file $< --opc ${PROG}

lprove: test-lspec.k
	mkdir -p ${OUTDIR}
	@echo "KProve LLVM program"
	time kprove $< --directory ${HOME}/Github/llvm-verified-backend/kompiled-defs/llvm/ --smt_prelude ${HOME}/Github/llvm-verified-backend/scripts/prelude.smt2 ${KPROVE_OPTS}  ${LPROVE_OPTS} 1>Output/test-lspec.out 2>&1
	${DVAL_SCRIPT_DIR}/check_status.sh --msg ${PROG} --lprove

##
## X86 Targets
##

collect:
	@echo "Collect instruction semantics"
	@${SCRIPT_DIR}/collect_instructions_semantics.pl --file test.s

kompile:
	@echo "Kompile instruction semantics"
	@${SCRIPT_DIR}/kompile.pl --backend java

xstate: test.s
	mkdir -p ${OUTDIR}
	@echo ""
	@echo  "Generate: kstate file "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --krun --output Output/test-xstate.out

genxspec: seed/${PROG}.s
	${DVAL_SCRIPT_DIR}/create_xspec.pl --seed $<

xprove: test-xspec.k
	mkdir -p ${OUTDIR}
	@echo "KProve X86 program"
	-time kprove $< --directory ${HOME}/Github/X86-64-semantics/semantics --smt_prelude ${HOME}/Github/k/k-distribution/include/z3/basic.smt2 ${KPROVE_OPTS} ${XPROVE_OPTS} 1>Output/test-xspec.out 2>&1
	${DVAL_SCRIPT_DIR}/check_status.sh --msg ${PROG} --xprove

##
## Generate and run proof scripts
##

genz3:
	${TOOLDIR}/spec-to-smt --lspec Output/test-lspec.out --xspec Output/test-xspec.out --z3out Output/test-z3.py --opc ${PROG}
	${DVAL_SCRIPT_DIR}/check_status.sh --msg ${PROG} --genz3

provez3:
	python Output/test-z3.py ${PROG}


##
## Generate and run proof scripts
##

clean:
	rm *.bc *.ll test *.cfg  *.objdump
