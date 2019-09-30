## Prepare the tests directory
### Populate the seed file
```
cd tests
mkdir mcsema
cd !$

// Register Instructions
parallel -a  logs/all_registers.txt  "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup  --opc {} --workdir register-variants/{}"
parallel -a  logs/all_registers.txt  "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup  --opc {} --workdir register-variants/{} --samereg"
parallel -a  logs/all_registers.txt  "mv register-variants/{}/instructions/{}/{}.*  register-variants/{}/instructions/"
parallel -a  logs/all_registers.txt  "mv register-variants/{}/instructions/{}.samereg/{}.samereg.* register-variants/{}/instructions/"
parallel -a  logs/all_registers.txt  "rm -rf register-variants/{}/instructions/{}"
parallel -a  logs/all_registers.txt  "rm -rf register-variants/{}/instructions/{}.samereg"
parallel -a  logs/all_registers.txt  "mkdir -p register-variants/{}/seed"
parallel -a  logs/all_registers.txt  "mv register-variants/{}/instructions/* register-variants/{}/seed/"
parallel -a  logs/all_registers.txt  "rm -rf register-variants/{}/instructions"

// Immediate instructions
parallel -a logs/all_immediates.txt  "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup --opc {} --workdir immediate-variants/{}"
parallel -a logs/all_immediates.txt  "mv immediate-variants/{}/instructions/{}/{}.*  immediate-variants/{}/instructions/"
parallel -a logs/all_immediates.txt  "rm -rf immediate-variants/{}/instructions/{}"
parallel -a logs/all_immediates.txt  "mkdir -p immediate-variants/{}/seed"
parallel -a logs/all_immediates.txt  "mv immediate-variants/{}/instructions/* immediate-variants/{}/seed/"
parallel -a logs/all_immediates.txt  "rm -rf immediate-variants/{}/instructions"
parallel -a logs/all_immediates.txt  "sed -i 's/0x0/0xa/g'  immediate-variants/{}/seed/{}.s"

//Memory instructions
parallel -a logs/all_memories.txt "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup --opc {} --workdir memory-variants/{}"
parallel -a logs/all_memories.txt  "mv memory-variants/{}/instructions/{}/{}.*  memory-variants/{}/instructions/"
parallel -a logs/all_memories.txt  "rm -rf memory-variants/{}/instructions/{}"
parallel -a logs/all_memories.txt  "mkdir -p memory-variants/{}/seed"
parallel -a logs/all_memories.txt  "mv memory-variants/{}/instructions/* memory-variants/{}/seed/"
parallel -a logs/all_memories.txt  "rm -rf memory-variants/{}/instructions"
parallel -a logs/all_memories.txt  "sed -i 's/(%rbx)\|(%rcx)\|(%rdx)/-4(%rbp)/g'  memory-variants/{}/seed/{}.s"
parallel -a logs/all_memories.txt  "sed -i 's/0x0/0xa/g'  memory-variants/{}/seed/{}.s"

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
cd tests/mcsema
ls register-variants/   | parallel ../../scripts/create_directtory_structure.pl --seed register-variants/{}/seed/{}.s
ls immediate-variants/  | parallel ../../scripts/create_directtory_structure.pl --seed immediate-variants/{}/seed/{}.s
ls memory-variants/     | parallel ../../scripts/create_directtory_structure.pl --seed memory-variants/{}/seed/{}.s
ls system-variants/     | parallel ../../scripts/create_directtory_structure.pl --seed system-variants/{}/seed/{}.s
```

### Populate Binary
```
cd tests/mcsema
ls register-variants/  | parallel "cd register-variants/{}; make binary; make assemble;  cd -"
ls immediate-variants/ | parallel "cd immediate-variants/{}; make binary; make assemble; cd -"
ls memory-variants/    | parallel "cd memory-variants/{}; make binary; make assemble; cd -"
ls system-variants/    | parallel "cd system-variants/{}; make binary; make assemble; cd -"
```

## Finding the (un)supported lists
```
cd test/mcsema
#grep -lr  "cal.*__remill_sync_hyper_call" register-variants/* |& tee logs/unsupported_decompilation_register.txt
#grep -lr  "cal.*__remill_sync_hyper_call" immediate-variants/* |& tee logs/unsupported_decompilation_immediate.txt
#grep -lr  "cal.*__remill_sync_hyper_call" memory-variants/* |& tee logs/unsupported_decompilation_memory.txt
#grep -lr  "cal.*__remill_sync_hyper_call" system-variants/* |& tee logs/unsupported_decompilation_system.txt

grep -lr  "cal.*HandleUnsupported" register-variants/* |& tee logs/unsupported_decompilation_register.txt
grep -lr  "cal.*HandleUnsupported" immediate-variants/* |& tee logs/unsupported_decompilation_immediate.txt
grep -lr  "cal.*HandleUnsupported" memory-variants/* |& tee logs/unsupported_decompilation_memory.txt
grep -lr  "cal.*HandleUnsupported" system-variants/* |& tee logs/unsupported_decompilation_system.txt

~/scripts-n-docs/scripts/perl/comparefiles.pl --file logs/all_registers.txt --file logs/unsupported_decompilation_register.txt --show 0 > logs/supported_decompilation_register.txt

~/scripts-n-docs/scripts/perl/comparefiles.pl --file logs/all_immediates.txt --file logs/unsupported_decompilation_immediate.txt --show 0 > logs/supported_decompilation_immediate.txt
~/scripts-n-docs/scripts/perl/comparefiles.pl --file logs/all_memories.txt --file logs/unsupported_decompilation_memory.txt --show 0 > logs/supported_decompilation_memory.txt
```

## Populate the decompiled output and modifiled llvm file
```
cd  tests/mcsema

cat logs/supported_decompilation_register.txt | parallel "cd register-variants/{}; make mcsema; cd -"
cat logs/supported_decompilation_register.txt  | parallel  "echo; ../../scripts/declutter.pl --file register-variants/{}/test.ll --opc {}"

cat logs/supported_decompilation_immediate.txt | parallel "cd immediate-variants/{}; make mcsema; cd -"
cat logs/supported_decompilation_immediate.txt | parallel  "echo; ../../scripts/declutter.pl --file immediate-variants/{}/test.ll --opc {}"

cat logs/supported_decompilation_memory.txt | parallel "cd memory-variants/{}; make mcsema; cd -"
cat logs/supported_decompilation_memory.txt   | parallel   "echo; ../../scripts/declutter.pl --file memory-variants/{}/test.ll --opc {}"

cat logs/supported_decompilation_system.txt | parallel "cd system-variants/{}; make mcsema; cd -"
cat logs/supported_decompilation_system.txt   | parallel   "echo; ../../scripts/declutter.pl --file system-variants/{}/test.ll --opc {}"
```

## Check if the  opcode2instruction tool is equiv to specgen output
```

ls register-variants/ | parallel -j 1 ~/Github/stoke-develop/bin/opcode_to_instruction --opc {} |& tee ~/Junk/log
ls register-variants/ | parallel -j 1 cat register-variants/{}/seed/{}.s |& tee ~/Junk/out
remove clutter from ~/Junk/out and diff

ls immediate-variants/ | parallel -j 1 ~/Github/stoke-develop/bin/opcode_to_instruction --opc {} |& tee ~/Junk/log
ls immediate-variants/ | parallel -j 1 cat immediate-variants/{}/seed/{}.s |& tee ~/Junk/out
remove clutter from ~/Junk/out and diff

ls memory-variants/ | parallel -j 1 ~/Github/stoke-develop/bin/opcode_to_instruction --opc {} |& tee ~/Junk/log
ls memory-variants/ | parallel -j 1 cat memory-variants/{}/seed/{}.s |& tee ~/Junk/out
remove clutter from ~/Junk/out and diff


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
