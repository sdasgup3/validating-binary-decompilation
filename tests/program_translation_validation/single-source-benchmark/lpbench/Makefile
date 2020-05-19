.PHONY: binary objdump mcsema  matgen random_double idamax dscal daxpy dgefa dgesl main

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


all: binary objdump mcsema  matgen random_double idamax dscal daxpy dgefa dgesl main
compd: matgen random_double idamax dscal daxpy dgefa dgesl main
compd_opt: matgen random_double idamax dscal daxpy dgefa dgesl main
match: matgen random_double idamax dscal daxpy dgefa dgesl main

imatch: matgen random_double idamax dscal daxpy dgefa dgesl main

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


matgen:
	@echo
	${MAKE} -C matgen $(MAKECMDGOALS)
random_double:
	@echo
	${MAKE} -C random_double $(MAKECMDGOALS)
idamax:
	@echo
	${MAKE} -C idamax $(MAKECMDGOALS)
dscal:
	@echo
	${MAKE} -C dscal $(MAKECMDGOALS)
daxpy:
	@echo
	${MAKE} -C daxpy $(MAKECMDGOALS)
dgefa:
	@echo
	${MAKE} -C dgefa $(MAKECMDGOALS)
dgesl:
	@echo
	${MAKE} -C dgesl $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
