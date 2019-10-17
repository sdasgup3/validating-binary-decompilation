.PHONY: binary objdump mcsema mcsema_opt  rand srand randInt shuffle createRandomArray findDuplicate main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  rand srand randInt shuffle createRandomArray findDuplicate main
compd: rand srand randInt shuffle createRandomArray findDuplicate main
compd_opt: rand srand randInt shuffle createRandomArray findDuplicate main
match: rand srand randInt shuffle createRandomArray findDuplicate main

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

rand:
	@echo
	${MAKE} -C rand $(MAKECMDGOALS)
srand:
	@echo
	${MAKE} -C srand $(MAKECMDGOALS)
randInt:
	@echo
	${MAKE} -C randInt $(MAKECMDGOALS)
shuffle:
	@echo
	${MAKE} -C shuffle $(MAKECMDGOALS)
createRandomArray:
	@echo
	${MAKE} -C createRandomArray $(MAKECMDGOALS)
findDuplicate:
	@echo
	${MAKE} -C findDuplicate $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
