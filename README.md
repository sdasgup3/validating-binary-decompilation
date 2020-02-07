# validating-binary-decompilation
![](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/docs/misc/overview_diag.png)

The project is about validating the correctness of "binary lifters", which translate binary code into an IR format. Specifically, this work focuses on checking the correctness of McSema translating x86-64 binary code into LLVM IR. Given a formal semantics and symbolic execution engine for x86-64 code and LLVM IR, this work uses McSema to translate individual x86-64 instructions into LLVM code and then compares the symbolic summaries obtained using those symbolic execution engines: if these summaries are not logically equivalent, a bug is detected in McSema. After applying this check to  x86-64 instructions, this work detected 29 new bugs in McSema, which are all reported and acknowledged (https://github.com/lifting-bits/remill/issues/376). 

In addition to this single-instruction validation, the work also describes a way to validate translations of sequences of instructions. First, they use a compositional lifter based on the validated translations to generate LLVM IR, and compare that the McSema lifted IR. The two versions are normalized using multiple standard LLVM passes and then compared by translating each into a graph and checking whether the graphs match. 


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
