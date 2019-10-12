# Program level validation

## Running [ToyExamples](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation/toy-examples)

### [Already populated] Create the wllvm binaries & Extract the bc files
```bash
make -C bc-seeds/ clean
make -C bc-seeds/
```

### [Already Populated] Create the directory layout
```bash
find bc-seeds/ -name "*.bc" | parallel  "echo; echo {}; ../../scripts/extractor.py -P ${HOME}/Github/validating-binary-decompilation/source/build/lib/LLVMfunc-analyzer.so -O ./ {}"
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

# To execute a particular stage for all the function within get-sign program
# make binary; make mcsema; make compd; make opt; make match

# To execute a particular stage for a particular function
# cd get_sign
# make binary; make mcsema; make compd; make opt; make match
# make all
```

### Batch Run
```bash
find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
| xargs  -I'abc' find 'abc' -name "Makefile" \
| parallel   "echo; echo {}; make -C \$(dirname {}) all"
# OR
# find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
# | xargs  -I'abc' find 'abc' -name "Makefile" \
# | parallel   "echo; echo {}; make -C \$(dirname {}) binary"
# find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
# | xargs  -I'abc' find 'abc' -name "Makefile" \
# | parallel   "echo; echo {}; make -C \$(dirname {}) mcsema"  
# find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
# | xargs  -I'abc' find 'abc' -name "Makefile" \
# | parallel   "echo; echo {}; make -C \$(dirname {}) compd"  
# find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
# | xargs  -I'abc' find 'abc' -name "Makefile" \
# | parallel   "echo; echo {}; make -C \$(dirname {}) opt"  
# find array-reverse get-sign sum-2-n add-sub binary-search -name "Makefile" \
# | xargs  -I'abc' find 'abc' -name "Makefile" \
# | parallel   "echo; echo {}; make -C \$(dirname {}) match"  
```


### Note
  -  The compiler used for the generting binary for programs, to be fed to McSema, should be the same as the one used for single insruction decompilation.
