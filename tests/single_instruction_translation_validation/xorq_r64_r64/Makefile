.PHONY: clean
all: binary mcsema
#KPROVE_OPTS="--log-basic --log-cells \"(#initTerm),(#target),(#result),(registers),(memory)\" --log  --state-log --log-success"
KPROVE_OPTS=--log-cells "(\#initTerm),(\#target),(\#result),(registers),(memory)" --log-basic  --state-log --log-success

objdump: xorq_r64_r64
	objdump -d xorq_r64_r64 > xorq_r64_r64.objdump

mcsema: test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary $< --entrypoint main
#mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer_O3
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc
	llvm-dis test.bc -o test.ll

assemble: xorq_r64_r64.c
	gcc -Os xorq_r64_r64.c -S -o xorq_r64_r64.S

binary: xorq_r64_r64.c
	gcc -Os xorq_r64_r64.c -o xorq_r64_r64

kprove: test-lspec.k
	kprove $< --directory ${HOME}/Github/llvm-verified-backend/kompiled-defs/llvm/ --smt_prelude /home/sdasgup3/Github/llvm-verified-backend/scripts/prelude.smt2 ${KPROVE_OPTS} 1>Output/test-lspec.out 2>&1

kli: xorq_r64_r64.mod.ll
	${HOME}/Github/llvm-verified-backend/scripts/kli $< 1> Output/xorq_r64_r64.lstate 2>&1
clean:
	rm *.bc *.ll xorq_r64_r64 *.cfg *.S *.objdump
