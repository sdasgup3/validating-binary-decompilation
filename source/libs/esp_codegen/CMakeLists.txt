add_llvm_library(LLVMesp_codegen 
	MODULE
	esp_codegen.cpp)
target_link_libraries(LLVMesp_codegen llvm-graph-matching data-dep-graph memssa)
target_include_directories(LLVMesp_codegen PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})

add_library(esp_codegen STATIC esp_codegen.cpp)
#target_link_libraries(esp-codegen llvm-graph-matching data-dep-graph memssa)
target_include_directories(esp_codegen PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})
