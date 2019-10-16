.PHONY: generate_test_data random4 compdecomp heap_adjust main

all: generate_test_data random4 compdecomp heap_adjust main
binary: generate_test_data random4 compdecomp heap_adjust main
opt: generate_test_data random4 compdecomp heap_adjust main
compd: generate_test_data random4 compdecomp heap_adjust main
match: generate_test_data random4 compdecomp heap_adjust main

generate_test_data:
	@echo
	${MAKE} -C generate_test_data $(MAKECMDGOALS)
random4:
	@echo
	${MAKE} -C random4 $(MAKECMDGOALS)
compdecomp:
	@echo
	${MAKE} -C compdecomp $(MAKECMDGOALS)
heap_adjust:
	@echo
	${MAKE} -C heap_adjust $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
