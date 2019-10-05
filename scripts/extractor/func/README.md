# To Compile:

mkdir build && cd build
cmake .. -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
opt-6.0 -load ./libfuncPass.so -disable-output -func {insert LLVM IR file here} [> {output.txt} if you want to save results to file instead of stdout]

**Note: You need at least LLVM 6.0 to build this pass**
