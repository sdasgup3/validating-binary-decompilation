# validating-binary-decompilation

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


# Directory Structure 
## [Source](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/source)
## Testing
### [Program Level Validation](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/program_translation_validation)



### [NOTES]
- In the previous matching algorithm (based on graph matching of X86 and lifted
    LLVM IR data flow graphs), decompiler agnostic matching was the sole novelty whereas now the novelty
lies in using "Single Instruction Validation" to assist program level
Validation and the compositional Decompiler.
- Single instruction validation and Program level V can be implemented
isolation

|  Task | Timeline  |
|-------|-----------|
|  Mcsema Single Instruction Validation  | 10  |
|  FCD Single Instruction Validation  | 10  |
|  Revng Single Instruction Validation  | 10  |
|  Compositional decompiler to propose a decompilation output | 10  |
|  Matching the proposed decompilation Vs Mcsema generated decompilation For Equiv checking ( Syntactic matching / Semantic matching )  | 10 |
|  Same as above for fcd/Revng  | 5 |
|  Total | 55 |

