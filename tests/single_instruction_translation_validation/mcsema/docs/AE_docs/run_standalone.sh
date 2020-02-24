#!/bin/bash

cd ~/Github/validating-binary-decompilation/tests/single_instruction_translation_validation/mcsema/register-variants/addq_r64_r64
make genxspec # Create spec-file for running sym-ex on binary instruction
make collect; make kompile ; # Generate sym-ex engine 
make xprove # Run symbolic execution
make kli; make genlspec # Create spec-file for running sym-ex on LLVM ir sequence
make genz3 # Generate verification queries
make provez3 # Dispatch verification queries to z3
cd -
