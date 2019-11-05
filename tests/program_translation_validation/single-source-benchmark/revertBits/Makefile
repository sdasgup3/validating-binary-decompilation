.PHONY: binary objdump mcsema mcsema_opt  ReverseBits32 ReverseBits64 main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  ReverseBits32 ReverseBits64 main
compd: ReverseBits32 ReverseBits64 main
compd_opt: ReverseBits32 ReverseBits64 main
match: ReverseBits32 ReverseBits64 main

binary:
	clang -Wl,-emit-relocs -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

ReverseBits32:
	@echo
	${MAKE} -C ReverseBits32 $(MAKECMDGOALS)
ReverseBits64:
	@echo
	${MAKE} -C ReverseBits64 $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
