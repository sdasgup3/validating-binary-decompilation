.PHONY: binary objdump mcsema  copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main

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


all: binary objdump mcsema  copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main
compd: copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main
compd_opt: copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main
match: copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main

imatch: copy_data next_data melt_data equal_data valid_data dump_list dump_play get_value show_data show_move show_list show_play in_wanted make_data make_list make_play make_wanted get_good_move get_winning_move where get_real_move main

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


copy_data:
	@echo
	${MAKE} -C copy_data $(MAKECMDGOALS)
next_data:
	@echo
	${MAKE} -C next_data $(MAKECMDGOALS)
melt_data:
	@echo
	${MAKE} -C melt_data $(MAKECMDGOALS)
equal_data:
	@echo
	${MAKE} -C equal_data $(MAKECMDGOALS)
valid_data:
	@echo
	${MAKE} -C valid_data $(MAKECMDGOALS)
dump_list:
	@echo
	${MAKE} -C dump_list $(MAKECMDGOALS)
dump_play:
	@echo
	${MAKE} -C dump_play $(MAKECMDGOALS)
get_value:
	@echo
	${MAKE} -C get_value $(MAKECMDGOALS)
show_data:
	@echo
	${MAKE} -C show_data $(MAKECMDGOALS)
show_move:
	@echo
	${MAKE} -C show_move $(MAKECMDGOALS)
show_list:
	@echo
	${MAKE} -C show_list $(MAKECMDGOALS)
show_play:
	@echo
	${MAKE} -C show_play $(MAKECMDGOALS)
in_wanted:
	@echo
	${MAKE} -C in_wanted $(MAKECMDGOALS)
make_data:
	@echo
	${MAKE} -C make_data $(MAKECMDGOALS)
make_list:
	@echo
	${MAKE} -C make_list $(MAKECMDGOALS)
make_play:
	@echo
	${MAKE} -C make_play $(MAKECMDGOALS)
make_wanted:
	@echo
	${MAKE} -C make_wanted $(MAKECMDGOALS)
get_good_move:
	@echo
	${MAKE} -C get_good_move $(MAKECMDGOALS)
get_winning_move:
	@echo
	${MAKE} -C get_winning_move $(MAKECMDGOALS)
where:
	@echo
	${MAKE} -C where $(MAKECMDGOALS)
get_real_move:
	@echo
	${MAKE} -C get_real_move $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
