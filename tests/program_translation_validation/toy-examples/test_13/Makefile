.PHONY: main doWork checkFn doStuff

all: main doWork checkFn doStuff
binary: main doWork checkFn doStuff
mcsema: main doWork checkFn doStuff
opt: main doWork checkFn doStuff
compd: main doWork checkFn doStuff
match: main doWork checkFn doStuff

main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
doWork:
	@echo
	${MAKE} -C doWork $(MAKECMDGOALS)
checkFn:
	@echo
	${MAKE} -C checkFn $(MAKECMDGOALS)
doStuff:
	@echo
	${MAKE} -C doStuff $(MAKECMDGOALS)
