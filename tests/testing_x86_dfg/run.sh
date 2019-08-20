#STOKE_DEBUG_DFG=/home/sdasgup3/Github/stoke-develop/./bin/stoke_debug_dfg
STOKE_DEBUG_DFG=/home/sdasgup3/Github/validating-binary-decompilation/source/build/bin/variable_bb_correspondence
ls *.asm | parallel  $STOKE_DEBUG_DFG --target {} --no-fresh-mem --x86-dfg-dot-out {}.dot

for file in $(ls *.asm); do
  diff $file.dot $file.dot.gold;
  retVal=$?
  if [ $retVal -ne 0 ]; then
    echo -e "\e[31mFail: $file\e[0m";
  else \
    echo -e "\e[32mPass: $file\e[0m"
  fi 
done
