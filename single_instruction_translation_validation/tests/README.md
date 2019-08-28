## Generate assembly
```
make assemble
// prune out the clutter
```

## Generate spec output file for x86
```
prereq: test.s
make collect
make kompile
make xstate
// Generate the test-xspec.k file
make xprove
```

## Generate spec output file for LLVM
```
make mcsema // Generate the decompiled LLVM file test.ll
// Modify the LLVM file to test.mod.ll

make kli // Generate the krun output (concrete run output) of test.mod.ll
// Generate the test-lspec.k file
make lprove
```

## Compare the z3 output
```
// Generate the z3 query file test-z3.py
python test-z3.py
```

## To do
## test.ll --> test.mod.ll
- The filename should be test.mod.ll
- convert i32 to i64  in the structure
- whenever there is a `add uw/sw/.. operands` --> `add operands`
- include llvm.ctpop defn
- handle PC
- `./remill/Arch/X86/Runtime/State.h`: Handle all registers and flags


- S: provie the seed
- D: generate the C, Makefile, llmod script
- S: ..
- D: lstate -> lspec
- D: xstate -> xspec
- S: krpove
- D: x.lspec --> z3
