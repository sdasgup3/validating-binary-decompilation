add_library(signature STATIC signature.cpp)
target_include_directories(signature PUBLIC ${CMAKE_SOURCE_DIR}/include ${LLVM_ROOT}/include)
