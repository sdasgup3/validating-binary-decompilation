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

### Run Binary
```bash
cat docs/filelist.txt | parallel " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
# C++ binaries are ignored as mentioned in docs/unsupported.txt
```

### Run McSema
```bash
cat docs/filelist.txt | parallel -j5  " echo; echo {}; cd {}/binary; ../../../../scripts/run_mcsema.sh ; cd ../.." |& tee ~/Junk/log
```

### Run compd
```bash
#cat docs/filelist.txt | parallel -j5  " echo; echo {}; cd {}; make compd ; cd .." |& tee ~/Junk/log
cat docs/makefilelist.txt | parallel  -j64 "echo; echo {}; echo =======;  make -C {} compd" |& tee docs/compd.log
grep "Pass" docs/compd.log > docs/compdPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/compdPass.log --file docs/makefilelist.txt --show 1 > docs/compdFail.log
```

### Run match
```bash
cat docs/compdPass.log | parallel  -j64 "echo; echo {}; echo =======;  make -C {} match" |& tee docs/match.log
grep "Pass" docs/compd.log > docs/compdPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/compdPass.log --file docs/makefilelist.txt --show 1 > docs/compdFail.log
```
