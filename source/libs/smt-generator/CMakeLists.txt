add_library(smt-generator STATIC smt-generator.cpp)
target_link_libraries(smt-generator exprs)
target_include_directories(smt-generator PUBLIC ${CMAKE_SOURCE_DIR}/include ${STOKE_INCLUDE_DIRECTORIES})
