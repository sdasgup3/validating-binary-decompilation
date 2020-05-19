.PHONY: binary objdump mcsema  newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main

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


all: binary objdump mcsema  newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main
compd: newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main
compd_opt: newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main
match: newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main

imatch: newWorkList newCombList initWorkList initCombList saveSolution calculate printSolution printList recSearch doSearch getInput search main

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


newWorkList:
	@echo
	${MAKE} -C newWorkList $(MAKECMDGOALS)
newCombList:
	@echo
	${MAKE} -C newCombList $(MAKECMDGOALS)
initWorkList:
	@echo
	${MAKE} -C initWorkList $(MAKECMDGOALS)
initCombList:
	@echo
	${MAKE} -C initCombList $(MAKECMDGOALS)
saveSolution:
	@echo
	${MAKE} -C saveSolution $(MAKECMDGOALS)
calculate:
	@echo
	${MAKE} -C calculate $(MAKECMDGOALS)
printSolution:
	@echo
	${MAKE} -C printSolution $(MAKECMDGOALS)
printList:
	@echo
	${MAKE} -C printList $(MAKECMDGOALS)
recSearch:
	@echo
	${MAKE} -C recSearch $(MAKECMDGOALS)
doSearch:
	@echo
	${MAKE} -C doSearch $(MAKECMDGOALS)
getInput:
	@echo
	${MAKE} -C getInput $(MAKECMDGOALS)
search:
	@echo
	${MAKE} -C search $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
