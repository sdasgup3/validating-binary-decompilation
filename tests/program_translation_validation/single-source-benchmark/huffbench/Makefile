.PHONY: binary objdump mcsema mcsema_opt  generate_test_data random4 compdecomp heap_adjust main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  generate_test_data random4 compdecomp heap_adjust main
compd: generate_test_data random4 compdecomp heap_adjust main
compd_opt: generate_test_data random4 compdecomp heap_adjust main
match: generate_test_data random4 compdecomp heap_adjust main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

generate_test_data:
	@echo
	${MAKE} -C generate_test_data $(MAKECMDGOALS)
random4:
	@echo
	${MAKE} -C random4 $(MAKECMDGOALS)
compdecomp:
	@echo
	${MAKE} -C compdecomp $(MAKECMDGOALS)
heap_adjust:
	@echo
	${MAKE} -C heap_adjust $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
