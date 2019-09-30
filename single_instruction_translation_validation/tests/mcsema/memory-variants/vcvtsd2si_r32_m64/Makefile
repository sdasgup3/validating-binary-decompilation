.PHONY: clean
#KPROVE_OPTS="--log-basic --log-cells "(#initTerm),(#target),(#result),(registers),(memory)" --log  --state-log --log-success"
KPROVE_OPTS=--log-cells "(#initTerm),(#target),(#result),(registers),(memory)" --log-basic  --state-log --log-success
CLEAN_ASM=${HOME}/Github/X86-64-semantics/scripts/remove_directives.pl
Mkdir=@mkdir -p $(@D)
SCRIPT_DIR=${HOME}/Github/X86-64-semantics/scripts
RUN_SH=${SCRIPT_DIR}/run.pl
OUTDIR=Output

objdump: test
	objdump -d $< > test.objdump

mcsema: test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary $< --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer
#mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc
	llvm-dis test.bc -o test.ll

assemble: test.c
	gcc -Os $< -S -o test.s
	${CLEAN_ASM} -i --file test.s

binary: test.c
	gcc -Os $< -o test

lprove: test-lspec.k
	mkdir -p ${OUTDIR}
	kprove $< --directory ${HOME}/Github/llvm-verified-backend/kompiled-defs/llvm/ --smt_prelude /home/sdasgup3/Github/llvm-verified-backend/scripts/prelude.smt2 ${KPROVE_OPTS} 1>Output/test-lspec.out 2>&1

xprove: test-xspec.k
	mkdir -p ${OUTDIR}
	@echo "KProve instruction semantics"
	@kprove $< --directory ${HOME}/Github/X86-64-semantics/semantics --smt_prelude ${HOME}/Github/k/k-distribution/include/z3/basic.smt2 ${KPROVE_OPTS} 1>Output/test-xspec.out 2>&1

kli: test.mod.ll
	mkdir -p ${OUTDIR}
	${HOME}/Github/llvm-verified-backend/scripts/kli $< 1> Output/test.lstate 2>&1

xstate: test.s
	mkdir -p ${OUTDIR}
	@echo ""
	@echo  "Generate: kstate file "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --krun --output Output/test-xstate.out

collect:
	@echo "Collect instruction semantics"
	@${SCRIPT_DIR}/collect_instructions_semantics.pl --file test.s

kompile:
	@echo "Kompile instruction semantics"
	@${SCRIPT_DIR}/kompile.pl --backend java

clean:
	rm *.bc *.ll test *.cfg  *.objdump
