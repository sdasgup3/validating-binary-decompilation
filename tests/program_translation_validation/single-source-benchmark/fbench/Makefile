.PHONY: binary objdump mcsema mcsema_opt  main trace_line transit_surface
INDIR=binary/

all: binary objdump mcsema mcsema_opt  main trace_line transit_surface
compd: main trace_line transit_surface
compd_opt: main trace_line transit_surface
match: main trace_line transit_surface

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
trace_line:
	@echo
	${MAKE} -C trace_line $(MAKECMDGOALS)
transit_surface:
	@echo
	${MAKE} -C transit_surface $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
