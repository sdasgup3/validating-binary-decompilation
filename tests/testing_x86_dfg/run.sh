STOKE_DEBUG_DFG=/home/sdasgup3/Github/paa-stoke/./bin/stoke_debug_dfg
ls *.asm | parallel  $STOKE_DEBUG_DFG --dfg --target {} --no-fixed-mem --dot-out {}.dot

for file in $(ls *.asm); do
  diff $file.dot $file.dot.gold;
  retVal=$?
  if [ $retVal -ne 0 ]; then
    echo -e "\e[31mFail: $file\e[0m";
  else \
    echo -e "\e[32mPass: $file\e[0m"
  fi 
done
