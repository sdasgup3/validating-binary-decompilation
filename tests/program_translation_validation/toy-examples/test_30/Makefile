.PHONY: stderr_driver main print_it

all: stderr_driver main print_it
binary: stderr_driver main print_it
mcsema: stderr_driver main print_it
opt: stderr_driver main print_it
compd: stderr_driver main print_it
match: stderr_driver main print_it

stderr_driver:
	@echo
	${MAKE} -C stderr_driver $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
print_it:
	@echo
	${MAKE} -C print_it $(MAKECMDGOALS)
