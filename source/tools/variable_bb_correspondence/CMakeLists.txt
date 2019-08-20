set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  IRReader
  BitReader
  BitWriter
  Core
  Support
)

add_llvm_tool(variable_bb_correspondence
  variable_bb_correspondence.cpp
)
target_link_libraries(variable_bb_correspondence signature ${STOKE_ROOT}/lib/libstoke.a ${STOKE_ROOT}/src/ext/x64asm/lib/libx64asm.a)
target_include_directories(variable_bb_correspondence PRIVATE ${STOKE_INCLUDE_DIRECTORIES})
