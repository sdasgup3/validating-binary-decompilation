add_library(exprs STATIC exprs.cpp)
target_include_directories(exprs PUBLIC ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES})
