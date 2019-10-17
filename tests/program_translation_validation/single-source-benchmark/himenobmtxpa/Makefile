.PHONY: binary objdump mcsema mcsema_opt  main newMat mat_set_init mat_set jacobi clearMat fflop mflops set_param second
INDIR=binary/

all: binary objdump mcsema mcsema_opt  main newMat mat_set_init mat_set jacobi clearMat fflop mflops set_param second
compd: main newMat mat_set_init mat_set jacobi clearMat fflop mflops set_param second
compd_opt: main newMat mat_set_init mat_set jacobi clearMat fflop mflops set_param second
match: main newMat mat_set_init mat_set jacobi clearMat fflop mflops set_param second

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

main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
newMat:
	@echo
	${MAKE} -C newMat $(MAKECMDGOALS)
mat_set_init:
	@echo
	${MAKE} -C mat_set_init $(MAKECMDGOALS)
mat_set:
	@echo
	${MAKE} -C mat_set $(MAKECMDGOALS)
jacobi:
	@echo
	${MAKE} -C jacobi $(MAKECMDGOALS)
clearMat:
	@echo
	${MAKE} -C clearMat $(MAKECMDGOALS)
fflop:
	@echo
	${MAKE} -C fflop $(MAKECMDGOALS)
mflops:
	@echo
	${MAKE} -C mflops $(MAKECMDGOALS)
set_param:
	@echo
	${MAKE} -C set_param $(MAKECMDGOALS)
second:
	@echo
	${MAKE} -C second $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
