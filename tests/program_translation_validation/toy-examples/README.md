# Program level validation
## Running [ToyExamples](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation/toy-examples)

### Current Status
#### Status check commands
  ```
  cat docs/compdPass.log | parallel "cd {}; ../../../../scripts/check_status.sh --msg {} --dir mcsema_O2 --match ; cd -" | grep "both-exact-match" | wc
  cat docs/compdPass.log | parallel "cd {}; ../../../../scripts/check_status.sh --msg {} --dir mcsema_O2 --match ; cd -" | grep "m2p-multi-match" | wc
  cat docs/compdPass.log | parallel "cd {}; ../../../../scripts/check_status.sh --msg {} --dir mcsema_O2 --match ; cd -" | grep "p2m-multi-match" | wc
  cat docs/compdPass.log | parallel "cd {}; ../../../../scripts/check_status.sh --msg {} --dir mcsema_O2 --match ; cd -" | grep "Fail" | wc
  ```

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
  ${HOME}/Github/validating-binary-decompilation/source/build/bin/
  ${HOME}/Github/validating-binary-decompilation/tests/compositional_artifacts_single_instruction_decompilation/
  ```

### Batch Run in stages (Recommended)
```bash

# Generate binaries
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log

# Generate McSema Artifacts [Already Done; Do this if required]
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log

# Run compd
cat  docs/compdPass.log | parallel  "echo; echo {}; make -C {} compd" |& tee docs/compd.log

# Run compd opt
cat docs/compdPass.log | parallel   "echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log

# Run match
cat docs/compdPass.log | parallel    "echo; echo {}; make -C {} match" |& tee docs/match.log
```


### Compd failures
  -  ` __asm__("addq $0xfffffff8, %rdx") clang cannot compile but gcc can`
  - indirect jumps for jump tables like test_20/switches

### Miscellaneous
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
make compd; make compd_opt; make match

# To execute a particular stage for a particular function
cd main
make compd; make compd_opt; make match
# OR
make all
```

#### Remove the cache directories for a particular program
```bash
grep "Workdir" compd.log | sed -e "s/Workdir:/rm -rf /g" | parallel {}
```


#### Note
  -  The compiler used for the generting binary for programs, to be fed to McSema, should be the same as the one used for single insruction decompilation.
  - Using relocation information for compd, does not neccesarily mean that mcsema needs to decompile the same binary with relocation info, but it is a good practise to enable both compd and mcsema equally.
  Currently, ida having issues with running on binaries with relocation info.

  - Use clang-6.0 for binary geneartion
  ```
  
int main() {
  __asm__("movl $0xa, 0x200b02(%rip)");
}
  clang-4 gives wrong rip offset
  ```
