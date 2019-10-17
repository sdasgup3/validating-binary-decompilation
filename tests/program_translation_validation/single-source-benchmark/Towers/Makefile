.PHONY: binary objdump mcsema mcsema_opt  Initrand Rand Error Makenull Getelement Push Init Pop Move tower Towers main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  Initrand Rand Error Makenull Getelement Push Init Pop Move tower Towers main
compd: Initrand Rand Error Makenull Getelement Push Init Pop Move tower Towers main
compd_opt: Initrand Rand Error Makenull Getelement Push Init Pop Move tower Towers main
match: Initrand Rand Error Makenull Getelement Push Init Pop Move tower Towers main

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

Initrand:
	@echo
	${MAKE} -C Initrand $(MAKECMDGOALS)
Rand:
	@echo
	${MAKE} -C Rand $(MAKECMDGOALS)
Error:
	@echo
	${MAKE} -C Error $(MAKECMDGOALS)
Makenull:
	@echo
	${MAKE} -C Makenull $(MAKECMDGOALS)
Getelement:
	@echo
	${MAKE} -C Getelement $(MAKECMDGOALS)
Push:
	@echo
	${MAKE} -C Push $(MAKECMDGOALS)
Init:
	@echo
	${MAKE} -C Init $(MAKECMDGOALS)
Pop:
	@echo
	${MAKE} -C Pop $(MAKECMDGOALS)
Move:
	@echo
	${MAKE} -C Move $(MAKECMDGOALS)
tower:
	@echo
	${MAKE} -C tower $(MAKECMDGOALS)
Towers:
	@echo
	${MAKE} -C Towers $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
