.PHONY: binary objdump mcsema mcsema_opt  createtask pkt trace schedule Wait holdself findtcb release qpkt append idlefn workfn handlerfn devfn main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  createtask pkt trace schedule Wait holdself findtcb release qpkt append idlefn workfn handlerfn devfn main
compd: createtask pkt trace schedule Wait holdself findtcb release qpkt append idlefn workfn handlerfn devfn main
compd_opt: createtask pkt trace schedule Wait holdself findtcb release qpkt append idlefn workfn handlerfn devfn main
match: createtask pkt trace schedule Wait holdself findtcb release qpkt append idlefn workfn handlerfn devfn main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

createtask:
	@echo
	${MAKE} -C createtask $(MAKECMDGOALS)
pkt:
	@echo
	${MAKE} -C pkt $(MAKECMDGOALS)
trace:
	@echo
	${MAKE} -C trace $(MAKECMDGOALS)
schedule:
	@echo
	${MAKE} -C schedule $(MAKECMDGOALS)
Wait:
	@echo
	${MAKE} -C Wait $(MAKECMDGOALS)
holdself:
	@echo
	${MAKE} -C holdself $(MAKECMDGOALS)
findtcb:
	@echo
	${MAKE} -C findtcb $(MAKECMDGOALS)
release:
	@echo
	${MAKE} -C release $(MAKECMDGOALS)
qpkt:
	@echo
	${MAKE} -C qpkt $(MAKECMDGOALS)
append:
	@echo
	${MAKE} -C append $(MAKECMDGOALS)
idlefn:
	@echo
	${MAKE} -C idlefn $(MAKECMDGOALS)
workfn:
	@echo
	${MAKE} -C workfn $(MAKECMDGOALS)
handlerfn:
	@echo
	${MAKE} -C handlerfn $(MAKECMDGOALS)
devfn:
	@echo
	${MAKE} -C devfn $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
