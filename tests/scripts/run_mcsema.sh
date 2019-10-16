#!/bin/bash

mcsema-disass --disassembler ${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.mcsema.cfg --binary test --entrypoint main
mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.mcsema.cfg --output test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
llvm-dis test.mcsema.bc -o test.mcsema.ll
