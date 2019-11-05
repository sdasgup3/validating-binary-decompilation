.PHONY: binary objdump mcsema mcsema_opt  ack fib fibFP tak takFP main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  ack fib fibFP tak takFP main
compd: ack fib fibFP tak takFP main
compd_opt: ack fib fibFP tak takFP main
match: ack fib fibFP tak takFP main

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

ack:
	@echo
	${MAKE} -C ack $(MAKECMDGOALS)
fib:
	@echo
	${MAKE} -C fib $(MAKECMDGOALS)
fibFP:
	@echo
	${MAKE} -C fibFP $(MAKECMDGOALS)
tak:
	@echo
	${MAKE} -C tak $(MAKECMDGOALS)
takFP:
	@echo
	${MAKE} -C takFP $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
