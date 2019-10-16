.PHONY: main create_link_list init simulate kill_list

all: main create_link_list init simulate kill_list
binary: main create_link_list init simulate kill_list
opt: main create_link_list init simulate kill_list
compd: main create_link_list init simulate kill_list
match: main create_link_list init simulate kill_list

main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
create_link_list:
	@echo
	${MAKE} -C create_link_list $(MAKECMDGOALS)
init:
	@echo
	${MAKE} -C init $(MAKECMDGOALS)
simulate:
	@echo
	${MAKE} -C simulate $(MAKECMDGOALS)
kill_list:
	@echo
	${MAKE} -C kill_list $(MAKECMDGOALS)
