.PHONY: binary objdump mcsema  second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal

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


all: binary objdump mcsema  second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
compd: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
compd_opt: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
match: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal

imatch: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal

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


second:
	@echo
	${MAKE} -C second $(MAKECMDGOALS)
what_date:
	@echo
	${MAKE} -C what_date $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
matgen:
	@echo
	${MAKE} -C matgen $(MAKECMDGOALS)
dgefa:
	@echo
	${MAKE} -C dgefa $(MAKECMDGOALS)
dgesl:
	@echo
	${MAKE} -C dgesl $(MAKECMDGOALS)
dmxpy:
	@echo
	${MAKE} -C dmxpy $(MAKECMDGOALS)
epslon:
	@echo
	${MAKE} -C epslon $(MAKECMDGOALS)
print_time:
	@echo
	${MAKE} -C print_time $(MAKECMDGOALS)
daxpy:
	@echo
	${MAKE} -C daxpy $(MAKECMDGOALS)
ddot:
	@echo
	${MAKE} -C ddot $(MAKECMDGOALS)
idamax:
	@echo
	${MAKE} -C idamax $(MAKECMDGOALS)
dscal:
	@echo
	${MAKE} -C dscal $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
