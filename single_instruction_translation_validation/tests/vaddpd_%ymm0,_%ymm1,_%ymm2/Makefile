.PHONY: clean
all: binary mcsema

objdump: vaddpd_%ymm0,_%ymm1,_%ymm2
	objdump -d vaddpd_%ymm0,_%ymm1,_%ymm2 > objdump

mcsema: vaddpd_%ymm0,_%ymm1,_%ymm2
	mcsema-disass --disassembler /home/deepan/ida-6.95/idal64 --os linux --arch amd64_avx --output vaddpd_%ymm0,_%ymm1,_%ymm2.cfg --binary vaddpd_%ymm0,_%ymm1,_%ymm2 --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg vaddpd_%ymm0,_%ymm1,_%ymm2.cfg --output vaddpd_%ymm0,_%ymm1,_%ymm2.bc
	llvm-dis vaddpd_%ymm0,_%ymm1,_%ymm2.bc -o vaddpd_%ymm0,_%ymm1,_%ymm2.ll

assemble: vaddpd_%ymm0,_%ymm1,_%ymm2.c
	gcc -Os vaddpd_%ymm0,_%ymm1,_%ymm2.c -S -o vaddpd_%ymm0,_%ymm1,_%ymm2.S

binary: vaddpd_%ymm0,_%ymm1,_%ymm2.c
	gcc -Os vaddpd_%ymm0,_%ymm1,_%ymm2.c -o vaddpd_%ymm0,_%ymm1,_%ymm2
clean:
	rm *.bc *.ll vaddpd_%ymm0,_%ymm1,_%ymm2 *.cfg *.S objdump
