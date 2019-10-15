.PHONY: clean
CLEAN_ASM=${HOME}/Github/X86-64-semantics/scripts/remove_directives.pl
DVAL_SCRIPT_DIR=${HOME}/Github/validating-binary-decompilation/tests/scripts/

objdump: test
	objdump -d $< > test.objdump

mcsema: test
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary $< --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis test.bc -o test.ll

assemble: test.c
	clang -Os $< -S -o test.s
	${CLEAN_ASM} -i --file test.s

declutter: test.ll
	${DVAL_SCRIPT_DIR}/declutter.pl --file $< --norenameintrinsics --opc addl_MINUS0x10__rbp____edx

binary: test.c
	clang -Os $< -o test
