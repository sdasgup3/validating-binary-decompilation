.PHONY: binary objdump mcsema mcsema_opt  rsdec_204 generate_gf gen_poly decode_rs rsenc_204 encode_rs main
INDIR=binary/

all: binary objdump mcsema mcsema_opt  rsdec_204 generate_gf gen_poly decode_rs rsenc_204 encode_rs main
compd: rsdec_204 generate_gf gen_poly decode_rs rsenc_204 encode_rs main
compd_opt: rsdec_204 generate_gf gen_poly decode_rs rsenc_204 encode_rs main
match: rsdec_204 generate_gf gen_poly decode_rs rsenc_204 encode_rs main

binary:
	clang -O0 -lm -lpthread ${INDIR}test.ll -o ${INDIR}test

objdump:
	objdump -d ${INDIR}test > ${INDIR}/test.objdump

mcsema:
	mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output ${INDIR}test.mcsema.cfg --binary ${INDIR}/test --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg ${INDIR}test.mcsema.cfg --output ${INDIR}test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
	llvm-dis ${INDIR}test.mcsema.bc -o ${INDIR}test.mcsema.ll

mcsema_opt:
	../../../scripts/remove_definitions.pl --file binary/test.mcsema.ll
	opt -S  -inline   ${INDIR}test.mcsema.ll -o ${INDIR}test.mcsema.inline.ll;  opt -S  -O3    ${INDIR}test.mcsema.inline.ll -o ${INDIR}test.mcsema.opt.ll

rsdec_204:
	@echo
	${MAKE} -C rsdec_204 $(MAKECMDGOALS)
generate_gf:
	@echo
	${MAKE} -C generate_gf $(MAKECMDGOALS)
gen_poly:
	@echo
	${MAKE} -C gen_poly $(MAKECMDGOALS)
decode_rs:
	@echo
	${MAKE} -C decode_rs $(MAKECMDGOALS)
rsenc_204:
	@echo
	${MAKE} -C rsenc_204 $(MAKECMDGOALS)
encode_rs:
	@echo
	${MAKE} -C encode_rs $(MAKECMDGOALS)
main:
	@echo
	${MAKE} -C main $(MAKECMDGOALS)
clean:
	rm ${INDIR}test ${INDIR}test.mcsema.* ${INDIR}test.objdump
