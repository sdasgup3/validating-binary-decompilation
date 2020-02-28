#!/bin/bash
LIST=$1

echo "Batch Run Begin"
echo

echo "Setting NORMALIZATION to custom passes"
export NORM=CUSTOM

echo
echo "Running Compositional Lifter + Normalizer + Matcher"
cat $LIST | parallel "echo ; echo {}; echo =======; cd {};  \
      echo \" Running Compositional Lifter\"; make  compd; echo ; \
      echo \"Running McSema\";  make -C ../ mcsema; echo; \
      echo  \"Running Matcher\"; make match; cd - "

echo "Batch Run Begin"
