TESTS=$(shell find . -maxdepth 1   -name "*.s" | sort -V)

OUTDIR=Output
KSTATES=$(patsubst %.s, ${OUTDIR}/%.kstate, $(TESTS))
XSTATES=$(patsubst %.s, ${OUTDIR}/%.xstate, $(TESTS))
CSTATES=$(patsubst %.s, ${OUTDIR}/%.cstate, $(TESTS))

Mkdir=@mkdir -p $(@D)
SCRIPT_DIR=${HOME}/Github/X86-64-semantics/scripts
RUN_SH=${SCRIPT_DIR}/run.pl



all:	collect kompile cleankstate kstate kprove

collect: ${TESTS}
kstate: ${KSTATES}
xstate: ${XSTATES}
compare:${CSTATES}

${OUTDIR}/%.kstate: %.s
	@echo ""
	@echo  "Generate: $@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --krun --output $@

${OUTDIR}/%.xstate: %.s
	@echo ""
	@echo  "Generate: $@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --xrun --output $@

${OUTDIR}/%.cstate: ${OUTDIR}/%.kstate ${OUTDIR}/%.xstate
	@echo ""
	@echo  "Compare: ${OUTDIR}/$@ "
	${RUN_SH} --file $< --compare 1>$@ 2>&1

allclean:
	@echo "All Cleaning"
	rm -rf ${OUTDIR}

clean:
	@echo "Cleaning .exe & .o"
	rm -rf ${OUTDIR}/*.exec
	rm -rf ${OUTDIR}/*.o

cleankstate:
	@echo "K Cleaning"
	rm -rf ${OUTDIR}/*.kstate

cleanxstate:
	@echo "X Cleaning"
	rm -rf ${OUTDIR}/*.xstate

cleancstate:
	@echo "X Cleaning"
	rm -rf ${OUTDIR}/*.cstate

collect:
	@echo "Collect instruction semantics"
	@${SCRIPT_DIR}/collect_instructions_semantics.pl --file test.s

kompile:
	@echo "Kompile instruction semantics"
	@${SCRIPT_DIR}/kompile.pl --backend java

kprove:
	@echo "KProve instruction semantics"
	@kprove test-spec.k  --directory ${HOME}/Github/X86-64-semantics/semantics --smt_prelude ${HOME}/Github/k/k-distribution/include/z3/basic.smt2

kast:
	@echo "KAst instruction semantics"
	@kast test.s  --directory ${HOME}/Github/X86-64-semantics/semantics
test:
	@echo "T Cleaning"
