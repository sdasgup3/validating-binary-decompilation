.PHONY: binary objdump mcsema  Initrand Rand Fit Place Remove Trial Puzzle main

ifndef BIN_OPT
  BIN_OPT=O0
  INDIR=binary/
else
  ifeq (${BIN_OPT},O0)
    INDIR=binary/
  else
    INDIR=binary_${BIN_OPT}/
  endif
endif


all: binary objdump mcsema  Initrand Rand Fit Place Remove Trial Puzzle main
compd: Initrand Rand Fit Place Remove Trial Puzzle main
compd_opt: Initrand Rand Fit Place Remove Trial Puzzle main
match: Initrand Rand Fit Place Remove Trial Puzzle main

imatch: Initrand Rand Fit Place Remove Trial Puzzle main

binary:
	mkdir -p ${INDIR}
	/usr/bin/clang-6.0 -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test

reloc_binary:
	/usr/bin/clang-6.0 -Wl,-emit-relocs -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll
	../../../scripts/remove_definitions.pl --file ${INDIR}test.mcsema.ll --out ${INDIR}test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll


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
