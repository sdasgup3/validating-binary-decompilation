.PHONY: binary objdump mcsema mcsema_opt  second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
INDIR=binary/

all: binary objdump mcsema mcsema_opt  second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
compd: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
compd_opt: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal
match: second what_date main matgen dgefa dgesl dmxpy epslon print_time daxpy ddot idamax dscal

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
