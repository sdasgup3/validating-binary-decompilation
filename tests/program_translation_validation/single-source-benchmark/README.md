## [Already populated] Create the wllvm binaries & Extract the bc files
```bash
git clone git@github.com:llvm-mirror/test-suite.git
cd test-suite
mkdir build ; cd !$
# Set LLVM_COMPILER=clang in .bashrc and make sure that clang is in the path
cmake ../ -DCMAKE_C_COMPILER=wllvm -DCMAKE_CXX_COMPILER=wllvm++ -DCMAKE_C_FLAGS_RELEASE="-O0" -DCMAKE_CXX_FLAGS_RELEASE="-O0"
cd SingleSource/Benchmarks
make -j64 |& tee ~/Junk/log
# Save all execs in bc-seeds/all_execs.txt
# Use file commands to distinguish exec and directories
cat all_execs.txt | parallel "mkdir \$(basename {})"
cat all_execs.txt | parallel "extract-bc  {} --output \$(basename {})/\$(basename {}).bc"
cat all_execs.txt | parallel "llvm-dis \$(basename {})/\$(basename {}).bc -o  \$(basename {})/\$(basename {}).ll"

```

### [Already Populated] Create the directory layout
```bash
cat docs/filelist.txt | parallel  "echo; echo {}; ../../scripts/extractor.py -P ${HOME}/Github/validating-binary-decompilation/source/build/lib/LLVMfunc-analyzer.so -O ./ bc-seeds/{}/{}.bc"
find . -mindepth 3 -maxdepth 3 -name Makefile | grep -v "test-suite" > docs/makefilelist.txt
```

### Run Binary [Already Done; Needed for one time]
```bash
cat docs/filelist.txt | parallel " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
# C++ binaries are ignored as mentioned in docs/unsupported.txt
```

### Run McSema [Already Done, Needed one time]
```bash
cat docs/filelist.txt | parallel -j64  " echo; echo {}; cd {}; make mcsema ; cd .." |& tee ~/Junk/log
cat docs/filelist.txt | parallel "echo; echo {}; echo ===== ; ../../scripts/remove_definitions.pl --file {}/binary/test.mcsema.ll"
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt ; cd .." |& tee ~/Junk/log
```

### Run compd
```bash
cat docs/makefilelist.txt | parallel   "echo; echo {}; echo =======;  make -C {} compd" |& tee docs/compd.log
grep "Pass" docs/compd.log > docs/compdPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/compdPass.log --file docs/makefilelist.txt --show 1 > docs/compdFail.log
```

### Run compd_opt
```bash
cat docs/compdPass.log | parallel   "echo; echo {}; echo =======;  make -C {} compd_opt" |& tee docs/opt.log
```


### Run match
```bash
cat docs/compdPass.log | parallel "echo; echo {}; echo =======;  make -C {} match" |& tee docs/match.log
grep "Pass" docs/match.log > docs/matchPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl -file docs/compdPass.log --file docs/matchPass.log  --show 1 > docs/matchFail.log
```

## To find the the binaary size excersized by  a particular set of test-cases
```
# This is useful to pick up a representative which s smallest in binary size
cat docs/matchPass.log | parallel "echo -n \"{}: \" ; sed '/Disassembling Done/q' {}/compd.log | wc -l"
```

### Handling: --assume-none-decl-retval
  -  For some testcase we need to add the above switch in the Makefile's compd target. Refer to `docs/unsupportedReason.md` for the reason S1
  ```
  cat test-cases-list | parallel "sed -i -e 's/1>compd/--assume-none-decl-retval 1>compd/g' {}/Makefile"
  ```
  - Alternative solution is to modify the mcsema generared llvm files to convert all the called functions's defintion into delaration.
  ```
  Extract the top level directory names in ~/Junk/filelist.txt
  cat ~/Junk/filelist.txt | parallel "echo; echo {}; echo ===== ; ../../scripts/remove_definitions.pl --file {}/binary/test.mcsema.ll"
  cat ~/Junk/filelist.txt | parallel "cd {} ; make mcsema_opt; cd -"

  ## Remove special makefile switches (If required)
  cat ~/Junk/job.txt | parallel "sed -i -e 's/--assume-none-decl-retval//g' {}/Makefile"

  
  ```

### Unsupported reason keywords
```
cat docs/matchFail.log | parallel "echo; echo {}; echo =============; tail {}/match.log" |& tee ~/Junk/log
grep "BB Mismatch" ~/Junk/log  | wc
grep "MEMORY" ~/Junk/log  | wc

grep "Failed to extract" ~/Junk/log  | wc
cat docs/matchFail.log | parallel ~/scripts-n-docs/scripts/perl/filegrep.pl --patt "Failed to extract" --file {}/match.log
```
