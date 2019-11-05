.PHONY: binary objdump mcsema mcsema_opt  toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
compd: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
compd_opt: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main
match: toggle_value toggle_activate init_Toggle new_Toggle nth_toggle_activate init_NthToggle new_NthToggle main

binary:
	clang -Wl,-emit-relocs -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

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
