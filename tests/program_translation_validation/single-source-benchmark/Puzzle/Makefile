.PHONY: binary objdump mcsema mcsema_opt  Initrand Rand Fit Place Remove Trial Puzzle main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  Initrand Rand Fit Place Remove Trial Puzzle main
compd: Initrand Rand Fit Place Remove Trial Puzzle main
compd_opt: Initrand Rand Fit Place Remove Trial Puzzle main
match: Initrand Rand Fit Place Remove Trial Puzzle main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions/pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

Initrand:
	@echo
	${MAKE} -C Initrand $(MAKECMDGOALS)
Rand:
	@echo
	${MAKE} -C Rand $(MAKECMDGOALS)
Fit:
	@echo
	${MAKE} -C Fit $(MAKECMDGOALS)
Place:
	@echo
	${MAKE} -C Place $(MAKECMDGOALS)
Remove:
	@echo
	${MAKE} -C Remove $(MAKECMDGOALS)
Trial:
	@echo
	${MAKE} -C Trial $(MAKECMDGOALS)
Puzzle:
	@echo
	${MAKE} -C Puzzle $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
