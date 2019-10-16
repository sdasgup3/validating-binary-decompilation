.PHONY: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main

all: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
binary: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
opt: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
compd: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main
match: eval_A eval_A_times_u eval_At_times_u eval_AtA_times_u main

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
