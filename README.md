# validating-binary-decompilation

The project is about validating deompilation of x86-64 program to LLVM IR. Such decompilation is currently done by few off-the-shelf decompilers.

The idea is to first do the vaidation of single instruction to LLVM IR. Next, we feed the previously validated LLVM IR sequence for each instruction to a compositional decompler which produces the decompilation  of a program by composing the LLVM IR sequence of each constituent instructions. This composed LLVM IR is going to be validated against the decompiler generated LLVM IR. The benefit is that the two IR programs are closer in sematics to each other and can be compared using syntactic graph matching or even with heavy weight semantics based equivalence checks. 

- Previously matcing algo was the sole novelty where as now the novelty liesin using SIV to assist program level Validation and the compositional Decompiler.
- SIngle Instructio valliudation and Program level V can be implemented isolation

|  Task | Timeline  |
|-------|-----------|
|  Mcsema Single Instruction Validation  | 10  |
|  FCD Single Instruction Validation  | 10  |
|  Revng Single Instruction Validation  | 10  |
|  Composoitional decompiler to propose a decompilation output | 10  |
|  Matching the proposed decompiation Vs Mcsema generated decompilation For Eqiv checking ( Syntactic matching / Semantic matching )  | 10 |
|  Same as above for fcd/Revng  | 5 |
|  Total | 55 |

