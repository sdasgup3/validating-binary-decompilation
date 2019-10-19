.PHONY: binary objdump mcsema declutter
CLEAN_ASM=${HOME}/Github/X86-64-semantics/scripts/remove_directives.pl
DVAL_SCRIPT_DIR=${HOME}/Github/validating-binary-decompilation/tests/scripts/

objdump:
	objdump -d test > test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis test.bc -o test.ll

declutter:
	${DVAL_SCRIPT_DIR}/declutter.pl --file test.ll --norenameintrinsics --opc callq_._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc

binary:
	clang -Os test.c -o test
