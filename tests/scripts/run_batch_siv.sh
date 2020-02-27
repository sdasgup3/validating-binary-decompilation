#!/bin/bash
LIST=$1
P=$2

if [ -z "$P" ]; then
  P=15
fi

TESTARENA="~/Github/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/" 

echo
echo "Cleaning Stale instr semantics definitions"
cd ~/Github/X86-64-semantics/semantics
rm -rf underTestInstructions/*
cd -

echo
echo "Collecting instructions"
cat $LIST | parallel "cd $TESTARENA/{}; make collect; cd -"

echo
echo "Kompiling"
cd ~/Github/X86-64-semantics/semantics
../scripts/kompile.pl --backend java
cd -

echo
echo "Batch Run Begin using $P jobs in parallel"

cat $LIST | parallel -j $P "echo ; echo {}; echo ======; cd ${TESTARENA}/{}; \
      make genxspec; make xprove; \
      make declutter; make kli; make genlspec; \
      make genz3; \
      make provez3; \
      cd -"

echo "Batch Run End"
