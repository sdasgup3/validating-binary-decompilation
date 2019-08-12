STOKE_DEBUG_DFG=/home/sdasgup3/Github/paa-stoke/./bin/stoke_debug_dfg
ls *.asm | parallel  $STOKE_DEBUG_DFG --dfg --target {} --dot-out {}.dot

for file in $(ls *.asm); do
  diff $file.dot $file.dot.gold;
  retVal=$?
  if [ $retVal -ne 0 ]; then
    echo "Fail";
  else \
    echo "Pass";
  fi 
done
