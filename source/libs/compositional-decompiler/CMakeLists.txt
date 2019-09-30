add_library(compositional-decompiler STATIC compositional-decompiler.cpp)
target_include_directories(compositional-decompiler PUBLIC ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES})
