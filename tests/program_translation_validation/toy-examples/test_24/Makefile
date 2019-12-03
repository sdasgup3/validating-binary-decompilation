.PHONY: binary objdump mcsema mcsema_opt  to_byte read_bytes main keycomp
INDIR=binary/

all: binary objdump mcsema mcsema_opt  to_byte read_bytes main keycomp
compd: to_byte read_bytes main keycomp
compd_opt: to_byte read_bytes main keycomp
match: to_byte read_bytes main keycomp

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

reloc_binary:
	clang -Wl,-emit-relocs -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll --out binary/test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S -mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim -simplifycfg -basicaa -aa -instcombine -simplifycfg ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

to_byte:
	@echo
	${MAKE} -C to_byte $(MAKECMDGOALS)
read_bytes:
	@echo
	${MAKE} -C read_bytes $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
keycomp:
	@echo
	${MAKE} -C keycomp $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
