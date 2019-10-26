add_llvm_tool(spec-to-smt
  spec-to-smt.cpp
)

target_link_libraries(spec-to-smt smt-generator ${STOKE_ROOT}/lib/libstoke.a ${STOKE_ROOT}/src/ext/x64asm/lib/libx64asm.a -lboost_filesystem -lboost_system -lboost_regex  -lboost_thread)
target_include_directories(spec-to-smt PRIVATE ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES})
