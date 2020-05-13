set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  IRReader
  BitReader
  BitWriter
  Core
  Support
  ipo
)

add_llvm_tool(iterative-pruning-matcher
  iterative-pruning-matcher.cpp
)

target_link_libraries(iterative-pruning-matcher llvm-graph-matching data-dep-graph memssa)
target_include_directories(iterative-pruning-matcher PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})
