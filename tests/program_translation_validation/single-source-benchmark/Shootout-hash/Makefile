.PHONY: binary objdump mcsema  ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode

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


all: binary objdump mcsema  ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode
compd: ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode
compd_opt: ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode
match: ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode

imatch: ht_node_create ht_create ht_destroy main ht_find_new ht_find ht_hashcode

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


ht_node_create:
	@echo
	${MAKE} -C ht_node_create $(MAKECMDGOALS)
ht_create:
	@echo
	${MAKE} -C ht_create $(MAKECMDGOALS)
ht_destroy:
	@echo
	${MAKE} -C ht_destroy $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
ht_find_new:
	@echo
	${MAKE} -C ht_find_new $(MAKECMDGOALS)
ht_find:
	@echo
	${MAKE} -C ht_find $(MAKECMDGOALS)
ht_hashcode:
	@echo
	${MAKE} -C ht_hashcode $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
