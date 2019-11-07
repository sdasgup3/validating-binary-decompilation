.PHONY: binary objdump mcsema mcsema_opt  Initrand Rand Initarr Quicksort Quick main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  Initrand Rand Initarr Quicksort Quick main
compd: Initrand Rand Initarr Quicksort Quick main
compd_opt: Initrand Rand Initarr Quicksort Quick main
match: Initrand Rand Initarr Quicksort Quick main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

reloc_binary:
	clang -Wl,-emit-relocs -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll --out binary/test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

Initrand:
	@echo
	${MAKE} -C Initrand $(MAKECMDGOALS)
Rand:
	@echo
	${MAKE} -C Rand $(MAKECMDGOALS)
Initarr:
	@echo
	${MAKE} -C Initarr $(MAKECMDGOALS)
Quicksort:
	@echo
	${MAKE} -C Quicksort $(MAKECMDGOALS)
Quick:
	@echo
	${MAKE} -C Quick $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
