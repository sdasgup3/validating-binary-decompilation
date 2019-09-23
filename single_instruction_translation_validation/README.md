## Prepare the tests directory
### Populate the seed file
```
cd tests
mkdir mcsema
cd !$

// Register Instructions
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt "/home/sdasgup3/Github/X86-64-semantics/scripts/process_spec.pl --prepare_concrete --opcode {} --workdir register-variants/{}"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt "/home/sdasgup3/Github/X86-64-semantics/scripts/process_spec.pl --prepare_concrete --opcode {} --workdir register-variants/{} --samereg"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt  "mv register-variants/{}/instructions/{}/{}.*  register-variants/{}/instructions/"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt  "mv register-variants/{}/instructions/{}.samereg/{}.samereg.* register-variants/{}/instructions/"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt  "rm -rf register-variants/{}/instructions/{}"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt  "rm -rf register-variants/{}/instructions/{}.samereg"
find . -name check_stoke.txt | xargs rm -rf
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/register_instructions.txt  "mv register-variants/{}/instructions register-variants/{}/seed"

// Immediate instructions
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt "/home/sdasgup3/Github/X86-64-semantics/scripts/process_spec.pl --prepare_concrete --opcode {} --workdir immediate-variants/{}"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt  "mv immediate-variants/{}/instructions/{}/{}.*  immediate-variants/{}/instructions/"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt  "rm -rf immediate-variants/{}/instructions/{}"
find . -name check_stoke.txt | xargs rm -rf
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt  "mv immediate-variants/{}/instructions immediate-variants/{}/seed"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt  "sed -i 's/0x0/0xa/g'  immediate-variants/{}/seed/{}.s"

//Memory instructions
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt "/home/sdasgup3/Github/X86-64-semantics/scripts/process_spec.pl --prepare_concrete --opcode {} --workdir memory-variants/{}"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt  "mv memory-variants/{}/instructions/{}/{}.*  memory-variants/{}/instructions/"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt  "rm -rf memory-variants/{}/instructions/{}"
find . -name check_stoke.txt | xargs rm -rf
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt  "mv memory-variants/{}/instructions memory-variants/{}/seed"
parallel -a ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt  "sed -i 's/(%rbx)\|(%rcx)/-4(%rbp)/g'  memory-variants/{}/seed/{}.s"

// System Instructions
parallel -a logs/all_system_instructions.txt  "/home/sdasgup3/Github/X86-64-semantics/scripts/process_spec.pl --prepare_concrete --opcode {} --workdir system-variants/{}"
parallel -a logs/create_separate_seed_files.txt ../../scripts/create_jmp_seed.pl --opc {} --workdir system-variants/{}
parallel -a logs/selective_jmp.txt mv system-variants/{}/instructions/{}/{}.* system-variants/{}/instructions/
parallel -a logs/selective_jmp.txt  "rm -rf system-variants/{}/instructions/{}
find . -name check_stoke.txt | xargs rm -rf
parallel -a logs/selective_jmp.txt  "mv system-variants/{}/instructions system-variants/{}/seed"
```
### Populate C and Makefiles
```
cd tests
ls mcsema/register-variants/ | parallel ./../scripts/create_directtory_structure.pl --seed mcsema/register-variants/{}/seed/{}.s
ls mcsema/immediate-variants/ | parallel ./../scripts/create_directtory_structure.pl --seed mcsema/immediate-variants/{}/seed/{}.s
ls mcsema/memory-variants/ | parallel ./../scripts/create_directtory_structure.pl --seed mcsema/memory-variants/{}/seed/{}.s
ls mcsema/system-variants/ | parallel ./../scripts/create_directtory_structure.pl --seed mcsema/system-variants/{}/seed/{}.s
```

### Populate Binary and decompiled outputs
```
cd tests
ls mcsema/register-variants/  | parallel "cd mcsema/register-variants/{}; make binary; make assemble; make mcsema; cd -"
ls mcsema/immediate-variants/ | parallel "cd mcsema/immediate-variants/{}; make binary; make assemble; make mcsema; cd -"
ls mcsema/memory-variants/    | parallel "cd mcsema/memory-variants/{}; make binary; make assemble; make mcsema; cd -"
ls mcsema/system-variants/    | parallel "cd mcsema/system-variants/{}; make binary; make assemble; make mcsema; cd -"
```

## Finding the (un)supported lists
```
cd mcsema
grep -lr  "cal.*__remill_sync_hyper_call" register-variants/* |& tee logs/unsupported_decompilation_register.txt
grep -lr  "cal.*__remill_sync_hyper_call" immediate-variants/* |& tee logs/unsupported_decompilation_immediate.txt
grep -lr  "cal.*__remill_sync_hyper_call" memory-variants/* |& tee logs/unsupported_decompilation_memory.txt
grep -lr  "cal.*__remill_sync_hyper_call" system-variants/* |& tee logs/unsupported_decompilation_system.txt

~/scripts-n-docs/scripts/perl/comparefiles.pl --file ~/Github/X86-64-semantics/docs/relatedwork/strata/Registers/register_instructions.txt --file logs/unsupported_decompilation_register.txt --show 0 > logs/supported_decompilation_register.txt
~/scripts-n-docs/scripts/perl/comparefiles.pl --file ~/Github/X86-64-semantics/docs/relatedwork/strata/Immediates/immediate_instructions.txt --file logs/unsupported_decompilation_immediate.txt --show 0 > logs/supported_decompilation_immediate.txt
~/scripts-n-docs/scripts/perl/comparefiles.pl --file ~/Github/X86-64-semantics/docs/relatedwork/strata/Memories/memory_instructions.txt --file logs/unsupported_decompilation_memory.txt --show 0 > logs/supported_decompilation_memory.txt
```

## Populate the modifiled llvm file
```
cd  tests/mcsema
cat logs/supported_decompilation_register.txt  | parallel  "echo; ../../scripts/declutter.pl --file register-variants/{}/test.ll --opc {}"
cat logs/supported_decompilation_immediate.txt | parallel  "echo; ../../scripts/declutter.pl --file immediate-variants/{}/test.ll --opc {}"
cat logs/supported_decompilation_memory.txt   | parallel   "echo; ../../scripts/declutter.pl --file memory-variants/{}/test.ll --opc {}"
cat logs/supported_decompilation_system.txt   | parallel   "echo; ../../scripts/declutter.pl --file system-variants/{}/test.ll --opc {}"
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
