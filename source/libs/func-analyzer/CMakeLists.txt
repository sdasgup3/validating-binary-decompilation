add_llvm_loadable_module(LLVMfunc-analyzer func-analyzer.cpp)
target_include_directories(LLVMfunc-analyzer PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

  
add_library(func-analyzer STATIC func-analyzer.cpp)
target_include_directories(func-analyzer PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
