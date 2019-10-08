; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type { i64 }

define i32 @my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*);
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*);

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = alloca %struct.float32v8_t, align 4
  %8 = alloca %struct.float32v8_t, align 4
  %9 = bitcast %struct.float32v8_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = bitcast %struct.float32v8_t* %8 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %10) #22
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 0
  store float %12, float* %13, align 4
  %14 = add i64 %4, 4
  %15 = inttoptr i64 %14 to float*
  %16 = load float, float* %15
  %17 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 1
  store float %16, float* %17, align 4
  %18 = add i64 %4, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 2
  store float %20, float* %21, align 4
  %22 = add i64 %4, 12
  %23 = inttoptr i64 %22 to float*
  %24 = load float, float* %23
  %25 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 3
  store float %24, float* %25, align 4
  %26 = add i64 %4, 16
  %27 = inttoptr i64 %26 to float*
  %28 = load float, float* %27
  %29 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 4
  store float %28, float* %29, align 4
  %30 = add i64 %4, 20
  %31 = inttoptr i64 %30 to float*
  %32 = load float, float* %31
  %33 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 5
  store float %32, float* %33, align 4
  %34 = add i64 %4, 24
  %35 = inttoptr i64 %34 to float*
  %36 = load float, float* %35
  %37 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 6
  store float %36, float* %37, align 4
  %38 = add i64 %4, 28
  %39 = inttoptr i64 %38 to float*
  %40 = load float, float* %39
  %41 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %8, i64 0, i32 0, i64 7
  store float %40, float* %41, align 4
  %42 = trunc i64 %5 to i8
  %43 = icmp ugt i8 %42, 31
  br i1 %43, label %83, label %44

; <label>:44:                                     ; preds = %6
  %45 = icmp eq i8 %42, 0
  %46 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 0
  %47 = load float, float* %46, align 4
  br i1 %45, label %51, label %48

; <label>:48:                                     ; preds = %44
  %49 = fcmp uno float %47, %12
  %50 = xor i1 %49, true
  switch i8 %42, label %248 [
    i8 31, label %250
    i8 1, label %111
    i8 2, label %118
    i8 3, label %249
    i8 4, label %125
    i8 5, label %130
    i8 6, label %135
    i8 7, label %140
    i8 8, label %145
    i8 9, label %150
    i8 10, label %155
    i8 11, label %251
    i8 12, label %160
    i8 13, label %165
    i8 14, label %172
    i8 15, label %250
    i8 16, label %179
    i8 17, label %186
    i8 18, label %191
    i8 19, label %249
    i8 20, label %196
    i8 21, label %201
    i8 22, label %206
    i8 23, label %211
    i8 24, label %216
    i8 25, label %221
    i8 26, label %226
    i8 27, label %251
    i8 28, label %231
    i8 29, label %238
    i8 30, label %243
  ]

; <label>:51:                                     ; preds = %44
  %52 = fcmp oeq float %47, %12
  %53 = sext i1 %52 to i32
  %54 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %55 = load float, float* %54, align 4
  %56 = fcmp oeq float %55, %16
  %57 = sext i1 %56 to i32
  %58 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %59 = load float, float* %58, align 4
  %60 = fcmp oeq float %59, %20
  %61 = sext i1 %60 to i32
  %62 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %63 = load float, float* %62, align 4
  %64 = fcmp oeq float %63, %24
  %65 = sext i1 %64 to i32
  %66 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %67 = load float, float* %66, align 4
  %68 = fcmp oeq float %67, %28
  %69 = sext i1 %68 to i32
  %70 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %71 = load float, float* %70, align 4
  %72 = fcmp oeq float %71, %32
  %73 = sext i1 %72 to i32
  %74 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %75 = load float, float* %74, align 4
  %76 = fcmp oeq float %75, %36
  %77 = sext i1 %76 to i32
  %78 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %79 = load float, float* %78, align 4
  %80 = load float, float* %41, align 4
  %81 = fcmp oeq float %79, %80
  %82 = sext i1 %81 to i32
  br label %87

; <label>:83:                                     ; preds = %6
  %84 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %85, %struct.Memory* %0) #21
  br label %257

; <label>:87:                                     ; preds = %2115, %2103, %2091, %2090, %2080, %2070, %2060, %2059, %2049, %2039, %2029, %2019, %2007, %1995, %1983, %1973, %1963, %1953, %1943, %1933, %1932, %1922, %1912, %1902, %1890, %1880, %1870, %1858, %1858, %1848, %1838, %51
  %88 = phi i32 [ %82, %51 ], [ -1, %2115 ], [ 0, %2090 ], [ 0, %1870 ], [ 0, %1880 ], [ 0, %1890 ], [ 0, %1902 ], [ 0, %1912 ], [ 0, %1922 ], [ 0, %1932 ], [ 0, %1933 ], [ 0, %1943 ], [ 0, %1953 ], [ 0, %1963 ], [ 0, %1973 ], [ 0, %1983 ], [ 0, %1995 ], [ 0, %2007 ], [ 0, %2019 ], [ 0, %2029 ], [ 0, %2039 ], [ 0, %2049 ], [ 0, %2059 ], [ 0, %2060 ], [ 0, %2070 ], [ 0, %2080 ], [ 0, %2091 ], [ 0, %2103 ], [ 0, %1858 ], [ 0, %1858 ], [ 0, %1848 ], [ 0, %1838 ]
  %89 = phi i32 [ %77, %51 ], [ %2116, %2115 ], [ %1865, %2090 ], [ %1872, %1870 ], [ %1882, %1880 ], [ %1893, %1890 ], [ %1904, %1902 ], [ %1914, %1912 ], [ %1924, %1922 ], [ %1865, %1932 ], [ %1935, %1933 ], [ %1945, %1943 ], [ %1955, %1953 ], [ %1965, %1963 ], [ %1975, %1973 ], [ %1986, %1983 ], [ %1998, %1995 ], [ %2010, %2007 ], [ %2021, %2019 ], [ %2031, %2029 ], [ %2041, %2039 ], [ %2051, %2049 ], [ %1865, %2059 ], [ %2062, %2060 ], [ %2072, %2070 ], [ %2082, %2080 ], [ %2094, %2091 ], [ %2106, %2103 ], [ %1865, %1858 ], [ %1865, %1858 ], [ 0, %1848 ], [ 0, %1838 ]
  %90 = phi i32 [ %73, %51 ], [ %2122, %2115 ], [ %1859, %2090 ], [ %1878, %1870 ], [ %1888, %1880 ], [ %1899, %1890 ], [ %1910, %1902 ], [ %1920, %1912 ], [ %1930, %1922 ], [ %1859, %1932 ], [ %1941, %1933 ], [ %1951, %1943 ], [ %1961, %1953 ], [ %1971, %1963 ], [ %1981, %1973 ], [ %1992, %1983 ], [ %2004, %1995 ], [ %2016, %2007 ], [ %2027, %2019 ], [ %2037, %2029 ], [ %2047, %2039 ], [ %2057, %2049 ], [ %1859, %2059 ], [ %2068, %2060 ], [ %2078, %2070 ], [ %2088, %2080 ], [ %2100, %2091 ], [ %2112, %2103 ], [ %1859, %1858 ], [ %1859, %1858 ], [ %1849, %1848 ], [ %1839, %1838 ]
  %91 = phi i32 [ %69, %51 ], [ %2117, %2115 ], [ %1864, %2090 ], [ %1873, %1870 ], [ %1883, %1880 ], [ %1894, %1890 ], [ %1905, %1902 ], [ %1915, %1912 ], [ %1925, %1922 ], [ %1864, %1932 ], [ %1936, %1933 ], [ %1946, %1943 ], [ %1956, %1953 ], [ %1966, %1963 ], [ %1976, %1973 ], [ %1987, %1983 ], [ %1999, %1995 ], [ %2011, %2007 ], [ %2022, %2019 ], [ %2032, %2029 ], [ %2042, %2039 ], [ %2052, %2049 ], [ %1864, %2059 ], [ %2063, %2060 ], [ %2073, %2070 ], [ %2083, %2080 ], [ %2095, %2091 ], [ %2107, %2103 ], [ %1864, %1858 ], [ %1864, %1858 ], [ %1854, %1848 ], [ %1844, %1838 ]
  %92 = phi i32 [ %65, %51 ], [ %2121, %2115 ], [ %1860, %2090 ], [ %1877, %1870 ], [ %1887, %1880 ], [ %1898, %1890 ], [ %1909, %1902 ], [ %1919, %1912 ], [ %1929, %1922 ], [ %1860, %1932 ], [ %1940, %1933 ], [ %1950, %1943 ], [ %1960, %1953 ], [ %1970, %1963 ], [ %1980, %1973 ], [ %1991, %1983 ], [ %2003, %1995 ], [ %2015, %2007 ], [ %2026, %2019 ], [ %2036, %2029 ], [ %2046, %2039 ], [ %2056, %2049 ], [ %1860, %2059 ], [ %2067, %2060 ], [ %2077, %2070 ], [ %2087, %2080 ], [ %2099, %2091 ], [ %2111, %2103 ], [ %1860, %1858 ], [ %1860, %1858 ], [ %1850, %1848 ], [ %1840, %1838 ]
  %93 = phi i32 [ %61, %51 ], [ %2118, %2115 ], [ %1863, %2090 ], [ %1874, %1870 ], [ %1884, %1880 ], [ %1895, %1890 ], [ %1906, %1902 ], [ %1916, %1912 ], [ %1926, %1922 ], [ %1863, %1932 ], [ %1937, %1933 ], [ %1947, %1943 ], [ %1957, %1953 ], [ %1967, %1963 ], [ %1977, %1973 ], [ %1988, %1983 ], [ %2000, %1995 ], [ %2012, %2007 ], [ %2023, %2019 ], [ %2033, %2029 ], [ %2043, %2039 ], [ %2053, %2049 ], [ %1863, %2059 ], [ %2064, %2060 ], [ %2074, %2070 ], [ %2084, %2080 ], [ %2096, %2091 ], [ %2108, %2103 ], [ %1863, %1858 ], [ %1863, %1858 ], [ %1853, %1848 ], [ %1843, %1838 ]
  %94 = phi i32 [ %57, %51 ], [ %2120, %2115 ], [ %1861, %2090 ], [ %1876, %1870 ], [ %1886, %1880 ], [ %1897, %1890 ], [ %1908, %1902 ], [ %1918, %1912 ], [ %1928, %1922 ], [ %1861, %1932 ], [ %1939, %1933 ], [ %1949, %1943 ], [ %1959, %1953 ], [ %1969, %1963 ], [ %1979, %1973 ], [ %1990, %1983 ], [ %2002, %1995 ], [ %2014, %2007 ], [ %2025, %2019 ], [ %2035, %2029 ], [ %2045, %2039 ], [ %2055, %2049 ], [ %1861, %2059 ], [ %2066, %2060 ], [ %2076, %2070 ], [ %2086, %2080 ], [ %2098, %2091 ], [ %2110, %2103 ], [ %1861, %1858 ], [ %1861, %1858 ], [ %1851, %1848 ], [ %1841, %1838 ]
  %95 = phi i32 [ %53, %51 ], [ %2119, %2115 ], [ %1862, %2090 ], [ %1875, %1870 ], [ %1885, %1880 ], [ %1896, %1890 ], [ %1907, %1902 ], [ %1917, %1912 ], [ %1927, %1922 ], [ %1862, %1932 ], [ %1938, %1933 ], [ %1948, %1943 ], [ %1958, %1953 ], [ %1968, %1963 ], [ %1978, %1973 ], [ %1989, %1983 ], [ %2001, %1995 ], [ %2013, %2007 ], [ %2024, %2019 ], [ %2034, %2029 ], [ %2044, %2039 ], [ %2054, %2049 ], [ %1862, %2059 ], [ %2065, %2060 ], [ %2075, %2070 ], [ %2085, %2080 ], [ %2097, %2091 ], [ %2109, %2103 ], [ %1862, %1858 ], [ %1862, %1858 ], [ %1852, %1848 ], [ %1842, %1838 ]
  %96 = bitcast i8* %2 to i32*
  store i32 %95, i32* %96, align 1
  %97 = getelementptr inbounds i8, i8* %2, i64 4
  %98 = bitcast i8* %97 to i32*
  store i32 %94, i32* %98, align 1
  %99 = getelementptr inbounds i8, i8* %2, i64 8
  %100 = bitcast i8* %99 to i32*
  store i32 %93, i32* %100, align 1
  %101 = getelementptr inbounds i8, i8* %2, i64 12
  %102 = bitcast i8* %101 to i32*
  store i32 %92, i32* %102, align 1
  %103 = getelementptr inbounds i8, i8* %2, i64 16
  %104 = bitcast i8* %103 to i32*
  store i32 %91, i32* %104, align 1
  %105 = getelementptr inbounds i8, i8* %2, i64 20
  %106 = bitcast i8* %105 to i32*
  store i32 %90, i32* %106, align 1
  %107 = getelementptr inbounds i8, i8* %2, i64 24
  %108 = bitcast i8* %107 to i32*
  store i32 %89, i32* %108, align 1
  %109 = getelementptr inbounds i8, i8* %2, i64 28
  %110 = bitcast i8* %109 to i32*
  store i32 %88, i32* %110, align 1
  br label %257

; <label>:111:                                    ; preds = %48
  %112 = fcmp olt float %47, %12
  %113 = and i1 %112, %50
  br i1 %113, label %250, label %114

; <label>:114:                                    ; preds = %111
  %115 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %116 = load float, float* %115, align 4
  %117 = fcmp ord float %116, %16
  br label %431

; <label>:118:                                    ; preds = %48
  %119 = fcmp ole float %47, %12
  %120 = and i1 %119, %50
  br i1 %120, label %250, label %121

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %123 = load float, float* %122, align 4
  %124 = fcmp ord float %123, %16
  br label %421

; <label>:125:                                    ; preds = %48
  %126 = fcmp une float %47, %12
  br i1 %126, label %250, label %127

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %129 = load float, float* %128, align 4
  br label %413

; <label>:130:                                    ; preds = %48
  %131 = fcmp uge float %47, %12
  br i1 %131, label %250, label %132

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %134 = load float, float* %133, align 4
  br label %406

; <label>:135:                                    ; preds = %48
  %136 = fcmp ugt float %47, %12
  br i1 %136, label %250, label %137

; <label>:137:                                    ; preds = %135
  %138 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %139 = load float, float* %138, align 4
  br label %399

; <label>:140:                                    ; preds = %48
  br i1 %49, label %141, label %250

; <label>:141:                                    ; preds = %140
  %142 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %143 = load float, float* %142, align 4
  %144 = fcmp uno float %143, %16
  br i1 %144, label %443, label %441

; <label>:145:                                    ; preds = %48
  %146 = fcmp ueq float %47, %12
  br i1 %146, label %250, label %147

; <label>:147:                                    ; preds = %145
  %148 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %149 = load float, float* %148, align 4
  br label %391

; <label>:150:                                    ; preds = %48
  %151 = fcmp ult float %47, %12
  br i1 %151, label %250, label %152

; <label>:152:                                    ; preds = %150
  %153 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %154 = load float, float* %153, align 4
  br label %384

; <label>:155:                                    ; preds = %48
  %156 = fcmp ule float %47, %12
  br i1 %156, label %250, label %157

; <label>:157:                                    ; preds = %155
  %158 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %159 = load float, float* %158, align 4
  br label %377

; <label>:160:                                    ; preds = %48
  %161 = fcmp ueq float %47, %12
  br i1 %161, label %162, label %250

; <label>:162:                                    ; preds = %160
  %163 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %164 = load float, float* %163, align 4
  br label %370

; <label>:165:                                    ; preds = %48
  %166 = fcmp oge float %47, %12
  %167 = and i1 %166, %50
  br i1 %167, label %250, label %168

; <label>:168:                                    ; preds = %165
  %169 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %170 = load float, float* %169, align 4
  %171 = fcmp ord float %170, %16
  br label %360

; <label>:172:                                    ; preds = %48
  %173 = fcmp ogt float %47, %12
  %174 = and i1 %173, %50
  br i1 %174, label %250, label %175

; <label>:175:                                    ; preds = %172
  %176 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %177 = load float, float* %176, align 4
  %178 = fcmp ord float %177, %16
  br label %350

; <label>:179:                                    ; preds = %48
  %180 = fcmp oeq float %47, %12
  %181 = and i1 %180, %50
  br i1 %181, label %250, label %182

; <label>:182:                                    ; preds = %179
  %183 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %184 = load float, float* %183, align 4
  %185 = fcmp ord float %184, %16
  br label %340

; <label>:186:                                    ; preds = %48
  %187 = fcmp olt float %47, %12
  br i1 %187, label %250, label %188

; <label>:188:                                    ; preds = %186
  %189 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %190 = load float, float* %189, align 4
  br label %333

; <label>:191:                                    ; preds = %48
  %192 = fcmp ugt float %47, %12
  br i1 %192, label %193, label %250

; <label>:193:                                    ; preds = %191
  %194 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %195 = load float, float* %194, align 4
  br label %326

; <label>:196:                                    ; preds = %48
  %197 = fcmp une float %47, %12
  br i1 %197, label %250, label %198

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %200 = load float, float* %199, align 4
  br label %319

; <label>:201:                                    ; preds = %48
  %202 = fcmp uge float %47, %12
  br i1 %202, label %250, label %203

; <label>:203:                                    ; preds = %201
  %204 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %205 = load float, float* %204, align 4
  br label %312

; <label>:206:                                    ; preds = %48
  %207 = fcmp ugt float %47, %12
  br i1 %207, label %250, label %208

; <label>:208:                                    ; preds = %206
  %209 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %210 = load float, float* %209, align 4
  br label %305

; <label>:211:                                    ; preds = %48
  br i1 %49, label %212, label %250

; <label>:212:                                    ; preds = %211
  %213 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %214 = load float, float* %213, align 4
  %215 = fcmp uno float %214, %16
  br i1 %215, label %448, label %441

; <label>:216:                                    ; preds = %48
  %217 = fcmp ueq float %47, %12
  br i1 %217, label %250, label %218

; <label>:218:                                    ; preds = %216
  %219 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %220 = load float, float* %219, align 4
  br label %297

; <label>:221:                                    ; preds = %48
  %222 = fcmp ult float %47, %12
  br i1 %222, label %250, label %223

; <label>:223:                                    ; preds = %221
  %224 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %225 = load float, float* %224, align 4
  br label %290

; <label>:226:                                    ; preds = %48
  %227 = fcmp ule float %47, %12
  br i1 %227, label %250, label %228

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %230 = load float, float* %229, align 4
  br label %283

; <label>:231:                                    ; preds = %48
  %232 = fcmp une float %47, %12
  %233 = and i1 %232, %50
  br i1 %233, label %250, label %234

; <label>:234:                                    ; preds = %231
  %235 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %236 = load float, float* %235, align 4
  %237 = fcmp ord float %236, %16
  br label %273

; <label>:238:                                    ; preds = %48
  %239 = fcmp ult float %47, %12
  br i1 %239, label %240, label %250

; <label>:240:                                    ; preds = %238
  %241 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %242 = load float, float* %241, align 4
  br label %266

; <label>:243:                                    ; preds = %48
  %244 = fcmp ogt float %47, %12
  br i1 %244, label %250, label %245

; <label>:245:                                    ; preds = %243
  %246 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %247 = load float, float* %246, align 4
  br label %259

; <label>:248:                                    ; preds = %1858, %1523, %1215, %934, %680, %453, %251, %48
  unreachable

; <label>:249:                                    ; preds = %48, %48
  br i1 %49, label %250, label %251

; <label>:250:                                    ; preds = %249, %243, %238, %231, %226, %221, %216, %211, %206, %201, %196, %191, %186, %179, %172, %165, %160, %155, %150, %145, %140, %135, %130, %125, %118, %111, %48, %48
  br label %251

; <label>:251:                                    ; preds = %250, %249, %48, %48
  %252 = phi i32 [ -1, %250 ], [ 0, %249 ], [ 0, %48 ], [ 0, %48 ]
  %253 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 1
  %254 = load float, float* %253, align 4
  %255 = fcmp uno float %254, %16
  %256 = xor i1 %255, true
  switch i8 %42, label %248 [
    i8 31, label %441
    i8 1, label %431
    i8 2, label %421
    i8 3, label %420
    i8 4, label %413
    i8 5, label %406
    i8 6, label %399
    i8 7, label %398
    i8 8, label %391
    i8 9, label %384
    i8 10, label %377
    i8 11, label %453
    i8 12, label %370
    i8 13, label %360
    i8 14, label %350
    i8 15, label %441
    i8 16, label %340
    i8 17, label %333
    i8 18, label %326
    i8 19, label %420
    i8 20, label %319
    i8 21, label %312
    i8 22, label %305
    i8 23, label %304
    i8 24, label %297
    i8 25, label %290
    i8 26, label %283
    i8 27, label %453
    i8 28, label %273
    i8 29, label %266
    i8 30, label %259
  ]

; <label>:257:                                    ; preds = %87, %83
  %258 = phi %struct.Memory* [ %86, %83 ], [ %0, %87 ]
  call void @my.lifetime.end(i64 32, i8* nonnull %10) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %258

; <label>:259:                                    ; preds = %251, %245
  %260 = phi float [ %247, %245 ], [ %254, %251 ]
  %261 = phi i32 [ 0, %245 ], [ %252, %251 ]
  %262 = fcmp ogt float %260, %16
  br i1 %262, label %441, label %263

; <label>:263:                                    ; preds = %259
  %264 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %265 = load float, float* %264, align 4
  br label %460

; <label>:266:                                    ; preds = %251, %240
  %267 = phi float [ %242, %240 ], [ %254, %251 ]
  %268 = phi i32 [ 0, %240 ], [ %252, %251 ]
  %269 = fcmp ult float %267, %16
  br i1 %269, label %270, label %441

; <label>:270:                                    ; preds = %266
  %271 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %272 = load float, float* %271, align 4
  br label %468

; <label>:273:                                    ; preds = %251, %234
  %274 = phi i1 [ %237, %234 ], [ %256, %251 ]
  %275 = phi float [ %236, %234 ], [ %254, %251 ]
  %276 = phi i32 [ 0, %234 ], [ %252, %251 ]
  %277 = fcmp une float %275, %16
  %278 = and i1 %277, %274
  br i1 %278, label %441, label %279

; <label>:279:                                    ; preds = %273
  %280 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %281 = load float, float* %280, align 4
  %282 = fcmp ord float %281, %20
  br label %476

; <label>:283:                                    ; preds = %251, %228
  %284 = phi float [ %230, %228 ], [ %254, %251 ]
  %285 = phi i32 [ 0, %228 ], [ %252, %251 ]
  %286 = fcmp ule float %284, %16
  br i1 %286, label %441, label %287

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %289 = load float, float* %288, align 4
  br label %487

; <label>:290:                                    ; preds = %251, %223
  %291 = phi float [ %225, %223 ], [ %254, %251 ]
  %292 = phi i32 [ 0, %223 ], [ %252, %251 ]
  %293 = fcmp ult float %291, %16
  br i1 %293, label %441, label %294

; <label>:294:                                    ; preds = %290
  %295 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %296 = load float, float* %295, align 4
  br label %495

; <label>:297:                                    ; preds = %251, %218
  %298 = phi float [ %220, %218 ], [ %254, %251 ]
  %299 = phi i32 [ 0, %218 ], [ %252, %251 ]
  %300 = fcmp ueq float %298, %16
  br i1 %300, label %441, label %301

; <label>:301:                                    ; preds = %297
  %302 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %303 = load float, float* %302, align 4
  br label %503

; <label>:304:                                    ; preds = %251
  br i1 %255, label %448, label %441

; <label>:305:                                    ; preds = %251, %208
  %306 = phi float [ %210, %208 ], [ %254, %251 ]
  %307 = phi i32 [ 0, %208 ], [ %252, %251 ]
  %308 = fcmp ugt float %306, %16
  br i1 %308, label %441, label %309

; <label>:309:                                    ; preds = %305
  %310 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %311 = load float, float* %310, align 4
  br label %512

; <label>:312:                                    ; preds = %251, %203
  %313 = phi float [ %205, %203 ], [ %254, %251 ]
  %314 = phi i32 [ 0, %203 ], [ %252, %251 ]
  %315 = fcmp uge float %313, %16
  br i1 %315, label %441, label %316

; <label>:316:                                    ; preds = %312
  %317 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %318 = load float, float* %317, align 4
  br label %520

; <label>:319:                                    ; preds = %251, %198
  %320 = phi float [ %200, %198 ], [ %254, %251 ]
  %321 = phi i32 [ 0, %198 ], [ %252, %251 ]
  %322 = fcmp une float %320, %16
  br i1 %322, label %441, label %323

; <label>:323:                                    ; preds = %319
  %324 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %325 = load float, float* %324, align 4
  br label %528

; <label>:326:                                    ; preds = %251, %193
  %327 = phi float [ %195, %193 ], [ %254, %251 ]
  %328 = phi i32 [ 0, %193 ], [ %252, %251 ]
  %329 = fcmp ugt float %327, %16
  br i1 %329, label %330, label %441

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %332 = load float, float* %331, align 4
  br label %536

; <label>:333:                                    ; preds = %251, %188
  %334 = phi float [ %190, %188 ], [ %254, %251 ]
  %335 = phi i32 [ 0, %188 ], [ %252, %251 ]
  %336 = fcmp olt float %334, %16
  br i1 %336, label %441, label %337

; <label>:337:                                    ; preds = %333
  %338 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %339 = load float, float* %338, align 4
  br label %544

; <label>:340:                                    ; preds = %251, %182
  %341 = phi i1 [ %185, %182 ], [ %256, %251 ]
  %342 = phi float [ %184, %182 ], [ %254, %251 ]
  %343 = phi i32 [ 0, %182 ], [ %252, %251 ]
  %344 = fcmp oeq float %342, %16
  %345 = and i1 %344, %341
  br i1 %345, label %441, label %346

; <label>:346:                                    ; preds = %340
  %347 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %348 = load float, float* %347, align 4
  %349 = fcmp ord float %348, %20
  br label %552

; <label>:350:                                    ; preds = %251, %175
  %351 = phi i1 [ %178, %175 ], [ %256, %251 ]
  %352 = phi float [ %177, %175 ], [ %254, %251 ]
  %353 = phi i32 [ 0, %175 ], [ %252, %251 ]
  %354 = fcmp ogt float %352, %16
  %355 = and i1 %354, %351
  br i1 %355, label %441, label %356

; <label>:356:                                    ; preds = %350
  %357 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %358 = load float, float* %357, align 4
  %359 = fcmp ord float %358, %20
  br label %563

; <label>:360:                                    ; preds = %251, %168
  %361 = phi i1 [ %171, %168 ], [ %256, %251 ]
  %362 = phi float [ %170, %168 ], [ %254, %251 ]
  %363 = phi i32 [ 0, %168 ], [ %252, %251 ]
  %364 = fcmp oge float %362, %16
  %365 = and i1 %364, %361
  br i1 %365, label %441, label %366

; <label>:366:                                    ; preds = %360
  %367 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %368 = load float, float* %367, align 4
  %369 = fcmp ord float %368, %20
  br label %574

; <label>:370:                                    ; preds = %251, %162
  %371 = phi float [ %164, %162 ], [ %254, %251 ]
  %372 = phi i32 [ 0, %162 ], [ %252, %251 ]
  %373 = fcmp ueq float %371, %16
  br i1 %373, label %374, label %441

; <label>:374:                                    ; preds = %370
  %375 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %376 = load float, float* %375, align 4
  br label %585

; <label>:377:                                    ; preds = %251, %157
  %378 = phi float [ %159, %157 ], [ %254, %251 ]
  %379 = phi i32 [ 0, %157 ], [ %252, %251 ]
  %380 = fcmp ule float %378, %16
  br i1 %380, label %441, label %381

; <label>:381:                                    ; preds = %377
  %382 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %383 = load float, float* %382, align 4
  br label %593

; <label>:384:                                    ; preds = %251, %152
  %385 = phi float [ %154, %152 ], [ %254, %251 ]
  %386 = phi i32 [ 0, %152 ], [ %252, %251 ]
  %387 = fcmp ult float %385, %16
  br i1 %387, label %441, label %388

; <label>:388:                                    ; preds = %384
  %389 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %390 = load float, float* %389, align 4
  br label %601

; <label>:391:                                    ; preds = %251, %147
  %392 = phi float [ %149, %147 ], [ %254, %251 ]
  %393 = phi i32 [ 0, %147 ], [ %252, %251 ]
  %394 = fcmp ueq float %392, %16
  br i1 %394, label %441, label %395

; <label>:395:                                    ; preds = %391
  %396 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %397 = load float, float* %396, align 4
  br label %609

; <label>:398:                                    ; preds = %251
  br i1 %255, label %443, label %441

; <label>:399:                                    ; preds = %251, %137
  %400 = phi float [ %139, %137 ], [ %254, %251 ]
  %401 = phi i32 [ 0, %137 ], [ %252, %251 ]
  %402 = fcmp ugt float %400, %16
  br i1 %402, label %441, label %403

; <label>:403:                                    ; preds = %399
  %404 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %405 = load float, float* %404, align 4
  br label %618

; <label>:406:                                    ; preds = %251, %132
  %407 = phi float [ %134, %132 ], [ %254, %251 ]
  %408 = phi i32 [ 0, %132 ], [ %252, %251 ]
  %409 = fcmp uge float %407, %16
  br i1 %409, label %441, label %410

; <label>:410:                                    ; preds = %406
  %411 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %412 = load float, float* %411, align 4
  br label %626

; <label>:413:                                    ; preds = %251, %127
  %414 = phi float [ %129, %127 ], [ %254, %251 ]
  %415 = phi i32 [ 0, %127 ], [ %252, %251 ]
  %416 = fcmp une float %414, %16
  br i1 %416, label %441, label %417

; <label>:417:                                    ; preds = %413
  %418 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %419 = load float, float* %418, align 4
  br label %634

; <label>:420:                                    ; preds = %251, %251
  br i1 %255, label %441, label %453

; <label>:421:                                    ; preds = %251, %121
  %422 = phi i1 [ %124, %121 ], [ %256, %251 ]
  %423 = phi float [ %123, %121 ], [ %254, %251 ]
  %424 = phi i32 [ 0, %121 ], [ %252, %251 ]
  %425 = fcmp ole float %423, %16
  %426 = and i1 %425, %422
  br i1 %426, label %441, label %427

; <label>:427:                                    ; preds = %421
  %428 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %429 = load float, float* %428, align 4
  %430 = fcmp ord float %429, %20
  br label %643

; <label>:431:                                    ; preds = %251, %114
  %432 = phi i1 [ %117, %114 ], [ %256, %251 ]
  %433 = phi float [ %116, %114 ], [ %254, %251 ]
  %434 = phi i32 [ 0, %114 ], [ %252, %251 ]
  %435 = fcmp olt float %433, %16
  %436 = and i1 %435, %432
  br i1 %436, label %441, label %437

; <label>:437:                                    ; preds = %431
  %438 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %439 = load float, float* %438, align 4
  %440 = fcmp ord float %439, %20
  br label %654

; <label>:441:                                    ; preds = %431, %421, %420, %413, %406, %399, %398, %391, %384, %377, %370, %360, %350, %340, %333, %326, %319, %312, %305, %304, %297, %290, %283, %273, %266, %259, %251, %251, %212, %141
  %442 = phi i32 [ %434, %431 ], [ %424, %421 ], [ %252, %420 ], [ %415, %413 ], [ %408, %406 ], [ %401, %399 ], [ %252, %398 ], [ %393, %391 ], [ %386, %384 ], [ %379, %377 ], [ %372, %370 ], [ %363, %360 ], [ %353, %350 ], [ %343, %340 ], [ %335, %333 ], [ %328, %326 ], [ %321, %319 ], [ %314, %312 ], [ %307, %305 ], [ %252, %304 ], [ %299, %297 ], [ %292, %290 ], [ %285, %283 ], [ %276, %273 ], [ %268, %266 ], [ %261, %259 ], [ %252, %251 ], [ %252, %251 ], [ 0, %212 ], [ 0, %141 ]
  br label %453

; <label>:443:                                    ; preds = %398, %141
  %444 = phi i32 [ 0, %141 ], [ %252, %398 ]
  %445 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %446 = load float, float* %445, align 4
  %447 = fcmp uno float %446, %20
  br i1 %447, label %668, label %665

; <label>:448:                                    ; preds = %304, %212
  %449 = phi i32 [ 0, %212 ], [ %252, %304 ]
  %450 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %451 = load float, float* %450, align 4
  %452 = fcmp uno float %451, %20
  br i1 %452, label %674, label %665

; <label>:453:                                    ; preds = %441, %420, %251, %251
  %454 = phi i32 [ %442, %441 ], [ %252, %420 ], [ %252, %251 ], [ %252, %251 ]
  %455 = phi i32 [ -1, %441 ], [ 0, %420 ], [ 0, %251 ], [ 0, %251 ]
  %456 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 2
  %457 = load float, float* %456, align 4
  %458 = fcmp uno float %457, %20
  %459 = xor i1 %458, true
  switch i8 %42, label %248 [
    i8 31, label %665
    i8 1, label %654
    i8 2, label %643
    i8 3, label %642
    i8 4, label %634
    i8 5, label %626
    i8 6, label %618
    i8 7, label %617
    i8 8, label %609
    i8 9, label %601
    i8 10, label %593
    i8 11, label %680
    i8 12, label %585
    i8 13, label %574
    i8 14, label %563
    i8 15, label %665
    i8 16, label %552
    i8 17, label %544
    i8 18, label %536
    i8 19, label %642
    i8 20, label %528
    i8 21, label %520
    i8 22, label %512
    i8 23, label %511
    i8 24, label %503
    i8 25, label %495
    i8 26, label %487
    i8 27, label %680
    i8 28, label %476
    i8 29, label %468
    i8 30, label %460
  ]

; <label>:460:                                    ; preds = %453, %263
  %461 = phi float [ %265, %263 ], [ %457, %453 ]
  %462 = phi i32 [ 0, %263 ], [ %455, %453 ]
  %463 = phi i32 [ %261, %263 ], [ %454, %453 ]
  %464 = fcmp ogt float %461, %20
  br i1 %464, label %665, label %465

; <label>:465:                                    ; preds = %460
  %466 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %467 = load float, float* %466, align 4
  br label %688

; <label>:468:                                    ; preds = %453, %270
  %469 = phi float [ %272, %270 ], [ %457, %453 ]
  %470 = phi i32 [ 0, %270 ], [ %455, %453 ]
  %471 = phi i32 [ %268, %270 ], [ %454, %453 ]
  %472 = fcmp ult float %469, %20
  br i1 %472, label %473, label %665

; <label>:473:                                    ; preds = %468
  %474 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %475 = load float, float* %474, align 4
  br label %697

; <label>:476:                                    ; preds = %453, %279
  %477 = phi i1 [ %282, %279 ], [ %459, %453 ]
  %478 = phi float [ %281, %279 ], [ %457, %453 ]
  %479 = phi i32 [ 0, %279 ], [ %455, %453 ]
  %480 = phi i32 [ %276, %279 ], [ %454, %453 ]
  %481 = fcmp une float %478, %20
  %482 = and i1 %481, %477
  br i1 %482, label %665, label %483

; <label>:483:                                    ; preds = %476
  %484 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %485 = load float, float* %484, align 4
  %486 = fcmp ord float %485, %24
  br label %706

; <label>:487:                                    ; preds = %453, %287
  %488 = phi float [ %289, %287 ], [ %457, %453 ]
  %489 = phi i32 [ 0, %287 ], [ %455, %453 ]
  %490 = phi i32 [ %285, %287 ], [ %454, %453 ]
  %491 = fcmp ule float %488, %20
  br i1 %491, label %665, label %492

; <label>:492:                                    ; preds = %487
  %493 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %494 = load float, float* %493, align 4
  br label %718

; <label>:495:                                    ; preds = %453, %294
  %496 = phi float [ %296, %294 ], [ %457, %453 ]
  %497 = phi i32 [ 0, %294 ], [ %455, %453 ]
  %498 = phi i32 [ %292, %294 ], [ %454, %453 ]
  %499 = fcmp ult float %496, %20
  br i1 %499, label %665, label %500

; <label>:500:                                    ; preds = %495
  %501 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %502 = load float, float* %501, align 4
  br label %727

; <label>:503:                                    ; preds = %453, %301
  %504 = phi float [ %303, %301 ], [ %457, %453 ]
  %505 = phi i32 [ 0, %301 ], [ %455, %453 ]
  %506 = phi i32 [ %299, %301 ], [ %454, %453 ]
  %507 = fcmp ueq float %504, %20
  br i1 %507, label %665, label %508

; <label>:508:                                    ; preds = %503
  %509 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %510 = load float, float* %509, align 4
  br label %736

; <label>:511:                                    ; preds = %453
  br i1 %458, label %674, label %665

; <label>:512:                                    ; preds = %453, %309
  %513 = phi float [ %311, %309 ], [ %457, %453 ]
  %514 = phi i32 [ 0, %309 ], [ %455, %453 ]
  %515 = phi i32 [ %307, %309 ], [ %454, %453 ]
  %516 = fcmp ugt float %513, %20
  br i1 %516, label %665, label %517

; <label>:517:                                    ; preds = %512
  %518 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %519 = load float, float* %518, align 4
  br label %746

; <label>:520:                                    ; preds = %453, %316
  %521 = phi float [ %318, %316 ], [ %457, %453 ]
  %522 = phi i32 [ 0, %316 ], [ %455, %453 ]
  %523 = phi i32 [ %314, %316 ], [ %454, %453 ]
  %524 = fcmp uge float %521, %20
  br i1 %524, label %665, label %525

; <label>:525:                                    ; preds = %520
  %526 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %527 = load float, float* %526, align 4
  br label %755

; <label>:528:                                    ; preds = %453, %323
  %529 = phi float [ %325, %323 ], [ %457, %453 ]
  %530 = phi i32 [ 0, %323 ], [ %455, %453 ]
  %531 = phi i32 [ %321, %323 ], [ %454, %453 ]
  %532 = fcmp une float %529, %20
  br i1 %532, label %665, label %533

; <label>:533:                                    ; preds = %528
  %534 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %535 = load float, float* %534, align 4
  br label %764

; <label>:536:                                    ; preds = %453, %330
  %537 = phi float [ %332, %330 ], [ %457, %453 ]
  %538 = phi i32 [ 0, %330 ], [ %455, %453 ]
  %539 = phi i32 [ %328, %330 ], [ %454, %453 ]
  %540 = fcmp ugt float %537, %20
  br i1 %540, label %541, label %665

; <label>:541:                                    ; preds = %536
  %542 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %543 = load float, float* %542, align 4
  br label %773

; <label>:544:                                    ; preds = %453, %337
  %545 = phi float [ %339, %337 ], [ %457, %453 ]
  %546 = phi i32 [ 0, %337 ], [ %455, %453 ]
  %547 = phi i32 [ %335, %337 ], [ %454, %453 ]
  %548 = fcmp olt float %545, %20
  br i1 %548, label %665, label %549

; <label>:549:                                    ; preds = %544
  %550 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %551 = load float, float* %550, align 4
  br label %782

; <label>:552:                                    ; preds = %453, %346
  %553 = phi i1 [ %349, %346 ], [ %459, %453 ]
  %554 = phi float [ %348, %346 ], [ %457, %453 ]
  %555 = phi i32 [ 0, %346 ], [ %455, %453 ]
  %556 = phi i32 [ %343, %346 ], [ %454, %453 ]
  %557 = fcmp oeq float %554, %20
  %558 = and i1 %557, %553
  br i1 %558, label %665, label %559

; <label>:559:                                    ; preds = %552
  %560 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %561 = load float, float* %560, align 4
  %562 = fcmp ord float %561, %24
  br label %791

; <label>:563:                                    ; preds = %453, %356
  %564 = phi i1 [ %359, %356 ], [ %459, %453 ]
  %565 = phi float [ %358, %356 ], [ %457, %453 ]
  %566 = phi i32 [ 0, %356 ], [ %455, %453 ]
  %567 = phi i32 [ %353, %356 ], [ %454, %453 ]
  %568 = fcmp ogt float %565, %20
  %569 = and i1 %568, %564
  br i1 %569, label %665, label %570

; <label>:570:                                    ; preds = %563
  %571 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %572 = load float, float* %571, align 4
  %573 = fcmp ord float %572, %24
  br label %803

; <label>:574:                                    ; preds = %453, %366
  %575 = phi i1 [ %369, %366 ], [ %459, %453 ]
  %576 = phi float [ %368, %366 ], [ %457, %453 ]
  %577 = phi i32 [ 0, %366 ], [ %455, %453 ]
  %578 = phi i32 [ %363, %366 ], [ %454, %453 ]
  %579 = fcmp oge float %576, %20
  %580 = and i1 %579, %575
  br i1 %580, label %665, label %581

; <label>:581:                                    ; preds = %574
  %582 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %583 = load float, float* %582, align 4
  %584 = fcmp ord float %583, %24
  br label %815

; <label>:585:                                    ; preds = %453, %374
  %586 = phi float [ %376, %374 ], [ %457, %453 ]
  %587 = phi i32 [ 0, %374 ], [ %455, %453 ]
  %588 = phi i32 [ %372, %374 ], [ %454, %453 ]
  %589 = fcmp ueq float %586, %20
  br i1 %589, label %590, label %665

; <label>:590:                                    ; preds = %585
  %591 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %592 = load float, float* %591, align 4
  br label %827

; <label>:593:                                    ; preds = %453, %381
  %594 = phi float [ %383, %381 ], [ %457, %453 ]
  %595 = phi i32 [ 0, %381 ], [ %455, %453 ]
  %596 = phi i32 [ %379, %381 ], [ %454, %453 ]
  %597 = fcmp ule float %594, %20
  br i1 %597, label %665, label %598

; <label>:598:                                    ; preds = %593
  %599 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %600 = load float, float* %599, align 4
  br label %836

; <label>:601:                                    ; preds = %453, %388
  %602 = phi float [ %390, %388 ], [ %457, %453 ]
  %603 = phi i32 [ 0, %388 ], [ %455, %453 ]
  %604 = phi i32 [ %386, %388 ], [ %454, %453 ]
  %605 = fcmp ult float %602, %20
  br i1 %605, label %665, label %606

; <label>:606:                                    ; preds = %601
  %607 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %608 = load float, float* %607, align 4
  br label %845

; <label>:609:                                    ; preds = %453, %395
  %610 = phi float [ %397, %395 ], [ %457, %453 ]
  %611 = phi i32 [ 0, %395 ], [ %455, %453 ]
  %612 = phi i32 [ %393, %395 ], [ %454, %453 ]
  %613 = fcmp ueq float %610, %20
  br i1 %613, label %665, label %614

; <label>:614:                                    ; preds = %609
  %615 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %616 = load float, float* %615, align 4
  br label %854

; <label>:617:                                    ; preds = %453
  br i1 %458, label %668, label %665

; <label>:618:                                    ; preds = %453, %403
  %619 = phi float [ %405, %403 ], [ %457, %453 ]
  %620 = phi i32 [ 0, %403 ], [ %455, %453 ]
  %621 = phi i32 [ %401, %403 ], [ %454, %453 ]
  %622 = fcmp ugt float %619, %20
  br i1 %622, label %665, label %623

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %625 = load float, float* %624, align 4
  br label %864

; <label>:626:                                    ; preds = %453, %410
  %627 = phi float [ %412, %410 ], [ %457, %453 ]
  %628 = phi i32 [ 0, %410 ], [ %455, %453 ]
  %629 = phi i32 [ %408, %410 ], [ %454, %453 ]
  %630 = fcmp uge float %627, %20
  br i1 %630, label %665, label %631

; <label>:631:                                    ; preds = %626
  %632 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %633 = load float, float* %632, align 4
  br label %873

; <label>:634:                                    ; preds = %453, %417
  %635 = phi float [ %419, %417 ], [ %457, %453 ]
  %636 = phi i32 [ 0, %417 ], [ %455, %453 ]
  %637 = phi i32 [ %415, %417 ], [ %454, %453 ]
  %638 = fcmp une float %635, %20
  br i1 %638, label %665, label %639

; <label>:639:                                    ; preds = %634
  %640 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %641 = load float, float* %640, align 4
  br label %882

; <label>:642:                                    ; preds = %453, %453
  br i1 %458, label %665, label %680

; <label>:643:                                    ; preds = %453, %427
  %644 = phi i1 [ %430, %427 ], [ %459, %453 ]
  %645 = phi float [ %429, %427 ], [ %457, %453 ]
  %646 = phi i32 [ 0, %427 ], [ %455, %453 ]
  %647 = phi i32 [ %424, %427 ], [ %454, %453 ]
  %648 = fcmp ole float %645, %20
  %649 = and i1 %648, %644
  br i1 %649, label %665, label %650

; <label>:650:                                    ; preds = %643
  %651 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %652 = load float, float* %651, align 4
  %653 = fcmp ord float %652, %24
  br label %892

; <label>:654:                                    ; preds = %453, %437
  %655 = phi i1 [ %440, %437 ], [ %459, %453 ]
  %656 = phi float [ %439, %437 ], [ %457, %453 ]
  %657 = phi i32 [ 0, %437 ], [ %455, %453 ]
  %658 = phi i32 [ %434, %437 ], [ %454, %453 ]
  %659 = fcmp olt float %656, %20
  %660 = and i1 %659, %655
  br i1 %660, label %665, label %661

; <label>:661:                                    ; preds = %654
  %662 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %663 = load float, float* %662, align 4
  %664 = fcmp ord float %663, %24
  br label %904

; <label>:665:                                    ; preds = %654, %643, %642, %634, %626, %618, %617, %609, %601, %593, %585, %574, %563, %552, %544, %536, %528, %520, %512, %511, %503, %495, %487, %476, %468, %460, %453, %453, %448, %443
  %666 = phi i32 [ %657, %654 ], [ %646, %643 ], [ %455, %642 ], [ %636, %634 ], [ %628, %626 ], [ %620, %618 ], [ %455, %617 ], [ %611, %609 ], [ %603, %601 ], [ %595, %593 ], [ %587, %585 ], [ %577, %574 ], [ %566, %563 ], [ %555, %552 ], [ %546, %544 ], [ %538, %536 ], [ %530, %528 ], [ %522, %520 ], [ %514, %512 ], [ %455, %511 ], [ %505, %503 ], [ %497, %495 ], [ %489, %487 ], [ %479, %476 ], [ %470, %468 ], [ %462, %460 ], [ %455, %453 ], [ %455, %453 ], [ 0, %448 ], [ 0, %443 ]
  %667 = phi i32 [ %658, %654 ], [ %647, %643 ], [ %454, %642 ], [ %637, %634 ], [ %629, %626 ], [ %621, %618 ], [ %454, %617 ], [ %612, %609 ], [ %604, %601 ], [ %596, %593 ], [ %588, %585 ], [ %578, %574 ], [ %567, %563 ], [ %556, %552 ], [ %547, %544 ], [ %539, %536 ], [ %531, %528 ], [ %523, %520 ], [ %515, %512 ], [ %454, %511 ], [ %506, %503 ], [ %498, %495 ], [ %490, %487 ], [ %480, %476 ], [ %471, %468 ], [ %463, %460 ], [ %454, %453 ], [ %454, %453 ], [ %449, %448 ], [ %444, %443 ]
  br label %680

; <label>:668:                                    ; preds = %617, %443
  %669 = phi i32 [ 0, %443 ], [ %455, %617 ]
  %670 = phi i32 [ %444, %443 ], [ %454, %617 ]
  %671 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %672 = load float, float* %671, align 4
  %673 = fcmp uno float %672, %24
  br i1 %673, label %920, label %916

; <label>:674:                                    ; preds = %511, %448
  %675 = phi i32 [ 0, %448 ], [ %455, %511 ]
  %676 = phi i32 [ %449, %448 ], [ %454, %511 ]
  %677 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %678 = load float, float* %677, align 4
  %679 = fcmp uno float %678, %24
  br i1 %679, label %927, label %916

; <label>:680:                                    ; preds = %665, %642, %453, %453
  %681 = phi i32 [ %666, %665 ], [ %455, %642 ], [ %455, %453 ], [ %455, %453 ]
  %682 = phi i32 [ %667, %665 ], [ %454, %642 ], [ %454, %453 ], [ %454, %453 ]
  %683 = phi i32 [ -1, %665 ], [ 0, %642 ], [ 0, %453 ], [ 0, %453 ]
  %684 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 3
  %685 = load float, float* %684, align 4
  %686 = fcmp uno float %685, %24
  %687 = xor i1 %686, true
  switch i8 %42, label %248 [
    i8 31, label %916
    i8 1, label %904
    i8 2, label %892
    i8 3, label %891
    i8 4, label %882
    i8 5, label %873
    i8 6, label %864
    i8 7, label %863
    i8 8, label %854
    i8 9, label %845
    i8 10, label %836
    i8 11, label %934
    i8 12, label %827
    i8 13, label %815
    i8 14, label %803
    i8 15, label %916
    i8 16, label %791
    i8 17, label %782
    i8 18, label %773
    i8 19, label %891
    i8 20, label %764
    i8 21, label %755
    i8 22, label %746
    i8 23, label %745
    i8 24, label %736
    i8 25, label %727
    i8 26, label %718
    i8 27, label %934
    i8 28, label %706
    i8 29, label %697
    i8 30, label %688
  ]

; <label>:688:                                    ; preds = %680, %465
  %689 = phi float [ %467, %465 ], [ %685, %680 ]
  %690 = phi i32 [ 0, %465 ], [ %683, %680 ]
  %691 = phi i32 [ %463, %465 ], [ %682, %680 ]
  %692 = phi i32 [ %462, %465 ], [ %681, %680 ]
  %693 = fcmp ogt float %689, %24
  br i1 %693, label %916, label %694

; <label>:694:                                    ; preds = %688
  %695 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %696 = load float, float* %695, align 4
  br label %943

; <label>:697:                                    ; preds = %680, %473
  %698 = phi float [ %475, %473 ], [ %685, %680 ]
  %699 = phi i32 [ 0, %473 ], [ %683, %680 ]
  %700 = phi i32 [ %471, %473 ], [ %682, %680 ]
  %701 = phi i32 [ %470, %473 ], [ %681, %680 ]
  %702 = fcmp ult float %698, %24
  br i1 %702, label %703, label %916

; <label>:703:                                    ; preds = %697
  %704 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %705 = load float, float* %704, align 4
  br label %953

; <label>:706:                                    ; preds = %680, %483
  %707 = phi i1 [ %486, %483 ], [ %687, %680 ]
  %708 = phi float [ %485, %483 ], [ %685, %680 ]
  %709 = phi i32 [ 0, %483 ], [ %683, %680 ]
  %710 = phi i32 [ %480, %483 ], [ %682, %680 ]
  %711 = phi i32 [ %479, %483 ], [ %681, %680 ]
  %712 = fcmp une float %708, %24
  %713 = and i1 %712, %707
  br i1 %713, label %916, label %714

; <label>:714:                                    ; preds = %706
  %715 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %716 = load float, float* %715, align 4
  %717 = fcmp ord float %716, %28
  br label %963

; <label>:718:                                    ; preds = %680, %492
  %719 = phi float [ %494, %492 ], [ %685, %680 ]
  %720 = phi i32 [ 0, %492 ], [ %683, %680 ]
  %721 = phi i32 [ %490, %492 ], [ %682, %680 ]
  %722 = phi i32 [ %489, %492 ], [ %681, %680 ]
  %723 = fcmp ule float %719, %24
  br i1 %723, label %916, label %724

; <label>:724:                                    ; preds = %718
  %725 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %726 = load float, float* %725, align 4
  br label %976

; <label>:727:                                    ; preds = %680, %500
  %728 = phi float [ %502, %500 ], [ %685, %680 ]
  %729 = phi i32 [ 0, %500 ], [ %683, %680 ]
  %730 = phi i32 [ %498, %500 ], [ %682, %680 ]
  %731 = phi i32 [ %497, %500 ], [ %681, %680 ]
  %732 = fcmp ult float %728, %24
  br i1 %732, label %916, label %733

; <label>:733:                                    ; preds = %727
  %734 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %735 = load float, float* %734, align 4
  br label %986

; <label>:736:                                    ; preds = %680, %508
  %737 = phi float [ %510, %508 ], [ %685, %680 ]
  %738 = phi i32 [ 0, %508 ], [ %683, %680 ]
  %739 = phi i32 [ %506, %508 ], [ %682, %680 ]
  %740 = phi i32 [ %505, %508 ], [ %681, %680 ]
  %741 = fcmp ueq float %737, %24
  br i1 %741, label %916, label %742

; <label>:742:                                    ; preds = %736
  %743 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %744 = load float, float* %743, align 4
  br label %996

; <label>:745:                                    ; preds = %680
  br i1 %686, label %927, label %916

; <label>:746:                                    ; preds = %680, %517
  %747 = phi float [ %519, %517 ], [ %685, %680 ]
  %748 = phi i32 [ 0, %517 ], [ %683, %680 ]
  %749 = phi i32 [ %515, %517 ], [ %682, %680 ]
  %750 = phi i32 [ %514, %517 ], [ %681, %680 ]
  %751 = fcmp ugt float %747, %24
  br i1 %751, label %916, label %752

; <label>:752:                                    ; preds = %746
  %753 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %754 = load float, float* %753, align 4
  br label %1007

; <label>:755:                                    ; preds = %680, %525
  %756 = phi float [ %527, %525 ], [ %685, %680 ]
  %757 = phi i32 [ 0, %525 ], [ %683, %680 ]
  %758 = phi i32 [ %523, %525 ], [ %682, %680 ]
  %759 = phi i32 [ %522, %525 ], [ %681, %680 ]
  %760 = fcmp uge float %756, %24
  br i1 %760, label %916, label %761

; <label>:761:                                    ; preds = %755
  %762 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %763 = load float, float* %762, align 4
  br label %1017

; <label>:764:                                    ; preds = %680, %533
  %765 = phi float [ %535, %533 ], [ %685, %680 ]
  %766 = phi i32 [ 0, %533 ], [ %683, %680 ]
  %767 = phi i32 [ %531, %533 ], [ %682, %680 ]
  %768 = phi i32 [ %530, %533 ], [ %681, %680 ]
  %769 = fcmp une float %765, %24
  br i1 %769, label %916, label %770

; <label>:770:                                    ; preds = %764
  %771 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %772 = load float, float* %771, align 4
  br label %1027

; <label>:773:                                    ; preds = %680, %541
  %774 = phi float [ %543, %541 ], [ %685, %680 ]
  %775 = phi i32 [ 0, %541 ], [ %683, %680 ]
  %776 = phi i32 [ %539, %541 ], [ %682, %680 ]
  %777 = phi i32 [ %538, %541 ], [ %681, %680 ]
  %778 = fcmp ugt float %774, %24
  br i1 %778, label %779, label %916

; <label>:779:                                    ; preds = %773
  %780 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %781 = load float, float* %780, align 4
  br label %1037

; <label>:782:                                    ; preds = %680, %549
  %783 = phi float [ %551, %549 ], [ %685, %680 ]
  %784 = phi i32 [ 0, %549 ], [ %683, %680 ]
  %785 = phi i32 [ %547, %549 ], [ %682, %680 ]
  %786 = phi i32 [ %546, %549 ], [ %681, %680 ]
  %787 = fcmp olt float %783, %24
  br i1 %787, label %916, label %788

; <label>:788:                                    ; preds = %782
  %789 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %790 = load float, float* %789, align 4
  br label %1047

; <label>:791:                                    ; preds = %680, %559
  %792 = phi i1 [ %562, %559 ], [ %687, %680 ]
  %793 = phi float [ %561, %559 ], [ %685, %680 ]
  %794 = phi i32 [ 0, %559 ], [ %683, %680 ]
  %795 = phi i32 [ %556, %559 ], [ %682, %680 ]
  %796 = phi i32 [ %555, %559 ], [ %681, %680 ]
  %797 = fcmp oeq float %793, %24
  %798 = and i1 %797, %792
  br i1 %798, label %916, label %799

; <label>:799:                                    ; preds = %791
  %800 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %801 = load float, float* %800, align 4
  %802 = fcmp ord float %801, %28
  br label %1057

; <label>:803:                                    ; preds = %680, %570
  %804 = phi i1 [ %573, %570 ], [ %687, %680 ]
  %805 = phi float [ %572, %570 ], [ %685, %680 ]
  %806 = phi i32 [ 0, %570 ], [ %683, %680 ]
  %807 = phi i32 [ %567, %570 ], [ %682, %680 ]
  %808 = phi i32 [ %566, %570 ], [ %681, %680 ]
  %809 = fcmp ogt float %805, %24
  %810 = and i1 %809, %804
  br i1 %810, label %916, label %811

; <label>:811:                                    ; preds = %803
  %812 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %813 = load float, float* %812, align 4
  %814 = fcmp ord float %813, %28
  br label %1070

; <label>:815:                                    ; preds = %680, %581
  %816 = phi i1 [ %584, %581 ], [ %687, %680 ]
  %817 = phi float [ %583, %581 ], [ %685, %680 ]
  %818 = phi i32 [ 0, %581 ], [ %683, %680 ]
  %819 = phi i32 [ %578, %581 ], [ %682, %680 ]
  %820 = phi i32 [ %577, %581 ], [ %681, %680 ]
  %821 = fcmp oge float %817, %24
  %822 = and i1 %821, %816
  br i1 %822, label %916, label %823

; <label>:823:                                    ; preds = %815
  %824 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %825 = load float, float* %824, align 4
  %826 = fcmp ord float %825, %28
  br label %1083

; <label>:827:                                    ; preds = %680, %590
  %828 = phi float [ %592, %590 ], [ %685, %680 ]
  %829 = phi i32 [ 0, %590 ], [ %683, %680 ]
  %830 = phi i32 [ %588, %590 ], [ %682, %680 ]
  %831 = phi i32 [ %587, %590 ], [ %681, %680 ]
  %832 = fcmp ueq float %828, %24
  br i1 %832, label %833, label %916

; <label>:833:                                    ; preds = %827
  %834 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %835 = load float, float* %834, align 4
  br label %1096

; <label>:836:                                    ; preds = %680, %598
  %837 = phi float [ %600, %598 ], [ %685, %680 ]
  %838 = phi i32 [ 0, %598 ], [ %683, %680 ]
  %839 = phi i32 [ %596, %598 ], [ %682, %680 ]
  %840 = phi i32 [ %595, %598 ], [ %681, %680 ]
  %841 = fcmp ule float %837, %24
  br i1 %841, label %916, label %842

; <label>:842:                                    ; preds = %836
  %843 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %844 = load float, float* %843, align 4
  br label %1106

; <label>:845:                                    ; preds = %680, %606
  %846 = phi float [ %608, %606 ], [ %685, %680 ]
  %847 = phi i32 [ 0, %606 ], [ %683, %680 ]
  %848 = phi i32 [ %604, %606 ], [ %682, %680 ]
  %849 = phi i32 [ %603, %606 ], [ %681, %680 ]
  %850 = fcmp ult float %846, %24
  br i1 %850, label %916, label %851

; <label>:851:                                    ; preds = %845
  %852 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %853 = load float, float* %852, align 4
  br label %1116

; <label>:854:                                    ; preds = %680, %614
  %855 = phi float [ %616, %614 ], [ %685, %680 ]
  %856 = phi i32 [ 0, %614 ], [ %683, %680 ]
  %857 = phi i32 [ %612, %614 ], [ %682, %680 ]
  %858 = phi i32 [ %611, %614 ], [ %681, %680 ]
  %859 = fcmp ueq float %855, %24
  br i1 %859, label %916, label %860

; <label>:860:                                    ; preds = %854
  %861 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %862 = load float, float* %861, align 4
  br label %1126

; <label>:863:                                    ; preds = %680
  br i1 %686, label %920, label %916

; <label>:864:                                    ; preds = %680, %623
  %865 = phi float [ %625, %623 ], [ %685, %680 ]
  %866 = phi i32 [ 0, %623 ], [ %683, %680 ]
  %867 = phi i32 [ %621, %623 ], [ %682, %680 ]
  %868 = phi i32 [ %620, %623 ], [ %681, %680 ]
  %869 = fcmp ugt float %865, %24
  br i1 %869, label %916, label %870

; <label>:870:                                    ; preds = %864
  %871 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %872 = load float, float* %871, align 4
  br label %1137

; <label>:873:                                    ; preds = %680, %631
  %874 = phi float [ %633, %631 ], [ %685, %680 ]
  %875 = phi i32 [ 0, %631 ], [ %683, %680 ]
  %876 = phi i32 [ %629, %631 ], [ %682, %680 ]
  %877 = phi i32 [ %628, %631 ], [ %681, %680 ]
  %878 = fcmp uge float %874, %24
  br i1 %878, label %916, label %879

; <label>:879:                                    ; preds = %873
  %880 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %881 = load float, float* %880, align 4
  br label %1147

; <label>:882:                                    ; preds = %680, %639
  %883 = phi float [ %641, %639 ], [ %685, %680 ]
  %884 = phi i32 [ 0, %639 ], [ %683, %680 ]
  %885 = phi i32 [ %637, %639 ], [ %682, %680 ]
  %886 = phi i32 [ %636, %639 ], [ %681, %680 ]
  %887 = fcmp une float %883, %24
  br i1 %887, label %916, label %888

; <label>:888:                                    ; preds = %882
  %889 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %890 = load float, float* %889, align 4
  br label %1157

; <label>:891:                                    ; preds = %680, %680
  br i1 %686, label %916, label %934

; <label>:892:                                    ; preds = %680, %650
  %893 = phi i1 [ %653, %650 ], [ %687, %680 ]
  %894 = phi float [ %652, %650 ], [ %685, %680 ]
  %895 = phi i32 [ 0, %650 ], [ %683, %680 ]
  %896 = phi i32 [ %647, %650 ], [ %682, %680 ]
  %897 = phi i32 [ %646, %650 ], [ %681, %680 ]
  %898 = fcmp ole float %894, %24
  %899 = and i1 %898, %893
  br i1 %899, label %916, label %900

; <label>:900:                                    ; preds = %892
  %901 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %902 = load float, float* %901, align 4
  %903 = fcmp ord float %902, %28
  br label %1168

; <label>:904:                                    ; preds = %680, %661
  %905 = phi i1 [ %664, %661 ], [ %687, %680 ]
  %906 = phi float [ %663, %661 ], [ %685, %680 ]
  %907 = phi i32 [ 0, %661 ], [ %683, %680 ]
  %908 = phi i32 [ %658, %661 ], [ %682, %680 ]
  %909 = phi i32 [ %657, %661 ], [ %681, %680 ]
  %910 = fcmp olt float %906, %24
  %911 = and i1 %910, %905
  br i1 %911, label %916, label %912

; <label>:912:                                    ; preds = %904
  %913 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %914 = load float, float* %913, align 4
  %915 = fcmp ord float %914, %28
  br label %1181

; <label>:916:                                    ; preds = %904, %892, %891, %882, %873, %864, %863, %854, %845, %836, %827, %815, %803, %791, %782, %773, %764, %755, %746, %745, %736, %727, %718, %706, %697, %688, %680, %680, %674, %668
  %917 = phi i32 [ %907, %904 ], [ %895, %892 ], [ %683, %891 ], [ %884, %882 ], [ %875, %873 ], [ %866, %864 ], [ %683, %863 ], [ %856, %854 ], [ %847, %845 ], [ %838, %836 ], [ %829, %827 ], [ %818, %815 ], [ %806, %803 ], [ %794, %791 ], [ %784, %782 ], [ %775, %773 ], [ %766, %764 ], [ %757, %755 ], [ %748, %746 ], [ %683, %745 ], [ %738, %736 ], [ %729, %727 ], [ %720, %718 ], [ %709, %706 ], [ %699, %697 ], [ %690, %688 ], [ %683, %680 ], [ %683, %680 ], [ 0, %674 ], [ 0, %668 ]
  %918 = phi i32 [ %908, %904 ], [ %896, %892 ], [ %682, %891 ], [ %885, %882 ], [ %876, %873 ], [ %867, %864 ], [ %682, %863 ], [ %857, %854 ], [ %848, %845 ], [ %839, %836 ], [ %830, %827 ], [ %819, %815 ], [ %807, %803 ], [ %795, %791 ], [ %785, %782 ], [ %776, %773 ], [ %767, %764 ], [ %758, %755 ], [ %749, %746 ], [ %682, %745 ], [ %739, %736 ], [ %730, %727 ], [ %721, %718 ], [ %710, %706 ], [ %700, %697 ], [ %691, %688 ], [ %682, %680 ], [ %682, %680 ], [ %676, %674 ], [ %670, %668 ]
  %919 = phi i32 [ %909, %904 ], [ %897, %892 ], [ %681, %891 ], [ %886, %882 ], [ %877, %873 ], [ %868, %864 ], [ %681, %863 ], [ %858, %854 ], [ %849, %845 ], [ %840, %836 ], [ %831, %827 ], [ %820, %815 ], [ %808, %803 ], [ %796, %791 ], [ %786, %782 ], [ %777, %773 ], [ %768, %764 ], [ %759, %755 ], [ %750, %746 ], [ %681, %745 ], [ %740, %736 ], [ %731, %727 ], [ %722, %718 ], [ %711, %706 ], [ %701, %697 ], [ %692, %688 ], [ %681, %680 ], [ %681, %680 ], [ %675, %674 ], [ %669, %668 ]
  br label %934

; <label>:920:                                    ; preds = %863, %668
  %921 = phi i32 [ 0, %668 ], [ %683, %863 ]
  %922 = phi i32 [ %670, %668 ], [ %682, %863 ]
  %923 = phi i32 [ %669, %668 ], [ %681, %863 ]
  %924 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %925 = load float, float* %924, align 4
  %926 = fcmp uno float %925, %28
  br i1 %926, label %1199, label %1194

; <label>:927:                                    ; preds = %745, %674
  %928 = phi i32 [ 0, %674 ], [ %683, %745 ]
  %929 = phi i32 [ %676, %674 ], [ %682, %745 ]
  %930 = phi i32 [ %675, %674 ], [ %681, %745 ]
  %931 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %932 = load float, float* %931, align 4
  %933 = fcmp uno float %932, %28
  br i1 %933, label %1207, label %1194

; <label>:934:                                    ; preds = %916, %891, %680, %680
  %935 = phi i32 [ %917, %916 ], [ %683, %891 ], [ %683, %680 ], [ %683, %680 ]
  %936 = phi i32 [ %918, %916 ], [ %682, %891 ], [ %682, %680 ], [ %682, %680 ]
  %937 = phi i32 [ %919, %916 ], [ %681, %891 ], [ %681, %680 ], [ %681, %680 ]
  %938 = phi i32 [ -1, %916 ], [ 0, %891 ], [ 0, %680 ], [ 0, %680 ]
  %939 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 4
  %940 = load float, float* %939, align 4
  %941 = fcmp uno float %940, %28
  %942 = xor i1 %941, true
  switch i8 %42, label %248 [
    i8 31, label %1194
    i8 1, label %1181
    i8 2, label %1168
    i8 3, label %1167
    i8 4, label %1157
    i8 5, label %1147
    i8 6, label %1137
    i8 7, label %1136
    i8 8, label %1126
    i8 9, label %1116
    i8 10, label %1106
    i8 11, label %1215
    i8 12, label %1096
    i8 13, label %1083
    i8 14, label %1070
    i8 15, label %1194
    i8 16, label %1057
    i8 17, label %1047
    i8 18, label %1037
    i8 19, label %1167
    i8 20, label %1027
    i8 21, label %1017
    i8 22, label %1007
    i8 23, label %1006
    i8 24, label %996
    i8 25, label %986
    i8 26, label %976
    i8 27, label %1215
    i8 28, label %963
    i8 29, label %953
    i8 30, label %943
  ]

; <label>:943:                                    ; preds = %934, %694
  %944 = phi float [ %696, %694 ], [ %940, %934 ]
  %945 = phi i32 [ 0, %694 ], [ %938, %934 ]
  %946 = phi i32 [ %692, %694 ], [ %937, %934 ]
  %947 = phi i32 [ %691, %694 ], [ %936, %934 ]
  %948 = phi i32 [ %690, %694 ], [ %935, %934 ]
  %949 = fcmp ogt float %944, %28
  br i1 %949, label %1194, label %950

; <label>:950:                                    ; preds = %943
  %951 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %952 = load float, float* %951, align 4
  br label %1225

; <label>:953:                                    ; preds = %934, %703
  %954 = phi float [ %705, %703 ], [ %940, %934 ]
  %955 = phi i32 [ 0, %703 ], [ %938, %934 ]
  %956 = phi i32 [ %701, %703 ], [ %937, %934 ]
  %957 = phi i32 [ %700, %703 ], [ %936, %934 ]
  %958 = phi i32 [ %699, %703 ], [ %935, %934 ]
  %959 = fcmp ult float %954, %28
  br i1 %959, label %960, label %1194

; <label>:960:                                    ; preds = %953
  %961 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %962 = load float, float* %961, align 4
  br label %1236

; <label>:963:                                    ; preds = %934, %714
  %964 = phi i1 [ %717, %714 ], [ %942, %934 ]
  %965 = phi float [ %716, %714 ], [ %940, %934 ]
  %966 = phi i32 [ 0, %714 ], [ %938, %934 ]
  %967 = phi i32 [ %711, %714 ], [ %937, %934 ]
  %968 = phi i32 [ %710, %714 ], [ %936, %934 ]
  %969 = phi i32 [ %709, %714 ], [ %935, %934 ]
  %970 = fcmp une float %965, %28
  %971 = and i1 %970, %964
  br i1 %971, label %1194, label %972

; <label>:972:                                    ; preds = %963
  %973 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %974 = load float, float* %973, align 4
  %975 = fcmp ord float %974, %32
  br label %1247

; <label>:976:                                    ; preds = %934, %724
  %977 = phi float [ %726, %724 ], [ %940, %934 ]
  %978 = phi i32 [ 0, %724 ], [ %938, %934 ]
  %979 = phi i32 [ %722, %724 ], [ %937, %934 ]
  %980 = phi i32 [ %721, %724 ], [ %936, %934 ]
  %981 = phi i32 [ %720, %724 ], [ %935, %934 ]
  %982 = fcmp ule float %977, %28
  br i1 %982, label %1194, label %983

; <label>:983:                                    ; preds = %976
  %984 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %985 = load float, float* %984, align 4
  br label %1261

; <label>:986:                                    ; preds = %934, %733
  %987 = phi float [ %735, %733 ], [ %940, %934 ]
  %988 = phi i32 [ 0, %733 ], [ %938, %934 ]
  %989 = phi i32 [ %731, %733 ], [ %937, %934 ]
  %990 = phi i32 [ %730, %733 ], [ %936, %934 ]
  %991 = phi i32 [ %729, %733 ], [ %935, %934 ]
  %992 = fcmp ult float %987, %28
  br i1 %992, label %1194, label %993

; <label>:993:                                    ; preds = %986
  %994 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %995 = load float, float* %994, align 4
  br label %1272

; <label>:996:                                    ; preds = %934, %742
  %997 = phi float [ %744, %742 ], [ %940, %934 ]
  %998 = phi i32 [ 0, %742 ], [ %938, %934 ]
  %999 = phi i32 [ %740, %742 ], [ %937, %934 ]
  %1000 = phi i32 [ %739, %742 ], [ %936, %934 ]
  %1001 = phi i32 [ %738, %742 ], [ %935, %934 ]
  %1002 = fcmp ueq float %997, %28
  br i1 %1002, label %1194, label %1003

; <label>:1003:                                   ; preds = %996
  %1004 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1005 = load float, float* %1004, align 4
  br label %1283

; <label>:1006:                                   ; preds = %934
  br i1 %941, label %1207, label %1194

; <label>:1007:                                   ; preds = %934, %752
  %1008 = phi float [ %754, %752 ], [ %940, %934 ]
  %1009 = phi i32 [ 0, %752 ], [ %938, %934 ]
  %1010 = phi i32 [ %750, %752 ], [ %937, %934 ]
  %1011 = phi i32 [ %749, %752 ], [ %936, %934 ]
  %1012 = phi i32 [ %748, %752 ], [ %935, %934 ]
  %1013 = fcmp ugt float %1008, %28
  br i1 %1013, label %1194, label %1014

; <label>:1014:                                   ; preds = %1007
  %1015 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1016 = load float, float* %1015, align 4
  br label %1295

; <label>:1017:                                   ; preds = %934, %761
  %1018 = phi float [ %763, %761 ], [ %940, %934 ]
  %1019 = phi i32 [ 0, %761 ], [ %938, %934 ]
  %1020 = phi i32 [ %759, %761 ], [ %937, %934 ]
  %1021 = phi i32 [ %758, %761 ], [ %936, %934 ]
  %1022 = phi i32 [ %757, %761 ], [ %935, %934 ]
  %1023 = fcmp uge float %1018, %28
  br i1 %1023, label %1194, label %1024

; <label>:1024:                                   ; preds = %1017
  %1025 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1026 = load float, float* %1025, align 4
  br label %1306

; <label>:1027:                                   ; preds = %934, %770
  %1028 = phi float [ %772, %770 ], [ %940, %934 ]
  %1029 = phi i32 [ 0, %770 ], [ %938, %934 ]
  %1030 = phi i32 [ %768, %770 ], [ %937, %934 ]
  %1031 = phi i32 [ %767, %770 ], [ %936, %934 ]
  %1032 = phi i32 [ %766, %770 ], [ %935, %934 ]
  %1033 = fcmp une float %1028, %28
  br i1 %1033, label %1194, label %1034

; <label>:1034:                                   ; preds = %1027
  %1035 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1036 = load float, float* %1035, align 4
  br label %1317

; <label>:1037:                                   ; preds = %934, %779
  %1038 = phi float [ %781, %779 ], [ %940, %934 ]
  %1039 = phi i32 [ 0, %779 ], [ %938, %934 ]
  %1040 = phi i32 [ %777, %779 ], [ %937, %934 ]
  %1041 = phi i32 [ %776, %779 ], [ %936, %934 ]
  %1042 = phi i32 [ %775, %779 ], [ %935, %934 ]
  %1043 = fcmp ugt float %1038, %28
  br i1 %1043, label %1044, label %1194

; <label>:1044:                                   ; preds = %1037
  %1045 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1046 = load float, float* %1045, align 4
  br label %1328

; <label>:1047:                                   ; preds = %934, %788
  %1048 = phi float [ %790, %788 ], [ %940, %934 ]
  %1049 = phi i32 [ 0, %788 ], [ %938, %934 ]
  %1050 = phi i32 [ %786, %788 ], [ %937, %934 ]
  %1051 = phi i32 [ %785, %788 ], [ %936, %934 ]
  %1052 = phi i32 [ %784, %788 ], [ %935, %934 ]
  %1053 = fcmp olt float %1048, %28
  br i1 %1053, label %1194, label %1054

; <label>:1054:                                   ; preds = %1047
  %1055 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1056 = load float, float* %1055, align 4
  br label %1339

; <label>:1057:                                   ; preds = %934, %799
  %1058 = phi i1 [ %802, %799 ], [ %942, %934 ]
  %1059 = phi float [ %801, %799 ], [ %940, %934 ]
  %1060 = phi i32 [ 0, %799 ], [ %938, %934 ]
  %1061 = phi i32 [ %796, %799 ], [ %937, %934 ]
  %1062 = phi i32 [ %795, %799 ], [ %936, %934 ]
  %1063 = phi i32 [ %794, %799 ], [ %935, %934 ]
  %1064 = fcmp oeq float %1059, %28
  %1065 = and i1 %1064, %1058
  br i1 %1065, label %1194, label %1066

; <label>:1066:                                   ; preds = %1057
  %1067 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1068 = load float, float* %1067, align 4
  %1069 = fcmp ord float %1068, %32
  br label %1350

; <label>:1070:                                   ; preds = %934, %811
  %1071 = phi i1 [ %814, %811 ], [ %942, %934 ]
  %1072 = phi float [ %813, %811 ], [ %940, %934 ]
  %1073 = phi i32 [ 0, %811 ], [ %938, %934 ]
  %1074 = phi i32 [ %808, %811 ], [ %937, %934 ]
  %1075 = phi i32 [ %807, %811 ], [ %936, %934 ]
  %1076 = phi i32 [ %806, %811 ], [ %935, %934 ]
  %1077 = fcmp ogt float %1072, %28
  %1078 = and i1 %1077, %1071
  br i1 %1078, label %1194, label %1079

; <label>:1079:                                   ; preds = %1070
  %1080 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1081 = load float, float* %1080, align 4
  %1082 = fcmp ord float %1081, %32
  br label %1364

; <label>:1083:                                   ; preds = %934, %823
  %1084 = phi i1 [ %826, %823 ], [ %942, %934 ]
  %1085 = phi float [ %825, %823 ], [ %940, %934 ]
  %1086 = phi i32 [ 0, %823 ], [ %938, %934 ]
  %1087 = phi i32 [ %820, %823 ], [ %937, %934 ]
  %1088 = phi i32 [ %819, %823 ], [ %936, %934 ]
  %1089 = phi i32 [ %818, %823 ], [ %935, %934 ]
  %1090 = fcmp oge float %1085, %28
  %1091 = and i1 %1090, %1084
  br i1 %1091, label %1194, label %1092

; <label>:1092:                                   ; preds = %1083
  %1093 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1094 = load float, float* %1093, align 4
  %1095 = fcmp ord float %1094, %32
  br label %1378

; <label>:1096:                                   ; preds = %934, %833
  %1097 = phi float [ %835, %833 ], [ %940, %934 ]
  %1098 = phi i32 [ 0, %833 ], [ %938, %934 ]
  %1099 = phi i32 [ %831, %833 ], [ %937, %934 ]
  %1100 = phi i32 [ %830, %833 ], [ %936, %934 ]
  %1101 = phi i32 [ %829, %833 ], [ %935, %934 ]
  %1102 = fcmp ueq float %1097, %28
  br i1 %1102, label %1103, label %1194

; <label>:1103:                                   ; preds = %1096
  %1104 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1105 = load float, float* %1104, align 4
  br label %1392

; <label>:1106:                                   ; preds = %934, %842
  %1107 = phi float [ %844, %842 ], [ %940, %934 ]
  %1108 = phi i32 [ 0, %842 ], [ %938, %934 ]
  %1109 = phi i32 [ %840, %842 ], [ %937, %934 ]
  %1110 = phi i32 [ %839, %842 ], [ %936, %934 ]
  %1111 = phi i32 [ %838, %842 ], [ %935, %934 ]
  %1112 = fcmp ule float %1107, %28
  br i1 %1112, label %1194, label %1113

; <label>:1113:                                   ; preds = %1106
  %1114 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1115 = load float, float* %1114, align 4
  br label %1403

; <label>:1116:                                   ; preds = %934, %851
  %1117 = phi float [ %853, %851 ], [ %940, %934 ]
  %1118 = phi i32 [ 0, %851 ], [ %938, %934 ]
  %1119 = phi i32 [ %849, %851 ], [ %937, %934 ]
  %1120 = phi i32 [ %848, %851 ], [ %936, %934 ]
  %1121 = phi i32 [ %847, %851 ], [ %935, %934 ]
  %1122 = fcmp ult float %1117, %28
  br i1 %1122, label %1194, label %1123

; <label>:1123:                                   ; preds = %1116
  %1124 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1125 = load float, float* %1124, align 4
  br label %1414

; <label>:1126:                                   ; preds = %934, %860
  %1127 = phi float [ %862, %860 ], [ %940, %934 ]
  %1128 = phi i32 [ 0, %860 ], [ %938, %934 ]
  %1129 = phi i32 [ %858, %860 ], [ %937, %934 ]
  %1130 = phi i32 [ %857, %860 ], [ %936, %934 ]
  %1131 = phi i32 [ %856, %860 ], [ %935, %934 ]
  %1132 = fcmp ueq float %1127, %28
  br i1 %1132, label %1194, label %1133

; <label>:1133:                                   ; preds = %1126
  %1134 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1135 = load float, float* %1134, align 4
  br label %1425

; <label>:1136:                                   ; preds = %934
  br i1 %941, label %1199, label %1194

; <label>:1137:                                   ; preds = %934, %870
  %1138 = phi float [ %872, %870 ], [ %940, %934 ]
  %1139 = phi i32 [ 0, %870 ], [ %938, %934 ]
  %1140 = phi i32 [ %868, %870 ], [ %937, %934 ]
  %1141 = phi i32 [ %867, %870 ], [ %936, %934 ]
  %1142 = phi i32 [ %866, %870 ], [ %935, %934 ]
  %1143 = fcmp ugt float %1138, %28
  br i1 %1143, label %1194, label %1144

; <label>:1144:                                   ; preds = %1137
  %1145 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1146 = load float, float* %1145, align 4
  br label %1437

; <label>:1147:                                   ; preds = %934, %879
  %1148 = phi float [ %881, %879 ], [ %940, %934 ]
  %1149 = phi i32 [ 0, %879 ], [ %938, %934 ]
  %1150 = phi i32 [ %877, %879 ], [ %937, %934 ]
  %1151 = phi i32 [ %876, %879 ], [ %936, %934 ]
  %1152 = phi i32 [ %875, %879 ], [ %935, %934 ]
  %1153 = fcmp uge float %1148, %28
  br i1 %1153, label %1194, label %1154

; <label>:1154:                                   ; preds = %1147
  %1155 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1156 = load float, float* %1155, align 4
  br label %1448

; <label>:1157:                                   ; preds = %934, %888
  %1158 = phi float [ %890, %888 ], [ %940, %934 ]
  %1159 = phi i32 [ 0, %888 ], [ %938, %934 ]
  %1160 = phi i32 [ %886, %888 ], [ %937, %934 ]
  %1161 = phi i32 [ %885, %888 ], [ %936, %934 ]
  %1162 = phi i32 [ %884, %888 ], [ %935, %934 ]
  %1163 = fcmp une float %1158, %28
  br i1 %1163, label %1194, label %1164

; <label>:1164:                                   ; preds = %1157
  %1165 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1166 = load float, float* %1165, align 4
  br label %1459

; <label>:1167:                                   ; preds = %934, %934
  br i1 %941, label %1194, label %1215

; <label>:1168:                                   ; preds = %934, %900
  %1169 = phi i1 [ %903, %900 ], [ %942, %934 ]
  %1170 = phi float [ %902, %900 ], [ %940, %934 ]
  %1171 = phi i32 [ 0, %900 ], [ %938, %934 ]
  %1172 = phi i32 [ %897, %900 ], [ %937, %934 ]
  %1173 = phi i32 [ %896, %900 ], [ %936, %934 ]
  %1174 = phi i32 [ %895, %900 ], [ %935, %934 ]
  %1175 = fcmp ole float %1170, %28
  %1176 = and i1 %1175, %1169
  br i1 %1176, label %1194, label %1177

; <label>:1177:                                   ; preds = %1168
  %1178 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1179 = load float, float* %1178, align 4
  %1180 = fcmp ord float %1179, %32
  br label %1471

; <label>:1181:                                   ; preds = %934, %912
  %1182 = phi i1 [ %915, %912 ], [ %942, %934 ]
  %1183 = phi float [ %914, %912 ], [ %940, %934 ]
  %1184 = phi i32 [ 0, %912 ], [ %938, %934 ]
  %1185 = phi i32 [ %909, %912 ], [ %937, %934 ]
  %1186 = phi i32 [ %908, %912 ], [ %936, %934 ]
  %1187 = phi i32 [ %907, %912 ], [ %935, %934 ]
  %1188 = fcmp olt float %1183, %28
  %1189 = and i1 %1188, %1182
  br i1 %1189, label %1194, label %1190

; <label>:1190:                                   ; preds = %1181
  %1191 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1192 = load float, float* %1191, align 4
  %1193 = fcmp ord float %1192, %32
  br label %1485

; <label>:1194:                                   ; preds = %1181, %1168, %1167, %1157, %1147, %1137, %1136, %1126, %1116, %1106, %1096, %1083, %1070, %1057, %1047, %1037, %1027, %1017, %1007, %1006, %996, %986, %976, %963, %953, %943, %934, %934, %927, %920
  %1195 = phi i32 [ %1184, %1181 ], [ %1171, %1168 ], [ %938, %1167 ], [ %1159, %1157 ], [ %1149, %1147 ], [ %1139, %1137 ], [ %938, %1136 ], [ %1128, %1126 ], [ %1118, %1116 ], [ %1108, %1106 ], [ %1098, %1096 ], [ %1086, %1083 ], [ %1073, %1070 ], [ %1060, %1057 ], [ %1049, %1047 ], [ %1039, %1037 ], [ %1029, %1027 ], [ %1019, %1017 ], [ %1009, %1007 ], [ %938, %1006 ], [ %998, %996 ], [ %988, %986 ], [ %978, %976 ], [ %966, %963 ], [ %955, %953 ], [ %945, %943 ], [ %938, %934 ], [ %938, %934 ], [ 0, %927 ], [ 0, %920 ]
  %1196 = phi i32 [ %1185, %1181 ], [ %1172, %1168 ], [ %937, %1167 ], [ %1160, %1157 ], [ %1150, %1147 ], [ %1140, %1137 ], [ %937, %1136 ], [ %1129, %1126 ], [ %1119, %1116 ], [ %1109, %1106 ], [ %1099, %1096 ], [ %1087, %1083 ], [ %1074, %1070 ], [ %1061, %1057 ], [ %1050, %1047 ], [ %1040, %1037 ], [ %1030, %1027 ], [ %1020, %1017 ], [ %1010, %1007 ], [ %937, %1006 ], [ %999, %996 ], [ %989, %986 ], [ %979, %976 ], [ %967, %963 ], [ %956, %953 ], [ %946, %943 ], [ %937, %934 ], [ %937, %934 ], [ %930, %927 ], [ %923, %920 ]
  %1197 = phi i32 [ %1186, %1181 ], [ %1173, %1168 ], [ %936, %1167 ], [ %1161, %1157 ], [ %1151, %1147 ], [ %1141, %1137 ], [ %936, %1136 ], [ %1130, %1126 ], [ %1120, %1116 ], [ %1110, %1106 ], [ %1100, %1096 ], [ %1088, %1083 ], [ %1075, %1070 ], [ %1062, %1057 ], [ %1051, %1047 ], [ %1041, %1037 ], [ %1031, %1027 ], [ %1021, %1017 ], [ %1011, %1007 ], [ %936, %1006 ], [ %1000, %996 ], [ %990, %986 ], [ %980, %976 ], [ %968, %963 ], [ %957, %953 ], [ %947, %943 ], [ %936, %934 ], [ %936, %934 ], [ %929, %927 ], [ %922, %920 ]
  %1198 = phi i32 [ %1187, %1181 ], [ %1174, %1168 ], [ %935, %1167 ], [ %1162, %1157 ], [ %1152, %1147 ], [ %1142, %1137 ], [ %935, %1136 ], [ %1131, %1126 ], [ %1121, %1116 ], [ %1111, %1106 ], [ %1101, %1096 ], [ %1089, %1083 ], [ %1076, %1070 ], [ %1063, %1057 ], [ %1052, %1047 ], [ %1042, %1037 ], [ %1032, %1027 ], [ %1022, %1017 ], [ %1012, %1007 ], [ %935, %1006 ], [ %1001, %996 ], [ %991, %986 ], [ %981, %976 ], [ %969, %963 ], [ %958, %953 ], [ %948, %943 ], [ %935, %934 ], [ %935, %934 ], [ %928, %927 ], [ %921, %920 ]
  br label %1215

; <label>:1199:                                   ; preds = %1136, %920
  %1200 = phi i32 [ 0, %920 ], [ %938, %1136 ]
  %1201 = phi i32 [ %923, %920 ], [ %937, %1136 ]
  %1202 = phi i32 [ %922, %920 ], [ %936, %1136 ]
  %1203 = phi i32 [ %921, %920 ], [ %935, %1136 ]
  %1204 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1205 = load float, float* %1204, align 4
  %1206 = fcmp uno float %1205, %32
  br i1 %1206, label %1505, label %1499

; <label>:1207:                                   ; preds = %1006, %927
  %1208 = phi i32 [ 0, %927 ], [ %938, %1006 ]
  %1209 = phi i32 [ %930, %927 ], [ %937, %1006 ]
  %1210 = phi i32 [ %929, %927 ], [ %936, %1006 ]
  %1211 = phi i32 [ %928, %927 ], [ %935, %1006 ]
  %1212 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1213 = load float, float* %1212, align 4
  %1214 = fcmp uno float %1213, %32
  br i1 %1214, label %1514, label %1499

; <label>:1215:                                   ; preds = %1194, %1167, %934, %934
  %1216 = phi i32 [ %1195, %1194 ], [ %938, %1167 ], [ %938, %934 ], [ %938, %934 ]
  %1217 = phi i32 [ %1196, %1194 ], [ %937, %1167 ], [ %937, %934 ], [ %937, %934 ]
  %1218 = phi i32 [ %1197, %1194 ], [ %936, %1167 ], [ %936, %934 ], [ %936, %934 ]
  %1219 = phi i32 [ %1198, %1194 ], [ %935, %1167 ], [ %935, %934 ], [ %935, %934 ]
  %1220 = phi i32 [ -1, %1194 ], [ 0, %1167 ], [ 0, %934 ], [ 0, %934 ]
  %1221 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 5
  %1222 = load float, float* %1221, align 4
  %1223 = fcmp uno float %1222, %32
  %1224 = xor i1 %1223, true
  switch i8 %42, label %248 [
    i8 31, label %1499
    i8 1, label %1485
    i8 2, label %1471
    i8 3, label %1470
    i8 4, label %1459
    i8 5, label %1448
    i8 6, label %1437
    i8 7, label %1436
    i8 8, label %1425
    i8 9, label %1414
    i8 10, label %1403
    i8 11, label %1523
    i8 12, label %1392
    i8 13, label %1378
    i8 14, label %1364
    i8 15, label %1499
    i8 16, label %1350
    i8 17, label %1339
    i8 18, label %1328
    i8 19, label %1470
    i8 20, label %1317
    i8 21, label %1306
    i8 22, label %1295
    i8 23, label %1294
    i8 24, label %1283
    i8 25, label %1272
    i8 26, label %1261
    i8 27, label %1523
    i8 28, label %1247
    i8 29, label %1236
    i8 30, label %1225
  ]

; <label>:1225:                                   ; preds = %1215, %950
  %1226 = phi float [ %952, %950 ], [ %1222, %1215 ]
  %1227 = phi i32 [ 0, %950 ], [ %1220, %1215 ]
  %1228 = phi i32 [ %948, %950 ], [ %1219, %1215 ]
  %1229 = phi i32 [ %947, %950 ], [ %1218, %1215 ]
  %1230 = phi i32 [ %946, %950 ], [ %1217, %1215 ]
  %1231 = phi i32 [ %945, %950 ], [ %1216, %1215 ]
  %1232 = fcmp ogt float %1226, %32
  br i1 %1232, label %1499, label %1233

; <label>:1233:                                   ; preds = %1225
  %1234 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1235 = load float, float* %1234, align 4
  br label %1534

; <label>:1236:                                   ; preds = %1215, %960
  %1237 = phi float [ %962, %960 ], [ %1222, %1215 ]
  %1238 = phi i32 [ 0, %960 ], [ %1220, %1215 ]
  %1239 = phi i32 [ %958, %960 ], [ %1219, %1215 ]
  %1240 = phi i32 [ %957, %960 ], [ %1218, %1215 ]
  %1241 = phi i32 [ %956, %960 ], [ %1217, %1215 ]
  %1242 = phi i32 [ %955, %960 ], [ %1216, %1215 ]
  %1243 = fcmp ult float %1237, %32
  br i1 %1243, label %1244, label %1499

; <label>:1244:                                   ; preds = %1236
  %1245 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1246 = load float, float* %1245, align 4
  br label %1546

; <label>:1247:                                   ; preds = %1215, %972
  %1248 = phi i1 [ %975, %972 ], [ %1224, %1215 ]
  %1249 = phi float [ %974, %972 ], [ %1222, %1215 ]
  %1250 = phi i32 [ 0, %972 ], [ %1220, %1215 ]
  %1251 = phi i32 [ %969, %972 ], [ %1219, %1215 ]
  %1252 = phi i32 [ %968, %972 ], [ %1218, %1215 ]
  %1253 = phi i32 [ %967, %972 ], [ %1217, %1215 ]
  %1254 = phi i32 [ %966, %972 ], [ %1216, %1215 ]
  %1255 = fcmp une float %1249, %32
  %1256 = and i1 %1255, %1248
  br i1 %1256, label %1499, label %1257

; <label>:1257:                                   ; preds = %1247
  %1258 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1259 = load float, float* %1258, align 4
  %1260 = fcmp ord float %1259, %36
  br label %1558

; <label>:1261:                                   ; preds = %1215, %983
  %1262 = phi float [ %985, %983 ], [ %1222, %1215 ]
  %1263 = phi i32 [ 0, %983 ], [ %1220, %1215 ]
  %1264 = phi i32 [ %981, %983 ], [ %1219, %1215 ]
  %1265 = phi i32 [ %980, %983 ], [ %1218, %1215 ]
  %1266 = phi i32 [ %979, %983 ], [ %1217, %1215 ]
  %1267 = phi i32 [ %978, %983 ], [ %1216, %1215 ]
  %1268 = fcmp ule float %1262, %32
  br i1 %1268, label %1499, label %1269

; <label>:1269:                                   ; preds = %1261
  %1270 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1271 = load float, float* %1270, align 4
  br label %1573

; <label>:1272:                                   ; preds = %1215, %993
  %1273 = phi float [ %995, %993 ], [ %1222, %1215 ]
  %1274 = phi i32 [ 0, %993 ], [ %1220, %1215 ]
  %1275 = phi i32 [ %991, %993 ], [ %1219, %1215 ]
  %1276 = phi i32 [ %990, %993 ], [ %1218, %1215 ]
  %1277 = phi i32 [ %989, %993 ], [ %1217, %1215 ]
  %1278 = phi i32 [ %988, %993 ], [ %1216, %1215 ]
  %1279 = fcmp ult float %1273, %32
  br i1 %1279, label %1499, label %1280

; <label>:1280:                                   ; preds = %1272
  %1281 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1282 = load float, float* %1281, align 4
  br label %1585

; <label>:1283:                                   ; preds = %1215, %1003
  %1284 = phi float [ %1005, %1003 ], [ %1222, %1215 ]
  %1285 = phi i32 [ 0, %1003 ], [ %1220, %1215 ]
  %1286 = phi i32 [ %1001, %1003 ], [ %1219, %1215 ]
  %1287 = phi i32 [ %1000, %1003 ], [ %1218, %1215 ]
  %1288 = phi i32 [ %999, %1003 ], [ %1217, %1215 ]
  %1289 = phi i32 [ %998, %1003 ], [ %1216, %1215 ]
  %1290 = fcmp ueq float %1284, %32
  br i1 %1290, label %1499, label %1291

; <label>:1291:                                   ; preds = %1283
  %1292 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1293 = load float, float* %1292, align 4
  br label %1597

; <label>:1294:                                   ; preds = %1215
  br i1 %1223, label %1514, label %1499

; <label>:1295:                                   ; preds = %1215, %1014
  %1296 = phi float [ %1016, %1014 ], [ %1222, %1215 ]
  %1297 = phi i32 [ 0, %1014 ], [ %1220, %1215 ]
  %1298 = phi i32 [ %1012, %1014 ], [ %1219, %1215 ]
  %1299 = phi i32 [ %1011, %1014 ], [ %1218, %1215 ]
  %1300 = phi i32 [ %1010, %1014 ], [ %1217, %1215 ]
  %1301 = phi i32 [ %1009, %1014 ], [ %1216, %1215 ]
  %1302 = fcmp ugt float %1296, %32
  br i1 %1302, label %1499, label %1303

; <label>:1303:                                   ; preds = %1295
  %1304 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1305 = load float, float* %1304, align 4
  br label %1610

; <label>:1306:                                   ; preds = %1215, %1024
  %1307 = phi float [ %1026, %1024 ], [ %1222, %1215 ]
  %1308 = phi i32 [ 0, %1024 ], [ %1220, %1215 ]
  %1309 = phi i32 [ %1022, %1024 ], [ %1219, %1215 ]
  %1310 = phi i32 [ %1021, %1024 ], [ %1218, %1215 ]
  %1311 = phi i32 [ %1020, %1024 ], [ %1217, %1215 ]
  %1312 = phi i32 [ %1019, %1024 ], [ %1216, %1215 ]
  %1313 = fcmp uge float %1307, %32
  br i1 %1313, label %1499, label %1314

; <label>:1314:                                   ; preds = %1306
  %1315 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1316 = load float, float* %1315, align 4
  br label %1622

; <label>:1317:                                   ; preds = %1215, %1034
  %1318 = phi float [ %1036, %1034 ], [ %1222, %1215 ]
  %1319 = phi i32 [ 0, %1034 ], [ %1220, %1215 ]
  %1320 = phi i32 [ %1032, %1034 ], [ %1219, %1215 ]
  %1321 = phi i32 [ %1031, %1034 ], [ %1218, %1215 ]
  %1322 = phi i32 [ %1030, %1034 ], [ %1217, %1215 ]
  %1323 = phi i32 [ %1029, %1034 ], [ %1216, %1215 ]
  %1324 = fcmp une float %1318, %32
  br i1 %1324, label %1499, label %1325

; <label>:1325:                                   ; preds = %1317
  %1326 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1327 = load float, float* %1326, align 4
  br label %1634

; <label>:1328:                                   ; preds = %1215, %1044
  %1329 = phi float [ %1046, %1044 ], [ %1222, %1215 ]
  %1330 = phi i32 [ 0, %1044 ], [ %1220, %1215 ]
  %1331 = phi i32 [ %1042, %1044 ], [ %1219, %1215 ]
  %1332 = phi i32 [ %1041, %1044 ], [ %1218, %1215 ]
  %1333 = phi i32 [ %1040, %1044 ], [ %1217, %1215 ]
  %1334 = phi i32 [ %1039, %1044 ], [ %1216, %1215 ]
  %1335 = fcmp ugt float %1329, %32
  br i1 %1335, label %1336, label %1499

; <label>:1336:                                   ; preds = %1328
  %1337 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1338 = load float, float* %1337, align 4
  br label %1646

; <label>:1339:                                   ; preds = %1215, %1054
  %1340 = phi float [ %1056, %1054 ], [ %1222, %1215 ]
  %1341 = phi i32 [ 0, %1054 ], [ %1220, %1215 ]
  %1342 = phi i32 [ %1052, %1054 ], [ %1219, %1215 ]
  %1343 = phi i32 [ %1051, %1054 ], [ %1218, %1215 ]
  %1344 = phi i32 [ %1050, %1054 ], [ %1217, %1215 ]
  %1345 = phi i32 [ %1049, %1054 ], [ %1216, %1215 ]
  %1346 = fcmp olt float %1340, %32
  br i1 %1346, label %1499, label %1347

; <label>:1347:                                   ; preds = %1339
  %1348 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1349 = load float, float* %1348, align 4
  br label %1658

; <label>:1350:                                   ; preds = %1215, %1066
  %1351 = phi i1 [ %1069, %1066 ], [ %1224, %1215 ]
  %1352 = phi float [ %1068, %1066 ], [ %1222, %1215 ]
  %1353 = phi i32 [ 0, %1066 ], [ %1220, %1215 ]
  %1354 = phi i32 [ %1063, %1066 ], [ %1219, %1215 ]
  %1355 = phi i32 [ %1062, %1066 ], [ %1218, %1215 ]
  %1356 = phi i32 [ %1061, %1066 ], [ %1217, %1215 ]
  %1357 = phi i32 [ %1060, %1066 ], [ %1216, %1215 ]
  %1358 = fcmp oeq float %1352, %32
  %1359 = and i1 %1358, %1351
  br i1 %1359, label %1499, label %1360

; <label>:1360:                                   ; preds = %1350
  %1361 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1362 = load float, float* %1361, align 4
  %1363 = fcmp ord float %1362, %36
  br label %1670

; <label>:1364:                                   ; preds = %1215, %1079
  %1365 = phi i1 [ %1082, %1079 ], [ %1224, %1215 ]
  %1366 = phi float [ %1081, %1079 ], [ %1222, %1215 ]
  %1367 = phi i32 [ 0, %1079 ], [ %1220, %1215 ]
  %1368 = phi i32 [ %1076, %1079 ], [ %1219, %1215 ]
  %1369 = phi i32 [ %1075, %1079 ], [ %1218, %1215 ]
  %1370 = phi i32 [ %1074, %1079 ], [ %1217, %1215 ]
  %1371 = phi i32 [ %1073, %1079 ], [ %1216, %1215 ]
  %1372 = fcmp ogt float %1366, %32
  %1373 = and i1 %1372, %1365
  br i1 %1373, label %1499, label %1374

; <label>:1374:                                   ; preds = %1364
  %1375 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1376 = load float, float* %1375, align 4
  %1377 = fcmp ord float %1376, %36
  br label %1685

; <label>:1378:                                   ; preds = %1215, %1092
  %1379 = phi i1 [ %1095, %1092 ], [ %1224, %1215 ]
  %1380 = phi float [ %1094, %1092 ], [ %1222, %1215 ]
  %1381 = phi i32 [ 0, %1092 ], [ %1220, %1215 ]
  %1382 = phi i32 [ %1089, %1092 ], [ %1219, %1215 ]
  %1383 = phi i32 [ %1088, %1092 ], [ %1218, %1215 ]
  %1384 = phi i32 [ %1087, %1092 ], [ %1217, %1215 ]
  %1385 = phi i32 [ %1086, %1092 ], [ %1216, %1215 ]
  %1386 = fcmp oge float %1380, %32
  %1387 = and i1 %1386, %1379
  br i1 %1387, label %1499, label %1388

; <label>:1388:                                   ; preds = %1378
  %1389 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1390 = load float, float* %1389, align 4
  %1391 = fcmp ord float %1390, %36
  br label %1700

; <label>:1392:                                   ; preds = %1215, %1103
  %1393 = phi float [ %1105, %1103 ], [ %1222, %1215 ]
  %1394 = phi i32 [ 0, %1103 ], [ %1220, %1215 ]
  %1395 = phi i32 [ %1101, %1103 ], [ %1219, %1215 ]
  %1396 = phi i32 [ %1100, %1103 ], [ %1218, %1215 ]
  %1397 = phi i32 [ %1099, %1103 ], [ %1217, %1215 ]
  %1398 = phi i32 [ %1098, %1103 ], [ %1216, %1215 ]
  %1399 = fcmp ueq float %1393, %32
  br i1 %1399, label %1400, label %1499

; <label>:1400:                                   ; preds = %1392
  %1401 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1402 = load float, float* %1401, align 4
  br label %1715

; <label>:1403:                                   ; preds = %1215, %1113
  %1404 = phi float [ %1115, %1113 ], [ %1222, %1215 ]
  %1405 = phi i32 [ 0, %1113 ], [ %1220, %1215 ]
  %1406 = phi i32 [ %1111, %1113 ], [ %1219, %1215 ]
  %1407 = phi i32 [ %1110, %1113 ], [ %1218, %1215 ]
  %1408 = phi i32 [ %1109, %1113 ], [ %1217, %1215 ]
  %1409 = phi i32 [ %1108, %1113 ], [ %1216, %1215 ]
  %1410 = fcmp ule float %1404, %32
  br i1 %1410, label %1499, label %1411

; <label>:1411:                                   ; preds = %1403
  %1412 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1413 = load float, float* %1412, align 4
  br label %1727

; <label>:1414:                                   ; preds = %1215, %1123
  %1415 = phi float [ %1125, %1123 ], [ %1222, %1215 ]
  %1416 = phi i32 [ 0, %1123 ], [ %1220, %1215 ]
  %1417 = phi i32 [ %1121, %1123 ], [ %1219, %1215 ]
  %1418 = phi i32 [ %1120, %1123 ], [ %1218, %1215 ]
  %1419 = phi i32 [ %1119, %1123 ], [ %1217, %1215 ]
  %1420 = phi i32 [ %1118, %1123 ], [ %1216, %1215 ]
  %1421 = fcmp ult float %1415, %32
  br i1 %1421, label %1499, label %1422

; <label>:1422:                                   ; preds = %1414
  %1423 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1424 = load float, float* %1423, align 4
  br label %1739

; <label>:1425:                                   ; preds = %1215, %1133
  %1426 = phi float [ %1135, %1133 ], [ %1222, %1215 ]
  %1427 = phi i32 [ 0, %1133 ], [ %1220, %1215 ]
  %1428 = phi i32 [ %1131, %1133 ], [ %1219, %1215 ]
  %1429 = phi i32 [ %1130, %1133 ], [ %1218, %1215 ]
  %1430 = phi i32 [ %1129, %1133 ], [ %1217, %1215 ]
  %1431 = phi i32 [ %1128, %1133 ], [ %1216, %1215 ]
  %1432 = fcmp ueq float %1426, %32
  br i1 %1432, label %1499, label %1433

; <label>:1433:                                   ; preds = %1425
  %1434 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1435 = load float, float* %1434, align 4
  br label %1751

; <label>:1436:                                   ; preds = %1215
  br i1 %1223, label %1505, label %1499

; <label>:1437:                                   ; preds = %1215, %1144
  %1438 = phi float [ %1146, %1144 ], [ %1222, %1215 ]
  %1439 = phi i32 [ 0, %1144 ], [ %1220, %1215 ]
  %1440 = phi i32 [ %1142, %1144 ], [ %1219, %1215 ]
  %1441 = phi i32 [ %1141, %1144 ], [ %1218, %1215 ]
  %1442 = phi i32 [ %1140, %1144 ], [ %1217, %1215 ]
  %1443 = phi i32 [ %1139, %1144 ], [ %1216, %1215 ]
  %1444 = fcmp ugt float %1438, %32
  br i1 %1444, label %1499, label %1445

; <label>:1445:                                   ; preds = %1437
  %1446 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1447 = load float, float* %1446, align 4
  br label %1764

; <label>:1448:                                   ; preds = %1215, %1154
  %1449 = phi float [ %1156, %1154 ], [ %1222, %1215 ]
  %1450 = phi i32 [ 0, %1154 ], [ %1220, %1215 ]
  %1451 = phi i32 [ %1152, %1154 ], [ %1219, %1215 ]
  %1452 = phi i32 [ %1151, %1154 ], [ %1218, %1215 ]
  %1453 = phi i32 [ %1150, %1154 ], [ %1217, %1215 ]
  %1454 = phi i32 [ %1149, %1154 ], [ %1216, %1215 ]
  %1455 = fcmp uge float %1449, %32
  br i1 %1455, label %1499, label %1456

; <label>:1456:                                   ; preds = %1448
  %1457 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1458 = load float, float* %1457, align 4
  br label %1776

; <label>:1459:                                   ; preds = %1215, %1164
  %1460 = phi float [ %1166, %1164 ], [ %1222, %1215 ]
  %1461 = phi i32 [ 0, %1164 ], [ %1220, %1215 ]
  %1462 = phi i32 [ %1162, %1164 ], [ %1219, %1215 ]
  %1463 = phi i32 [ %1161, %1164 ], [ %1218, %1215 ]
  %1464 = phi i32 [ %1160, %1164 ], [ %1217, %1215 ]
  %1465 = phi i32 [ %1159, %1164 ], [ %1216, %1215 ]
  %1466 = fcmp une float %1460, %32
  br i1 %1466, label %1499, label %1467

; <label>:1467:                                   ; preds = %1459
  %1468 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1469 = load float, float* %1468, align 4
  br label %1788

; <label>:1470:                                   ; preds = %1215, %1215
  br i1 %1223, label %1499, label %1523

; <label>:1471:                                   ; preds = %1215, %1177
  %1472 = phi i1 [ %1180, %1177 ], [ %1224, %1215 ]
  %1473 = phi float [ %1179, %1177 ], [ %1222, %1215 ]
  %1474 = phi i32 [ 0, %1177 ], [ %1220, %1215 ]
  %1475 = phi i32 [ %1174, %1177 ], [ %1219, %1215 ]
  %1476 = phi i32 [ %1173, %1177 ], [ %1218, %1215 ]
  %1477 = phi i32 [ %1172, %1177 ], [ %1217, %1215 ]
  %1478 = phi i32 [ %1171, %1177 ], [ %1216, %1215 ]
  %1479 = fcmp ole float %1473, %32
  %1480 = and i1 %1479, %1472
  br i1 %1480, label %1499, label %1481

; <label>:1481:                                   ; preds = %1471
  %1482 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1483 = load float, float* %1482, align 4
  %1484 = fcmp ord float %1483, %36
  br label %1801

; <label>:1485:                                   ; preds = %1215, %1190
  %1486 = phi i1 [ %1193, %1190 ], [ %1224, %1215 ]
  %1487 = phi float [ %1192, %1190 ], [ %1222, %1215 ]
  %1488 = phi i32 [ 0, %1190 ], [ %1220, %1215 ]
  %1489 = phi i32 [ %1187, %1190 ], [ %1219, %1215 ]
  %1490 = phi i32 [ %1186, %1190 ], [ %1218, %1215 ]
  %1491 = phi i32 [ %1185, %1190 ], [ %1217, %1215 ]
  %1492 = phi i32 [ %1184, %1190 ], [ %1216, %1215 ]
  %1493 = fcmp olt float %1487, %32
  %1494 = and i1 %1493, %1486
  br i1 %1494, label %1499, label %1495

; <label>:1495:                                   ; preds = %1485
  %1496 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1497 = load float, float* %1496, align 4
  %1498 = fcmp ord float %1497, %36
  br label %1816

; <label>:1499:                                   ; preds = %1485, %1471, %1470, %1459, %1448, %1437, %1436, %1425, %1414, %1403, %1392, %1378, %1364, %1350, %1339, %1328, %1317, %1306, %1295, %1294, %1283, %1272, %1261, %1247, %1236, %1225, %1215, %1215, %1207, %1199
  %1500 = phi i32 [ %1488, %1485 ], [ %1474, %1471 ], [ %1220, %1470 ], [ %1461, %1459 ], [ %1450, %1448 ], [ %1439, %1437 ], [ %1220, %1436 ], [ %1427, %1425 ], [ %1416, %1414 ], [ %1405, %1403 ], [ %1394, %1392 ], [ %1381, %1378 ], [ %1367, %1364 ], [ %1353, %1350 ], [ %1341, %1339 ], [ %1330, %1328 ], [ %1319, %1317 ], [ %1308, %1306 ], [ %1297, %1295 ], [ %1220, %1294 ], [ %1285, %1283 ], [ %1274, %1272 ], [ %1263, %1261 ], [ %1250, %1247 ], [ %1238, %1236 ], [ %1227, %1225 ], [ %1220, %1215 ], [ %1220, %1215 ], [ 0, %1207 ], [ 0, %1199 ]
  %1501 = phi i32 [ %1489, %1485 ], [ %1475, %1471 ], [ %1219, %1470 ], [ %1462, %1459 ], [ %1451, %1448 ], [ %1440, %1437 ], [ %1219, %1436 ], [ %1428, %1425 ], [ %1417, %1414 ], [ %1406, %1403 ], [ %1395, %1392 ], [ %1382, %1378 ], [ %1368, %1364 ], [ %1354, %1350 ], [ %1342, %1339 ], [ %1331, %1328 ], [ %1320, %1317 ], [ %1309, %1306 ], [ %1298, %1295 ], [ %1219, %1294 ], [ %1286, %1283 ], [ %1275, %1272 ], [ %1264, %1261 ], [ %1251, %1247 ], [ %1239, %1236 ], [ %1228, %1225 ], [ %1219, %1215 ], [ %1219, %1215 ], [ %1211, %1207 ], [ %1203, %1199 ]
  %1502 = phi i32 [ %1490, %1485 ], [ %1476, %1471 ], [ %1218, %1470 ], [ %1463, %1459 ], [ %1452, %1448 ], [ %1441, %1437 ], [ %1218, %1436 ], [ %1429, %1425 ], [ %1418, %1414 ], [ %1407, %1403 ], [ %1396, %1392 ], [ %1383, %1378 ], [ %1369, %1364 ], [ %1355, %1350 ], [ %1343, %1339 ], [ %1332, %1328 ], [ %1321, %1317 ], [ %1310, %1306 ], [ %1299, %1295 ], [ %1218, %1294 ], [ %1287, %1283 ], [ %1276, %1272 ], [ %1265, %1261 ], [ %1252, %1247 ], [ %1240, %1236 ], [ %1229, %1225 ], [ %1218, %1215 ], [ %1218, %1215 ], [ %1210, %1207 ], [ %1202, %1199 ]
  %1503 = phi i32 [ %1491, %1485 ], [ %1477, %1471 ], [ %1217, %1470 ], [ %1464, %1459 ], [ %1453, %1448 ], [ %1442, %1437 ], [ %1217, %1436 ], [ %1430, %1425 ], [ %1419, %1414 ], [ %1408, %1403 ], [ %1397, %1392 ], [ %1384, %1378 ], [ %1370, %1364 ], [ %1356, %1350 ], [ %1344, %1339 ], [ %1333, %1328 ], [ %1322, %1317 ], [ %1311, %1306 ], [ %1300, %1295 ], [ %1217, %1294 ], [ %1288, %1283 ], [ %1277, %1272 ], [ %1266, %1261 ], [ %1253, %1247 ], [ %1241, %1236 ], [ %1230, %1225 ], [ %1217, %1215 ], [ %1217, %1215 ], [ %1209, %1207 ], [ %1201, %1199 ]
  %1504 = phi i32 [ %1492, %1485 ], [ %1478, %1471 ], [ %1216, %1470 ], [ %1465, %1459 ], [ %1454, %1448 ], [ %1443, %1437 ], [ %1216, %1436 ], [ %1431, %1425 ], [ %1420, %1414 ], [ %1409, %1403 ], [ %1398, %1392 ], [ %1385, %1378 ], [ %1371, %1364 ], [ %1357, %1350 ], [ %1345, %1339 ], [ %1334, %1328 ], [ %1323, %1317 ], [ %1312, %1306 ], [ %1301, %1295 ], [ %1216, %1294 ], [ %1289, %1283 ], [ %1278, %1272 ], [ %1267, %1261 ], [ %1254, %1247 ], [ %1242, %1236 ], [ %1231, %1225 ], [ %1216, %1215 ], [ %1216, %1215 ], [ %1208, %1207 ], [ %1200, %1199 ]
  br label %1523

; <label>:1505:                                   ; preds = %1436, %1199
  %1506 = phi i32 [ 0, %1199 ], [ %1220, %1436 ]
  %1507 = phi i32 [ %1203, %1199 ], [ %1219, %1436 ]
  %1508 = phi i32 [ %1202, %1199 ], [ %1218, %1436 ]
  %1509 = phi i32 [ %1201, %1199 ], [ %1217, %1436 ]
  %1510 = phi i32 [ %1200, %1199 ], [ %1216, %1436 ]
  %1511 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1512 = load float, float* %1511, align 4
  %1513 = fcmp uno float %1512, %36
  br i1 %1513, label %1838, label %1831

; <label>:1514:                                   ; preds = %1294, %1207
  %1515 = phi i32 [ 0, %1207 ], [ %1220, %1294 ]
  %1516 = phi i32 [ %1211, %1207 ], [ %1219, %1294 ]
  %1517 = phi i32 [ %1210, %1207 ], [ %1218, %1294 ]
  %1518 = phi i32 [ %1209, %1207 ], [ %1217, %1294 ]
  %1519 = phi i32 [ %1208, %1207 ], [ %1216, %1294 ]
  %1520 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1521 = load float, float* %1520, align 4
  %1522 = fcmp uno float %1521, %36
  br i1 %1522, label %1848, label %1831

; <label>:1523:                                   ; preds = %1499, %1470, %1215, %1215
  %1524 = phi i32 [ %1500, %1499 ], [ %1220, %1470 ], [ %1220, %1215 ], [ %1220, %1215 ]
  %1525 = phi i32 [ %1501, %1499 ], [ %1219, %1470 ], [ %1219, %1215 ], [ %1219, %1215 ]
  %1526 = phi i32 [ %1502, %1499 ], [ %1218, %1470 ], [ %1218, %1215 ], [ %1218, %1215 ]
  %1527 = phi i32 [ %1503, %1499 ], [ %1217, %1470 ], [ %1217, %1215 ], [ %1217, %1215 ]
  %1528 = phi i32 [ %1504, %1499 ], [ %1216, %1470 ], [ %1216, %1215 ], [ %1216, %1215 ]
  %1529 = phi i32 [ -1, %1499 ], [ 0, %1470 ], [ 0, %1215 ], [ 0, %1215 ]
  %1530 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 6
  %1531 = load float, float* %1530, align 4
  %1532 = fcmp uno float %1531, %36
  %1533 = xor i1 %1532, true
  switch i8 %42, label %248 [
    i8 31, label %1831
    i8 1, label %1816
    i8 2, label %1801
    i8 3, label %1800
    i8 4, label %1788
    i8 5, label %1776
    i8 6, label %1764
    i8 7, label %1763
    i8 8, label %1751
    i8 9, label %1739
    i8 10, label %1727
    i8 11, label %1858
    i8 12, label %1715
    i8 13, label %1700
    i8 14, label %1685
    i8 15, label %1831
    i8 16, label %1670
    i8 17, label %1658
    i8 18, label %1646
    i8 19, label %1800
    i8 20, label %1634
    i8 21, label %1622
    i8 22, label %1610
    i8 23, label %1609
    i8 24, label %1597
    i8 25, label %1585
    i8 26, label %1573
    i8 27, label %1858
    i8 28, label %1558
    i8 29, label %1546
    i8 30, label %1534
  ]

; <label>:1534:                                   ; preds = %1523, %1233
  %1535 = phi float [ %1235, %1233 ], [ %1531, %1523 ]
  %1536 = phi i32 [ 0, %1233 ], [ %1529, %1523 ]
  %1537 = phi i32 [ %1231, %1233 ], [ %1528, %1523 ]
  %1538 = phi i32 [ %1230, %1233 ], [ %1527, %1523 ]
  %1539 = phi i32 [ %1229, %1233 ], [ %1526, %1523 ]
  %1540 = phi i32 [ %1228, %1233 ], [ %1525, %1523 ]
  %1541 = phi i32 [ %1227, %1233 ], [ %1524, %1523 ]
  %1542 = fcmp ogt float %1535, %36
  br i1 %1542, label %1831, label %1543

; <label>:1543:                                   ; preds = %1534
  %1544 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1545 = load float, float* %1544, align 4
  br label %1870

; <label>:1546:                                   ; preds = %1523, %1244
  %1547 = phi float [ %1246, %1244 ], [ %1531, %1523 ]
  %1548 = phi i32 [ 0, %1244 ], [ %1529, %1523 ]
  %1549 = phi i32 [ %1242, %1244 ], [ %1528, %1523 ]
  %1550 = phi i32 [ %1241, %1244 ], [ %1527, %1523 ]
  %1551 = phi i32 [ %1240, %1244 ], [ %1526, %1523 ]
  %1552 = phi i32 [ %1239, %1244 ], [ %1525, %1523 ]
  %1553 = phi i32 [ %1238, %1244 ], [ %1524, %1523 ]
  %1554 = fcmp ult float %1547, %36
  br i1 %1554, label %1555, label %1831

; <label>:1555:                                   ; preds = %1546
  %1556 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1557 = load float, float* %1556, align 4
  br label %1880

; <label>:1558:                                   ; preds = %1523, %1257
  %1559 = phi i1 [ %1260, %1257 ], [ %1533, %1523 ]
  %1560 = phi float [ %1259, %1257 ], [ %1531, %1523 ]
  %1561 = phi i32 [ 0, %1257 ], [ %1529, %1523 ]
  %1562 = phi i32 [ %1254, %1257 ], [ %1528, %1523 ]
  %1563 = phi i32 [ %1253, %1257 ], [ %1527, %1523 ]
  %1564 = phi i32 [ %1252, %1257 ], [ %1526, %1523 ]
  %1565 = phi i32 [ %1251, %1257 ], [ %1525, %1523 ]
  %1566 = phi i32 [ %1250, %1257 ], [ %1524, %1523 ]
  %1567 = fcmp une float %1560, %36
  %1568 = and i1 %1567, %1559
  br i1 %1568, label %1831, label %1569

; <label>:1569:                                   ; preds = %1558
  %1570 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1571 = load float, float* %1570, align 4
  %1572 = fcmp ord float %1571, %40
  br label %1890

; <label>:1573:                                   ; preds = %1523, %1269
  %1574 = phi float [ %1271, %1269 ], [ %1531, %1523 ]
  %1575 = phi i32 [ 0, %1269 ], [ %1529, %1523 ]
  %1576 = phi i32 [ %1267, %1269 ], [ %1528, %1523 ]
  %1577 = phi i32 [ %1266, %1269 ], [ %1527, %1523 ]
  %1578 = phi i32 [ %1265, %1269 ], [ %1526, %1523 ]
  %1579 = phi i32 [ %1264, %1269 ], [ %1525, %1523 ]
  %1580 = phi i32 [ %1263, %1269 ], [ %1524, %1523 ]
  %1581 = fcmp ule float %1574, %36
  br i1 %1581, label %1831, label %1582

; <label>:1582:                                   ; preds = %1573
  %1583 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1584 = load float, float* %1583, align 4
  br label %1902

; <label>:1585:                                   ; preds = %1523, %1280
  %1586 = phi float [ %1282, %1280 ], [ %1531, %1523 ]
  %1587 = phi i32 [ 0, %1280 ], [ %1529, %1523 ]
  %1588 = phi i32 [ %1278, %1280 ], [ %1528, %1523 ]
  %1589 = phi i32 [ %1277, %1280 ], [ %1527, %1523 ]
  %1590 = phi i32 [ %1276, %1280 ], [ %1526, %1523 ]
  %1591 = phi i32 [ %1275, %1280 ], [ %1525, %1523 ]
  %1592 = phi i32 [ %1274, %1280 ], [ %1524, %1523 ]
  %1593 = fcmp ult float %1586, %36
  br i1 %1593, label %1831, label %1594

; <label>:1594:                                   ; preds = %1585
  %1595 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1596 = load float, float* %1595, align 4
  br label %1912

; <label>:1597:                                   ; preds = %1523, %1291
  %1598 = phi float [ %1293, %1291 ], [ %1531, %1523 ]
  %1599 = phi i32 [ 0, %1291 ], [ %1529, %1523 ]
  %1600 = phi i32 [ %1289, %1291 ], [ %1528, %1523 ]
  %1601 = phi i32 [ %1288, %1291 ], [ %1527, %1523 ]
  %1602 = phi i32 [ %1287, %1291 ], [ %1526, %1523 ]
  %1603 = phi i32 [ %1286, %1291 ], [ %1525, %1523 ]
  %1604 = phi i32 [ %1285, %1291 ], [ %1524, %1523 ]
  %1605 = fcmp ueq float %1598, %36
  br i1 %1605, label %1831, label %1606

; <label>:1606:                                   ; preds = %1597
  %1607 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1608 = load float, float* %1607, align 4
  br label %1922

; <label>:1609:                                   ; preds = %1523
  br i1 %1532, label %1848, label %1831

; <label>:1610:                                   ; preds = %1523, %1303
  %1611 = phi float [ %1305, %1303 ], [ %1531, %1523 ]
  %1612 = phi i32 [ 0, %1303 ], [ %1529, %1523 ]
  %1613 = phi i32 [ %1301, %1303 ], [ %1528, %1523 ]
  %1614 = phi i32 [ %1300, %1303 ], [ %1527, %1523 ]
  %1615 = phi i32 [ %1299, %1303 ], [ %1526, %1523 ]
  %1616 = phi i32 [ %1298, %1303 ], [ %1525, %1523 ]
  %1617 = phi i32 [ %1297, %1303 ], [ %1524, %1523 ]
  %1618 = fcmp ugt float %1611, %36
  br i1 %1618, label %1831, label %1619

; <label>:1619:                                   ; preds = %1610
  %1620 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1621 = load float, float* %1620, align 4
  br label %1933

; <label>:1622:                                   ; preds = %1523, %1314
  %1623 = phi float [ %1316, %1314 ], [ %1531, %1523 ]
  %1624 = phi i32 [ 0, %1314 ], [ %1529, %1523 ]
  %1625 = phi i32 [ %1312, %1314 ], [ %1528, %1523 ]
  %1626 = phi i32 [ %1311, %1314 ], [ %1527, %1523 ]
  %1627 = phi i32 [ %1310, %1314 ], [ %1526, %1523 ]
  %1628 = phi i32 [ %1309, %1314 ], [ %1525, %1523 ]
  %1629 = phi i32 [ %1308, %1314 ], [ %1524, %1523 ]
  %1630 = fcmp uge float %1623, %36
  br i1 %1630, label %1831, label %1631

; <label>:1631:                                   ; preds = %1622
  %1632 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1633 = load float, float* %1632, align 4
  br label %1943

; <label>:1634:                                   ; preds = %1523, %1325
  %1635 = phi float [ %1327, %1325 ], [ %1531, %1523 ]
  %1636 = phi i32 [ 0, %1325 ], [ %1529, %1523 ]
  %1637 = phi i32 [ %1323, %1325 ], [ %1528, %1523 ]
  %1638 = phi i32 [ %1322, %1325 ], [ %1527, %1523 ]
  %1639 = phi i32 [ %1321, %1325 ], [ %1526, %1523 ]
  %1640 = phi i32 [ %1320, %1325 ], [ %1525, %1523 ]
  %1641 = phi i32 [ %1319, %1325 ], [ %1524, %1523 ]
  %1642 = fcmp une float %1635, %36
  br i1 %1642, label %1831, label %1643

; <label>:1643:                                   ; preds = %1634
  %1644 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1645 = load float, float* %1644, align 4
  br label %1953

; <label>:1646:                                   ; preds = %1523, %1336
  %1647 = phi float [ %1338, %1336 ], [ %1531, %1523 ]
  %1648 = phi i32 [ 0, %1336 ], [ %1529, %1523 ]
  %1649 = phi i32 [ %1334, %1336 ], [ %1528, %1523 ]
  %1650 = phi i32 [ %1333, %1336 ], [ %1527, %1523 ]
  %1651 = phi i32 [ %1332, %1336 ], [ %1526, %1523 ]
  %1652 = phi i32 [ %1331, %1336 ], [ %1525, %1523 ]
  %1653 = phi i32 [ %1330, %1336 ], [ %1524, %1523 ]
  %1654 = fcmp ugt float %1647, %36
  br i1 %1654, label %1655, label %1831

; <label>:1655:                                   ; preds = %1646
  %1656 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1657 = load float, float* %1656, align 4
  br label %1963

; <label>:1658:                                   ; preds = %1523, %1347
  %1659 = phi float [ %1349, %1347 ], [ %1531, %1523 ]
  %1660 = phi i32 [ 0, %1347 ], [ %1529, %1523 ]
  %1661 = phi i32 [ %1345, %1347 ], [ %1528, %1523 ]
  %1662 = phi i32 [ %1344, %1347 ], [ %1527, %1523 ]
  %1663 = phi i32 [ %1343, %1347 ], [ %1526, %1523 ]
  %1664 = phi i32 [ %1342, %1347 ], [ %1525, %1523 ]
  %1665 = phi i32 [ %1341, %1347 ], [ %1524, %1523 ]
  %1666 = fcmp olt float %1659, %36
  br i1 %1666, label %1831, label %1667

; <label>:1667:                                   ; preds = %1658
  %1668 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1669 = load float, float* %1668, align 4
  br label %1973

; <label>:1670:                                   ; preds = %1523, %1360
  %1671 = phi i1 [ %1363, %1360 ], [ %1533, %1523 ]
  %1672 = phi float [ %1362, %1360 ], [ %1531, %1523 ]
  %1673 = phi i32 [ 0, %1360 ], [ %1529, %1523 ]
  %1674 = phi i32 [ %1357, %1360 ], [ %1528, %1523 ]
  %1675 = phi i32 [ %1356, %1360 ], [ %1527, %1523 ]
  %1676 = phi i32 [ %1355, %1360 ], [ %1526, %1523 ]
  %1677 = phi i32 [ %1354, %1360 ], [ %1525, %1523 ]
  %1678 = phi i32 [ %1353, %1360 ], [ %1524, %1523 ]
  %1679 = fcmp oeq float %1672, %36
  %1680 = and i1 %1679, %1671
  br i1 %1680, label %1831, label %1681

; <label>:1681:                                   ; preds = %1670
  %1682 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1683 = load float, float* %1682, align 4
  %1684 = fcmp ord float %1683, %40
  br label %1983

; <label>:1685:                                   ; preds = %1523, %1374
  %1686 = phi i1 [ %1377, %1374 ], [ %1533, %1523 ]
  %1687 = phi float [ %1376, %1374 ], [ %1531, %1523 ]
  %1688 = phi i32 [ 0, %1374 ], [ %1529, %1523 ]
  %1689 = phi i32 [ %1371, %1374 ], [ %1528, %1523 ]
  %1690 = phi i32 [ %1370, %1374 ], [ %1527, %1523 ]
  %1691 = phi i32 [ %1369, %1374 ], [ %1526, %1523 ]
  %1692 = phi i32 [ %1368, %1374 ], [ %1525, %1523 ]
  %1693 = phi i32 [ %1367, %1374 ], [ %1524, %1523 ]
  %1694 = fcmp ogt float %1687, %36
  %1695 = and i1 %1694, %1686
  br i1 %1695, label %1831, label %1696

; <label>:1696:                                   ; preds = %1685
  %1697 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1698 = load float, float* %1697, align 4
  %1699 = fcmp ord float %1698, %40
  br label %1995

; <label>:1700:                                   ; preds = %1523, %1388
  %1701 = phi i1 [ %1391, %1388 ], [ %1533, %1523 ]
  %1702 = phi float [ %1390, %1388 ], [ %1531, %1523 ]
  %1703 = phi i32 [ 0, %1388 ], [ %1529, %1523 ]
  %1704 = phi i32 [ %1385, %1388 ], [ %1528, %1523 ]
  %1705 = phi i32 [ %1384, %1388 ], [ %1527, %1523 ]
  %1706 = phi i32 [ %1383, %1388 ], [ %1526, %1523 ]
  %1707 = phi i32 [ %1382, %1388 ], [ %1525, %1523 ]
  %1708 = phi i32 [ %1381, %1388 ], [ %1524, %1523 ]
  %1709 = fcmp oge float %1702, %36
  %1710 = and i1 %1709, %1701
  br i1 %1710, label %1831, label %1711

; <label>:1711:                                   ; preds = %1700
  %1712 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1713 = load float, float* %1712, align 4
  %1714 = fcmp ord float %1713, %40
  br label %2007

; <label>:1715:                                   ; preds = %1523, %1400
  %1716 = phi float [ %1402, %1400 ], [ %1531, %1523 ]
  %1717 = phi i32 [ 0, %1400 ], [ %1529, %1523 ]
  %1718 = phi i32 [ %1398, %1400 ], [ %1528, %1523 ]
  %1719 = phi i32 [ %1397, %1400 ], [ %1527, %1523 ]
  %1720 = phi i32 [ %1396, %1400 ], [ %1526, %1523 ]
  %1721 = phi i32 [ %1395, %1400 ], [ %1525, %1523 ]
  %1722 = phi i32 [ %1394, %1400 ], [ %1524, %1523 ]
  %1723 = fcmp ueq float %1716, %36
  br i1 %1723, label %1724, label %1831

; <label>:1724:                                   ; preds = %1715
  %1725 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1726 = load float, float* %1725, align 4
  br label %2019

; <label>:1727:                                   ; preds = %1523, %1411
  %1728 = phi float [ %1413, %1411 ], [ %1531, %1523 ]
  %1729 = phi i32 [ 0, %1411 ], [ %1529, %1523 ]
  %1730 = phi i32 [ %1409, %1411 ], [ %1528, %1523 ]
  %1731 = phi i32 [ %1408, %1411 ], [ %1527, %1523 ]
  %1732 = phi i32 [ %1407, %1411 ], [ %1526, %1523 ]
  %1733 = phi i32 [ %1406, %1411 ], [ %1525, %1523 ]
  %1734 = phi i32 [ %1405, %1411 ], [ %1524, %1523 ]
  %1735 = fcmp ule float %1728, %36
  br i1 %1735, label %1831, label %1736

; <label>:1736:                                   ; preds = %1727
  %1737 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1738 = load float, float* %1737, align 4
  br label %2029

; <label>:1739:                                   ; preds = %1523, %1422
  %1740 = phi float [ %1424, %1422 ], [ %1531, %1523 ]
  %1741 = phi i32 [ 0, %1422 ], [ %1529, %1523 ]
  %1742 = phi i32 [ %1420, %1422 ], [ %1528, %1523 ]
  %1743 = phi i32 [ %1419, %1422 ], [ %1527, %1523 ]
  %1744 = phi i32 [ %1418, %1422 ], [ %1526, %1523 ]
  %1745 = phi i32 [ %1417, %1422 ], [ %1525, %1523 ]
  %1746 = phi i32 [ %1416, %1422 ], [ %1524, %1523 ]
  %1747 = fcmp ult float %1740, %36
  br i1 %1747, label %1831, label %1748

; <label>:1748:                                   ; preds = %1739
  %1749 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1750 = load float, float* %1749, align 4
  br label %2039

; <label>:1751:                                   ; preds = %1523, %1433
  %1752 = phi float [ %1435, %1433 ], [ %1531, %1523 ]
  %1753 = phi i32 [ 0, %1433 ], [ %1529, %1523 ]
  %1754 = phi i32 [ %1431, %1433 ], [ %1528, %1523 ]
  %1755 = phi i32 [ %1430, %1433 ], [ %1527, %1523 ]
  %1756 = phi i32 [ %1429, %1433 ], [ %1526, %1523 ]
  %1757 = phi i32 [ %1428, %1433 ], [ %1525, %1523 ]
  %1758 = phi i32 [ %1427, %1433 ], [ %1524, %1523 ]
  %1759 = fcmp ueq float %1752, %36
  br i1 %1759, label %1831, label %1760

; <label>:1760:                                   ; preds = %1751
  %1761 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1762 = load float, float* %1761, align 4
  br label %2049

; <label>:1763:                                   ; preds = %1523
  br i1 %1532, label %1838, label %1831

; <label>:1764:                                   ; preds = %1523, %1445
  %1765 = phi float [ %1447, %1445 ], [ %1531, %1523 ]
  %1766 = phi i32 [ 0, %1445 ], [ %1529, %1523 ]
  %1767 = phi i32 [ %1443, %1445 ], [ %1528, %1523 ]
  %1768 = phi i32 [ %1442, %1445 ], [ %1527, %1523 ]
  %1769 = phi i32 [ %1441, %1445 ], [ %1526, %1523 ]
  %1770 = phi i32 [ %1440, %1445 ], [ %1525, %1523 ]
  %1771 = phi i32 [ %1439, %1445 ], [ %1524, %1523 ]
  %1772 = fcmp ugt float %1765, %36
  br i1 %1772, label %1831, label %1773

; <label>:1773:                                   ; preds = %1764
  %1774 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1775 = load float, float* %1774, align 4
  br label %2060

; <label>:1776:                                   ; preds = %1523, %1456
  %1777 = phi float [ %1458, %1456 ], [ %1531, %1523 ]
  %1778 = phi i32 [ 0, %1456 ], [ %1529, %1523 ]
  %1779 = phi i32 [ %1454, %1456 ], [ %1528, %1523 ]
  %1780 = phi i32 [ %1453, %1456 ], [ %1527, %1523 ]
  %1781 = phi i32 [ %1452, %1456 ], [ %1526, %1523 ]
  %1782 = phi i32 [ %1451, %1456 ], [ %1525, %1523 ]
  %1783 = phi i32 [ %1450, %1456 ], [ %1524, %1523 ]
  %1784 = fcmp uge float %1777, %36
  br i1 %1784, label %1831, label %1785

; <label>:1785:                                   ; preds = %1776
  %1786 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1787 = load float, float* %1786, align 4
  br label %2070

; <label>:1788:                                   ; preds = %1523, %1467
  %1789 = phi float [ %1469, %1467 ], [ %1531, %1523 ]
  %1790 = phi i32 [ 0, %1467 ], [ %1529, %1523 ]
  %1791 = phi i32 [ %1465, %1467 ], [ %1528, %1523 ]
  %1792 = phi i32 [ %1464, %1467 ], [ %1527, %1523 ]
  %1793 = phi i32 [ %1463, %1467 ], [ %1526, %1523 ]
  %1794 = phi i32 [ %1462, %1467 ], [ %1525, %1523 ]
  %1795 = phi i32 [ %1461, %1467 ], [ %1524, %1523 ]
  %1796 = fcmp une float %1789, %36
  br i1 %1796, label %1831, label %1797

; <label>:1797:                                   ; preds = %1788
  %1798 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1799 = load float, float* %1798, align 4
  br label %2080

; <label>:1800:                                   ; preds = %1523, %1523
  br i1 %1532, label %1831, label %1858

; <label>:1801:                                   ; preds = %1523, %1481
  %1802 = phi i1 [ %1484, %1481 ], [ %1533, %1523 ]
  %1803 = phi float [ %1483, %1481 ], [ %1531, %1523 ]
  %1804 = phi i32 [ 0, %1481 ], [ %1529, %1523 ]
  %1805 = phi i32 [ %1478, %1481 ], [ %1528, %1523 ]
  %1806 = phi i32 [ %1477, %1481 ], [ %1527, %1523 ]
  %1807 = phi i32 [ %1476, %1481 ], [ %1526, %1523 ]
  %1808 = phi i32 [ %1475, %1481 ], [ %1525, %1523 ]
  %1809 = phi i32 [ %1474, %1481 ], [ %1524, %1523 ]
  %1810 = fcmp ole float %1803, %36
  %1811 = and i1 %1810, %1802
  br i1 %1811, label %1831, label %1812

; <label>:1812:                                   ; preds = %1801
  %1813 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1814 = load float, float* %1813, align 4
  %1815 = fcmp ord float %1814, %40
  br label %2091

; <label>:1816:                                   ; preds = %1523, %1495
  %1817 = phi i1 [ %1498, %1495 ], [ %1533, %1523 ]
  %1818 = phi float [ %1497, %1495 ], [ %1531, %1523 ]
  %1819 = phi i32 [ 0, %1495 ], [ %1529, %1523 ]
  %1820 = phi i32 [ %1492, %1495 ], [ %1528, %1523 ]
  %1821 = phi i32 [ %1491, %1495 ], [ %1527, %1523 ]
  %1822 = phi i32 [ %1490, %1495 ], [ %1526, %1523 ]
  %1823 = phi i32 [ %1489, %1495 ], [ %1525, %1523 ]
  %1824 = phi i32 [ %1488, %1495 ], [ %1524, %1523 ]
  %1825 = fcmp olt float %1818, %36
  %1826 = and i1 %1825, %1817
  br i1 %1826, label %1831, label %1827

; <label>:1827:                                   ; preds = %1816
  %1828 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1829 = load float, float* %1828, align 4
  %1830 = fcmp ord float %1829, %40
  br label %2103

; <label>:1831:                                   ; preds = %1816, %1801, %1800, %1788, %1776, %1764, %1763, %1751, %1739, %1727, %1715, %1700, %1685, %1670, %1658, %1646, %1634, %1622, %1610, %1609, %1597, %1585, %1573, %1558, %1546, %1534, %1523, %1523, %1514, %1505
  %1832 = phi i32 [ %1819, %1816 ], [ %1804, %1801 ], [ %1529, %1800 ], [ %1790, %1788 ], [ %1778, %1776 ], [ %1766, %1764 ], [ %1529, %1763 ], [ %1753, %1751 ], [ %1741, %1739 ], [ %1729, %1727 ], [ %1717, %1715 ], [ %1703, %1700 ], [ %1688, %1685 ], [ %1673, %1670 ], [ %1660, %1658 ], [ %1648, %1646 ], [ %1636, %1634 ], [ %1624, %1622 ], [ %1612, %1610 ], [ %1529, %1609 ], [ %1599, %1597 ], [ %1587, %1585 ], [ %1575, %1573 ], [ %1561, %1558 ], [ %1548, %1546 ], [ %1536, %1534 ], [ %1529, %1523 ], [ %1529, %1523 ], [ 0, %1514 ], [ 0, %1505 ]
  %1833 = phi i32 [ %1820, %1816 ], [ %1805, %1801 ], [ %1528, %1800 ], [ %1791, %1788 ], [ %1779, %1776 ], [ %1767, %1764 ], [ %1528, %1763 ], [ %1754, %1751 ], [ %1742, %1739 ], [ %1730, %1727 ], [ %1718, %1715 ], [ %1704, %1700 ], [ %1689, %1685 ], [ %1674, %1670 ], [ %1661, %1658 ], [ %1649, %1646 ], [ %1637, %1634 ], [ %1625, %1622 ], [ %1613, %1610 ], [ %1528, %1609 ], [ %1600, %1597 ], [ %1588, %1585 ], [ %1576, %1573 ], [ %1562, %1558 ], [ %1549, %1546 ], [ %1537, %1534 ], [ %1528, %1523 ], [ %1528, %1523 ], [ %1519, %1514 ], [ %1510, %1505 ]
  %1834 = phi i32 [ %1821, %1816 ], [ %1806, %1801 ], [ %1527, %1800 ], [ %1792, %1788 ], [ %1780, %1776 ], [ %1768, %1764 ], [ %1527, %1763 ], [ %1755, %1751 ], [ %1743, %1739 ], [ %1731, %1727 ], [ %1719, %1715 ], [ %1705, %1700 ], [ %1690, %1685 ], [ %1675, %1670 ], [ %1662, %1658 ], [ %1650, %1646 ], [ %1638, %1634 ], [ %1626, %1622 ], [ %1614, %1610 ], [ %1527, %1609 ], [ %1601, %1597 ], [ %1589, %1585 ], [ %1577, %1573 ], [ %1563, %1558 ], [ %1550, %1546 ], [ %1538, %1534 ], [ %1527, %1523 ], [ %1527, %1523 ], [ %1518, %1514 ], [ %1509, %1505 ]
  %1835 = phi i32 [ %1822, %1816 ], [ %1807, %1801 ], [ %1526, %1800 ], [ %1793, %1788 ], [ %1781, %1776 ], [ %1769, %1764 ], [ %1526, %1763 ], [ %1756, %1751 ], [ %1744, %1739 ], [ %1732, %1727 ], [ %1720, %1715 ], [ %1706, %1700 ], [ %1691, %1685 ], [ %1676, %1670 ], [ %1663, %1658 ], [ %1651, %1646 ], [ %1639, %1634 ], [ %1627, %1622 ], [ %1615, %1610 ], [ %1526, %1609 ], [ %1602, %1597 ], [ %1590, %1585 ], [ %1578, %1573 ], [ %1564, %1558 ], [ %1551, %1546 ], [ %1539, %1534 ], [ %1526, %1523 ], [ %1526, %1523 ], [ %1517, %1514 ], [ %1508, %1505 ]
  %1836 = phi i32 [ %1823, %1816 ], [ %1808, %1801 ], [ %1525, %1800 ], [ %1794, %1788 ], [ %1782, %1776 ], [ %1770, %1764 ], [ %1525, %1763 ], [ %1757, %1751 ], [ %1745, %1739 ], [ %1733, %1727 ], [ %1721, %1715 ], [ %1707, %1700 ], [ %1692, %1685 ], [ %1677, %1670 ], [ %1664, %1658 ], [ %1652, %1646 ], [ %1640, %1634 ], [ %1628, %1622 ], [ %1616, %1610 ], [ %1525, %1609 ], [ %1603, %1597 ], [ %1591, %1585 ], [ %1579, %1573 ], [ %1565, %1558 ], [ %1552, %1546 ], [ %1540, %1534 ], [ %1525, %1523 ], [ %1525, %1523 ], [ %1516, %1514 ], [ %1507, %1505 ]
  %1837 = phi i32 [ %1824, %1816 ], [ %1809, %1801 ], [ %1524, %1800 ], [ %1795, %1788 ], [ %1783, %1776 ], [ %1771, %1764 ], [ %1524, %1763 ], [ %1758, %1751 ], [ %1746, %1739 ], [ %1734, %1727 ], [ %1722, %1715 ], [ %1708, %1700 ], [ %1693, %1685 ], [ %1678, %1670 ], [ %1665, %1658 ], [ %1653, %1646 ], [ %1641, %1634 ], [ %1629, %1622 ], [ %1617, %1610 ], [ %1524, %1609 ], [ %1604, %1597 ], [ %1592, %1585 ], [ %1580, %1573 ], [ %1566, %1558 ], [ %1553, %1546 ], [ %1541, %1534 ], [ %1524, %1523 ], [ %1524, %1523 ], [ %1515, %1514 ], [ %1506, %1505 ]
  br label %1858

; <label>:1838:                                   ; preds = %1763, %1505
  %1839 = phi i32 [ 0, %1505 ], [ %1529, %1763 ]
  %1840 = phi i32 [ %1510, %1505 ], [ %1528, %1763 ]
  %1841 = phi i32 [ %1509, %1505 ], [ %1527, %1763 ]
  %1842 = phi i32 [ %1508, %1505 ], [ %1526, %1763 ]
  %1843 = phi i32 [ %1507, %1505 ], [ %1525, %1763 ]
  %1844 = phi i32 [ %1506, %1505 ], [ %1524, %1763 ]
  %1845 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1846 = load float, float* %1845, align 4
  %1847 = fcmp uno float %1846, %40
  br i1 %1847, label %87, label %2115

; <label>:1848:                                   ; preds = %1609, %1514
  %1849 = phi i32 [ 0, %1514 ], [ %1529, %1609 ]
  %1850 = phi i32 [ %1519, %1514 ], [ %1528, %1609 ]
  %1851 = phi i32 [ %1518, %1514 ], [ %1527, %1609 ]
  %1852 = phi i32 [ %1517, %1514 ], [ %1526, %1609 ]
  %1853 = phi i32 [ %1516, %1514 ], [ %1525, %1609 ]
  %1854 = phi i32 [ %1515, %1514 ], [ %1524, %1609 ]
  %1855 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1856 = load float, float* %1855, align 4
  %1857 = fcmp uno float %1856, %40
  br i1 %1857, label %87, label %2115

; <label>:1858:                                   ; preds = %1831, %1800, %1523, %1523
  %1859 = phi i32 [ %1832, %1831 ], [ %1529, %1800 ], [ %1529, %1523 ], [ %1529, %1523 ]
  %1860 = phi i32 [ %1833, %1831 ], [ %1528, %1800 ], [ %1528, %1523 ], [ %1528, %1523 ]
  %1861 = phi i32 [ %1834, %1831 ], [ %1527, %1800 ], [ %1527, %1523 ], [ %1527, %1523 ]
  %1862 = phi i32 [ %1835, %1831 ], [ %1526, %1800 ], [ %1526, %1523 ], [ %1526, %1523 ]
  %1863 = phi i32 [ %1836, %1831 ], [ %1525, %1800 ], [ %1525, %1523 ], [ %1525, %1523 ]
  %1864 = phi i32 [ %1837, %1831 ], [ %1524, %1800 ], [ %1524, %1523 ], [ %1524, %1523 ]
  %1865 = phi i32 [ -1, %1831 ], [ 0, %1800 ], [ 0, %1523 ], [ 0, %1523 ]
  %1866 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %7, i64 0, i32 0, i64 7
  %1867 = load float, float* %1866, align 4
  %1868 = fcmp uno float %1867, %40
  %1869 = xor i1 %1868, true
  switch i8 %42, label %248 [
    i8 31, label %2115
    i8 1, label %2103
    i8 2, label %2091
    i8 3, label %2090
    i8 4, label %2080
    i8 5, label %2070
    i8 6, label %2060
    i8 7, label %2059
    i8 8, label %2049
    i8 9, label %2039
    i8 10, label %2029
    i8 11, label %87
    i8 12, label %2019
    i8 13, label %2007
    i8 14, label %1995
    i8 15, label %2115
    i8 16, label %1983
    i8 17, label %1973
    i8 18, label %1963
    i8 19, label %2090
    i8 20, label %1953
    i8 21, label %1943
    i8 22, label %1933
    i8 23, label %1932
    i8 24, label %1922
    i8 25, label %1912
    i8 26, label %1902
    i8 27, label %87
    i8 28, label %1890
    i8 29, label %1880
    i8 30, label %1870
  ]

; <label>:1870:                                   ; preds = %1858, %1543
  %1871 = phi float [ %1545, %1543 ], [ %1867, %1858 ]
  %1872 = phi i32 [ 0, %1543 ], [ %1865, %1858 ]
  %1873 = phi i32 [ %1541, %1543 ], [ %1864, %1858 ]
  %1874 = phi i32 [ %1540, %1543 ], [ %1863, %1858 ]
  %1875 = phi i32 [ %1539, %1543 ], [ %1862, %1858 ]
  %1876 = phi i32 [ %1538, %1543 ], [ %1861, %1858 ]
  %1877 = phi i32 [ %1537, %1543 ], [ %1860, %1858 ]
  %1878 = phi i32 [ %1536, %1543 ], [ %1859, %1858 ]
  %1879 = fcmp ogt float %1871, %40
  br i1 %1879, label %2115, label %87

; <label>:1880:                                   ; preds = %1858, %1555
  %1881 = phi float [ %1557, %1555 ], [ %1867, %1858 ]
  %1882 = phi i32 [ 0, %1555 ], [ %1865, %1858 ]
  %1883 = phi i32 [ %1553, %1555 ], [ %1864, %1858 ]
  %1884 = phi i32 [ %1552, %1555 ], [ %1863, %1858 ]
  %1885 = phi i32 [ %1551, %1555 ], [ %1862, %1858 ]
  %1886 = phi i32 [ %1550, %1555 ], [ %1861, %1858 ]
  %1887 = phi i32 [ %1549, %1555 ], [ %1860, %1858 ]
  %1888 = phi i32 [ %1548, %1555 ], [ %1859, %1858 ]
  %1889 = fcmp ult float %1881, %40
  br i1 %1889, label %87, label %2115

; <label>:1890:                                   ; preds = %1858, %1569
  %1891 = phi i1 [ %1572, %1569 ], [ %1869, %1858 ]
  %1892 = phi float [ %1571, %1569 ], [ %1867, %1858 ]
  %1893 = phi i32 [ 0, %1569 ], [ %1865, %1858 ]
  %1894 = phi i32 [ %1566, %1569 ], [ %1864, %1858 ]
  %1895 = phi i32 [ %1565, %1569 ], [ %1863, %1858 ]
  %1896 = phi i32 [ %1564, %1569 ], [ %1862, %1858 ]
  %1897 = phi i32 [ %1563, %1569 ], [ %1861, %1858 ]
  %1898 = phi i32 [ %1562, %1569 ], [ %1860, %1858 ]
  %1899 = phi i32 [ %1561, %1569 ], [ %1859, %1858 ]
  %1900 = fcmp une float %1892, %40
  %1901 = and i1 %1900, %1891
  br i1 %1901, label %2115, label %87

; <label>:1902:                                   ; preds = %1858, %1582
  %1903 = phi float [ %1584, %1582 ], [ %1867, %1858 ]
  %1904 = phi i32 [ 0, %1582 ], [ %1865, %1858 ]
  %1905 = phi i32 [ %1580, %1582 ], [ %1864, %1858 ]
  %1906 = phi i32 [ %1579, %1582 ], [ %1863, %1858 ]
  %1907 = phi i32 [ %1578, %1582 ], [ %1862, %1858 ]
  %1908 = phi i32 [ %1577, %1582 ], [ %1861, %1858 ]
  %1909 = phi i32 [ %1576, %1582 ], [ %1860, %1858 ]
  %1910 = phi i32 [ %1575, %1582 ], [ %1859, %1858 ]
  %1911 = fcmp ule float %1903, %40
  br i1 %1911, label %2115, label %87

; <label>:1912:                                   ; preds = %1858, %1594
  %1913 = phi float [ %1596, %1594 ], [ %1867, %1858 ]
  %1914 = phi i32 [ 0, %1594 ], [ %1865, %1858 ]
  %1915 = phi i32 [ %1592, %1594 ], [ %1864, %1858 ]
  %1916 = phi i32 [ %1591, %1594 ], [ %1863, %1858 ]
  %1917 = phi i32 [ %1590, %1594 ], [ %1862, %1858 ]
  %1918 = phi i32 [ %1589, %1594 ], [ %1861, %1858 ]
  %1919 = phi i32 [ %1588, %1594 ], [ %1860, %1858 ]
  %1920 = phi i32 [ %1587, %1594 ], [ %1859, %1858 ]
  %1921 = fcmp ult float %1913, %40
  br i1 %1921, label %2115, label %87

; <label>:1922:                                   ; preds = %1858, %1606
  %1923 = phi float [ %1608, %1606 ], [ %1867, %1858 ]
  %1924 = phi i32 [ 0, %1606 ], [ %1865, %1858 ]
  %1925 = phi i32 [ %1604, %1606 ], [ %1864, %1858 ]
  %1926 = phi i32 [ %1603, %1606 ], [ %1863, %1858 ]
  %1927 = phi i32 [ %1602, %1606 ], [ %1862, %1858 ]
  %1928 = phi i32 [ %1601, %1606 ], [ %1861, %1858 ]
  %1929 = phi i32 [ %1600, %1606 ], [ %1860, %1858 ]
  %1930 = phi i32 [ %1599, %1606 ], [ %1859, %1858 ]
  %1931 = fcmp ueq float %1923, %40
  br i1 %1931, label %2115, label %87

; <label>:1932:                                   ; preds = %1858
  br i1 %1868, label %87, label %2115

; <label>:1933:                                   ; preds = %1858, %1619
  %1934 = phi float [ %1621, %1619 ], [ %1867, %1858 ]
  %1935 = phi i32 [ 0, %1619 ], [ %1865, %1858 ]
  %1936 = phi i32 [ %1617, %1619 ], [ %1864, %1858 ]
  %1937 = phi i32 [ %1616, %1619 ], [ %1863, %1858 ]
  %1938 = phi i32 [ %1615, %1619 ], [ %1862, %1858 ]
  %1939 = phi i32 [ %1614, %1619 ], [ %1861, %1858 ]
  %1940 = phi i32 [ %1613, %1619 ], [ %1860, %1858 ]
  %1941 = phi i32 [ %1612, %1619 ], [ %1859, %1858 ]
  %1942 = fcmp ugt float %1934, %40
  br i1 %1942, label %2115, label %87

; <label>:1943:                                   ; preds = %1858, %1631
  %1944 = phi float [ %1633, %1631 ], [ %1867, %1858 ]
  %1945 = phi i32 [ 0, %1631 ], [ %1865, %1858 ]
  %1946 = phi i32 [ %1629, %1631 ], [ %1864, %1858 ]
  %1947 = phi i32 [ %1628, %1631 ], [ %1863, %1858 ]
  %1948 = phi i32 [ %1627, %1631 ], [ %1862, %1858 ]
  %1949 = phi i32 [ %1626, %1631 ], [ %1861, %1858 ]
  %1950 = phi i32 [ %1625, %1631 ], [ %1860, %1858 ]
  %1951 = phi i32 [ %1624, %1631 ], [ %1859, %1858 ]
  %1952 = fcmp uge float %1944, %40
  br i1 %1952, label %2115, label %87

; <label>:1953:                                   ; preds = %1858, %1643
  %1954 = phi float [ %1645, %1643 ], [ %1867, %1858 ]
  %1955 = phi i32 [ 0, %1643 ], [ %1865, %1858 ]
  %1956 = phi i32 [ %1641, %1643 ], [ %1864, %1858 ]
  %1957 = phi i32 [ %1640, %1643 ], [ %1863, %1858 ]
  %1958 = phi i32 [ %1639, %1643 ], [ %1862, %1858 ]
  %1959 = phi i32 [ %1638, %1643 ], [ %1861, %1858 ]
  %1960 = phi i32 [ %1637, %1643 ], [ %1860, %1858 ]
  %1961 = phi i32 [ %1636, %1643 ], [ %1859, %1858 ]
  %1962 = fcmp une float %1954, %40
  br i1 %1962, label %2115, label %87

; <label>:1963:                                   ; preds = %1858, %1655
  %1964 = phi float [ %1657, %1655 ], [ %1867, %1858 ]
  %1965 = phi i32 [ 0, %1655 ], [ %1865, %1858 ]
  %1966 = phi i32 [ %1653, %1655 ], [ %1864, %1858 ]
  %1967 = phi i32 [ %1652, %1655 ], [ %1863, %1858 ]
  %1968 = phi i32 [ %1651, %1655 ], [ %1862, %1858 ]
  %1969 = phi i32 [ %1650, %1655 ], [ %1861, %1858 ]
  %1970 = phi i32 [ %1649, %1655 ], [ %1860, %1858 ]
  %1971 = phi i32 [ %1648, %1655 ], [ %1859, %1858 ]
  %1972 = fcmp ugt float %1964, %40
  br i1 %1972, label %87, label %2115

; <label>:1973:                                   ; preds = %1858, %1667
  %1974 = phi float [ %1669, %1667 ], [ %1867, %1858 ]
  %1975 = phi i32 [ 0, %1667 ], [ %1865, %1858 ]
  %1976 = phi i32 [ %1665, %1667 ], [ %1864, %1858 ]
  %1977 = phi i32 [ %1664, %1667 ], [ %1863, %1858 ]
  %1978 = phi i32 [ %1663, %1667 ], [ %1862, %1858 ]
  %1979 = phi i32 [ %1662, %1667 ], [ %1861, %1858 ]
  %1980 = phi i32 [ %1661, %1667 ], [ %1860, %1858 ]
  %1981 = phi i32 [ %1660, %1667 ], [ %1859, %1858 ]
  %1982 = fcmp olt float %1974, %40
  br i1 %1982, label %2115, label %87

; <label>:1983:                                   ; preds = %1858, %1681
  %1984 = phi i1 [ %1684, %1681 ], [ %1869, %1858 ]
  %1985 = phi float [ %1683, %1681 ], [ %1867, %1858 ]
  %1986 = phi i32 [ 0, %1681 ], [ %1865, %1858 ]
  %1987 = phi i32 [ %1678, %1681 ], [ %1864, %1858 ]
  %1988 = phi i32 [ %1677, %1681 ], [ %1863, %1858 ]
  %1989 = phi i32 [ %1676, %1681 ], [ %1862, %1858 ]
  %1990 = phi i32 [ %1675, %1681 ], [ %1861, %1858 ]
  %1991 = phi i32 [ %1674, %1681 ], [ %1860, %1858 ]
  %1992 = phi i32 [ %1673, %1681 ], [ %1859, %1858 ]
  %1993 = fcmp oeq float %1985, %40
  %1994 = and i1 %1993, %1984
  br i1 %1994, label %2115, label %87

; <label>:1995:                                   ; preds = %1858, %1696
  %1996 = phi i1 [ %1699, %1696 ], [ %1869, %1858 ]
  %1997 = phi float [ %1698, %1696 ], [ %1867, %1858 ]
  %1998 = phi i32 [ 0, %1696 ], [ %1865, %1858 ]
  %1999 = phi i32 [ %1693, %1696 ], [ %1864, %1858 ]
  %2000 = phi i32 [ %1692, %1696 ], [ %1863, %1858 ]
  %2001 = phi i32 [ %1691, %1696 ], [ %1862, %1858 ]
  %2002 = phi i32 [ %1690, %1696 ], [ %1861, %1858 ]
  %2003 = phi i32 [ %1689, %1696 ], [ %1860, %1858 ]
  %2004 = phi i32 [ %1688, %1696 ], [ %1859, %1858 ]
  %2005 = fcmp ogt float %1997, %40
  %2006 = and i1 %2005, %1996
  br i1 %2006, label %2115, label %87

; <label>:2007:                                   ; preds = %1858, %1711
  %2008 = phi i1 [ %1714, %1711 ], [ %1869, %1858 ]
  %2009 = phi float [ %1713, %1711 ], [ %1867, %1858 ]
  %2010 = phi i32 [ 0, %1711 ], [ %1865, %1858 ]
  %2011 = phi i32 [ %1708, %1711 ], [ %1864, %1858 ]
  %2012 = phi i32 [ %1707, %1711 ], [ %1863, %1858 ]
  %2013 = phi i32 [ %1706, %1711 ], [ %1862, %1858 ]
  %2014 = phi i32 [ %1705, %1711 ], [ %1861, %1858 ]
  %2015 = phi i32 [ %1704, %1711 ], [ %1860, %1858 ]
  %2016 = phi i32 [ %1703, %1711 ], [ %1859, %1858 ]
  %2017 = fcmp oge float %2009, %40
  %2018 = and i1 %2017, %2008
  br i1 %2018, label %2115, label %87

; <label>:2019:                                   ; preds = %1858, %1724
  %2020 = phi float [ %1726, %1724 ], [ %1867, %1858 ]
  %2021 = phi i32 [ 0, %1724 ], [ %1865, %1858 ]
  %2022 = phi i32 [ %1722, %1724 ], [ %1864, %1858 ]
  %2023 = phi i32 [ %1721, %1724 ], [ %1863, %1858 ]
  %2024 = phi i32 [ %1720, %1724 ], [ %1862, %1858 ]
  %2025 = phi i32 [ %1719, %1724 ], [ %1861, %1858 ]
  %2026 = phi i32 [ %1718, %1724 ], [ %1860, %1858 ]
  %2027 = phi i32 [ %1717, %1724 ], [ %1859, %1858 ]
  %2028 = fcmp ueq float %2020, %40
  br i1 %2028, label %87, label %2115

; <label>:2029:                                   ; preds = %1858, %1736
  %2030 = phi float [ %1738, %1736 ], [ %1867, %1858 ]
  %2031 = phi i32 [ 0, %1736 ], [ %1865, %1858 ]
  %2032 = phi i32 [ %1734, %1736 ], [ %1864, %1858 ]
  %2033 = phi i32 [ %1733, %1736 ], [ %1863, %1858 ]
  %2034 = phi i32 [ %1732, %1736 ], [ %1862, %1858 ]
  %2035 = phi i32 [ %1731, %1736 ], [ %1861, %1858 ]
  %2036 = phi i32 [ %1730, %1736 ], [ %1860, %1858 ]
  %2037 = phi i32 [ %1729, %1736 ], [ %1859, %1858 ]
  %2038 = fcmp ule float %2030, %40
  br i1 %2038, label %2115, label %87

; <label>:2039:                                   ; preds = %1858, %1748
  %2040 = phi float [ %1750, %1748 ], [ %1867, %1858 ]
  %2041 = phi i32 [ 0, %1748 ], [ %1865, %1858 ]
  %2042 = phi i32 [ %1746, %1748 ], [ %1864, %1858 ]
  %2043 = phi i32 [ %1745, %1748 ], [ %1863, %1858 ]
  %2044 = phi i32 [ %1744, %1748 ], [ %1862, %1858 ]
  %2045 = phi i32 [ %1743, %1748 ], [ %1861, %1858 ]
  %2046 = phi i32 [ %1742, %1748 ], [ %1860, %1858 ]
  %2047 = phi i32 [ %1741, %1748 ], [ %1859, %1858 ]
  %2048 = fcmp ult float %2040, %40
  br i1 %2048, label %2115, label %87

; <label>:2049:                                   ; preds = %1858, %1760
  %2050 = phi float [ %1762, %1760 ], [ %1867, %1858 ]
  %2051 = phi i32 [ 0, %1760 ], [ %1865, %1858 ]
  %2052 = phi i32 [ %1758, %1760 ], [ %1864, %1858 ]
  %2053 = phi i32 [ %1757, %1760 ], [ %1863, %1858 ]
  %2054 = phi i32 [ %1756, %1760 ], [ %1862, %1858 ]
  %2055 = phi i32 [ %1755, %1760 ], [ %1861, %1858 ]
  %2056 = phi i32 [ %1754, %1760 ], [ %1860, %1858 ]
  %2057 = phi i32 [ %1753, %1760 ], [ %1859, %1858 ]
  %2058 = fcmp ueq float %2050, %40
  br i1 %2058, label %2115, label %87

; <label>:2059:                                   ; preds = %1858
  br i1 %1868, label %87, label %2115

; <label>:2060:                                   ; preds = %1858, %1773
  %2061 = phi float [ %1775, %1773 ], [ %1867, %1858 ]
  %2062 = phi i32 [ 0, %1773 ], [ %1865, %1858 ]
  %2063 = phi i32 [ %1771, %1773 ], [ %1864, %1858 ]
  %2064 = phi i32 [ %1770, %1773 ], [ %1863, %1858 ]
  %2065 = phi i32 [ %1769, %1773 ], [ %1862, %1858 ]
  %2066 = phi i32 [ %1768, %1773 ], [ %1861, %1858 ]
  %2067 = phi i32 [ %1767, %1773 ], [ %1860, %1858 ]
  %2068 = phi i32 [ %1766, %1773 ], [ %1859, %1858 ]
  %2069 = fcmp ugt float %2061, %40
  br i1 %2069, label %2115, label %87

; <label>:2070:                                   ; preds = %1858, %1785
  %2071 = phi float [ %1787, %1785 ], [ %1867, %1858 ]
  %2072 = phi i32 [ 0, %1785 ], [ %1865, %1858 ]
  %2073 = phi i32 [ %1783, %1785 ], [ %1864, %1858 ]
  %2074 = phi i32 [ %1782, %1785 ], [ %1863, %1858 ]
  %2075 = phi i32 [ %1781, %1785 ], [ %1862, %1858 ]
  %2076 = phi i32 [ %1780, %1785 ], [ %1861, %1858 ]
  %2077 = phi i32 [ %1779, %1785 ], [ %1860, %1858 ]
  %2078 = phi i32 [ %1778, %1785 ], [ %1859, %1858 ]
  %2079 = fcmp uge float %2071, %40
  br i1 %2079, label %2115, label %87

; <label>:2080:                                   ; preds = %1858, %1797
  %2081 = phi float [ %1799, %1797 ], [ %1867, %1858 ]
  %2082 = phi i32 [ 0, %1797 ], [ %1865, %1858 ]
  %2083 = phi i32 [ %1795, %1797 ], [ %1864, %1858 ]
  %2084 = phi i32 [ %1794, %1797 ], [ %1863, %1858 ]
  %2085 = phi i32 [ %1793, %1797 ], [ %1862, %1858 ]
  %2086 = phi i32 [ %1792, %1797 ], [ %1861, %1858 ]
  %2087 = phi i32 [ %1791, %1797 ], [ %1860, %1858 ]
  %2088 = phi i32 [ %1790, %1797 ], [ %1859, %1858 ]
  %2089 = fcmp une float %2081, %40
  br i1 %2089, label %2115, label %87

; <label>:2090:                                   ; preds = %1858, %1858
  br i1 %1868, label %2115, label %87

; <label>:2091:                                   ; preds = %1858, %1812
  %2092 = phi i1 [ %1815, %1812 ], [ %1869, %1858 ]
  %2093 = phi float [ %1814, %1812 ], [ %1867, %1858 ]
  %2094 = phi i32 [ 0, %1812 ], [ %1865, %1858 ]
  %2095 = phi i32 [ %1809, %1812 ], [ %1864, %1858 ]
  %2096 = phi i32 [ %1808, %1812 ], [ %1863, %1858 ]
  %2097 = phi i32 [ %1807, %1812 ], [ %1862, %1858 ]
  %2098 = phi i32 [ %1806, %1812 ], [ %1861, %1858 ]
  %2099 = phi i32 [ %1805, %1812 ], [ %1860, %1858 ]
  %2100 = phi i32 [ %1804, %1812 ], [ %1859, %1858 ]
  %2101 = fcmp ole float %2093, %40
  %2102 = and i1 %2101, %2092
  br i1 %2102, label %2115, label %87

; <label>:2103:                                   ; preds = %1858, %1827
  %2104 = phi i1 [ %1830, %1827 ], [ %1869, %1858 ]
  %2105 = phi float [ %1829, %1827 ], [ %1867, %1858 ]
  %2106 = phi i32 [ 0, %1827 ], [ %1865, %1858 ]
  %2107 = phi i32 [ %1824, %1827 ], [ %1864, %1858 ]
  %2108 = phi i32 [ %1823, %1827 ], [ %1863, %1858 ]
  %2109 = phi i32 [ %1822, %1827 ], [ %1862, %1858 ]
  %2110 = phi i32 [ %1821, %1827 ], [ %1861, %1858 ]
  %2111 = phi i32 [ %1820, %1827 ], [ %1860, %1858 ]
  %2112 = phi i32 [ %1819, %1827 ], [ %1859, %1858 ]
  %2113 = fcmp olt float %2105, %40
  %2114 = and i1 %2113, %2104
  br i1 %2114, label %2115, label %87

; <label>:2115:                                   ; preds = %2103, %2091, %2090, %2080, %2070, %2060, %2059, %2049, %2039, %2029, %2019, %2007, %1995, %1983, %1973, %1963, %1953, %1943, %1933, %1932, %1922, %1912, %1902, %1890, %1880, %1870, %1858, %1858, %1848, %1838
  %2116 = phi i32 [ %2106, %2103 ], [ %2094, %2091 ], [ %1865, %2090 ], [ %2082, %2080 ], [ %2072, %2070 ], [ %2062, %2060 ], [ %1865, %2059 ], [ %2051, %2049 ], [ %2041, %2039 ], [ %2031, %2029 ], [ %2021, %2019 ], [ %2010, %2007 ], [ %1998, %1995 ], [ %1986, %1983 ], [ %1975, %1973 ], [ %1965, %1963 ], [ %1955, %1953 ], [ %1945, %1943 ], [ %1935, %1933 ], [ %1865, %1932 ], [ %1924, %1922 ], [ %1914, %1912 ], [ %1904, %1902 ], [ %1893, %1890 ], [ %1882, %1880 ], [ %1872, %1870 ], [ %1865, %1858 ], [ %1865, %1858 ], [ 0, %1848 ], [ 0, %1838 ]
  %2117 = phi i32 [ %2107, %2103 ], [ %2095, %2091 ], [ %1864, %2090 ], [ %2083, %2080 ], [ %2073, %2070 ], [ %2063, %2060 ], [ %1864, %2059 ], [ %2052, %2049 ], [ %2042, %2039 ], [ %2032, %2029 ], [ %2022, %2019 ], [ %2011, %2007 ], [ %1999, %1995 ], [ %1987, %1983 ], [ %1976, %1973 ], [ %1966, %1963 ], [ %1956, %1953 ], [ %1946, %1943 ], [ %1936, %1933 ], [ %1864, %1932 ], [ %1925, %1922 ], [ %1915, %1912 ], [ %1905, %1902 ], [ %1894, %1890 ], [ %1883, %1880 ], [ %1873, %1870 ], [ %1864, %1858 ], [ %1864, %1858 ], [ %1854, %1848 ], [ %1844, %1838 ]
  %2118 = phi i32 [ %2108, %2103 ], [ %2096, %2091 ], [ %1863, %2090 ], [ %2084, %2080 ], [ %2074, %2070 ], [ %2064, %2060 ], [ %1863, %2059 ], [ %2053, %2049 ], [ %2043, %2039 ], [ %2033, %2029 ], [ %2023, %2019 ], [ %2012, %2007 ], [ %2000, %1995 ], [ %1988, %1983 ], [ %1977, %1973 ], [ %1967, %1963 ], [ %1957, %1953 ], [ %1947, %1943 ], [ %1937, %1933 ], [ %1863, %1932 ], [ %1926, %1922 ], [ %1916, %1912 ], [ %1906, %1902 ], [ %1895, %1890 ], [ %1884, %1880 ], [ %1874, %1870 ], [ %1863, %1858 ], [ %1863, %1858 ], [ %1853, %1848 ], [ %1843, %1838 ]
  %2119 = phi i32 [ %2109, %2103 ], [ %2097, %2091 ], [ %1862, %2090 ], [ %2085, %2080 ], [ %2075, %2070 ], [ %2065, %2060 ], [ %1862, %2059 ], [ %2054, %2049 ], [ %2044, %2039 ], [ %2034, %2029 ], [ %2024, %2019 ], [ %2013, %2007 ], [ %2001, %1995 ], [ %1989, %1983 ], [ %1978, %1973 ], [ %1968, %1963 ], [ %1958, %1953 ], [ %1948, %1943 ], [ %1938, %1933 ], [ %1862, %1932 ], [ %1927, %1922 ], [ %1917, %1912 ], [ %1907, %1902 ], [ %1896, %1890 ], [ %1885, %1880 ], [ %1875, %1870 ], [ %1862, %1858 ], [ %1862, %1858 ], [ %1852, %1848 ], [ %1842, %1838 ]
  %2120 = phi i32 [ %2110, %2103 ], [ %2098, %2091 ], [ %1861, %2090 ], [ %2086, %2080 ], [ %2076, %2070 ], [ %2066, %2060 ], [ %1861, %2059 ], [ %2055, %2049 ], [ %2045, %2039 ], [ %2035, %2029 ], [ %2025, %2019 ], [ %2014, %2007 ], [ %2002, %1995 ], [ %1990, %1983 ], [ %1979, %1973 ], [ %1969, %1963 ], [ %1959, %1953 ], [ %1949, %1943 ], [ %1939, %1933 ], [ %1861, %1932 ], [ %1928, %1922 ], [ %1918, %1912 ], [ %1908, %1902 ], [ %1897, %1890 ], [ %1886, %1880 ], [ %1876, %1870 ], [ %1861, %1858 ], [ %1861, %1858 ], [ %1851, %1848 ], [ %1841, %1838 ]
  %2121 = phi i32 [ %2111, %2103 ], [ %2099, %2091 ], [ %1860, %2090 ], [ %2087, %2080 ], [ %2077, %2070 ], [ %2067, %2060 ], [ %1860, %2059 ], [ %2056, %2049 ], [ %2046, %2039 ], [ %2036, %2029 ], [ %2026, %2019 ], [ %2015, %2007 ], [ %2003, %1995 ], [ %1991, %1983 ], [ %1980, %1973 ], [ %1970, %1963 ], [ %1960, %1953 ], [ %1950, %1943 ], [ %1940, %1933 ], [ %1860, %1932 ], [ %1929, %1922 ], [ %1919, %1912 ], [ %1909, %1902 ], [ %1898, %1890 ], [ %1887, %1880 ], [ %1877, %1870 ], [ %1860, %1858 ], [ %1860, %1858 ], [ %1850, %1848 ], [ %1840, %1838 ]
  %2122 = phi i32 [ %2112, %2103 ], [ %2100, %2091 ], [ %1859, %2090 ], [ %2088, %2080 ], [ %2078, %2070 ], [ %2068, %2060 ], [ %1859, %2059 ], [ %2057, %2049 ], [ %2047, %2039 ], [ %2037, %2029 ], [ %2027, %2019 ], [ %2016, %2007 ], [ %2004, %1995 ], [ %1992, %1983 ], [ %1981, %1973 ], [ %1971, %1963 ], [ %1961, %1953 ], [ %1951, %1943 ], [ %1941, %1933 ], [ %1859, %1932 ], [ %1930, %1922 ], [ %1920, %1912 ], [ %1910, %1902 ], [ %1899, %1890 ], [ %1888, %1880 ], [ %1878, %1870 ], [ %1859, %1858 ], [ %1859, %1858 ], [ %1849, %1848 ], [ %1839, %1838 ]
  br label %87
}

define %struct.Memory* @routine_vcmpps_ymm_ymm_m256_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %12 to %"class.std::bitset"*
  %13 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 4
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16, i64 10)
  ret %struct.Memory* %19
}

define i32 @main() {
entry:
  %state = alloca %struct.State
  %mem = alloca %struct.Memory
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
  %call = call %struct.Memory* @routine_vcmpps_ymm_ymm_m256_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}