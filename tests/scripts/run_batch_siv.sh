#!/bin/bash
LIST=$1

## Number of jobs to issue in parallel
P=$2

if [ -z "$P" ]; then
  P=1
fi

TESTARENA="~/Github/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/" 

echo
echo "Cleaning Stale instr semantics definitions"
cd ~/Github/X86-64-semantics/semantics
rm -rf underTestInstructions/*
cd -

echo
echo "Collecting instructions from binary"
cat $LIST | parallel "cd $TESTARENA/{}; make collect; cd -"

echo
echo "Kompiling the collected X86 semantics to create a sym-ex"
cd ~/Github/X86-64-semantics/semantics
../scripts/kompile.pl --backend java
cd -

echo
echo "Batch Run Begin using $P jobs in parallel"

cat $LIST | parallel -j $P "echo ; echo {}; echo ======; cd ${TESTARENA}/{}; \
      echo; echo \"Generating symbolic summary for binary instruction\"; \
      make genxspec; make xprove; \
      echo; echo \"Generating symbolic summary for lifted LLVM IR\"; \
      make declutter; make kli; make genlspec; make lprove; \
      echo; echo \"Generating verification conditions\"; \
      make genz3; \
      echo; echo \"Prove verification conditions\"; \
      make provez3; \
      cd -"

echo "Batch Run End"
