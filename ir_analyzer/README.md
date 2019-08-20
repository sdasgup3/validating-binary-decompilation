
The tool [variable_bb_correspondence](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/ir_analyzer/tools/variable_bb_correspondence) is build using the libraries of stoke and LLVM.

## Prereqs
 - LLVM 4.0: Build from source
 - [stoke](https://github.com/sdasgup3/stoke): branch working
   - Build using [instructions](https://github.com/sdasgup3/stoke#build-instructions)

## Build Instructions for tool [variable_bb_correspondence](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/ir_analyzer/tools/variable_bb_correspondence) 
```
# Keep the llvm-config path set to the version of llvm we want to use using $PATH
cd ir_analyzer
Update https://github.com/sdasgup3/validating-binary-decompilation/blob/master/ir_analyzer/CMakeLists.txt#L8, to point to the STOKE_ROOT
mkdir build; cd build;
# cmake .. -DLLVM_ROOT=/home/sdasgup3/Install/llvm/llvm-4.0.0.obj/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE="RelWithDebInfo" -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ABI_BREAKING_CHECKS=ON
cmake .. -DLLVM_ROOT=/home/sdasgup3/Install/llvm/llvm.4.0.0.install/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++  -DCMAKE_BUILD_TYPE="Debug" -DLLVM_ENABLE_ASSERTIONS=ON
make -j8

make check-format
make update-format
```

## Runnning the variable\_and\_basic\_block\_correspondence tool
```
validating-binary-decompilation/ir_analyzer/build/bin/variable_bb_correspondence 
 [--decompiled-output <file>.ll or <file>.bc] 
 [--target-function _${PROG}] 
 [--init-state-function _init_var_correspondence] 
 [--llvm-dfg-dot-out <file>.dot]
 [--llvm-dfg-pdf-out <file>.pdf]
 [--target binary.asm]
 [--no-fresh-mem]
 [--x86-dfg-pdf-out file.pdf]
```


## Deprecated
## To analyze the llvm dfg as a atndalone opt pass
```
cd /home/sdasgup3/Github/validating-binary-decompilation/tests/get_sign
~/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so  < get_sign_instrumented.ll   --var_corr -debug-only=variable_correspondence  -disable-output -target-function sub_660_get_sign -init-state-function sub_67b_init_var_correspondence
```
