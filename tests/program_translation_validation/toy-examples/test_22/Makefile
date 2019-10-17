.PHONY: binary objdump mcsema mcsema_opt  DoDemoFpu1 main timespi
INDIR=binary/

all: binary objdump mcsema mcsema_opt  DoDemoFpu1 main timespi
compd: DoDemoFpu1 main timespi
compd_opt: DoDemoFpu1 main timespi
match: DoDemoFpu1 main timespi

binary:
	clang -O0 -lm ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

DoDemoFpu1:
	@echo
	${MAKE} -C DoDemoFpu1 $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
timespi:
	@echo
	${MAKE} -C timespi $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
