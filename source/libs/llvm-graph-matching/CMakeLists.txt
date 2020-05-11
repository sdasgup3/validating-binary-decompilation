add_library(data-dep-graph STATIC data-dep-graph.cpp)
target_link_libraries(data-dep-graph memssa)
target_include_directories(data-dep-graph PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)

add_library(llvm-graph-matching STATIC llvm-graph-matching.cpp)
target_link_libraries(llvm-graph-matching data-dep-graph)
target_include_directories(llvm-graph-matching PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
