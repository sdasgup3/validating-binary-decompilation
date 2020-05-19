.PHONY: binary objdump mcsema  Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main

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


all: binary objdump mcsema  Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
compd: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
compd_opt: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main
match: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main

imatch: Initrand Rand Cos Min0 Printcomplex Uniform11 Exptab Fft Oscar main

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
