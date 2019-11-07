.PHONY: binary objdump mcsema mcsema_opt  polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_gemver kernel_gemver_StrictFP check_FP print_array
INDIR=binary/

all: binary objdump mcsema mcsema_opt  polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_gemver kernel_gemver_StrictFP check_FP print_array
compd: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_gemver kernel_gemver_StrictFP check_FP print_array
compd_opt: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_gemver kernel_gemver_StrictFP check_FP print_array
match: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_gemver kernel_gemver_StrictFP check_FP print_array

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

reloc_binary:
	clang -Wl,-emit-relocs -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll --out binary/test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

polybench_flush_cache:
	@echo
	${MAKE} -C polybench_flush_cache $(MAKECMDGOALS)
polybench_prepare_instruments:
	@echo
	${MAKE} -C polybench_prepare_instruments $(MAKECMDGOALS)
polybench_timer_start:
	@echo
	${MAKE} -C polybench_timer_start $(MAKECMDGOALS)
rtclock:
	@echo
	${MAKE} -C rtclock $(MAKECMDGOALS)
polybench_timer_stop:
	@echo
	${MAKE} -C polybench_timer_stop $(MAKECMDGOALS)
polybench_timer_print:
	@echo
	${MAKE} -C polybench_timer_print $(MAKECMDGOALS)
polybench_alloc_data:
	@echo
	${MAKE} -C polybench_alloc_data $(MAKECMDGOALS)
xmalloc:
	@echo
	${MAKE} -C xmalloc $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
init_array:
	@echo
	${MAKE} -C init_array $(MAKECMDGOALS)
kernel_gemver:
	@echo
	${MAKE} -C kernel_gemver $(MAKECMDGOALS)
kernel_gemver_StrictFP:
	@echo
	${MAKE} -C kernel_gemver_StrictFP $(MAKECMDGOALS)
check_FP:
	@echo
	${MAKE} -C check_FP $(MAKECMDGOALS)
print_array:
	@echo
	${MAKE} -C print_array $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
