.PHONY: binary objdump mcsema mcsema_opt  Initrand Rand tInitarr CreateNode Insert Checktree Trees main

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


NORM_PASS=-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg
ifdef NORM
  NORM_PASS=-${NORM}
endif


all: binary objdump mcsema mcsema_opt  Initrand Rand tInitarr CreateNode Insert Checktree Trees main
compd: Initrand Rand tInitarr CreateNode Insert Checktree Trees main
compd_opt: Initrand Rand tInitarr CreateNode Insert Checktree Trees main
match: Initrand Rand tInitarr CreateNode Insert Checktree Trees main

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

mcsema_opt:
	../../../scripts/remove_definitions.pl --file ${INDIR}test.mcsema.ll --out ${INDIR}test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S ${NORM_PASS} ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

Initrand:
	@echo
	${MAKE} -C Initrand $(MAKECMDGOALS)
Rand:
	@echo
	${MAKE} -C Rand $(MAKECMDGOALS)
tInitarr:
	@echo
	${MAKE} -C tInitarr $(MAKECMDGOALS)
CreateNode:
	@echo
	${MAKE} -C CreateNode $(MAKECMDGOALS)
Insert:
	@echo
	${MAKE} -C Insert $(MAKECMDGOALS)
Checktree:
	@echo
	${MAKE} -C Checktree $(MAKECMDGOALS)
Trees:
	@echo
	${MAKE} -C Trees $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
