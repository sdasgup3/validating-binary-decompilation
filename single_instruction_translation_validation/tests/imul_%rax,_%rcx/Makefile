.PHONY: clean
all: binary mcsema

objdump: imul_%rax,_%rcx
	objdump -d imul_%rax,_%rcx > objdump

mcsema: imul_%rax,_%rcx
	mcsema-disass --disassembler /home/deepan/ida-6.95/idal64 --os linux --arch amd64_avx --output imul_%rax,_%rcx.cfg --binary imul_%rax,_%rcx --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg imul_%rax,_%rcx.cfg --output imul_%rax,_%rcx.bc
	llvm-dis imul_%rax,_%rcx.bc -o imul_%rax,_%rcx.ll

assemble: imul_%rax,_%rcx.c
	gcc -Os imul_%rax,_%rcx.c -S -o imul_%rax,_%rcx.S

binary: imul_%rax,_%rcx.c
	gcc -Os imul_%rax,_%rcx.c -o imul_%rax,_%rcx
clean:
	rm *.bc *.ll imul_%rax,_%rcx *.cfg *.S objdump
