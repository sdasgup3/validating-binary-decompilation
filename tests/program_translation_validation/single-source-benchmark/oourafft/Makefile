.PHONY: binary objdump mcsema  main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl

ifndef BIN_OPT
  BIN_OPT=O0
  INDIR=binary/
else
  ifeq (${BIN_OPT},O0)
    INDIR=binary/
  else
    INDIR=binary_${BIN_OPT}/
  endif
endif


all: binary objdump mcsema  main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl
compd: main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl
compd_opt: main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl
match: main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl

imatch: main get_time makewt putdata cdft errorcheck bitrv2 cftfsub bitrv2conj cftbsub cft1st cftmdl

binary:
	mkdir -p ${INDIR}
	/usr/bin/clang-6.0 -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test

reloc_binary:
	/usr/bin/clang-6.0 -Wl,-emit-relocs -${BIN_OPT} -lm -lpthread src/test.ll -o ${INDIR}test.reloc

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll
	../../../scripts/remove_definitions.pl --file ${INDIR}test.mcsema.ll --out ${INDIR}test.mcsema.calls_renamed.ll
	opt -S  -inline   ${INDIR}test.mcsema.calls_renamed.ll -o ${INDIR}test.mcsema.inline.ll


main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
get_time:
	@echo
	${MAKE} -C get_time $(MAKECMDGOALS)
makewt:
	@echo
	${MAKE} -C makewt $(MAKECMDGOALS)
putdata:
	@echo
	${MAKE} -C putdata $(MAKECMDGOALS)
cdft:
	@echo
	${MAKE} -C cdft $(MAKECMDGOALS)
errorcheck:
	@echo
	${MAKE} -C errorcheck $(MAKECMDGOALS)
bitrv2:
	@echo
	${MAKE} -C bitrv2 $(MAKECMDGOALS)
cftfsub:
	@echo
	${MAKE} -C cftfsub $(MAKECMDGOALS)
bitrv2conj:
	@echo
	${MAKE} -C bitrv2conj $(MAKECMDGOALS)
cftbsub:
	@echo
	${MAKE} -C cftbsub $(MAKECMDGOALS)
cft1st:
	@echo
	${MAKE} -C cft1st $(MAKECMDGOALS)
cftmdl:
	@echo
	${MAKE} -C cftmdl $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
