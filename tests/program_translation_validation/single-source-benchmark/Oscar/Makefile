.PHONY: binary objdump mcsema mcsema_opt  Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
compd: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
compd_opt: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
match: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions/pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

Initrand:
	@echo
	${MAKE} -C Initrand $(MAKECMDGOALS)
Rand:
	@echo
	${MAKE} -C Rand $(MAKECMDGOALS)
Cos:
	@echo
	${MAKE} -C Cos $(MAKECMDGOALS)
Min0:
	@echo
	${MAKE} -C Min0 $(MAKECMDGOALS)
Printcomplex:
	@echo
	${MAKE} -C Printcomplex $(MAKECMDGOALS)
Uniform11:
	@echo
	${MAKE} -C Uniform11 $(MAKECMDGOALS)
Exptab:
	@echo
	${MAKE} -C Exptab $(MAKECMDGOALS)
Fft:
	@echo
	${MAKE} -C Fft $(MAKECMDGOALS)
Oscar:
	@echo
	${MAKE} -C Oscar $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
