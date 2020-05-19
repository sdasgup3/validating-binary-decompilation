.PHONY: binary objdump mcsema  toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main

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


all: binary objdump mcsema  toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
compd: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
compd_opt: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
match: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main

imatch: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main

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


toggle_value:
	@echo
	${MAKE} -C toggle_value $(MAKECMDGOALS)
toggle_activate:
	@echo
	${MAKE} -C toggle_activate $(MAKECMDGOALS)
init_Toggle:
	@echo
	${MAKE} -C init_Toggle $(MAKECMDGOALS)
new_Toggle:
	@echo
	${MAKE} -C new_Toggle $(MAKECMDGOALS)
nth_toggle_activate:
	@echo
	${MAKE} -C nth_toggle_activate $(MAKECMDGOALS)
init_NthToggle:
	@echo
	${MAKE} -C init_NthToggle $(MAKECMDGOALS)
new_NthToggle:
	@echo
	${MAKE} -C new_NthToggle $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
