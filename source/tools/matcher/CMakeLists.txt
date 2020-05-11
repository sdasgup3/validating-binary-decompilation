set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  IRReader
  BitReader
  BitWriter
  Core
  Support
  ipo
)

add_llvm_tool(matcher
  matcher.cpp
)

#target_link_libraries(matcher llvm-graph-matching memssa ${STOKE_ROOT}/lib/libstoke.a ${STOKE_ROOT}/src/ext/x64asm/lib/libx64asm.a)
#target_include_directories(matcher PRIVATE ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES} ${LLVM_INCLUDE_DIRS})
target_link_libraries(matcher llvm-graph-matching data-dep-graph memssa)
target_include_directories(matcher PRIVATE ${CMAKE_SOURCE_DIR}/include ${LLVM_INCLUDE_DIRS})
