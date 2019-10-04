#set(LLVM_LINK_COMPONENTS
#  ${LLVM_TARGETS_TO_BUILD}
#  IRReader
#  BitReader
#  BitWriter
#  Core
#  Support
#  ipo
#)
#
add_llvm_tool(decompiler
  decompiler.cpp
)

target_link_libraries(decompiler compositional-decompiler ${STOKE_ROOT}/lib/libstoke.a ${STOKE_ROOT}/src/ext/x64asm/lib/libx64asm.a -lboost_filesystem -lboost_system -lboost_regex  -lboost_thread)
target_include_directories(decompiler PRIVATE ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES})
