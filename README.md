# validating-binary-decompilation
![](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/docs/misc/overview_diag.png)

The project is about validating decompilation of x86-64 program to LLVM IR. Such
decompilation is currently done by few off-the-shelf decompilers.  The idea is
to first do the validation of single instruction to LLVM IR. Next, we feed the
previously validated LLVM IR sequence for each instruction to a compositional
decompiler which produces the decompilation  of a program by composing the LLVM
IR sequence of each constituent instructions. This composed LLVM IR is going to
be validated against the decompiler generated LLVM IR. The benefit is that the
two IR programs are closer in semantics to each other and can be compared using
syntactic graph matching or even with heavy weight semantics based equivalence
checks. 

# Repository Checkout
```C
git clone --recursive https://github.com/sdasgup3/validating-binary-decompilation.git
// submodule includes an experimental opentuner
```


# Directory Structure 
 - [Source Code](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source)
 -  Testing
  - [Program Level Validation](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation)
  - [Single Instruction Level Validation](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/single_instruction_translation_validation)

## TB Done
  - handling the false positives on Matcher failures.
  - Automatically finding llvm opt passes required for the normalizaton phase
  - Efficient Caching: Right now all the instances of an instruction is cache; leads to large cahce size ~100G; Resuse similar instances
    - Reusing jmp/jcc/call is prety trivial
    - mov imm64 to ... or mov mem to ... is non trivial

## Immediate Goal
  -  Extending the methodology to other lifters like fcd/rev.ng
