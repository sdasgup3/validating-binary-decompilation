add_llvm_loadable_module(LLVMvariable_correspondence variable_correspondence.cpp)
target_link_libraries(LLVMvariable_correspondence signature)
target_include_directories(LLVMvariable_correspondence PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

add_library(variable_correspondence STATIC variable_correspondence.cpp)
target_include_directories(variable_correspondence PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
