#add_llvm_loadable_module(LLVMmemssa memssa.cpp)
#target_include_directories(LLVMmemssa PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
add_library(memssa STATIC memssa.cpp)
target_include_directories(memssa PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})
