#!/bin/bash
PROG=$1

cd ~/Github/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/$PROG
make collect; make kompile ; # Generate sym-ex engine on binary
make genxspec # Create spec-file for running sym-ex on binary instruction
make xprove # Run symbolic execution

# make mcsema # Skipped
make declutter # Sanitize the McSema lifter IR, test.ll 
make kli; make genlspec # Create spec-file for running sym-ex on LLVM ir sequence

make genz3 # Generate verification queries
make provez3 # Dispatch verification queries to z3
cd -
