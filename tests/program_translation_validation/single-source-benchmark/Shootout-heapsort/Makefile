.PHONY: gen_random benchmark_heapsort main

all: gen_random benchmark_heapsort main
binary: gen_random benchmark_heapsort main
opt: gen_random benchmark_heapsort main
compd: gen_random benchmark_heapsort main
match: gen_random benchmark_heapsort main

gen_random:
	@echo
	${MAKE} -C gen_random $(MAKECMDGOALS)
benchmark_heapsort:
	@echo
	${MAKE} -C benchmark_heapsort $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
