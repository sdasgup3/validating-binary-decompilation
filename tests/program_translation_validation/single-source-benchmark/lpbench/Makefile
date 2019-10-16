.PHONY: matgen random_double idamax dscal daxpy dgefa dgesl main

all: matgen random_double idamax dscal daxpy dgefa dgesl main
binary: matgen random_double idamax dscal daxpy dgefa dgesl main
opt: matgen random_double idamax dscal daxpy dgefa dgesl main
compd: matgen random_double idamax dscal daxpy dgefa dgesl main
match: matgen random_double idamax dscal daxpy dgefa dgesl main

matgen:
	@echo
	${MAKE} -C matgen $(MAKECMDGOALS)
random_double:
	@echo
	${MAKE} -C random_double $(MAKECMDGOALS)
idamax:
	@echo
	${MAKE} -C idamax $(MAKECMDGOALS)
dscal:
	@echo
	${MAKE} -C dscal $(MAKECMDGOALS)
daxpy:
	@echo
	${MAKE} -C daxpy $(MAKECMDGOALS)
dgefa:
	@echo
	${MAKE} -C dgefa $(MAKECMDGOALS)
dgesl:
	@echo
	${MAKE} -C dgesl $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
