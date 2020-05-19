.PHONY: binary objdump mcsema  main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3

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


all: binary objdump mcsema  main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3
compd: main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3
compd_opt: main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3
match: main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3

imatch: main Proc0 Proc5 Proc4 Func2 Proc7 Proc8 Proc1 Func1 Proc6 Proc2 Func3 Proc3

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


main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
Proc0:
	@echo
	${MAKE} -C Proc0 $(MAKECMDGOALS)
Proc5:
	@echo
	${MAKE} -C Proc5 $(MAKECMDGOALS)
Proc4:
	@echo
	${MAKE} -C Proc4 $(MAKECMDGOALS)
Func2:
	@echo
	${MAKE} -C Func2 $(MAKECMDGOALS)
Proc7:
	@echo
	${MAKE} -C Proc7 $(MAKECMDGOALS)
Proc8:
	@echo
	${MAKE} -C Proc8 $(MAKECMDGOALS)
Proc1:
	@echo
	${MAKE} -C Proc1 $(MAKECMDGOALS)
Func1:
	@echo
	${MAKE} -C Func1 $(MAKECMDGOALS)
Proc6:
	@echo
	${MAKE} -C Proc6 $(MAKECMDGOALS)
Proc2:
	@echo
	${MAKE} -C Proc2 $(MAKECMDGOALS)
Func3:
	@echo
	${MAKE} -C Func3 $(MAKECMDGOALS)
Proc3:
	@echo
	${MAKE} -C Proc3 $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
