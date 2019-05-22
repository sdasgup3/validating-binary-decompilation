# LLVM provide a CMake function to build a LLVM Module from sources, use it!
add_llvm_loadable_module(LLVMvariable_correspondence variable_correspondence.cpp)
add_library(variable_correspondence STATIC variable_correspondence.cpp)

# And it's still possible to use regular CMake linking stuff
target_link_libraries(LLVMvariable_correspondence utils)
