.PHONY: binary objdump mcsema mcsema_opt  main create_link_list init simulate kill_list
INDIR=binary/

all: binary objdump mcsema mcsema_opt  main create_link_list init simulate kill_list
compd: main create_link_list init simulate kill_list
compd_opt: main create_link_list init simulate kill_list
match: main create_link_list init simulate kill_list

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions/pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
create_link_list:
	@echo
	${MAKE} -C create_link_list $(MAKECMDGOALS)
init:
	@echo
	${MAKE} -C init $(MAKECMDGOALS)
simulate:
	@echo
	${MAKE} -C simulate $(MAKECMDGOALS)
kill_list:
	@echo
	${MAKE} -C kill_list $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
