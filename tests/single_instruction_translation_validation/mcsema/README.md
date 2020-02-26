# Current Status
```
Expected Gen-Z3 Passes: 370
Current Gen-Z3 Passes: 370
Prove-Z3 Pass: 361
Prove-Z3 Fail: 4
Prove-Z3 Unkown: 3
Prove-Z3 Error: 2
Total: 370

Undef-instance count: 119

Unk List
Test-Unk: psubb_xmm_xmm
Test-Unk: paddb_xmm_xmm
Test-Unk: mulq_r64

Fail List
Test-Fail: cmpxchgl_r32_r32
Test-Fail: andnps_xmm_xmm
Test-Fail: pandn_xmm_xmm
Test-Fail: pmuludq_xmm_xmm
Log File: run.log
```


## Prepare the tests directory

### Populate the seed file [One time]
```
mkdir -p tests/single_instruction_translation_validation/mcsema
cd !$

// Register Instructions
parallel -a  docs/all_registers.txt  "~/Github/stoke-develop/bin/specgen_setup  --opc {} --workdir register-variants/{}"
parallel -a  docs/all_registers.txt  "mv register-variants/{}/instructions/{}/{}.*  register-variants/{}/instructions/"
parallel -a  docs/all_registers.txt  "rm -rf register-variants/{}/instructions/{}"
parallel -a  docs/all_registers.txt  "mkdir -p register-variants/{}/seed"
parallel -a  docs/all_registers.txt  "mv register-variants/{}/instructions/* register-variants/{}/seed/"
parallel -a  docs/all_registers.txt  "rm -rf register-variants/{}/instructions"

// sameregs
parallel -a  docs/all_registers.txt  "~/Github/stoke-develop/bin/specgen_setup  --opc {} --workdir register-variants-samereg/{} --samereg"
parallel -a  docs/all_registers.txt  "mv register-variants-samereg/{}/instructions/{}.samereg/{}.samereg.* register-variants-samereg/{}/instructions/"
parallel -a  docs/all_registers.txt  "rm -rf register-variants-samereg/{}/instructions/{}.samereg"
parallel -a  docs/all_registers.txt  "mkdir -p register-variants-samereg/{}/seed"
parallel -a  docs/all_registers.txt  "mv register-variants-samereg/{}/instructions/* register-variants-samereg/{}/seed/"
parallel -a  docs/all_registers.txt  "rm -rf register-variants-samereg/{}/instructions"

// Immediate instructions
parallel -a docs/all_immediates.txt  "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup --opc {} --workdir immediate-variants/{}"
parallel -a docs/all_immediates.txt  "mv immediate-variants/{}/instructions/{}/{}.*  immediate-variants/{}/instructions/"
parallel -a docs/all_immediates.txt  "rm -rf immediate-variants/{}/instructions/{}"
parallel -a docs/all_immediates.txt  "mkdir -p immediate-variants/{}/seed"
parallel -a docs/all_immediates.txt  "mv immediate-variants/{}/instructions/* immediate-variants/{}/seed/"
parallel -a docs/all_immediates.txt  "rm -rf immediate-variants/{}/instructions"
parallel -a docs/all_immediates.txt  "sed -i 's/0x0/0xa/g'  immediate-variants/{}/seed/{}.s"

//Memory instructions
parallel -a docs/all_memories.txt "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup --opc {} --workdir memory-variants/{}"
parallel -a docs/all_memories.txt  "mv memory-variants/{}/instructions/{}/{}.*  memory-variants/{}/instructions/"
parallel -a docs/all_memories.txt  "rm -rf memory-variants/{}/instructions/{}"
parallel -a docs/all_memories.txt  "mkdir -p memory-variants/{}/seed"
parallel -a docs/all_memories.txt  "mv memory-variants/{}/instructions/* memory-variants/{}/seed/"
parallel -a docs/all_memories.txt  "rm -rf memory-variants/{}/instructions"
parallel -a docs/all_memories.txt  "sed -i 's/(%rbx)\|(%rcx)\|(%rdx)/-4(%rbp)/g'  memory-variants/{}/seed/{}.s"
parallel -a docs/all_memories.txt  "sed -i 's/0x0/0xa/g'  memory-variants/{}/seed/{}.s"

// System Instructions
parallel -a docs/all_system_instructions.txt  "/home/sdasgup3/Github/stoke-develop/bin/specgen_setup --prepare_concrete --opcode {} --workdir system-variants/{}"
parallel -a docs/create_separate_seed_files.txt ../../scripts/create_jmp_seed.pl --opc {} --workdir system-variants/{}
parallel -a docs/selective_jmp.txt mv system-variants/{}/instructions/{}/{}.* system-variants/{}/instructions/
parallel -a docs/selective_jmp.txt  "rm -rf system-variants/{}/instructions/{}"
find . -name check_stoke.txt | xargs rm -rf
parallel -a docs/selective_jmp.txt  "mkdir -p system-variants/{}/seed"
parallel -a docs/selective_jmp.txt  "mv system-variants/{}/instructions/* system-variants/{}/seed"
parallel -a docs/selective_jmp.txt  "rm -rf system-variants/{}/instructions"
```
### Populate C and Makefiles [One time]
```
cd tests/mcsema

ls register-variants/   | parallel ../../scripts/create_directtory_structure.pl --seed register-variants/{}/seed/{}.s --opc {}
ls register-variants-samereg/   | parallel ../../scripts/create_directtory_structure.pl --seed register-variants-samereg/{}/seed/{}.s --opc {}

ls immediate-variants/  | parallel ../../scripts/create_directtory_structure.pl --seed immediate-variants/{}/seed/{}.s --opc {}
find . -name "*.s" | grep seed | parallel "sed -i -e 's/-4/-16/g' {}"
ls memory-variants/     | parallel ../../scripts/create_directtory_structure.pl --seed memory-variants/{}/seed/{}.s --opc {}
ls system-variants/     | parallel ../../scripts/create_directtory_structure.pl --seed system-variants/{}/seed/{}.s --opc {}
```

### Populate Binary [One time]
```
cd tests/mcsema
ls register-variants/  | parallel "cd register-variants/{}; make binary; make assemble;  cd -"
ls register-variants-samereg/  | parallel "cd register-variants-samereg/{}; make binary; make assemble;  cd -"

ls immediate-variants/ | parallel "cd immediate-variants/{}; make binary; make assemble; cd -"
ls memory-variants/    | parallel "cd memory-variants/{}; make binary; make assemble; cd -"
ls system-variants/    | parallel "cd system-variants/{}; make binary; make assemble; cd -"
```


## Populate the decompiled output and modifiled llvm file
```
cd  tests/mcsema

cat docs/supported_decompilation_register.txt | parallel "cd register-variants/{}; make mcsema; cd -"
cat docs/supported_decompilation_register.txt | parallel "cd register-variants/{}; make declutter; cd -"

cat docs/supported_decompilation_register_samereg.txt  | parallel "cd register-variants-samereg/{}; make mcsema; cd -"
cat docs/supported_decompilation_register_samereg.txt | parallel "cd register-variants-samereg/{}; make declutter; cd -"

cat docs/supported_decompilation_immediate.txt | parallel "cd immediate-variants/{}; make mcsema; cd -"
cat docs/supported_decompilation_immediate.txt | parallel  "echo; ../../scripts/declutter.pl --file immediate-variants/{}/test.ll --opc {}"

cat docs/supported_decompilation_memory.txt | parallel "cd memory-variants/{}; make mcsema; cd -"
cat docs/supported_decompilation_memory.txt   | parallel   "echo; ../../scripts/declutter.pl --file memory-variants/{}/test.ll --opc {}"

cat docs/supported_decompilation_system.txt | parallel "cd system-variants/{}; make mcsema; cd -"
cat docs/supported_decompilation_system.txt   | parallel   "echo; ../../scripts/declutter.pl --file system-variants/{}/test.ll --opc {}"
```

## Finding the (un)supported lists
```
cd test/mcsema
#grep -lr  "cal.*__remill_sync_hyper_call" register-variants/* |& tee docs/unsupported_decompilation_register.txt
#grep -lr  "cal.*__remill_sync_hyper_call" immediate-variants/* |& tee docs/unsupported_decompilation_immediate.txt
#grep -lr  "cal.*__remill_sync_hyper_call" memory-variants/* |& tee docs/unsupported_decompilation_memory.txt
#grep -lr  "cal.*__remill_sync_hyper_call" system-variants/* |& tee docs/unsupported_decompilation_system.txt

grep -lr  "cal.*HandleUnsupported" register-variants/* |& tee docs/unsupported_decompilation_register.txt
grep -lr  "cal.*HandleUnsupported" register-variants-samereg/* |& tee docs/unsupported_decompilation_register_samereg.txt
grep -lr  "cal.*HandleUnsupported" immediate-variants/* |& tee docs/unsupported_decompilation_immediate.txt
grep -lr  "cal.*HandleUnsupported" memory-variants/* |& tee docs/unsupported_decompilation_memory.txt
grep -lr  "cal.*HandleUnsupported" system-variants/* |& tee docs/unsupported_decompilation_system.txt

~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/all_registers.txt --file docs/unsupported_decompilation_register.txt --show 0 > docs/supported_decompilation_register.txt
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/all_registers.txt --file docs/unsupported_decompilation_register_samereg.txt --show 0 > docs/supported_decompilation_register_samereg.txt

~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/all_immediates.txt --file docs/unsupported_decompilation_immediate.txt --show 0 > docs/supported_decompilation_immediate.txt
~/scripts-n-docs/scripts/perl/comparefiles.pl --file docs/all_memories.txt --file docs/unsupported_decompilation_memory.txt --show 0 > docs/supported_decompilation_memory.txt
```

## Generate spec output file for x86 (Register)
```
cat docs/supported_decompilation_register.txt | parallel -j15 "cd register-variants/{}; make genxspec; cd -"
cat docs/supported_decompilation_register.txt | parallel -j15 "cd register-variants/{}; make collect; cd -"
cd ~/Github/X86-64-semantics/semantics; ../scripts/kompile.pl --backend java
cat docs/supported_decompilation_register.txt | parallel -j15 "cd register-variants/{}; make xprove; cd -"

cat docs/supported_decompilation_register_samereg.txt | parallel mv register-variants-samereg/{}/seed/{}.samereg.s register-variants-samereg/{}/seed/{}.s
cat docs/supported_decompilation_register_samereg.txt | parallel  "cd register-variants-samereg/{}; make genxspec; cd -"
cat docs/supported_decompilation_register_samereg.txt | parallel  "cd register-variants-samereg/{}; make collect; cd -"
cat docs/supported_decompilation_register_samereg.txt | parallel -j10 "cd register-variants-samereg/{}; make xprove; cd -"
```

## Generate spec output file for x86 (Immediate)
```
cat docs/genz3PassI.log | parallel -j15 "cd {}; make genxspec; cd -"
cat docs/genz3PassI.log | parallel -j15 "cd {}; make collect; cd -"
cd /home/ubuntu/Github/X86-64-semantics/semantics; ../scripts/kompile.pl --backend java
cat docs/genz3PassI.log | parallel -j15 "cd {}; make xprove; cd -"
```

## Generate spec output file for x86 (Memory)
```
cat docs/genz3PassM.log | parallel -j15 "cd {}; make genxspec; cd -"
cat docs/genz3PassM.log | parallel -j15 "cd {}; make collect; cd -"
cd /home/ubuntu/Github/X86-64-semantics/semantics; ../scripts/kompile.pl --backend java
cat docs/genz3PassM.log | parallel -j15 "cd {}; make xprove; cd -"
```


## Generate spec output file for LLVM (Register)
```
cat docs/supported_decompilation_register.txt | parallel -j15 "echo; echo  {}; echo ====;  cd register-variants/{}; make kli; cd -"
cat docs/supported_decompilation_register_samereg.txt | parallel -j50 "echo; echo  {}; echo ====;  cd register-variants-samereg/{}; make kli; cd -" |& tee docs/kliRunSamereg.log

cat docs/kliFailR.log | parallel "echo; echo {}; echo === ; head register-variants/{}/Output/test-lstate.out" |& tee ~/Junk/log

cat docs/kliPassR.log | parallel -j15 "cd register-variants/{}; make genlspec; cd -"
cat docs/kliPassR.log | parallel -j15 "cd register-variants/{}; make lprove; cd -"

cat docs/kliPassSameR.log | parallel -j15 "cd register-variants-samereg/{}; make genlspec; cd -"
cat docs/kliPassSameR.log | parallel -j15 "cd register-variants-samereg/{}; make lprove; cd -"

or
cat docs/kliPassSameR.log | parallel -j10 "cd register-variants-samereg/{}; make xprove; cd -" |& tee docs/xprove.log ; cat docs/kliPassSameR.log | parallel -j15 "cd register-variants-samereg/{}; make lprove; cd -" |& tee docs/lprove.log

```

## Generate spec output file for LLVM (Immediate)
```
cat docs/genz3PassI.log  | parallel -j15 "echo; echo  {}; echo ====;  cd {}; make declutter; cd -" |& tee ~/Junk/log
cat docs/genz3PassI.log  | parallel -j15 "echo; echo  {}; echo ====;  cd {}; make kli; cd -" |& tee ~/Junk/log
cat docs/genz3PassI.log  | parallel -j15 "echo; echo  {}; echo ====;  cd {}; make genlspec; cd -" |& tee ~/Junk/log
cat docs/genz3PassI.log | parallel -j15 "echo; echo  {}; echo ====;  cd {}; make lprove; cd -" |& tee ~/Junk/log
```

## Generate and Compare the z3 output (Register)
```
cat docs/genz3PassR.log | parallel  "cd register-variants/{}; make genz3; cd -"
// genz3 pass/fails are stored at genz3(Pass/Fail).log 
cat docs/genz3PassR.log | parallel  "echo; echo; cd {}; make provez3; cd -"
//provez3(Pass/Fail/Unk) are stored at docs/provez3(Pass/Fail/Unk).log

or 

../../scripts/check_prover_status.sh


// samereg
cat docs/lprove_xprovePassSameR.log | parallel  "cd register-variants-samereg/{}; make genz3; cd -" |& tee log
// genz3 pass/fails are stored at genz3(Pass/Fail)SameR.log 
cat docs/genz3PassSameR.log | parallel  "echo; echo; cd {}; make provez3; cd -" |& tee run.log
//provez3(Pass/Fail/Unk) are stored at docs/provez3(Pass/Fail/Unk)SameR.log
```

## Generate and Compare the z3 output (Immediate) 
```
cat docs/genz3PassI.log | parallel  "cd {}; make genz3; cd -" |& tee ~/Junk/log
cat docs/genz3PassI.log | parallel  "echo; echo; cd {}; make provez3; cd -" |& tee ~/Junk/log
```


## Deprecated

## To do
## test.ll --> test.mod.ll
- The filename should be test.mod.ll
- convert i32 to i64  in the structure
- whenever there is a `add uw/sw/.. operands` --> `add operands`
- include llvm.ctpop defn
- handle PC
- `./remill/Arch/X86/Runtime/State.h`: Handle all registers and flags


### Generate spec output file for x86
```
# prereq: test.s
# make collect
# make kompile
# make xstate

// Generate the test-xspec.k file
cat docs/supported_decompilation_register.txt | parallel ../../scripts/create_xspec.pl --seed register-variants/{}/seed/{}.s
cat docs/supported_decompilation_register.txt | parallel -j15 "cd register-variants/{}; make xprove; cd -"
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
