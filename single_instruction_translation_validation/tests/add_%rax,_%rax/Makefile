.PHONY: clean
all: binary mcsema

objdump: add_%rax,_%rax
	objdump -d add_%rax,_%rax > objdump

mcsema: add_%rax,_%rax
	mcsema-disass --disassembler /home/deepan/ida-6.95/idal64 --os linux --arch amd64_avx --output add_%rax,_%rax.cfg --binary add_%rax,_%rax --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg add_%rax,_%rax.cfg --output add_%rax,_%rax.bc
	llvm-dis add_%rax,_%rax.bc -o add_%rax,_%rax.ll

assemble: add_%rax,_%rax.c
	gcc -Os add_%rax,_%rax.c -S -o add_%rax,_%rax.S

binary: add_%rax,_%rax.c
	gcc -Os add_%rax,_%rax.c -o add_%rax,_%rax
clean:
	rm *.bc *.ll add_%rax,_%rax *.cfg *.S objdump
