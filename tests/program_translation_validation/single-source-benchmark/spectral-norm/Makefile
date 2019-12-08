.PHONY: binary objdump mcsema mcsema_opt  eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main

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


all: binary objdump mcsema mcsema_opt  eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
compd: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
compd_opt: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
match: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main

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

eval_A:
	@echo
	${MAKE} -C eval_A $(MAKECMDGOALS)
eval_A_times_u:
	@echo
	${MAKE} -C eval_A_times_u $(MAKECMDGOALS)
eval_At_times_u:
	@echo
	${MAKE} -C eval_At_times_u $(MAKECMDGOALS)
eval_AtA_times_u:
	@echo
	${MAKE} -C eval_AtA_times_u $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
