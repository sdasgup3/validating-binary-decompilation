add_llvm_loadable_module(LLVMstack_deconstructor stack_deconstructor.cpp)
target_link_libraries(LLVMstack_deconstructor max_stack_height)
target_include_directories(LLVMmax_stack_height PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

add_library(stack_deconstructor STATIC stack_deconstructor.cpp)
target_include_directories(stack_deconstructor PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
