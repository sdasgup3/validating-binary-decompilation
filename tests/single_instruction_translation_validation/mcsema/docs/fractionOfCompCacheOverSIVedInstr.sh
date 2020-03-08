#!/bin/bash

UNIQ_COMPD_ENTRIES=$(wc -l cacheUniqInstr.log | cut -d ' ' -f1)
UNIQ_VALIDATED=$(wc -l allInstrUniq.log | cut -d ' ' -f1)
ANS=$(echo $UNIQ_COMPD_ENTRIES \* 100 /  $UNIQ_VALIDATED | bc -l)
echo $ANS
