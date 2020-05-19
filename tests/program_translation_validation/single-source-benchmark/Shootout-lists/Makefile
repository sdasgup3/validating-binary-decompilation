.PHONY: binary objdump mcsema  list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main

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


all: binary objdump mcsema  list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main
compd: list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main
compd_opt: list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main
match: list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main

imatch: list_push_tail list_pop_tail list_empty list_length list_push_head list_pop_head list_equal list_print list_new list_sequence list_copy list_last list_reverse test_lists list_first main

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


list_push_tail:
	@echo
	${MAKE} -C list_push_tail $(MAKECMDGOALS)
list_pop_tail:
	@echo
	${MAKE} -C list_pop_tail $(MAKECMDGOALS)
list_empty:
	@echo
	${MAKE} -C list_empty $(MAKECMDGOALS)
list_length:
	@echo
	${MAKE} -C list_length $(MAKECMDGOALS)
list_push_head:
	@echo
	${MAKE} -C list_push_head $(MAKECMDGOALS)
list_pop_head:
	@echo
	${MAKE} -C list_pop_head $(MAKECMDGOALS)
list_equal:
	@echo
	${MAKE} -C list_equal $(MAKECMDGOALS)
list_print:
	@echo
	${MAKE} -C list_print $(MAKECMDGOALS)
list_new:
	@echo
	${MAKE} -C list_new $(MAKECMDGOALS)
list_sequence:
	@echo
	${MAKE} -C list_sequence $(MAKECMDGOALS)
list_copy:
	@echo
	${MAKE} -C list_copy $(MAKECMDGOALS)
list_last:
	@echo
	${MAKE} -C list_last $(MAKECMDGOALS)
list_reverse:
	@echo
	${MAKE} -C list_reverse $(MAKECMDGOALS)
test_lists:
	@echo
	${MAKE} -C test_lists $(MAKECMDGOALS)
list_first:
	@echo
	${MAKE} -C list_first $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
