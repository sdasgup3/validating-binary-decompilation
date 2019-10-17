.PHONY: binary objdump mcsema mcsema_opt  polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_3mm kernel_3mm_StrictFP check_FP print_array print_element
INDIR=binary/

all: binary objdump mcsema mcsema_opt  polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_3mm kernel_3mm_StrictFP check_FP print_array print_element
compd: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_3mm kernel_3mm_StrictFP check_FP print_array print_element
compd_opt: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_3mm kernel_3mm_StrictFP check_FP print_array print_element
match: polybench_flush_cache polybench_prepare_instruments polybench_timer_start rtclock polybench_timer_stop polybench_timer_print polybench_alloc_data xmalloc main init_array kernel_3mm kernel_3mm_StrictFP check_FP print_array print_element

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
kernel_3mm:
	@echo
	${MAKE} -C kernel_3mm $(MAKECMDGOALS)
kernel_3mm_StrictFP:
	@echo
	${MAKE} -C kernel_3mm_StrictFP $(MAKECMDGOALS)
check_FP:
	@echo
	${MAKE} -C check_FP $(MAKECMDGOALS)
print_array:
	@echo
	${MAKE} -C print_array $(MAKECMDGOALS)
print_element:
	@echo
	${MAKE} -C print_element $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
