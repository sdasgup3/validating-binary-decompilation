.PHONY: clean
all: binary mcsema

objdump: xor_%rax,_%rax
	objdump -d xor_%rax,_%rax > objdump

mcsema: xor_%rax,_%rax
	mcsema-disass --disassembler /home/deepan/ida-6.95/idal64 --os linux --arch amd64_avx --output xor_%rax,_%rax.cfg --binary xor_%rax,_%rax --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg xor_%rax,_%rax.cfg --output xor_%rax,_%rax.bc
	llvm-dis xor_%rax,_%rax.bc -o xor_%rax,_%rax.ll

assemble: xor_%rax,_%rax.c
	gcc -Os xor_%rax,_%rax.c -S -o xor_%rax,_%rax.S

binary: xor_%rax,_%rax.c
	gcc -Os xor_%rax,_%rax.c -o xor_%rax,_%rax
clean:
	rm *.bc *.ll xor_%rax,_%rax *.cfg *.S objdump
