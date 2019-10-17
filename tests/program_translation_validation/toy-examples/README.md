# Program level validation

## Running [ToyExamples](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation/toy-examples)

### [Already populated] Create the wllvm binaries & Extract the bc files
```bash
cd bc-seeds
ls | parallel  "echo; echo {}; cd {}; make clean; make all; cd .." |& tee ~/Junk/log
```

### [Already Populated] Create the directory layout
```bash
ls bc-seeds | parallel  "echo; echo {}; ../../scripts/extractor.py -P ${HOME}/Github/validating-binary-decompilation/source/build/lib/LLVMfunc-analyzer.so -O ./ bc-seeds/{}/{}.bc"
```

### Test Runs
#### Prereq
  - Make sure the the following paths exists
  ```bash
  TOOLDIR=${HOME}/Github/validating-binary-decompilation/source/build/bin/
  ARTIFACTDIR=${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
  ```

#### Single Run
```bash
cd program_translation_validation/toy-examples/get-sign
# To execute all the stages for all the function within get-sign program
make all

# To generate the binary
make binary

# To generate the mcsema artifacts
make mcsema
make mcsema_opt

# To run compositional decompiler and matcher on all the functions
# make compd; make compd_opt; make match

# To execute a particular stage for a particular function
# cd main
# make compd; make compd_opt; make match
# OR
# make all
```

### Batch Run in stages
```bash
# Run McSema
cat docs/filelist.txt | parallel -j5  " echo; echo {}; cd {}/binary; ../../../../scripts/run_mcsema.sh ; cd ../.." |& tee ~/Junk/log

# Run compd
cat docs/makefilelist.txt | parallel  -j64 "echo; echo {}; echo =======;  make -C {} compd" |& tee docs/compd.log
grep "Pass" docs/compd.log > docs/compdPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/compdPass.log --file docs/makefilelist.txt --show 1 > docs/compdFail.log

# Run match
cat docs/compdPass.log | parallel  -j64 "echo; echo {}; echo =======;  make -C {} match" |& tee docs/match.log
grep "Pass" docs/compd.log > docs/matchPass.log
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/matchPass.log --file docs/makefilelist.txt --show 1 > docs/matchFail.log
```

### Important files
  - docs/compdPass.log
  - docs/compdFail.log
  - docs/matchPass.log
  - docs/matchFail.log



## Other Stuff
### Batch Run
```bash
# Fire all the runs from top Makefile
cat filelist.txt  | parallel -j4 "echo ; echo {}; cd {}; make all ; cd ..;" |& tee ~/Junk/log

# OR Fire all the runs from leaf Makefile
# [Already done] find . -mindepth 3 -maxdepth 3 -name Makefile | grep -v "old-examples\|bc-seeds" > docs/makefilelist.txt
cat makefilelist.txt | parallel -j1 "echo; echo {}; make -C {} all"
```

### Remove the cache directories for a particular program
```bash
grep "Workdir" compd.log | sed -e "s/Workdir:/rm -rf /g" | parallel {}
```


### Note
  -  The compiler used for the generting binary for programs, to be fed to McSema, should be the same as the one used for single insruction decompilation.
