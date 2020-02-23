.PHONY: binary objdump mcsema  resize_prob insert_new_arc replace_weaker_arc price_out_impl suspend_impl global_opt main refresh_neighbour_lists refresh_potential flow_cost flow_org_cost primal_feasible dual_feasible getfree write_circulations bea_is_dual_infeasible sort_basket primal_bea_mpp primal_iminus primal_update_flow primal_net_simplex primal_start_artificial read_min update_tree

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


all: binary objdump mcsema  resize_prob insert_new_arc replace_weaker_arc price_out_impl suspend_impl global_opt main refresh_neighbour_lists refresh_potential flow_cost flow_org_cost primal_feasible dual_feasible getfree write_circulations bea_is_dual_infeasible sort_basket primal_bea_mpp primal_iminus primal_update_flow primal_net_simplex primal_start_artificial read_min update_tree
compd: resize_prob insert_new_arc replace_weaker_arc price_out_impl suspend_impl global_opt main refresh_neighbour_lists refresh_potential flow_cost flow_org_cost primal_feasible dual_feasible getfree write_circulations bea_is_dual_infeasible sort_basket primal_bea_mpp primal_iminus primal_update_flow primal_net_simplex primal_start_artificial read_min update_tree
compd_opt: resize_prob insert_new_arc replace_weaker_arc price_out_impl suspend_impl global_opt main refresh_neighbour_lists refresh_potential flow_cost flow_org_cost primal_feasible dual_feasible getfree write_circulations bea_is_dual_infeasible sort_basket primal_bea_mpp primal_iminus primal_update_flow primal_net_simplex primal_start_artificial read_min update_tree
match: resize_prob insert_new_arc replace_weaker_arc price_out_impl suspend_impl global_opt main refresh_neighbour_lists refresh_potential flow_cost flow_org_cost primal_feasible dual_feasible getfree write_circulations bea_is_dual_infeasible sort_basket primal_bea_mpp primal_iminus primal_update_flow primal_net_simplex primal_start_artificial read_min update_tree

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


resize_prob:
	@echo
	${MAKE} -C resize_prob $(MAKECMDGOALS)
insert_new_arc:
	@echo
	${MAKE} -C insert_new_arc $(MAKECMDGOALS)
replace_weaker_arc:
	@echo
	${MAKE} -C replace_weaker_arc $(MAKECMDGOALS)
price_out_impl:
	@echo
	${MAKE} -C price_out_impl $(MAKECMDGOALS)
suspend_impl:
	@echo
	${MAKE} -C suspend_impl $(MAKECMDGOALS)
global_opt:
	@echo
	${MAKE} -C global_opt $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
refresh_neighbour_lists:
	@echo
	${MAKE} -C refresh_neighbour_lists $(MAKECMDGOALS)
refresh_potential:
	@echo
	${MAKE} -C refresh_potential $(MAKECMDGOALS)
flow_cost:
	@echo
	${MAKE} -C flow_cost $(MAKECMDGOALS)
flow_org_cost:
	@echo
	${MAKE} -C flow_org_cost $(MAKECMDGOALS)
primal_feasible:
	@echo
	${MAKE} -C primal_feasible $(MAKECMDGOALS)
dual_feasible:
	@echo
	${MAKE} -C dual_feasible $(MAKECMDGOALS)
getfree:
	@echo
	${MAKE} -C getfree $(MAKECMDGOALS)
write_circulations:
	@echo
	${MAKE} -C write_circulations $(MAKECMDGOALS)
bea_is_dual_infeasible:
	@echo
	${MAKE} -C bea_is_dual_infeasible $(MAKECMDGOALS)
sort_basket:
	@echo
	${MAKE} -C sort_basket $(MAKECMDGOALS)
primal_bea_mpp:
	@echo
	${MAKE} -C primal_bea_mpp $(MAKECMDGOALS)
primal_iminus:
	@echo
	${MAKE} -C primal_iminus $(MAKECMDGOALS)
primal_update_flow:
	@echo
	${MAKE} -C primal_update_flow $(MAKECMDGOALS)
primal_net_simplex:
	@echo
	${MAKE} -C primal_net_simplex $(MAKECMDGOALS)
primal_start_artificial:
	@echo
	${MAKE} -C primal_start_artificial $(MAKECMDGOALS)
read_min:
	@echo
	${MAKE} -C read_min $(MAKECMDGOALS)
update_tree:
	@echo
	${MAKE} -C update_tree $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
