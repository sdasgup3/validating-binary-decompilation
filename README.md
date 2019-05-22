# validating-binary-decompilation

## Build Instructions
```
cd source
mkdir build; cd build;
cmake .. -DLLVM_ROOT=/home/sdasgup3/Install/llvm/llvm-4.0.0.obj/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE="RelWithDebInfo" -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ABI_BREAKING_CHECKS=ON
cmake --build .
make -j8

make check-format
make update-format
```

## Runnning the var\_correspondence pass
```
 ~/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/build/lib/LLVMvariable_correspondence.so  < tests/get_sign/get_sign.ll   --var_corr -debug  -disable-output
```
