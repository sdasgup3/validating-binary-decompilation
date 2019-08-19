add_llvm_loadable_module(LLVMmax_stack_height max_stack_height.cpp)
target_include_directories(LLVMmax_stack_height PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

add_library(max_stack_height STATIC max_stack_height.cpp)
target_include_directories(max_stack_height PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
