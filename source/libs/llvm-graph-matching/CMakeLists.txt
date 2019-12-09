add_library(llvm-graph-matching STATIC llvm-graph-matching.cpp)
target_link_libraries(llvm-graph-matching memssa)
target_include_directories(llvm-graph-matching PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
