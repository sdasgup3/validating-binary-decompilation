add_llvm_loadable_module(LLVMalias_info alias_info.cpp)
target_include_directories(LLVMalias_info PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

add_library(alias_info STATIC alias_info.cpp)
target_include_directories(alias_info PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
