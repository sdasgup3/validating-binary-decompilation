.PHONY: main accumulate_probabilities repeat_fasta random_fasta myrandom

all: main accumulate_probabilities repeat_fasta random_fasta myrandom
binary: main accumulate_probabilities repeat_fasta random_fasta myrandom
opt: main accumulate_probabilities repeat_fasta random_fasta myrandom
compd: main accumulate_probabilities repeat_fasta random_fasta myrandom
match: main accumulate_probabilities repeat_fasta random_fasta myrandom

main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
accumulate_probabilities:
	@echo
	${MAKE} -C accumulate_probabilities $(MAKECMDGOALS)
repeat_fasta:
	@echo
	${MAKE} -C repeat_fasta $(MAKECMDGOALS)
random_fasta:
	@echo
	${MAKE} -C random_fasta $(MAKECMDGOALS)
myrandom:
	@echo
	${MAKE} -C myrandom $(MAKECMDGOALS)
