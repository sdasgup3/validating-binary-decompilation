; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400bb0__rodata_type = type <{ [4 x i8], [38 x i8], [18 x i8], [23 x i8] }>
%seg_600e10__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%seg_601040__bss_type = type <{ [8 x i8], [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque
%struct.anon.2 = type { i8, i8 }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@stderr = external global i64, align 64
@seg_400bb0__rodata = internal constant %seg_400bb0__rodata_type <{ [4 x i8] c"\01\00\02\00", [38 x i8] c"give me a key in the format key{hex}\0A\00", [18 x i8] c"a winner is you!\0A\00", [23 x i8] c"set sail for fail: %d\0A\00" }>
@seg_600e10__init_array = internal global %seg_600e10__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400580_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400550___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601040__bss = internal global %seg_601040__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400580_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400550___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ba0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400b30___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @keycomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @read_bytes_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @to_byte_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 !dbg !1257 {
  %state = alloca %struct.State*, align 8
  %curr_pc = alloca i64, align 8
  %memory = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  %SS_BASE = alloca i64, align 8
  %ES_BASE = alloca i64, align 8
  %DS_BASE = alloca i64, align 8
  %CS_BASE = alloca i64, align 8
  %STATE = alloca %struct.State*, align 8
  %MEMORY = alloca %struct.Memory*, align 8
  %_DR0 = alloca i64*, align 8
  %_DR1 = alloca i64*, align 8
  %_DR2 = alloca i64*, align 8
  %_DR3 = alloca i64*, align 8
  %_DR4 = alloca i64*, align 8
  %_DR5 = alloca i64*, align 8
  %_DR6 = alloca i64*, align 8
  %_DR7 = alloca i64*, align 8
  %CR0 = alloca i64*, align 8
  %CR1 = alloca i64*, align 8
  %CR2 = alloca i64*, align 8
  %CR3 = alloca i64*, align 8
  %CR4 = alloca i64*, align 8
  %CR8 = alloca i64*, align 8
  store %struct.State* %0, %struct.State** %state, align 8
  store i64 %1, i64* %curr_pc, align 8
  store %struct.Memory* %2, %struct.Memory** %memory, align 8
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1948
  store i64 0, i64* %SS_BASE, align 8, !dbg !1949
  store i64 0, i64* %ES_BASE, align 8, !dbg !1950
  store i64 0, i64* %DS_BASE, align 8, !dbg !1951
  store i64 0, i64* %CS_BASE, align 8, !dbg !1952
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1953
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1954
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1955
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1956
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1957
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1957
  store i64 %1, i64* %PC, align 8, !dbg !1958
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1960
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1961
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1961
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1962
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1964
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1965
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1965
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1966
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1968
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1969
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1969
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1970
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1972
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1973
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1973
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1974
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1976
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1977
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1977
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1978
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1980
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1981
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1981
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1982
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1984
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1985
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1985
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1986
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1988
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1989
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1989
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1990
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1992
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1993
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1993
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1994
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !1996
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !1997
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !1997
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !1998
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2000
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2001
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2001
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2002
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2004
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2005
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2005
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2006
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2008
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2009
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2009
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2010
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2012
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2013
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2013
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2014
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2016
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2017
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2017
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2018
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2020
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2021
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2021
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2022
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2024
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2025
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2025
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2026
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2028
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2029
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2029
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2030
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2032
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2033
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2033
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2034
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2036
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2037
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2037
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2038
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2040
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2041
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2041
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2042
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2043
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2044
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2044
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2045
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2046
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2047
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2047
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2048
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2049
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2050
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2050
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2051
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2052
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2053
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2053
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2054
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2055
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2056
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2056
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2057
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2058
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2059
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2059
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2060
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2061
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2062
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2062
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2063
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2064
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2065
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2065
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2066
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2067
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2068
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2068
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2069
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2070
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2071
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2071
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2072
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2073
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2074
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2074
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2075
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2076
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2077
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2077
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2078
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2079
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2080
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2080
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2081
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2082
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2083
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2083
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2084
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2085
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2086
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2086
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2087
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2088
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2089
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2089
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2090
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2091
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2092
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2092
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2093
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2094
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2095
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2095
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2096
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2097
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2098
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2098
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2099
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2100
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2101
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2101
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2102
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2103
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2104
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2104
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2105
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2106
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2107
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2107
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2108
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2109
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2110
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2110
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2111
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2112
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2113
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2113
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2114
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2115
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2116
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2116
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2117
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2118
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2119
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2119
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2120
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2121
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2122
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2122
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2123
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2124
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2125
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2125
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2126
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2127
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2128
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2128
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2129
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2130
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2131
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2131
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2132
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2133
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2134
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2134
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2135
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2136
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2137
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2137
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2138
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2139
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2140
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2140
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2141
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2142
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2143
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2143
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2144
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2145
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2146
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2146
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2147
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2148
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2149
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2149
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2150
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2151
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2152
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2152
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2153
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2154
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2155
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2155
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2156
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2157
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2158
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2158
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2159
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2160
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2161
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2161
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2162
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2163
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2164
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2164
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2165
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2166
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2167
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2167
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2168
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2169
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2170
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2170
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2171
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2172
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2173
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2173
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2174
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2175
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2176
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2176
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2177
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2178
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2179
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2179
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2180
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2181
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2182
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2182
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2183
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2184
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2185
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2185
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2186
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2187
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2188
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2188
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2189
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2190
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2191
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2191
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2192
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2193
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2194
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2195
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2196
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2197
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2198
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2199
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2200
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2201
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2202
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2203
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2204
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2205
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2206
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2207
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2208
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2209
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2210
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2211
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2212
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2212
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2213
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2214
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2215
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2215
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2216
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2217
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2218
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2219
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2220
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2221
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2222
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2223
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2224
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2225
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2226
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2227
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2228
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2229
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2230
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2231
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2232
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2233
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2234
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2235
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2236
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2237
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2238
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2239
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2240
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2241
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2242
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2243
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2244
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2245
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2246
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2247
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2248
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2249
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2250
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2251
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2252
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2253
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2254
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2255
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2256
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2257
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2258
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2259
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2260
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2261
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2262
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2263
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2264
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2265
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2266
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2267
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2268
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2269
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2270
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2271
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2272
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2273
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2274
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2275
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2276
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2277
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2278
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2279
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2280
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2281
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2282
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2283
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2284
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2285
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2286
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2287
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2288
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2289
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2290
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2291
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2292
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2293
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2294
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2295
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2296
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2297
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2298
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2299
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2300
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2301
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2302
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2303
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2304
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2305
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2306
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2307
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2308
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2309
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2310
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2311
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2312
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2313
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2314
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2315
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2317
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2318
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2319
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2321
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2322
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2323
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2325
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2326
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2327
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2329
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2330
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2331
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2333
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2334
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2335
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2337
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2338
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2339
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2341
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2342
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2343
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2344
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2345
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2346
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2347
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2348
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2349
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2346
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2350
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2351
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2352
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2353
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2354
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2355
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2352
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2356
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2357
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2358
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2359
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2360
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2361
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2358
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2362
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2363
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2364
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2365
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2366
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2367
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2364
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2368
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2369
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2370
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2371
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2372
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2373
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2370
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2374
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2375
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2376
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2377
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2378
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2379
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2376
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2380
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2381
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2382
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2383
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2384
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2385
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2382
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2386
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2387
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2388
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2389
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2390
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2391
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2388
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2392
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2393
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2394
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2395
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2397
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2399
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2401
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2403
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2405
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2406
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2407
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2408
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2409
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2410
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2411
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2412
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2413
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2414
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2415
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2416
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2419
  ret %struct.Memory* %2, !dbg !2420
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() local_unnamed_addr #3 !dbg !2421 {
  ret void, !dbg !2423
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400580_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400580:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2424
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2424
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2424
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2424
  store i64 %6, i64* %5, align 8, !tbaa !2424
  %12 = add i64 %9, -113
  store i64 %12, i64* %PC, align 8, !tbaa !2424
  %13 = tail call %struct.Memory* @sub_400510_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400458__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400458:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %RSP, align 8, !tbaa !2424
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2428
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2442
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2443
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2444
  store i8 0, i8* %10, align 1, !tbaa !2445
  store i8 0, i8* %7, align 1, !tbaa !2446
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2424
  br i1 %18, label %block_40046a, label %block_400468

block_40046a:                                     ; preds = %block_400468, %block_400458
  %23 = phi i64 [ %22, %block_400458 ], [ %.pre1, %block_400468 ]
  %24 = phi i64 [ %4, %block_400458 ], [ %.pre, %block_400468 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400458 ], [ %54, %block_400468 ]
  %25 = add i64 %24, 8
  store i64 %25, i64* %RSP, align 8, !tbaa !2424
  %26 = icmp ugt i64 %24, -9
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %5, align 1, !tbaa !2428
  %28 = trunc i64 %25 to i32
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %6, align 1, !tbaa !2442
  %34 = xor i64 %25, %24
  %35 = lshr i64 %34, 4
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %7, align 1, !tbaa !2446
  %38 = icmp eq i64 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %8, align 1, !tbaa !2443
  %40 = lshr i64 %25, 63
  %41 = trunc i64 %40 to i8
  store i8 %41, i8* %9, align 1, !tbaa !2444
  %42 = lshr i64 %24, 63
  %43 = xor i64 %40, %42
  %44 = add nuw nsw i64 %43, %40
  %45 = icmp eq i64 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %10, align 1, !tbaa !2445
  %47 = add i64 %23, 5
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %25 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %PC, align 8, !tbaa !2424
  %50 = add i64 %24, 16
  store i64 %50, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400468:                                     ; preds = %block_400458
  %51 = add i64 %22, 2
  %52 = add i64 %3, -16
  %53 = inttoptr i64 %52 to i64*
  store i64 %51, i64* %53, align 8
  store i64 %52, i64* %RSP, align 8, !tbaa !2424
  store i64 %11, i64* %PC, align 8, !tbaa !2424
  %54 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40046a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400710_keycomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400710:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %5 to i8*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %CX = bitcast %union.anon* %4 to i16*
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2424
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2424
  %13 = add i64 %9, -88
  store i64 %13, i64* %RSP, align 8, !tbaa !2424
  %14 = icmp ult i64 %10, 80
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2428
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2442
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2446
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2443
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2444
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2445
  %42 = add i64 %9, -24
  %43 = load i64, i64* %RDI, align 8
  %44 = add i64 %12, 11
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RDI, align 8, !tbaa !2424
  %52 = add i64 %48, -668
  %53 = add i64 %48, 9
  %54 = load i64, i64* %RSP, align 8, !tbaa !2424
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %53, i64* %56, align 8
  store i64 %55, i64* %RSP, align 8, !tbaa !2424
  store i64 %52, i64* %PC, align 8, !tbaa !2424
  %57 = tail call fastcc %struct.Memory* @ext_601070_strlen(%struct.State* nonnull %0, %struct.Memory* %2)
  %58 = load i32, i32* %EAX, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %PC, align 8
  store i64 %59, i64* %RCX, align 8, !tbaa !2424
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -32
  %63 = add i64 %60, 5
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 %58, i32* %64, align 4
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, -37
  %72 = icmp ult i32 %70, 37
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %16, align 1, !tbaa !2428
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #9
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %23, align 1, !tbaa !2442
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %29, align 1, !tbaa !2446
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %32, align 1, !tbaa !2443
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %35, align 1, !tbaa !2444
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %41, align 1, !tbaa !2445
  %.v = select i1 %83, i64 21, i64 10
  %92 = add i64 %67, %.v
  store i64 %92, i64* %PC, align 8, !tbaa !2424
  br i1 %83, label %block_40073f, label %block_400734

block_400875:                                     ; preds = %block_40085a, %block_400812
  %93 = phi i64 [ %1234, %block_400812 ], [ %807, %block_40085a ]
  %94 = add i64 %1210, -20
  %95 = add i64 %93, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 5
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2424
  %100 = icmp ugt i32 %97, -6
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %16, align 1, !tbaa !2428
  %102 = and i32 %98, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #9
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %23, align 1, !tbaa !2442
  %107 = xor i32 %98, %97
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %29, align 1, !tbaa !2446
  %111 = icmp eq i32 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %32, align 1, !tbaa !2443
  %113 = lshr i32 %98, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %35, align 1, !tbaa !2444
  %115 = lshr i32 %97, 31
  %116 = xor i32 %113, %115
  %117 = add nuw nsw i32 %116, %113
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %41, align 1, !tbaa !2445
  %120 = add i64 %93, 9
  store i64 %120, i64* %PC, align 8
  store i32 %98, i32* %96, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_4008c7

block_400af4:                                     ; preds = %block_400ab6
  %121 = add i64 %647, -16
  %122 = add i64 %662, 4
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX, align 8, !tbaa !2424
  %125 = add i64 %124, 31
  %126 = add i64 %662, 8
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i8*
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i64
  store i64 %129, i64* %RDI, align 8, !tbaa !2424
  %130 = add i64 %662, -1380
  %131 = add i64 %662, 13
  %132 = load i64, i64* %RSP, align 8, !tbaa !2424
  %133 = add i64 %132, -8
  %134 = inttoptr i64 %133 to i64*
  store i64 %131, i64* %134, align 8
  store i64 %133, i64* %RSP, align 8, !tbaa !2424
  store i64 %130, i64* %PC, align 8, !tbaa !2424
  %135 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %130, %struct.Memory* %613)
  %136 = load i32, i32* %EAX, align 4
  %137 = load i64, i64* %PC, align 8
  %138 = add i32 %136, -4
  %139 = icmp ult i32 %136, 4
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %16, align 1, !tbaa !2428
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #9
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %23, align 1, !tbaa !2442
  %146 = xor i32 %138, %136
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %29, align 1, !tbaa !2446
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %32, align 1, !tbaa !2443
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %35, align 1, !tbaa !2444
  %154 = lshr i32 %136, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %41, align 1, !tbaa !2445
  %.v62 = select i1 %150, i64 16, i64 9
  %159 = add i64 %137, %.v62
  store i64 %159, i64* %PC, align 8, !tbaa !2424
  br i1 %150, label %block_400b11, label %block_400b0a

block_4007db:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %160 = add i64 %732, -4
  %161 = add i64 %757, 7
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 -5, i32* %162, align 4
  %163 = load i64, i64* %PC, align 8
  %164 = add i64 %163, 837
  store i64 %164, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_400867:                                     ; preds = %block_40085a
  %165 = add i64 %1210, -20
  %166 = add i64 %807, 3
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2424
  %171 = icmp ugt i32 %168, -5
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %16, align 1, !tbaa !2428
  %173 = and i32 %169, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #9
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %23, align 1, !tbaa !2442
  %178 = xor i32 %169, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %29, align 1, !tbaa !2446
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %32, align 1, !tbaa !2443
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %35, align 1, !tbaa !2444
  %186 = lshr i32 %168, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %41, align 1, !tbaa !2445
  %191 = add i64 %807, 9
  store i64 %191, i64* %PC, align 8
  store i32 %169, i32* %167, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 14
  store i64 %193, i64* %PC, align 8, !tbaa !2424
  br label %block_4008c7

block_40075b:                                     ; preds = %block_40073f
  %194 = add i64 %439, -4
  %195 = add i64 %472, 7
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 -2, i32* %196, align 4
  %197 = load i64, i64* %PC, align 8
  %198 = add i64 %197, 965
  store i64 %198, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_40077d:                                     ; preds = %block_400767
  %199 = add i64 %968, -4
  %200 = add i64 %967, 7
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  store i32 -3, i32* %201, align 4
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 931
  store i64 %203, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_4007e7:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %204 = add i64 %732, -16
  %205 = add i64 %757, 4
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX, align 8, !tbaa !2424
  %208 = add i64 %207, 4
  %209 = add i64 %757, 8
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i8*
  %211 = load i8, i8* %210, align 1
  %212 = and i8 %211, 15
  %213 = zext i8 %212 to i64
  %214 = zext i8 %212 to i32
  store i64 %213, i64* %RCX, align 8, !tbaa !2424
  %215 = icmp eq i8 %212, 0
  %216 = zext i1 %215 to i8
  %217 = add nsw i32 %214, -1
  store i8 %216, i8* %16, align 1, !tbaa !2428
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #9
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %23, align 1, !tbaa !2442
  %223 = lshr i32 %217, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %29, align 1, !tbaa !2446
  %226 = icmp eq i32 %217, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %32, align 1, !tbaa !2443
  %228 = lshr i32 %217, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v50 = select i1 %226, i64 20, i64 55
  %230 = add i64 %757, %.v50
  store i64 %230, i64* %PC, align 8, !tbaa !2424
  br i1 %226, label %block_4007fb, label %block_40081e

block_4009d6:                                     ; preds = %block_4009a3
  %231 = add i64 %1135, -4
  %232 = add i64 %1149, 7
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  store i32 -21, i32* %233, align 4
  %234 = load i64, i64* %PC, align 8
  %235 = add i64 %234, 330
  store i64 %235, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_4008d2:                                     ; preds = %block_4008c7, %1431
  %236 = phi i32 [ %1434, %1431 ], [ %1413, %block_4008c7 ]
  %237 = add i64 %1389, 41
  store i64 %237, i64* %PC, align 8
  store i32 %236, i32* %1409, align 4
  %.pre34 = load i64, i64* %RBP, align 8
  %.pre35 = load i64, i64* %PC, align 8
  %phitmp = add i64 %.pre35, 4
  %238 = add i64 %.pre34, -20
  store i64 %phitmp, i64* %PC, align 8
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32, i32* %239, align 4
  store i8 0, i8* %16, align 1, !tbaa !2428
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #9
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  %246 = icmp eq i32 %240, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %32, align 1, !tbaa !2443
  %248 = lshr i32 %240, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v53 = select i1 %246, i64 18, i64 6
  %250 = add i64 %phitmp, %.v53
  store i64 %250, i64* %PC, align 8, !tbaa !2424
  br i1 %246, label %block_4008e8, label %block_4008dc

block_400a7f:                                     ; preds = %block_400a53
  %251 = add i64 %891, 4
  store i64 %251, i64* %PC, align 8
  %252 = load i64, i64* %861, align 8
  store i64 %252, i64* %RAX, align 8, !tbaa !2424
  %253 = add i64 %252, 29
  %254 = add i64 %891, 8
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i8*
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i64
  %258 = and i64 %257, 4294967295
  store i64 %258, i64* %RCX, align 8, !tbaa !2424
  %259 = sext i8 %256 to i32
  %260 = add nsw i32 %259, -100
  %261 = icmp ult i8 %256, 100
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %16, align 1, !tbaa !2428
  %263 = and i32 %260, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263) #9
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %23, align 1, !tbaa !2442
  %268 = xor i32 %260, %259
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %29, align 1, !tbaa !2446
  %272 = icmp eq i32 %260, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %32, align 1, !tbaa !2443
  %274 = lshr i32 %260, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %35, align 1, !tbaa !2444
  %276 = lshr i32 %259, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %41, align 1, !tbaa !2445
  %.v63 = select i1 %272, i64 17, i64 31
  %281 = add i64 %891, %.v63
  store i64 %281, i64* %PC, align 8, !tbaa !2424
  br i1 %272, label %block_400a90, label %block_400a9e

block_400941:                                     ; preds = %block_40092e, %block_40093a
  %282 = phi i64 [ %812, %block_40092e ], [ %.pre36, %block_40093a ]
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  store i8 1, i8* %23, align 1, !tbaa !2442
  store i8 1, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i64 8, i64* %RDX, align 8, !tbaa !2424
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -16
  %285 = add i64 %282, 11
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, 12
  store i64 %288, i64* %RAX, align 8, !tbaa !2424
  %289 = icmp ugt i64 %287, -13
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %16, align 1, !tbaa !2428
  %291 = trunc i64 %288 to i32
  %292 = and i32 %291, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #9
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %23, align 1, !tbaa !2442
  %297 = xor i64 %288, %287
  %298 = lshr i64 %297, 4
  %299 = trunc i64 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %29, align 1, !tbaa !2446
  %301 = icmp eq i64 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %32, align 1, !tbaa !2443
  %303 = lshr i64 %288, 63
  %304 = trunc i64 %303 to i8
  store i8 %304, i8* %35, align 1, !tbaa !2444
  %305 = lshr i64 %287, 63
  %306 = xor i64 %303, %305
  %307 = add nuw nsw i64 %306, %303
  %308 = icmp eq i64 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %41, align 1, !tbaa !2445
  store i64 %288, i64* %RSI, align 8, !tbaa !2424
  %310 = add i64 %282, -833
  %311 = add i64 %282, 23
  %312 = load i64, i64* %RSP, align 8, !tbaa !2424
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %314, align 8
  store i64 %313, i64* %RSP, align 8, !tbaa !2424
  store i64 %310, i64* %PC, align 8, !tbaa !2424
  %315 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* nonnull %0, i64 %310, %struct.Memory* %1268)
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -44
  %318 = load i32, i32* %EAX, align 4
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %317 to i32*
  store i32 %318, i32* %321, align 4
  %322 = load i64, i64* %RBP, align 8
  %323 = add i64 %322, -44
  %324 = load i64, i64* %PC, align 8
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  %329 = xor i64 %328, -1534560611
  %330 = trunc i64 %329 to i32
  %331 = and i64 %329, 4294967295
  store i64 %331, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %332 = and i32 %330, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332) #9
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %23, align 1, !tbaa !2442
  %337 = icmp eq i32 %330, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %32, align 1, !tbaa !2443
  %339 = lshr i32 %330, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %341 = add i64 %322, -48
  %342 = trunc i64 %329 to i32
  %343 = add i64 %324, 11
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %344, align 4
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -48
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = lshr i32 %350, 15
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = lshr i32 %350, 16
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX, align 8, !tbaa !2424
  store i8 %353, i8* %16, align 1, !tbaa !2447
  %356 = and i32 %354, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356) #9
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2447
  %361 = icmp eq i32 %354, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %32, align 1, !tbaa !2447
  store i8 0, i8* %35, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2447
  %363 = add i64 %345, -52
  %364 = add i64 %347, 9
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 %354, i32* %365, align 4
  %366 = load i64, i64* %RBP, align 8
  %367 = add i64 %366, -48
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = and i32 %371, 65535
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #9
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %23, align 1, !tbaa !2442
  %379 = icmp eq i32 %372, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %381 = add i64 %366, -56
  %382 = add i64 %368, 11
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %372, i32* %383, align 4
  %384 = load i64, i64* %RBP, align 8
  %385 = add i64 %384, -52
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, -79
  %391 = icmp ult i32 %389, 79
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %16, align 1, !tbaa !2428
  %393 = and i32 %390, 255
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393) #9
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %23, align 1, !tbaa !2442
  %398 = xor i32 %390, %389
  %399 = lshr i32 %398, 4
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %29, align 1, !tbaa !2446
  %402 = icmp eq i32 %390, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %32, align 1, !tbaa !2443
  %404 = lshr i32 %390, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %35, align 1, !tbaa !2444
  %406 = lshr i32 %389, 31
  %407 = xor i32 %404, %406
  %408 = add nuw nsw i32 %407, %406
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %41, align 1, !tbaa !2445
  %.v55 = select i1 %402, i64 10, i64 34
  %411 = add i64 %386, %.v55
  store i64 %411, i64* %PC, align 8, !tbaa !2424
  br i1 %402, label %block_400984, label %block_400941.block_40099c_crit_edge

block_400941.block_40099c_crit_edge:              ; preds = %block_400941
  %.pre43 = add i64 %384, -20
  %.pre44 = inttoptr i64 %.pre43 to i32*
  br label %block_40099c

block_40073f:                                     ; preds = %block_400710
  %412 = add i64 %65, -16
  %413 = add i64 %92, 4
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  %416 = add i64 %415, 4
  store i64 %416, i64* %RAX, align 8, !tbaa !2424
  %417 = icmp ugt i64 %415, -5
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %16, align 1, !tbaa !2428
  %419 = trunc i64 %416 to i32
  %420 = and i32 %419, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #9
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %23, align 1, !tbaa !2442
  %425 = xor i64 %416, %415
  %426 = lshr i64 %425, 4
  %427 = trunc i64 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %29, align 1, !tbaa !2446
  %429 = icmp eq i64 %416, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %32, align 1, !tbaa !2443
  %431 = lshr i64 %416, 63
  %432 = trunc i64 %431 to i8
  store i8 %432, i8* %35, align 1, !tbaa !2444
  %433 = lshr i64 %415, 63
  %434 = xor i64 %431, %433
  %435 = add nuw nsw i64 %434, %431
  %436 = icmp eq i64 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %41, align 1, !tbaa !2445
  %438 = add i64 %92, 12
  store i64 %438, i64* %PC, align 8
  store i64 %416, i64* %414, align 8
  %439 = load i64, i64* %RBP, align 8
  %440 = add i64 %439, -16
  %441 = load i64, i64* %PC, align 8
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %440 to i64*
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %RAX, align 8, !tbaa !2424
  %445 = add i64 %441, 7
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %444 to i8*
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i64
  %449 = and i64 %448, 4294967295
  store i64 %449, i64* %RCX, align 8, !tbaa !2424
  %450 = sext i8 %447 to i32
  %451 = add nsw i32 %450, -100
  %452 = icmp ult i8 %447, 100
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %16, align 1, !tbaa !2428
  %454 = and i32 %451, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #9
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %23, align 1, !tbaa !2442
  %459 = xor i32 %451, %450
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %29, align 1, !tbaa !2446
  %463 = icmp eq i32 %451, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %32, align 1, !tbaa !2443
  %465 = lshr i32 %451, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %35, align 1, !tbaa !2444
  %467 = lshr i32 %450, 31
  %468 = xor i32 %465, %467
  %469 = add nuw nsw i32 %468, %467
  %470 = icmp eq i32 %469, 2
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %41, align 1, !tbaa !2445
  %.v46 = select i1 %463, i64 28, i64 16
  %472 = add i64 %441, %.v46
  store i64 %472, i64* %PC, align 8, !tbaa !2424
  br i1 %463, label %block_400767, label %block_40075b

block_40093a:                                     ; preds = %block_40091a, %block_4008e8
  %473 = phi i64 [ %1640, %block_40091a ], [ %1299, %block_4008e8 ]
  %474 = add i64 %1275, -20
  %475 = add i64 %473, 7
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %474 to i32*
  store i32 48059, i32* %476, align 4
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_400941

block_4009e2:                                     ; preds = %block_4009a3
  %477 = add i64 %1149, 3
  store i64 %477, i64* %PC, align 8
  %478 = load i32, i32* %1139, align 4
  %479 = xor i32 %478, -2147483648
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX, align 8, !tbaa !2424
  %.lobit28 = lshr i32 %478, 31
  %481 = trunc i32 %.lobit28 to i8
  %.not = xor i8 %481, 1
  store i8 %.not, i8* %16, align 1, !tbaa !2428
  %482 = and i32 %478, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #9
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  %487 = icmp eq i32 %479, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %32, align 1, !tbaa !2443
  %489 = lshr i32 %479, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %35, align 1, !tbaa !2444
  store i8 %.not, i8* %41, align 1, !tbaa !2445
  %491 = add i64 %1149, 11
  store i64 %491, i64* %PC, align 8
  store i32 %479, i32* %1139, align 4
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -60
  %494 = load i64, i64* %PC, align 8
  %495 = add i64 %494, 7
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, -268435455
  %499 = icmp ult i32 %497, 268435455
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %16, align 1, !tbaa !2428
  %501 = and i32 %498, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501) #9
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %23, align 1, !tbaa !2442
  %506 = xor i32 %497, 16
  %507 = xor i32 %506, %498
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %29, align 1, !tbaa !2446
  %511 = icmp eq i32 %498, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %32, align 1, !tbaa !2443
  %513 = lshr i32 %498, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %35, align 1, !tbaa !2444
  %515 = lshr i32 %497, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %41, align 1, !tbaa !2445
  %520 = or i1 %511, %499
  %.v57 = select i1 %520, i64 25, i64 13
  %521 = add i64 %494, %.v57
  store i64 %521, i64* %PC, align 8, !tbaa !2424
  br i1 %520, label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, label %block_4009fa

block_400ab6:                                     ; preds = %block_400a9e
  store i64 15, i64* %RAX, align 8, !tbaa !2424
  %522 = add i64 %1024, 9
  store i64 %522, i64* %PC, align 8
  %523 = load i64, i64* %861, align 8
  store i64 %523, i64* %RCX, align 8, !tbaa !2424
  %524 = add i64 %523, 31
  %525 = add i64 %1024, 13
  store i64 %525, i64* %PC, align 8
  %526 = inttoptr i64 %524 to i8*
  %527 = load i8, i8* %526, align 1
  %528 = sext i8 %527 to i64
  %529 = and i64 %528, 4294967295
  store i64 %529, i64* %RDX, align 8, !tbaa !2424
  %530 = add i64 %1024, 17
  store i64 %530, i64* %PC, align 8
  %531 = load i64, i64* %861, align 8
  store i64 %531, i64* %RCX, align 8, !tbaa !2424
  %532 = add i64 %531, 30
  %533 = add i64 %1024, 21
  store i64 %533, i64* %PC, align 8
  %534 = inttoptr i64 %532 to i8*
  %535 = load i8, i8* %534, align 1
  %536 = sext i8 %535 to i64
  %537 = and i64 %536, 4294967295
  store i64 %537, i64* %RSI, align 8, !tbaa !2424
  %538 = sext i8 %535 to i32
  %539 = sext i8 %527 to i32
  %540 = sub nsw i32 %539, %538
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RDX, align 8, !tbaa !2424
  %542 = lshr i32 %540, 31
  %543 = sub nsw i32 15, %540
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX, align 8, !tbaa !2424
  %545 = icmp ugt i32 %540, 15
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %16, align 1, !tbaa !2428
  %547 = and i32 %543, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547) #9
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %23, align 1, !tbaa !2442
  %552 = xor i32 %540, %543
  %553 = lshr i32 %552, 4
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %29, align 1, !tbaa !2446
  %556 = icmp eq i32 %543, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %32, align 1, !tbaa !2443
  %558 = lshr i32 %543, 31
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %35, align 1, !tbaa !2444
  %560 = add nuw nsw i32 %558, %542
  %561 = icmp eq i32 %560, 2
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %41, align 1, !tbaa !2445
  %563 = add i64 %857, -20
  %564 = add i64 %1024, 28
  store i64 %564, i64* %PC, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = add i32 %566, %543
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX, align 8, !tbaa !2424
  %569 = icmp ult i32 %567, %543
  %570 = icmp ult i32 %567, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %16, align 1, !tbaa !2428
  %573 = and i32 %567, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573) #9
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %23, align 1, !tbaa !2442
  %578 = xor i32 %566, %543
  %579 = xor i32 %578, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %29, align 1, !tbaa !2446
  %583 = icmp eq i32 %567, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %32, align 1, !tbaa !2443
  %585 = lshr i32 %567, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %35, align 1, !tbaa !2444
  %587 = lshr i32 %566, 31
  %588 = xor i32 %585, %558
  %589 = xor i32 %585, %587
  %590 = add nuw nsw i32 %588, %589
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %41, align 1, !tbaa !2445
  %593 = load i64, i64* %RBP, align 8
  %594 = add i64 %593, -20
  %595 = add i64 %1024, 31
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to i32*
  store i32 %567, i32* %596, align 4
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -16
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %598 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RCX, align 8, !tbaa !2424
  %603 = add i64 %602, 28
  %604 = add i64 %599, 8
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i8*
  %606 = load i8, i8* %605, align 1
  %607 = zext i8 %606 to i64
  store i64 %607, i64* %RDI, align 8, !tbaa !2424
  %608 = add i64 %599, -1349
  %609 = add i64 %599, 13
  %610 = load i64, i64* %RSP, align 8, !tbaa !2424
  %611 = add i64 %610, -8
  %612 = inttoptr i64 %611 to i64*
  store i64 %609, i64* %612, align 8
  store i64 %611, i64* %RSP, align 8, !tbaa !2424
  store i64 %608, i64* %PC, align 8, !tbaa !2424
  %613 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %608, %struct.Memory* %850)
  %614 = load i64, i64* %RBP, align 8
  %615 = add i64 %614, -20
  %616 = load i64, i64* %PC, align 8
  %617 = add i64 %616, 3
  store i64 %617, i64* %PC, align 8
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* %EAX, align 4
  %621 = sub i32 %619, %620
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX, align 8, !tbaa !2424
  %623 = icmp ult i32 %619, %620
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %16, align 1, !tbaa !2428
  %625 = and i32 %621, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625) #9
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %23, align 1, !tbaa !2442
  %630 = xor i32 %620, %619
  %631 = xor i32 %630, %621
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %29, align 1, !tbaa !2446
  %635 = icmp eq i32 %621, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %32, align 1, !tbaa !2443
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %35, align 1, !tbaa !2444
  %639 = lshr i32 %619, 31
  %640 = lshr i32 %620, 31
  %641 = xor i32 %640, %639
  %642 = xor i32 %637, %639
  %643 = add nuw nsw i32 %642, %641
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %41, align 1, !tbaa !2445
  %646 = add i64 %616, 8
  store i64 %646, i64* %PC, align 8
  store i32 %621, i32* %618, align 4
  %647 = load i64, i64* %RBP, align 8
  %648 = add i64 %647, -20
  %649 = load i64, i64* %PC, align 8
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %648 to i32*
  %652 = load i32, i32* %651, align 4
  store i8 0, i8* %16, align 1, !tbaa !2428
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #9
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  %658 = icmp eq i32 %652, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %32, align 1, !tbaa !2443
  %660 = lshr i32 %652, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v61 = select i1 %658, i64 10, i64 39
  %662 = add i64 %649, %.v61
  store i64 %662, i64* %PC, align 8, !tbaa !2424
  br i1 %658, label %block_400af4, label %block_400b11

block_4007b4:                                     ; preds = %block_400789
  %663 = add i64 %1468, -16
  %664 = add i64 %1499, 4
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RAX, align 8, !tbaa !2424
  %667 = add i64 %666, 3
  %668 = add i64 %1499, 8
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %667 to i8*
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i64
  store i64 %671, i64* %RDI, align 8, !tbaa !2424
  %672 = add i64 %1499, -548
  %673 = add i64 %1499, 13
  %674 = load i64, i64* %RSP, align 8, !tbaa !2424
  %675 = add i64 %674, -8
  %676 = inttoptr i64 %675 to i64*
  store i64 %673, i64* %676, align 8
  store i64 %675, i64* %RSP, align 8, !tbaa !2424
  store i64 %672, i64* %PC, align 8, !tbaa !2424
  %677 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %672, %struct.Memory* %1461)
  %678 = load i64, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8, !tbaa !2424
  %679 = load i64, i64* %RBP, align 8
  %680 = add i64 %679, -28
  %681 = load i32, i32* %EAX, align 4
  %682 = add i64 %678, 8
  store i64 %682, i64* %PC, align 8
  %683 = inttoptr i64 %680 to i32*
  store i32 %681, i32* %683, align 4
  %684 = load i64, i64* %RBP, align 8
  %685 = add i64 %684, -28
  %686 = load i64, i64* %PC, align 8
  %687 = add i64 %686, 3
  store i64 %687, i64* %PC, align 8
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = add i32 %689, 1
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX, align 8, !tbaa !2424
  %692 = icmp eq i32 %689, -1
  %693 = icmp eq i32 %690, 0
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %16, align 1, !tbaa !2428
  %696 = and i32 %690, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696) #9
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %23, align 1, !tbaa !2442
  %701 = xor i32 %690, %689
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %29, align 1, !tbaa !2446
  %705 = zext i1 %693 to i8
  store i8 %705, i8* %32, align 1, !tbaa !2443
  %706 = lshr i32 %690, 31
  %707 = trunc i32 %706 to i8
  store i8 %707, i8* %35, align 1, !tbaa !2444
  %708 = lshr i32 %689, 31
  %709 = xor i32 %706, %708
  %710 = add nuw nsw i32 %709, %706
  %711 = icmp eq i32 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %41, align 1, !tbaa !2445
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %714 = sext i32 %690 to i64
  %715 = lshr i64 %714, 32
  store i64 %715, i64* %713, align 8, !tbaa !2424
  %716 = load i32, i32* %EDI, align 4
  %717 = add i64 %686, 9
  store i64 %717, i64* %PC, align 8
  %718 = sext i32 %716 to i64
  %719 = shl nuw i64 %715, 32
  %720 = or i64 %719, %691
  %721 = sdiv i64 %720, %718
  %722 = shl i64 %721, 32
  %723 = ashr exact i64 %722, 32
  %724 = icmp eq i64 %721, %723
  br i1 %724, label %727, label %725

; <label>:725:                                    ; preds = %block_4007b4
  %726 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %717, %struct.Memory* %677) #12
  %.pre = load i32, i32* %EAX, align 4
  %.pre31 = load i64, i64* %PC, align 8
  %.pre32 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:727:                                    ; preds = %block_4007b4
  %728 = srem i64 %720, %718
  %729 = and i64 %721, 4294967295
  store i64 %729, i64* %RAX, align 8, !tbaa !2424
  %730 = and i64 %728, 4294967295
  store i64 %730, i64* %RDX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i8 0, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %731 = trunc i64 %721 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %727, %725
  %732 = phi i64 [ %.pre32, %725 ], [ %684, %727 ]
  %733 = phi i64 [ %.pre31, %725 ], [ %717, %727 ]
  %734 = phi i32 [ %.pre, %725 ], [ %731, %727 ]
  %735 = phi %struct.Memory* [ %726, %725 ], [ %677, %727 ]
  %736 = add i32 %734, -7
  %737 = icmp ult i32 %734, 7
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %16, align 1, !tbaa !2428
  %739 = and i32 %736, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739) #9
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %23, align 1, !tbaa !2442
  %744 = xor i32 %736, %734
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %29, align 1, !tbaa !2446
  %748 = icmp eq i32 %736, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %32, align 1, !tbaa !2443
  %750 = lshr i32 %736, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %35, align 1, !tbaa !2444
  %752 = lshr i32 %734, 31
  %753 = xor i32 %750, %752
  %754 = add nuw nsw i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %41, align 1, !tbaa !2445
  %.v49 = select i1 %748, i64 21, i64 9
  %757 = add i64 %733, %.v49
  store i64 %757, i64* %PC, align 8, !tbaa !2424
  br i1 %748, label %block_4007e7, label %block_4007db

block_40081e:                                     ; preds = %block_4007fb, %block_4007e7
  %758 = phi i64 [ %1059, %block_4007fb ], [ %230, %block_4007e7 ]
  %759 = add i64 %732, -4
  %760 = add i64 %758, 7
  store i64 %760, i64* %PC, align 8
  %761 = inttoptr i64 %759 to i32*
  store i32 -6, i32* %761, align 4
  %762 = load i64, i64* %PC, align 8
  %763 = add i64 %762, 770
  store i64 %763, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_4008dc:                                     ; preds = %block_4008d2
  %764 = add i64 %.pre34, -4
  %765 = add i64 %250, 7
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %764 to i32*
  store i32 -7, i32* %766, align 4
  %767 = load i64, i64* %PC, align 8
  %768 = add i64 %767, 580
  store i64 %768, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_400734:                                     ; preds = %block_400710
  %769 = add i64 %92, 3
  store i64 %769, i64* %PC, align 8
  %770 = load i32, i32* %69, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RAX, align 8, !tbaa !2424
  %772 = add i64 %65, -4
  %773 = add i64 %92, 6
  store i64 %773, i64* %PC, align 8
  %774 = inttoptr i64 %772 to i32*
  store i32 %770, i32* %774, align 4
  %775 = load i64, i64* %PC, align 8
  %776 = add i64 %775, 1005
  store i64 %776, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_4009fa:                                     ; preds = %block_4009e2
  %777 = add i64 %492, -4
  %778 = add i64 %521, 7
  store i64 %778, i64* %PC, align 8
  %779 = inttoptr i64 %777 to i32*
  store i32 -22, i32* %779, align 4
  %780 = load i64, i64* %PC, align 8
  %781 = add i64 %780, 294
  store i64 %781, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_400990:                                     ; preds = %block_400984
  %782 = add i64 %1674, 7
  store i64 %782, i64* %PC, align 8
  store i32 0, i32* %1648, align 4
  %783 = load i64, i64* %PC, align 8
  %784 = add i64 %783, 12
  store i64 %784, i64* %PC, align 8, !tbaa !2424
  br label %block_4009a3

block_40085a:                                     ; preds = %block_400812
  %785 = add i64 %1210, -34
  %786 = add i64 %1234, 4
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i8*
  %788 = load i8, i8* %787, align 1
  %789 = zext i8 %788 to i64
  store i64 %789, i64* %RAX, align 8, !tbaa !2424
  %790 = zext i8 %788 to i32
  %791 = add nsw i32 %790, -96
  %792 = icmp ult i8 %788, 96
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %16, align 1, !tbaa !2428
  %794 = and i32 %791, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794) #9
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %23, align 1, !tbaa !2442
  %799 = xor i32 %791, %790
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %29, align 1, !tbaa !2446
  %803 = icmp eq i32 %791, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %32, align 1, !tbaa !2443
  %805 = lshr i32 %791, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v66 = select i1 %803, i64 13, i64 27
  %807 = add i64 %1234, %.v66
  store i64 %807, i64* %PC, align 8, !tbaa !2424
  br i1 %803, label %block_400867, label %block_400875

block_40092e:                                     ; preds = %block_40091a
  %808 = add i64 %1275, -20
  %809 = add i64 %1640, 7
  store i64 %809, i64* %PC, align 8
  %810 = inttoptr i64 %808 to i32*
  store i32 43690, i32* %810, align 4
  %811 = load i64, i64* %PC, align 8
  %812 = add i64 %811, 12
  store i64 %812, i64* %PC, align 8, !tbaa !2424
  br label %block_400941

block_400a53:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 4, i64* %RDX, align 8, !tbaa !2424
  %813 = add i64 %1590, -20
  %814 = add i64 %1617, 8
  store i64 %814, i64* %PC, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDI, align 8, !tbaa !2424
  %818 = add i64 %1590, -16
  %819 = add i64 %1617, 12
  store i64 %819, i64* %PC, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  %822 = add i64 %821, 28
  store i64 %822, i64* %RAX, align 8, !tbaa !2424
  %823 = icmp ugt i64 %821, -29
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %16, align 1, !tbaa !2428
  %825 = trunc i64 %822 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826) #9
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %23, align 1, !tbaa !2442
  %831 = xor i64 %821, 16
  %832 = xor i64 %831, %822
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %29, align 1, !tbaa !2446
  %836 = icmp eq i64 %822, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %32, align 1, !tbaa !2443
  %838 = lshr i64 %822, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %35, align 1, !tbaa !2444
  %840 = lshr i64 %821, 63
  %841 = xor i64 %838, %840
  %842 = add nuw nsw i64 %841, %838
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %41, align 1, !tbaa !2445
  store i64 %822, i64* %RSI, align 8, !tbaa !2424
  %845 = add i64 %1617, -1107
  %846 = add i64 %1617, 24
  %847 = load i64, i64* %RSP, align 8, !tbaa !2424
  %848 = add i64 %847, -8
  %849 = inttoptr i64 %848 to i64*
  store i64 %846, i64* %849, align 8
  store i64 %848, i64* %RSP, align 8, !tbaa !2424
  store i64 %845, i64* %PC, align 8, !tbaa !2424
  %850 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* nonnull %0, i64 %845, %struct.Memory* %1099)
  %851 = load i64, i64* %RBP, align 8
  %852 = add i64 %851, -64
  %853 = load i32, i32* %EAX, align 4
  %854 = load i64, i64* %PC, align 8
  %855 = add i64 %854, 3
  store i64 %855, i64* %PC, align 8
  %856 = inttoptr i64 %852 to i32*
  store i32 %853, i32* %856, align 4
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -16
  %859 = load i64, i64* %PC, align 8
  %860 = add i64 %859, 4
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %858 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RSI, align 8, !tbaa !2424
  %863 = add i64 %862, 28
  %864 = add i64 %859, 8
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i8*
  %866 = load i8, i8* %865, align 1
  %867 = sext i8 %866 to i64
  %868 = and i64 %867, 4294967295
  store i64 %868, i64* %RAX, align 8, !tbaa !2424
  %869 = sext i8 %866 to i32
  %870 = add nsw i32 %869, -100
  %871 = icmp ult i8 %866, 100
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %16, align 1, !tbaa !2428
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873) #9
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %23, align 1, !tbaa !2442
  %878 = xor i32 %870, %869
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %29, align 1, !tbaa !2446
  %882 = icmp eq i32 %870, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %32, align 1, !tbaa !2443
  %884 = lshr i32 %870, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %35, align 1, !tbaa !2444
  %886 = lshr i32 %869, 31
  %887 = xor i32 %884, %886
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %41, align 1, !tbaa !2445
  %.v59 = select i1 %882, i64 17, i64 48
  %891 = add i64 %859, %.v59
  store i64 %891, i64* %PC, align 8, !tbaa !2424
  br i1 %882, label %block_400a7f, label %block_400a9e

block_400b27:                                     ; preds = %block_4007a8, %block_400a48, %block_400b21, %block_4009fa, %block_400734, %block_4008dc, %block_40081e, %block_4009d6, %block_40077d, %block_40075b, %block_4007db
  %892 = phi i64 [ %763, %block_40081e ], [ %.pre42, %block_400b21 ], [ %1032, %block_400a48 ], [ %781, %block_4009fa ], [ %235, %block_4009d6 ], [ %768, %block_4008dc ], [ %164, %block_4007db ], [ %1162, %block_4007a8 ], [ %203, %block_40077d ], [ %198, %block_40075b ], [ %776, %block_400734 ]
  %MEMORY.5 = phi %struct.Memory* [ %735, %block_40081e ], [ %MEMORY.6, %block_400b21 ], [ %1099, %block_400a48 ], [ %1099, %block_4009fa ], [ %1099, %block_4009d6 ], [ %1364, %block_4008dc ], [ %735, %block_4007db ], [ %1461, %block_4007a8 ], [ %943, %block_40077d ], [ %57, %block_40075b ], [ %57, %block_400734 ]
  %893 = load i64, i64* %RBP, align 8
  %894 = add i64 %893, -4
  %895 = add i64 %892, 3
  store i64 %895, i64* %PC, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX, align 8, !tbaa !2424
  %899 = load i64, i64* %RSP, align 8
  %900 = add i64 %899, 80
  store i64 %900, i64* %RSP, align 8, !tbaa !2424
  %901 = icmp ugt i64 %899, -81
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %16, align 1, !tbaa !2428
  %903 = trunc i64 %900 to i32
  %904 = and i32 %903, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904) #9
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %23, align 1, !tbaa !2442
  %909 = xor i64 %899, 16
  %910 = xor i64 %909, %900
  %911 = lshr i64 %910, 4
  %912 = trunc i64 %911 to i8
  %913 = and i8 %912, 1
  store i8 %913, i8* %29, align 1, !tbaa !2446
  %914 = icmp eq i64 %900, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %32, align 1, !tbaa !2443
  %916 = lshr i64 %900, 63
  %917 = trunc i64 %916 to i8
  store i8 %917, i8* %35, align 1, !tbaa !2444
  %918 = lshr i64 %899, 63
  %919 = xor i64 %916, %918
  %920 = add nuw nsw i64 %919, %916
  %921 = icmp eq i64 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %41, align 1, !tbaa !2445
  %923 = add i64 %892, 8
  store i64 %923, i64* %PC, align 8
  %924 = add i64 %899, 88
  %925 = inttoptr i64 %900 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RBP, align 8, !tbaa !2424
  store i64 %924, i64* %RSP, align 8, !tbaa !2424
  %927 = add i64 %892, 9
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %924 to i64*
  %929 = load i64, i64* %928, align 8
  store i64 %929, i64* %PC, align 8, !tbaa !2424
  %930 = add i64 %899, 96
  store i64 %930, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.5

block_400767:                                     ; preds = %block_40073f
  %931 = add i64 %472, 4
  store i64 %931, i64* %PC, align 8
  %932 = load i64, i64* %443, align 8
  store i64 %932, i64* %RAX, align 8, !tbaa !2424
  %933 = add i64 %932, 1
  %934 = add i64 %472, 8
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i8*
  %936 = load i8, i8* %935, align 1
  %937 = zext i8 %936 to i64
  store i64 %937, i64* %RDI, align 8, !tbaa !2424
  %938 = add i64 %472, -471
  %939 = add i64 %472, 13
  %940 = load i64, i64* %RSP, align 8, !tbaa !2424
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %RSP, align 8, !tbaa !2424
  store i64 %938, i64* %PC, align 8, !tbaa !2424
  %943 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %938, %struct.Memory* %57)
  %944 = load i32, i32* %EAX, align 4
  %945 = load i64, i64* %PC, align 8
  %946 = add i32 %944, -9
  %947 = icmp ult i32 %944, 9
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %16, align 1, !tbaa !2428
  %949 = and i32 %946, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949) #9
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %23, align 1, !tbaa !2442
  %954 = xor i32 %946, %944
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %29, align 1, !tbaa !2446
  %958 = icmp eq i32 %946, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %32, align 1, !tbaa !2443
  %960 = lshr i32 %946, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %35, align 1, !tbaa !2444
  %962 = lshr i32 %944, 31
  %963 = xor i32 %960, %962
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %41, align 1, !tbaa !2445
  %.v47 = select i1 %958, i64 21, i64 9
  %967 = add i64 %945, %.v47
  store i64 %967, i64* %PC, align 8, !tbaa !2424
  %968 = load i64, i64* %RBP, align 8
  br i1 %958, label %block_400789, label %block_40077d

block_400b21:                                     ; preds = %block_400b16, %block_400b11, %block_400a90
  %.sink5 = phi i64 [ 136, %block_400a90 ], [ 5, %block_400b11 ], [ 5, %block_400b16 ]
  %MEMORY.6 = phi %struct.Memory* [ %850, %block_400a90 ], [ %MEMORY.10, %block_400b11 ], [ %850, %block_400b16 ]
  %969 = load i64, i64* %PC, align 8
  %970 = add i64 %969, %.sink5
  %971 = load i64, i64* %RBP, align 8
  %972 = add i64 %971, -20
  %973 = add i64 %970, 3
  store i64 %973, i64* %PC, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RAX, align 8, !tbaa !2424
  %977 = add i64 %971, -4
  %978 = add i64 %970, 6
  store i64 %978, i64* %PC, align 8
  %979 = inttoptr i64 %977 to i32*
  store i32 %975, i32* %979, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_400b27

block_400a9e:                                     ; preds = %block_400a7f, %block_400a53
  %980 = phi i64 [ %891, %block_400a53 ], [ %281, %block_400a7f ]
  %981 = add i64 %980, 4
  store i64 %981, i64* %PC, align 8
  %982 = load i64, i64* %861, align 8
  store i64 %982, i64* %RAX, align 8, !tbaa !2424
  %983 = add i64 %982, 28
  %984 = add i64 %980, 8
  store i64 %984, i64* %PC, align 8
  %985 = inttoptr i64 %983 to i8*
  %986 = load i8, i8* %985, align 1
  %987 = sext i8 %986 to i64
  %988 = and i64 %987, 4294967295
  store i64 %988, i64* %RCX, align 8, !tbaa !2424
  %989 = add i64 %980, 12
  store i64 %989, i64* %PC, align 8
  %990 = load i64, i64* %861, align 8
  store i64 %990, i64* %RAX, align 8, !tbaa !2424
  %991 = add i64 %990, 29
  %992 = add i64 %980, 16
  store i64 %992, i64* %PC, align 8
  %993 = inttoptr i64 %991 to i8*
  %994 = load i8, i8* %993, align 1
  %995 = sext i8 %994 to i64
  %996 = and i64 %995, 4294967295
  store i64 %996, i64* %RDX, align 8, !tbaa !2424
  %997 = sext i8 %986 to i32
  %998 = sext i8 %994 to i32
  %999 = sub nsw i32 %997, %998
  %1000 = icmp ult i8 %986, %994
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %16, align 1, !tbaa !2428
  %1002 = and i32 %999, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002) #9
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %23, align 1, !tbaa !2442
  %1007 = xor i8 %994, %986
  %1008 = zext i8 %1007 to i32
  %1009 = xor i32 %1008, %999
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %29, align 1, !tbaa !2446
  %1013 = icmp eq i32 %999, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %32, align 1, !tbaa !2443
  %1015 = lshr i32 %999, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %35, align 1, !tbaa !2444
  %1017 = lshr i32 %997, 31
  %1018 = lshr i32 %998, 31
  %1019 = xor i32 %1018, %1017
  %1020 = xor i32 %1015, %1017
  %1021 = add nuw nsw i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %41, align 1, !tbaa !2445
  %.v60 = select i1 %1013, i64 24, i64 120
  %1024 = add i64 %980, %.v60
  store i64 %1024, i64* %PC, align 8, !tbaa !2424
  br i1 %1013, label %block_400ab6, label %block_400b16

block_400a48:                                     ; preds = %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %1025 = add i64 %1617, 3
  store i64 %1025, i64* %PC, align 8
  %1026 = load i32, i32* %1594, align 4
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RAX, align 8, !tbaa !2424
  %1028 = add i64 %1590, -4
  %1029 = add i64 %1617, 6
  store i64 %1029, i64* %PC, align 8
  %1030 = inttoptr i64 %1028 to i32*
  store i32 %1026, i32* %1030, align 4
  %1031 = load i64, i64* %PC, align 8
  %1032 = add i64 %1031, 217
  store i64 %1032, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_4007fb:                                     ; preds = %block_4007e7
  %1033 = add i64 %230, 4
  store i64 %1033, i64* %PC, align 8
  %1034 = load i64, i64* %206, align 8
  store i64 %1034, i64* %RAX, align 8, !tbaa !2424
  %1035 = add i64 %1034, 4
  %1036 = add i64 %230, 8
  store i64 %1036, i64* %PC, align 8
  %1037 = inttoptr i64 %1035 to i8*
  %1038 = load i8, i8* %1037, align 1
  %1039 = and i8 %1038, -16
  %1040 = zext i8 %1039 to i64
  %1041 = zext i8 %1039 to i32
  store i64 %1040, i64* %RCX, align 8, !tbaa !2424
  %1042 = add nsw i32 %1041, -48
  %1043 = icmp ult i8 %1039, 48
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %16, align 1, !tbaa !2428
  %1045 = and i32 %1042, 240
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045) #9
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %23, align 1, !tbaa !2442
  %1050 = xor i32 %1041, 16
  %1051 = xor i32 %1050, %1042
  %1052 = lshr exact i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %29, align 1, !tbaa !2446
  %1055 = icmp eq i32 %1042, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %32, align 1, !tbaa !2443
  %1057 = lshr i32 %1042, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v51 = select i1 %1055, i64 23, i64 35
  %1059 = add i64 %230, %.v51
  store i64 %1059, i64* %PC, align 8, !tbaa !2424
  br i1 %1055, label %block_400812, label %block_40081e

block_4009a3:                                     ; preds = %block_40099c, %block_400990
  %1060 = phi i64 [ %.pre37, %block_40099c ], [ %784, %block_400990 ]
  store i64 8, i64* %RDX, align 8, !tbaa !2424
  %1061 = load i64, i64* %RBP, align 8
  %1062 = add i64 %1061, -20
  %1063 = add i64 %1060, 8
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RDI, align 8, !tbaa !2424
  %1067 = add i64 %1061, -16
  %1068 = add i64 %1060, 12
  store i64 %1068, i64* %PC, align 8
  %1069 = inttoptr i64 %1067 to i64*
  %1070 = load i64, i64* %1069, align 8
  %1071 = add i64 %1070, 20
  store i64 %1071, i64* %RAX, align 8, !tbaa !2424
  %1072 = icmp ugt i64 %1070, -21
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %16, align 1, !tbaa !2428
  %1074 = trunc i64 %1071 to i32
  %1075 = and i32 %1074, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075) #9
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %23, align 1, !tbaa !2442
  %1080 = xor i64 %1070, 16
  %1081 = xor i64 %1080, %1071
  %1082 = lshr i64 %1081, 4
  %1083 = trunc i64 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %29, align 1, !tbaa !2446
  %1085 = icmp eq i64 %1071, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %32, align 1, !tbaa !2443
  %1087 = lshr i64 %1071, 63
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %35, align 1, !tbaa !2444
  %1089 = lshr i64 %1070, 63
  %1090 = xor i64 %1087, %1089
  %1091 = add nuw nsw i64 %1090, %1087
  %1092 = icmp eq i64 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %41, align 1, !tbaa !2445
  store i64 %1071, i64* %RSI, align 8, !tbaa !2424
  %1094 = add i64 %1060, -931
  %1095 = add i64 %1060, 24
  %1096 = load i64, i64* %RSP, align 8, !tbaa !2424
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1095, i64* %1098, align 8
  store i64 %1097, i64* %RSP, align 8, !tbaa !2424
  store i64 %1094, i64* %PC, align 8, !tbaa !2424
  %1099 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* nonnull %0, i64 %1094, %struct.Memory* %315)
  %1100 = load i64, i64* %RBP, align 8
  %1101 = add i64 %1100, -60
  %1102 = load i32, i32* %EAX, align 4
  %1103 = load i64, i64* %PC, align 8
  %1104 = add i64 %1103, 3
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1101 to i32*
  store i32 %1102, i32* %1105, align 4
  %1106 = load i64, i64* %RBP, align 8
  %1107 = add i64 %1106, -60
  %1108 = load i64, i64* %PC, align 8
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC, align 8
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = add i32 %1111, -3
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX, align 8, !tbaa !2424
  %1114 = icmp ult i32 %1111, 3
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %16, align 1, !tbaa !2428
  %1116 = and i32 %1112, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116) #9
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %23, align 1, !tbaa !2442
  %1121 = xor i32 %1112, %1111
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %29, align 1, !tbaa !2446
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %32, align 1, !tbaa !2443
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %35, align 1, !tbaa !2444
  %1129 = lshr i32 %1111, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %41, align 1, !tbaa !2445
  %1134 = add i64 %1108, 9
  store i64 %1134, i64* %PC, align 8
  store i32 %1112, i32* %1110, align 4
  %1135 = load i64, i64* %RBP, align 8
  %1136 = add i64 %1135, -60
  %1137 = load i64, i64* %PC, align 8
  %1138 = add i64 %1137, 3
  store i64 %1138, i64* %PC, align 8
  %1139 = inttoptr i64 %1136 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = and i32 %1140, 7
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX, align 8, !tbaa !2424
  %1143 = icmp eq i32 %1141, 0
  %1144 = zext i1 %1143 to i8
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1141) #9
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i8 %1144, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v56 = select i1 %1143, i64 27, i64 15
  %1149 = add i64 %1137, %.v56
  store i64 %1149, i64* %PC, align 8, !tbaa !2424
  br i1 %1143, label %block_4009e2, label %block_4009d6

block_400b16:                                     ; preds = %block_400a9e
  %1150 = add i64 %857, -64
  %1151 = add i64 %1024, 3
  store i64 %1151, i64* %PC, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX, align 8, !tbaa !2424
  %1155 = add i64 %857, -20
  %1156 = add i64 %1024, 6
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  store i32 %1153, i32* %1157, align 4
  br label %block_400b21

block_4007a8:                                     ; preds = %block_400789
  %1158 = add i64 %1468, -4
  %1159 = add i64 %1499, 7
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  store i32 -4, i32* %1160, align 4
  %1161 = load i64, i64* %PC, align 8
  %1162 = add i64 %1161, 888
  store i64 %1162, i64* %PC, align 8, !tbaa !2424
  br label %block_400b27

block_400812:                                     ; preds = %block_4007fb
  %1163 = add i64 %732, -20
  %1164 = add i64 %1059, 7
  store i64 %1164, i64* %PC, align 8
  %1165 = inttoptr i64 %1163 to i32*
  store i32 -4, i32* %1165, align 4
  %1166 = load i64, i64* %PC, align 8
  %1167 = load i64, i64* %RBP, align 8
  %1168 = add i64 %1167, -16
  %1169 = add i64 %1166, 21
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RAX, align 8, !tbaa !2424
  %1172 = add i64 %1171, 5
  %1173 = add i64 %1166, 25
  store i64 %1173, i64* %PC, align 8
  %1174 = inttoptr i64 %1172 to i8*
  %1175 = load i8, i8* %1174, align 1
  %1176 = and i8 %1175, 15
  %1177 = zext i8 %1176 to i64
  %1178 = zext i8 %1176 to i32
  store i64 %1177, i64* %RCX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178) #9
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %23, align 1, !tbaa !2442
  %1183 = icmp eq i8 %1176, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i8 %1176, i8* %DL, align 1, !tbaa !2447
  %1185 = add i64 %1167, -33
  %1186 = add i64 %1166, 33
  store i64 %1186, i64* %PC, align 8
  %1187 = inttoptr i64 %1185 to i8*
  store i8 %1176, i8* %1187, align 1
  %1188 = load i64, i64* %RBP, align 8
  %1189 = add i64 %1188, -16
  %1190 = load i64, i64* %PC, align 8
  %1191 = add i64 %1190, 4
  store i64 %1191, i64* %PC, align 8
  %1192 = inttoptr i64 %1189 to i64*
  %1193 = load i64, i64* %1192, align 8
  store i64 %1193, i64* %RAX, align 8, !tbaa !2424
  %1194 = add i64 %1193, 5
  %1195 = add i64 %1190, 8
  store i64 %1195, i64* %PC, align 8
  %1196 = inttoptr i64 %1194 to i8*
  %1197 = load i8, i8* %1196, align 1
  %1198 = and i8 %1197, -16
  %1199 = zext i8 %1198 to i64
  %1200 = zext i8 %1198 to i32
  store i64 %1199, i64* %RCX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200) #9
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %23, align 1, !tbaa !2442
  %1205 = icmp eq i8 %1198, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i8 %1198, i8* %DL, align 1, !tbaa !2447
  %1207 = add i64 %1188, -34
  %1208 = add i64 %1190, 19
  store i64 %1208, i64* %PC, align 8
  %1209 = inttoptr i64 %1207 to i8*
  store i8 %1198, i8* %1209, align 1
  %1210 = load i64, i64* %RBP, align 8
  %1211 = add i64 %1210, -33
  %1212 = load i64, i64* %PC, align 8
  %1213 = add i64 %1212, 4
  store i64 %1213, i64* %PC, align 8
  %1214 = inttoptr i64 %1211 to i8*
  %1215 = load i8, i8* %1214, align 1
  %1216 = zext i8 %1215 to i64
  store i64 %1216, i64* %RCX, align 8, !tbaa !2424
  %1217 = zext i8 %1215 to i32
  %1218 = add nsw i32 %1217, -3
  %1219 = icmp ult i8 %1215, 3
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %16, align 1, !tbaa !2428
  %1221 = and i32 %1218, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221) #9
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %23, align 1, !tbaa !2442
  %1226 = xor i32 %1218, %1217
  %1227 = lshr i32 %1226, 4
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  store i8 %1229, i8* %29, align 1, !tbaa !2446
  %1230 = icmp eq i32 %1218, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %32, align 1, !tbaa !2443
  %1232 = lshr i32 %1218, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v52 = select i1 %1230, i64 13, i64 40
  %1234 = add i64 %1212, %.v52
  store i64 %1234, i64* %PC, align 8, !tbaa !2424
  br i1 %1230, label %block_40085a, label %block_400875

block_400b11:                                     ; preds = %block_400ab6, %block_400b0a, %block_400af4
  %1235 = phi i64 [ %662, %block_400ab6 ], [ %159, %block_400af4 ], [ %.pre41, %block_400b0a ]
  %MEMORY.10 = phi %struct.Memory* [ %613, %block_400ab6 ], [ %135, %block_400af4 ], [ %135, %block_400b0a ]
  %1236 = add i64 %1235, 11
  store i64 %1236, i64* %PC, align 8, !tbaa !2424
  br label %block_400b21

block_4008e8:                                     ; preds = %block_4008d2
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  store i8 1, i8* %23, align 1, !tbaa !2442
  store i8 1, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i64 4, i64* %RDX, align 8, !tbaa !2424
  %1237 = add i64 %.pre34, -16
  %1238 = add i64 %250, 11
  store i64 %1238, i64* %PC, align 8
  %1239 = inttoptr i64 %1237 to i64*
  %1240 = load i64, i64* %1239, align 8
  %1241 = add i64 %1240, 8
  store i64 %1241, i64* %RAX, align 8, !tbaa !2424
  %1242 = icmp ugt i64 %1240, -9
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %16, align 1, !tbaa !2428
  %1244 = trunc i64 %1241 to i32
  %1245 = and i32 %1244, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245) #9
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %23, align 1, !tbaa !2442
  %1250 = xor i64 %1241, %1240
  %1251 = lshr i64 %1250, 4
  %1252 = trunc i64 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %29, align 1, !tbaa !2446
  %1254 = icmp eq i64 %1241, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %32, align 1, !tbaa !2443
  %1256 = lshr i64 %1241, 63
  %1257 = trunc i64 %1256 to i8
  store i8 %1257, i8* %35, align 1, !tbaa !2444
  %1258 = lshr i64 %1240, 63
  %1259 = xor i64 %1256, %1258
  %1260 = add nuw nsw i64 %1259, %1256
  %1261 = icmp eq i64 %1260, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %41, align 1, !tbaa !2445
  store i64 %1241, i64* %RSI, align 8, !tbaa !2424
  %1263 = add i64 %250, -744
  %1264 = add i64 %250, 23
  %1265 = load i64, i64* %RSP, align 8, !tbaa !2424
  %1266 = add i64 %1265, -8
  %1267 = inttoptr i64 %1266 to i64*
  store i64 %1264, i64* %1267, align 8
  store i64 %1266, i64* %RSP, align 8, !tbaa !2424
  store i64 %1263, i64* %PC, align 8, !tbaa !2424
  %1268 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* nonnull %0, i64 %1263, %struct.Memory* %1364)
  %1269 = load i16, i16* %AX, align 2
  %1270 = load i64, i64* %PC, align 8
  store i16 %1269, i16* %CX, align 2, !tbaa !2448
  %1271 = load i64, i64* %RBP, align 8
  %1272 = add i64 %1271, -38
  %1273 = add i64 %1270, 7
  store i64 %1273, i64* %PC, align 8
  %1274 = inttoptr i64 %1272 to i16*
  store i16 %1269, i16* %1274, align 2
  %1275 = load i64, i64* %RBP, align 8
  %1276 = add i64 %1275, -38
  %1277 = load i64, i64* %PC, align 8
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %PC, align 8
  %1279 = inttoptr i64 %1276 to i16*
  %1280 = load i16, i16* %1279, align 2
  %1281 = or i16 %1280, 21845
  %1282 = zext i16 %1281 to i64
  %1283 = zext i16 %1281 to i32
  store i64 %1282, i64* %RAX, align 8, !tbaa !2424
  %1284 = add nsw i32 %1283, -56663
  %1285 = icmp ult i16 %1281, -8873
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %16, align 1, !tbaa !2428
  %1287 = and i32 %1284, 254
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287) #9
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %23, align 1, !tbaa !2442
  %1292 = lshr i32 %1284, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %29, align 1, !tbaa !2446
  %1295 = icmp eq i32 %1284, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %32, align 1, !tbaa !2443
  %1297 = lshr i32 %1284, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v54 = select i1 %1295, i64 20, i64 52
  %1299 = add i64 %1277, %.v54
  store i64 %1299, i64* %PC, align 8, !tbaa !2424
  br i1 %1295, label %block_40091a, label %block_40093a

block_400a90:                                     ; preds = %block_400a7f
  %1300 = add i64 %857, -64
  %1301 = add i64 %281, 3
  store i64 %1301, i64* %PC, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RAX, align 8, !tbaa !2424
  %1305 = add i64 %857, -20
  %1306 = add i64 %281, 6
  store i64 %1306, i64* %PC, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = xor i32 %1308, %1303
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1311 = and i32 %1309, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311) #9
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %23, align 1, !tbaa !2442
  %1316 = icmp eq i32 %1309, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %32, align 1, !tbaa !2443
  %1318 = lshr i32 %1309, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %1320 = add i64 %281, 9
  store i64 %1320, i64* %PC, align 8
  store i32 %1309, i32* %1307, align 4
  br label %block_400b21

block_400b0a:                                     ; preds = %block_400af4
  %1321 = load i64, i64* %RBP, align 8
  %1322 = add i64 %1321, -20
  %1323 = add i64 %159, 7
  store i64 %1323, i64* %PC, align 8
  %1324 = inttoptr i64 %1322 to i32*
  store i32 -32, i32* %1324, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400b11

block_4008c7:                                     ; preds = %block_400875, %block_400867
  %1325 = phi i64 [ %193, %block_400867 ], [ %.pre33, %block_400875 ]
  %1326 = load i64, i64* %RBP, align 8
  %1327 = add i64 %1326, -16
  %1328 = add i64 %1325, 4
  store i64 %1328, i64* %PC, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RAX, align 8, !tbaa !2424
  %1331 = add i64 %1330, 6
  %1332 = add i64 %1325, 8
  store i64 %1332, i64* %PC, align 8
  %1333 = inttoptr i64 %1331 to i8*
  %1334 = load i8, i8* %1333, align 1
  %1335 = zext i8 %1334 to i64
  store i64 %1335, i64* %RDI, align 8, !tbaa !2424
  %1336 = add i64 %1325, -750
  %1337 = add i64 %1325, 13
  %1338 = load i64, i64* %RSP, align 8, !tbaa !2424
  %1339 = add i64 %1338, -8
  %1340 = inttoptr i64 %1339 to i64*
  store i64 %1337, i64* %1340, align 8
  store i64 %1339, i64* %RSP, align 8, !tbaa !2424
  store i64 %1336, i64* %PC, align 8, !tbaa !2424
  %1341 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %1336, %struct.Memory* %735)
  %1342 = load i8, i8* %AL, align 1
  %1343 = load i64, i64* %PC, align 8
  store i8 %1342, i8* %CL, align 1, !tbaa !2447
  %1344 = load i64, i64* %RBP, align 8
  %1345 = add i64 %1344, -35
  %1346 = add i64 %1343, 5
  store i64 %1346, i64* %PC, align 8
  %1347 = inttoptr i64 %1345 to i8*
  store i8 %1342, i8* %1347, align 1
  %1348 = load i64, i64* %RBP, align 8
  %1349 = add i64 %1348, -16
  %1350 = load i64, i64* %PC, align 8
  %1351 = add i64 %1350, 4
  store i64 %1351, i64* %PC, align 8
  %1352 = inttoptr i64 %1349 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RDX, align 8, !tbaa !2424
  %1354 = add i64 %1353, 7
  %1355 = add i64 %1350, 8
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1354 to i8*
  %1357 = load i8, i8* %1356, align 1
  %1358 = zext i8 %1357 to i64
  store i64 %1358, i64* %RDI, align 8, !tbaa !2424
  %1359 = add i64 %1350, -768
  %1360 = add i64 %1350, 13
  %1361 = load i64, i64* %RSP, align 8, !tbaa !2424
  %1362 = add i64 %1361, -8
  %1363 = inttoptr i64 %1362 to i64*
  store i64 %1360, i64* %1363, align 8
  store i64 %1362, i64* %RSP, align 8, !tbaa !2424
  store i64 %1359, i64* %PC, align 8, !tbaa !2424
  %1364 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %1359, %struct.Memory* %1341)
  %1365 = load i64, i64* %RBP, align 8
  %1366 = add i64 %1365, -35
  %1367 = load i64, i64* %PC, align 8
  %1368 = add i64 %1367, 4
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1366 to i8*
  %1370 = load i8, i8* %1369, align 1
  %1371 = zext i8 %1370 to i64
  %1372 = load i32, i32* %EAX, align 4
  %1373 = zext i32 %1372 to i64
  %1374 = or i64 %1373, %1371
  %1375 = trunc i64 %1374 to i32
  store i64 %1374, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1376 = and i32 %1375, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376) #9
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %23, align 1, !tbaa !2442
  %1381 = icmp eq i32 %1375, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %32, align 1, !tbaa !2443
  %1383 = lshr i32 %1375, 31
  %1384 = trunc i32 %1383 to i8
  store i8 %1384, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %1385 = trunc i64 %1374 to i8
  store i8 %1385, i8* %CL, align 1, !tbaa !2447
  %1386 = add i64 %1367, 12
  store i64 %1386, i64* %PC, align 8
  store i8 %1385, i8* %1369, align 1
  %1387 = load i64, i64* %RBP, align 8
  %1388 = add i64 %1387, -35
  %1389 = load i64, i64* %PC, align 8
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC, align 8
  %1391 = inttoptr i64 %1388 to i8*
  %1392 = load i8, i8* %1391, align 1
  %1393 = zext i8 %1392 to i64
  %1394 = xor i64 %1393, -1
  %1395 = and i64 %1394, 4294967295
  store i64 %1395, i64* %RAX, align 8, !tbaa !2424
  %1396 = trunc i64 %1394 to i32
  %1397 = add nsw i32 %1396, -70
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1398 = and i32 %1397, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398) #9
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %23, align 1, !tbaa !2442
  %1403 = xor i32 %1397, %1396
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %29, align 1, !tbaa !2446
  store i8 0, i8* %32, align 1, !tbaa !2443
  store i8 1, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %1407 = add i64 %1387, -20
  %1408 = add i64 %1389, 33
  store i64 %1408, i64* %PC, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX, align 8, !tbaa !2424
  %1412 = add i64 %1389, 36
  store i64 %1412, i64* %PC, align 8
  %1413 = load i32, i32* %1409, align 4
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RAX, align 8, !tbaa !2424
  %1415 = add i64 %1389, 38
  store i64 %1415, i64* %PC, align 8
  %1416 = trunc i32 %1410 to i5
  switch i5 %1416, label %1422 [
    i5 0, label %block_4008d2
    i5 1, label %1417
  ]

; <label>:1417:                                   ; preds = %block_4008c7
  %1418 = shl i32 %1413, 1
  %1419 = icmp slt i32 %1413, 0
  %1420 = icmp slt i32 %1418, 0
  %1421 = xor i1 %1419, %1420
  br label %1431

; <label>:1422:                                   ; preds = %block_4008c7
  %1423 = and i32 %1410, 31
  %1424 = zext i32 %1423 to i64
  %1425 = add nuw nsw i64 %1424, 4294967295
  %1426 = and i64 %1425, 4294967295
  %1427 = shl i64 %1414, %1426
  %1428 = trunc i64 %1427 to i32
  %1429 = icmp slt i32 %1428, 0
  %1430 = shl i32 %1428, 1
  br label %1431

; <label>:1431:                                   ; preds = %1422, %1417
  %1432 = phi i1 [ %1419, %1417 ], [ %1429, %1422 ]
  %1433 = phi i1 [ %1421, %1417 ], [ false, %1422 ]
  %1434 = phi i32 [ %1418, %1417 ], [ %1430, %1422 ]
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RAX, align 8, !tbaa !2424
  %1436 = zext i1 %1432 to i8
  store i8 %1436, i8* %16, align 1, !tbaa !2447
  %1437 = and i32 %1434, 254
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437) #9
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1442 = icmp eq i32 %1434, 0
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %32, align 1, !tbaa !2447
  %1444 = lshr i32 %1434, 31
  %1445 = trunc i32 %1444 to i8
  store i8 %1445, i8* %35, align 1, !tbaa !2447
  %1446 = zext i1 %1433 to i8
  store i8 %1446, i8* %41, align 1, !tbaa !2447
  br label %block_4008d2

block_400789:                                     ; preds = %block_400767
  %1447 = add i64 %968, -16
  %1448 = add i64 %967, 4
  store i64 %1448, i64* %PC, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RAX, align 8, !tbaa !2424
  %1451 = add i64 %1450, 2
  %1452 = add i64 %967, 8
  store i64 %1452, i64* %PC, align 8
  %1453 = inttoptr i64 %1451 to i8*
  %1454 = load i8, i8* %1453, align 1
  %1455 = zext i8 %1454 to i64
  store i64 %1455, i64* %RDI, align 8, !tbaa !2424
  %1456 = add i64 %967, -505
  %1457 = add i64 %967, 13
  %1458 = load i64, i64* %RSP, align 8, !tbaa !2424
  %1459 = add i64 %1458, -8
  %1460 = inttoptr i64 %1459 to i64*
  store i64 %1457, i64* %1460, align 8
  store i64 %1459, i64* %RSP, align 8, !tbaa !2424
  store i64 %1456, i64* %PC, align 8, !tbaa !2424
  %1461 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %1456, %struct.Memory* %943)
  %1462 = load i64, i64* %RBP, align 8
  %1463 = add i64 %1462, -24
  %1464 = load i32, i32* %EAX, align 4
  %1465 = load i64, i64* %PC, align 8
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC, align 8
  %1467 = inttoptr i64 %1463 to i32*
  store i32 %1464, i32* %1467, align 4
  %1468 = load i64, i64* %RBP, align 8
  %1469 = add i64 %1468, -24
  %1470 = load i64, i64* %PC, align 8
  %1471 = add i64 %1470, 3
  store i64 %1471, i64* %PC, align 8
  %1472 = inttoptr i64 %1469 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = shl i32 %1473, 1
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX, align 8, !tbaa !2424
  %1476 = add i32 %1474, -26
  %1477 = icmp ult i32 %1474, 26
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %16, align 1, !tbaa !2428
  %1479 = and i32 %1476, 254
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479) #9
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %23, align 1, !tbaa !2442
  %1484 = xor i32 %1474, 16
  %1485 = xor i32 %1484, %1476
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %29, align 1, !tbaa !2446
  %1489 = icmp eq i32 %1476, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %32, align 1, !tbaa !2443
  %1491 = lshr i32 %1476, 31
  %1492 = trunc i32 %1491 to i8
  store i8 %1492, i8* %35, align 1, !tbaa !2444
  %1493 = lshr i32 %1473, 30
  %1494 = and i32 %1493, 1
  %1495 = xor i32 %1491, %1494
  %1496 = add nuw nsw i32 %1495, %1494
  %1497 = icmp eq i32 %1496, 2
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %41, align 1, !tbaa !2445
  %.v48 = select i1 %1489, i64 27, i64 15
  %1499 = add i64 %1470, %.v48
  store i64 %1499, i64* %PC, align 8, !tbaa !2424
  br i1 %1489, label %block_4007b4, label %block_4007a8

block_40099c:                                     ; preds = %block_400984, %block_400941.block_40099c_crit_edge
  %.pre-phi45 = phi i32* [ %.pre44, %block_400941.block_40099c_crit_edge ], [ %1648, %block_400984 ]
  %1500 = phi i64 [ %411, %block_400941.block_40099c_crit_edge ], [ %1674, %block_400984 ]
  %1501 = add i64 %1500, 7
  store i64 %1501, i64* %PC, align 8
  store i32 48351, i32* %.pre-phi45, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_4009a3

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %block_4009e2
  store i64 10000, i64* %RAX, align 8, !tbaa !2424
  %1502 = add i64 %521, 8
  store i64 %1502, i64* %PC, align 8
  %1503 = load i32, i32* %496, align 4
  %1504 = xor i32 %1503, 13631488
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RCX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  %1506 = and i32 %1503, 255
  %1507 = tail call i32 @llvm.ctpop.i32(i32 %1506) #9
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  store i8 %1510, i8* %23, align 1, !tbaa !2442
  %1511 = icmp eq i32 %1504, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %32, align 1, !tbaa !2443
  %1513 = lshr i32 %1503, 31
  %1514 = trunc i32 %1513 to i8
  store i8 %1514, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %1515 = add i64 %521, 17
  store i64 %1515, i64* %PC, align 8
  store i32 %1504, i32* %496, align 4
  %1516 = load i64, i64* %RBP, align 8
  %1517 = add i64 %1516, -60
  %1518 = load i64, i64* %PC, align 8
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC, align 8
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = lshr i32 %1521, 3
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = lshr i32 %1521, 4
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RCX, align 8, !tbaa !2424
  store i8 %1524, i8* %16, align 1, !tbaa !2447
  %1527 = and i32 %1525, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #9
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1532 = icmp eq i32 %1525, 0
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %32, align 1, !tbaa !2447
  store i8 0, i8* %35, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2447
  %1534 = add i64 %1518, 9
  store i64 %1534, i64* %PC, align 8
  store i32 %1525, i32* %1520, align 4
  %1535 = load i64, i64* %RBP, align 8
  %1536 = add i64 %1535, -60
  %1537 = load i64, i64* %PC, align 8
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC, align 8
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = add i32 %1540, -226
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RCX, align 8, !tbaa !2424
  %1543 = icmp ult i32 %1540, 226
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %16, align 1, !tbaa !2428
  %1545 = and i32 %1541, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545) #9
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %23, align 1, !tbaa !2442
  %1550 = xor i32 %1541, %1540
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  store i8 %1553, i8* %29, align 1, !tbaa !2446
  %1554 = icmp eq i32 %1541, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %32, align 1, !tbaa !2443
  %1556 = lshr i32 %1541, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %35, align 1, !tbaa !2444
  %1558 = lshr i32 %1540, 31
  %1559 = xor i32 %1556, %1558
  %1560 = add nuw nsw i32 %1559, %1558
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %41, align 1, !tbaa !2445
  %1563 = add i64 %1537, 12
  store i64 %1563, i64* %PC, align 8
  store i32 %1541, i32* %1539, align 4
  %1564 = load i64, i64* %RBP, align 8
  %1565 = add i64 %1564, -60
  %1566 = load i64, i64* %PC, align 8
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC, align 8
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RCX, align 8, !tbaa !2424
  %1571 = add i64 %1564, -68
  %1572 = load i32, i32* %EAX, align 4
  %1573 = add i64 %1566, 6
  store i64 %1573, i64* %PC, align 8
  %1574 = inttoptr i64 %1571 to i32*
  store i32 %1572, i32* %1574, align 4
  %1575 = load i32, i32* %ECX, align 4
  %1576 = zext i32 %1575 to i64
  %1577 = load i64, i64* %PC, align 8
  store i64 %1576, i64* %RAX, align 8, !tbaa !2424
  store i64 0, i64* %RDX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  store i8 1, i8* %23, align 1, !tbaa !2442
  store i8 1, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  store i8 0, i8* %29, align 1, !tbaa !2446
  %1578 = load i64, i64* %RBP, align 8
  %1579 = add i64 %1578, -68
  %1580 = add i64 %1577, 7
  store i64 %1580, i64* %PC, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RCX, align 8, !tbaa !2424
  %div = udiv i32 %1575, %1582
  %1584 = zext i32 %div to i64
  %1585 = urem i32 %1575, %1582
  %1586 = zext i32 %1585 to i64
  store i64 %1584, i64* %RAX, align 8, !tbaa !2424
  store i64 %1586, i64* %RDX, align 8, !tbaa !2424
  store i8 0, i8* %16, align 1, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2442
  store i8 0, i8* %29, align 1, !tbaa !2446
  store i8 0, i8* %32, align 1, !tbaa !2443
  store i8 0, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %1587 = add i64 %1578, -60
  %1588 = add i64 %1577, 12
  store i64 %1588, i64* %PC, align 8
  %1589 = inttoptr i64 %1587 to i32*
  store i32 %div, i32* %1589, align 4
  %1590 = load i64, i64* %RBP, align 8
  %1591 = add i64 %1590, -60
  %1592 = load i64, i64* %PC, align 8
  %1593 = add i64 %1592, 4
  store i64 %1593, i64* %PC, align 8
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = add i32 %1595, -3
  %1597 = icmp ult i32 %1595, 3
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %16, align 1, !tbaa !2428
  %1599 = and i32 %1596, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599) #9
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %23, align 1, !tbaa !2442
  %1604 = xor i32 %1596, %1595
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %29, align 1, !tbaa !2446
  %1608 = icmp eq i32 %1596, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %32, align 1, !tbaa !2443
  %1610 = lshr i32 %1596, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %35, align 1, !tbaa !2444
  %1612 = lshr i32 %1595, 31
  %1613 = xor i32 %1610, %1612
  %1614 = add nuw nsw i32 %1613, %1612
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %41, align 1, !tbaa !2445
  %.v58 = select i1 %1608, i64 21, i64 10
  %1617 = add i64 %1592, %.v58
  store i64 %1617, i64* %PC, align 8, !tbaa !2424
  br i1 %1608, label %block_400a53, label %block_400a48

block_40091a:                                     ; preds = %block_4008e8
  %1618 = add i64 %1299, 4
  store i64 %1618, i64* %PC, align 8
  %1619 = load i16, i16* %1279, align 2
  %1620 = or i16 %1619, -21846
  %1621 = zext i16 %1620 to i64
  %1622 = zext i16 %1620 to i32
  store i64 %1621, i64* %RAX, align 8, !tbaa !2424
  %1623 = add nsw i32 %1622, -65211
  %1624 = icmp ult i16 %1620, -325
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %16, align 1, !tbaa !2428
  %1626 = and i32 %1623, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626) #9
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %23, align 1, !tbaa !2442
  %1631 = xor i32 %1622, 16
  %1632 = xor i32 %1631, %1623
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %29, align 1, !tbaa !2446
  %1636 = icmp eq i32 %1623, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %32, align 1, !tbaa !2443
  %1638 = lshr i32 %1623, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %35, align 1, !tbaa !2444
  store i8 0, i8* %41, align 1, !tbaa !2445
  %.v65 = select i1 %1636, i64 20, i64 32
  %1640 = add i64 %1299, %.v65
  store i64 %1640, i64* %PC, align 8, !tbaa !2424
  br i1 %1636, label %block_40092e, label %block_40093a

block_400984:                                     ; preds = %block_400941
  %1641 = add i64 %384, -56
  %1642 = add i64 %411, 3
  store i64 %1642, i64* %PC, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX, align 8, !tbaa !2424
  %1646 = add i64 %384, -20
  %1647 = add i64 %411, 6
  store i64 %1647, i64* %PC, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = sub i32 %1644, %1649
  %1651 = icmp ult i32 %1644, %1649
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %16, align 1, !tbaa !2428
  %1653 = and i32 %1650, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653) #9
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %23, align 1, !tbaa !2442
  %1658 = xor i32 %1649, %1644
  %1659 = xor i32 %1658, %1650
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %29, align 1, !tbaa !2446
  %1663 = icmp eq i32 %1650, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %32, align 1, !tbaa !2443
  %1665 = lshr i32 %1650, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %35, align 1, !tbaa !2444
  %1667 = lshr i32 %1644, 31
  %1668 = lshr i32 %1649, 31
  %1669 = xor i32 %1668, %1667
  %1670 = xor i32 %1665, %1667
  %1671 = add nuw nsw i32 %1670, %1669
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %41, align 1, !tbaa !2445
  %.v64 = select i1 %1663, i64 12, i64 24
  %1674 = add i64 %411, %.v64
  store i64 %1674, i64* %PC, align 8, !tbaa !2424
  br i1 %1663, label %block_400990, label %block_40099c
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_601040__bss_type* @seg_601040__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2428
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2442
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2446
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2443
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2444
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2445
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2424
  br i1 %12, label %block_400559, label %block_400570

block_400570:                                     ; preds = %block_400550
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !2424
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2424
  %24 = add i64 %21, 8
  store i64 %24, i64* %20, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_400559:                                     ; preds = %block_400550
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %18, 1
  store i64 %26, i64* %PC, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2424
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2424
  %32 = add i64 %31, -122
  %33 = add i64 %31, 8
  %34 = add i64 %28, -16
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 8
  store i64 %34, i64* %27, align 8, !tbaa !2424
  store i64 %32, i64* %PC, align 8, !tbaa !2424
  %36 = tail call %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_601040__bss_type* @seg_601040__bss to i64), i64 8) to i8*), align 8
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %27, align 8, !tbaa !2424
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2424
  store i64 %40, i64* %27, align 8, !tbaa !2424
  %43 = add i64 %37, 9
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %PC, align 8, !tbaa !2424
  %46 = add i64 %39, 16
  store i64 %46, i64* %27, align 8, !tbaa !2424
  ret %struct.Memory* %36
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400510_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2424
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2424
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2424
  %8 = load i64, i64* %RSI, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = sub i64 %8, ptrtoint (i64* @stderr to i64)
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %6, i64* %RBP, align 8, !tbaa !2424
  %17 = ashr i64 %10, 3
  %18 = lshr i64 %17, 63
  store i64 %18, i64* %RAX, align 8, !tbaa !2424
  %19 = add nsw i64 %18, %17
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = ashr i64 %19, 1
  store i64 %22, i64* %RSI, align 8, !tbaa !2424
  store i8 %21, i8* %11, align 1, !tbaa !2447
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2447
  store i8 0, i8* %13, align 1, !tbaa !2447
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2447
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2447
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2424
  br i1 %29, label %block_400548, label %block_400533

block_400533:                                     ; preds = %block_400510
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %11, align 1, !tbaa !2428
  store i8 1, i8* %12, align 1, !tbaa !2442
  store i8 1, i8* %14, align 1, !tbaa !2443
  store i8 0, i8* %15, align 1, !tbaa !2444
  store i8 0, i8* %16, align 1, !tbaa !2445
  store i8 0, i8* %13, align 1, !tbaa !2446
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2424
  br label %block_400548

block_400548:                                     ; preds = %block_400533, %block_400510
  %35 = phi i64 [ %34, %block_400533 ], [ %33, %block_400510 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %RSP, align 8, !tbaa !2424
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2424
  store i64 %38, i64* %RSP, align 8, !tbaa !2424
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2424
  %44 = add i64 %37, 16
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2424
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2424
  %8 = load i64, i64* %PC, align 8
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2424
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i8), i8* %9, align 1, !tbaa !2428
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2442
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stderr to i64), i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2443
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2444
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2445
  store i64 %6, i64* %RBP, align 8, !tbaa !2424
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2424
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_400508, label %block_4004f1

block_4004f1:                                     ; preds = %block_4004e0
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %9, align 1, !tbaa !2428
  store i8 1, i8* %14, align 1, !tbaa !2442
  store i8 1, i8* %16, align 1, !tbaa !2443
  store i8 0, i8* %17, align 1, !tbaa !2444
  store i8 0, i8* %18, align 1, !tbaa !2445
  store i8 0, i8* %15, align 1, !tbaa !2446
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2424
  br label %block_400508

block_400508:                                     ; preds = %block_4004f1, %block_4004e0
  %21 = phi i64 [ %20, %block_4004f1 ], [ %19, %block_4004e0 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2424
  store i64 %5, i64* %RSP, align 8, !tbaa !2424
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %5 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2424
  %27 = add i64 %5, 8
  store i64 %27, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400600_read_bytes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #6 {
block_400600:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2424
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2424
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2424
  %12 = icmp ult i64 %8, 32
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2428
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2442
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2446
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2443
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2444
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2445
  %39 = add i64 %7, -12
  %40 = load i32, i32* %EDI, align 4
  %41 = add i64 %10, 10
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -20
  %51 = load i32, i32* %EDX, align 4
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -24
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 0, i32* %59, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400619

block_400625:                                     ; preds = %block_400619
  %60 = shl i32 %222, 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RAX, align 8, !tbaa !2424
  %62 = lshr i32 %222, 28
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %14, align 1, !tbaa !2447
  %65 = and i32 %60, 240
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #9
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1, !tbaa !2447
  store i8 0, i8* %26, align 1, !tbaa !2447
  %70 = icmp eq i32 %60, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %29, align 1, !tbaa !2447
  %72 = lshr i32 %222, 27
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %32, align 1, !tbaa !2447
  store i8 0, i8* %38, align 1, !tbaa !2447
  %75 = add i64 %218, 9
  store i64 %75, i64* %PC, align 8
  store i32 %60, i32* %221, align 4
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -16
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RCX, align 8, !tbaa !2424
  %82 = add i64 %76, -24
  %83 = add i64 %78, 8
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RDX, align 8, !tbaa !2424
  %87 = add i64 %81, %86
  %88 = add i64 %78, 12
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i8*
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  store i64 %91, i64* %RDI, align 8, !tbaa !2424
  %92 = add i64 %78, -158
  %93 = add i64 %78, 17
  %94 = load i64, i64* %RSP, align 8, !tbaa !2424
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %RSP, align 8, !tbaa !2424
  store i64 %92, i64* %PC, align 8, !tbaa !2424
  %97 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* nonnull %0, i64 %92, %struct.Memory* %2)
  %98 = load i64, i64* %RAX, align 8
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -4
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC, align 8
  %103 = trunc i64 %98 to i32
  %104 = inttoptr i64 %100 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %14, align 1, !tbaa !2428
  %108 = and i32 %106, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #9
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1, !tbaa !2442
  %113 = icmp eq i32 %106, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %29, align 1, !tbaa !2443
  %115 = lshr i32 %106, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %32, align 1, !tbaa !2444
  store i8 0, i8* %38, align 1, !tbaa !2445
  store i8 0, i8* %26, align 1, !tbaa !2446
  %117 = add i64 %101, 6
  store i64 %117, i64* %PC, align 8
  store i32 %106, i32* %104, align 4
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -24
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX, align 8, !tbaa !2424
  %126 = icmp eq i32 %123, -1
  %127 = icmp eq i32 %124, 0
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %14, align 1, !tbaa !2428
  %130 = and i32 %124, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #9
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1, !tbaa !2442
  %135 = xor i32 %124, %123
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %26, align 1, !tbaa !2446
  %139 = zext i1 %127 to i8
  store i8 %139, i8* %29, align 1, !tbaa !2443
  %140 = lshr i32 %124, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1, !tbaa !2444
  %142 = lshr i32 %123, 31
  %143 = xor i32 %140, %142
  %144 = add nuw nsw i32 %143, %140
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %38, align 1, !tbaa !2445
  %147 = add i64 %120, 9
  store i64 %147, i64* %PC, align 8
  store i32 %124, i32* %122, align 4
  %148 = load i64, i64* %PC, align 8
  %149 = add i64 %148, -53
  store i64 %149, i64* %PC, align 8, !tbaa !2424
  br label %block_400619

block_400653:                                     ; preds = %block_400619
  %150 = load i64, i64* %RSP, align 8
  %151 = add i64 %150, 32
  store i64 %151, i64* %RSP, align 8, !tbaa !2424
  %152 = icmp ugt i64 %150, -33
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1, !tbaa !2428
  %154 = trunc i64 %151 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #9
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1, !tbaa !2442
  %160 = xor i64 %151, %150
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1, !tbaa !2446
  %164 = icmp eq i64 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1, !tbaa !2443
  %166 = lshr i64 %151, 63
  %167 = trunc i64 %166 to i8
  store i8 %167, i8* %32, align 1, !tbaa !2444
  %168 = lshr i64 %150, 63
  %169 = xor i64 %166, %168
  %170 = add nuw nsw i64 %169, %166
  %171 = icmp eq i64 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %38, align 1, !tbaa !2445
  %173 = add i64 %218, 8
  store i64 %173, i64* %PC, align 8
  %174 = add i64 %150, 40
  %175 = inttoptr i64 %151 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RBP, align 8, !tbaa !2424
  store i64 %174, i64* %RSP, align 8, !tbaa !2424
  %177 = add i64 %218, 9
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %174 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %PC, align 8, !tbaa !2424
  %180 = add i64 %150, 48
  store i64 %180, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_400619:                                     ; preds = %block_400625, %block_400600
  %181 = phi i64 [ %149, %block_400625 ], [ %.pre, %block_400600 ]
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -24
  %184 = add i64 %181, 3
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX, align 8, !tbaa !2424
  %188 = add i64 %182, -20
  %189 = add i64 %181, 6
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = sub i32 %186, %191
  %193 = icmp ult i32 %186, %191
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %14, align 1, !tbaa !2428
  %195 = and i32 %192, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #9
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1, !tbaa !2442
  %200 = xor i32 %191, %186
  %201 = xor i32 %200, %192
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %26, align 1, !tbaa !2446
  %205 = icmp eq i32 %192, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %29, align 1, !tbaa !2443
  %207 = lshr i32 %192, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %32, align 1, !tbaa !2444
  %209 = lshr i32 %186, 31
  %210 = lshr i32 %191, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %207, %209
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %38, align 1, !tbaa !2445
  %216 = icmp ne i8 %208, 0
  %217 = xor i1 %216, %214
  %.v = select i1 %217, i64 12, i64 58
  %218 = add i64 %181, %.v
  %219 = add i64 %182, -4
  %220 = add i64 %218, 3
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RAX, align 8, !tbaa !2424
  br i1 %217, label %block_400625, label %block_400653
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %RBP, align 8, !tbaa !2424
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2428
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2442
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2443
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2444
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2445
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2446
  %9 = load i64, i64* %RDX, align 8
  store i64 %9, i64* %R9, align 8, !tbaa !2424
  %10 = add i64 %1, 6
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2424
  %12 = add i64 %11, 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RSI, align 8, !tbaa !2424
  store i64 %12, i64* %RDX, align 8, !tbaa !2424
  %15 = and i64 %12, -16
  store i8 0, i8* %3, align 1, !tbaa !2428
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2442
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2443
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2444
  store i8 0, i8* %7, align 1, !tbaa !2445
  store i8 0, i8* %8, align 1, !tbaa !2446
  %26 = load i64, i64* %RAX, align 8
  %27 = add i64 %1, 14
  store i64 %27, i64* %PC, align 8
  %28 = add i64 %15, -8
  %29 = inttoptr i64 %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %PC, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC, align 8
  %32 = add i64 %15, -16
  %33 = inttoptr i64 %32 to i64*
  store i64 %28, i64* %33, align 16
  %34 = load i64, i64* %PC, align 8
  store i64 ptrtoint (void ()* @callback_sub_400ba0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2424
  store i64 ptrtoint (void ()* @callback_sub_400b30___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2424
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2424
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2424
  %38 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2424
  %39 = tail call fastcc %struct.Memory* @ext_601080___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400ba0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400ba0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2424
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2424
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400590_to_byte(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400590:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2424
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  store i64 %9, i64* %7, align 8, !tbaa !2424
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2424
  %12 = load i8, i8* %DIL, align 1
  store i8 %12, i8* %AL, align 1, !tbaa !2447
  %13 = add i64 %8, -13
  %14 = add i64 %11, 9
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i8*
  store i8 %12, i8* %15, align 1
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -5
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %RDI, align 8, !tbaa !2424
  %23 = zext i8 %21 to i32
  %24 = add nsw i32 %23, -57
  %25 = icmp ult i8 %21, 57
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1, !tbaa !2428
  %28 = and i32 %24, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #9
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1, !tbaa !2442
  %34 = xor i32 %23, 16
  %35 = xor i32 %34, %24
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1, !tbaa !2446
  %40 = icmp eq i32 %24, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1, !tbaa !2443
  %43 = lshr i32 %24, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1, !tbaa !2444
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %46, align 1, !tbaa !2445
  %47 = xor i1 %40, true
  %48 = icmp eq i8 %44, 0
  %49 = and i1 %48, %47
  %.v = select i1 %49, i64 28, i64 13
  %50 = add i64 %18, %.v
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = load i8, i8* %20, align 1
  %53 = zext i8 %52 to i64
  store i64 %53, i64* %RAX, align 8, !tbaa !2424
  %54 = zext i8 %52 to i32
  br i1 %49, label %block_4005b6, label %block_4005a7

block_4005b6:                                     ; preds = %block_400590
  %55 = add nsw i32 %54, -70
  %56 = icmp ult i8 %52, 70
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %27, align 1, !tbaa !2428
  %58 = and i32 %55, 255
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58) #9
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %33, align 1, !tbaa !2442
  %63 = xor i32 %55, %54
  %64 = lshr i32 %63, 4
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  store i8 %66, i8* %39, align 1, !tbaa !2446
  %67 = icmp eq i32 %55, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %42, align 1, !tbaa !2443
  %69 = lshr i32 %55, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %45, align 1, !tbaa !2444
  store i8 0, i8* %46, align 1, !tbaa !2445
  %71 = xor i1 %67, true
  %72 = icmp eq i8 %70, 0
  %73 = and i1 %72, %71
  %.v3 = select i1 %73, i64 28, i64 13
  %74 = add i64 %50, %.v3
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC, align 8
  %76 = load i8, i8* %20, align 1
  %77 = zext i8 %76 to i64
  store i64 %77, i64* %RAX, align 8, !tbaa !2424
  %78 = zext i8 %76 to i32
  br i1 %73, label %block_4005d2, label %block_4005c3

block_4005df:                                     ; preds = %block_4005d2
  %79 = add i64 %141, 4
  store i64 %79, i64* %PC, align 8
  %80 = load i8, i8* %20, align 1
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 %81, -87
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RAX, align 8, !tbaa !2424
  %84 = icmp ult i8 %80, 87
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %27, align 1, !tbaa !2428
  %86 = and i32 %82, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #9
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %33, align 1, !tbaa !2442
  %91 = xor i8 %80, 16
  %92 = zext i8 %91 to i32
  %93 = xor i32 %92, %82
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %39, align 1, !tbaa !2446
  %97 = icmp eq i32 %82, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %42, align 1, !tbaa !2443
  %99 = lshr i32 %82, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %45, align 1, !tbaa !2444
  store i8 0, i8* %46, align 1, !tbaa !2445
  %101 = add i64 %16, -4
  %102 = add i64 %141, 10
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 %82, i32* %103, align 4
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 12
  store i64 %105, i64* %PC, align 8, !tbaa !2424
  br label %block_4005f5

block_4005f5:                                     ; preds = %block_4005c3, %block_4005a7, %block_4005ee, %block_4005df
  %106 = phi i64 [ %194, %block_4005c3 ], [ %169, %block_4005a7 ], [ %.pre, %block_4005ee ], [ %105, %block_4005df ]
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -4
  %109 = add i64 %106, 3
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2424
  %113 = add i64 %106, 4
  store i64 %113, i64* %PC, align 8
  %114 = load i64, i64* %7, align 8, !tbaa !2424
  %115 = add i64 %114, 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RBP, align 8, !tbaa !2424
  store i64 %115, i64* %7, align 8, !tbaa !2424
  %118 = add i64 %106, 5
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %115 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %PC, align 8, !tbaa !2424
  %121 = add i64 %114, 16
  store i64 %121, i64* %7, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_4005d2:                                     ; preds = %block_4005b6
  %122 = add nsw i32 %78, -102
  %123 = icmp ult i8 %76, 102
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %27, align 1, !tbaa !2428
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125) #9
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %33, align 1, !tbaa !2442
  %130 = xor i32 %122, %78
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %39, align 1, !tbaa !2446
  %134 = icmp eq i32 %122, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %42, align 1, !tbaa !2443
  %136 = lshr i32 %122, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %45, align 1, !tbaa !2444
  store i8 0, i8* %46, align 1, !tbaa !2445
  %138 = xor i1 %134, true
  %139 = icmp eq i8 %137, 0
  %140 = and i1 %139, %138
  %.v4 = select i1 %140, i64 28, i64 13
  %141 = add i64 %74, %.v4
  store i64 %141, i64* %PC, align 8, !tbaa !2424
  br i1 %140, label %block_4005ee, label %block_4005df

block_4005ee:                                     ; preds = %block_4005d2
  %142 = add i64 %16, -4
  %143 = add i64 %141, 7
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  store i32 0, i32* %144, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005f5

block_4005a7:                                     ; preds = %block_400590
  %145 = zext i8 %52 to i32
  %146 = add nsw i32 %145, -48
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2424
  %148 = icmp ult i8 %52, 48
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %27, align 1, !tbaa !2428
  %150 = and i32 %146, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150) #9
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %33, align 1, !tbaa !2442
  %155 = xor i8 %52, 16
  %156 = zext i8 %155 to i32
  %157 = xor i32 %156, %146
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %39, align 1, !tbaa !2446
  %161 = icmp eq i32 %146, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %42, align 1, !tbaa !2443
  %163 = lshr i32 %146, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %45, align 1, !tbaa !2444
  store i8 0, i8* %46, align 1, !tbaa !2445
  %165 = add i64 %16, -4
  %166 = add i64 %50, 10
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  store i32 %146, i32* %167, align 4
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, 68
  store i64 %169, i64* %PC, align 8, !tbaa !2424
  br label %block_4005f5

block_4005c3:                                     ; preds = %block_4005b6
  %170 = zext i8 %76 to i32
  %171 = add nsw i32 %170, -55
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX, align 8, !tbaa !2424
  %173 = icmp ult i8 %76, 55
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %27, align 1, !tbaa !2428
  %175 = and i32 %171, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #9
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %33, align 1, !tbaa !2442
  %180 = xor i8 %76, 16
  %181 = zext i8 %180 to i32
  %182 = xor i32 %181, %171
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %39, align 1, !tbaa !2446
  %186 = icmp eq i32 %171, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %42, align 1, !tbaa !2443
  %188 = lshr i32 %171, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %45, align 1, !tbaa !2444
  store i8 0, i8* %46, align 1, !tbaa !2445
  %190 = add i64 %16, -4
  %191 = add i64 %74, 10
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  store i32 %171, i32* %192, align 4
  %193 = load i64, i64* %PC, align 8
  %194 = add i64 %193, 40
  store i64 %194, i64* %PC, align 8, !tbaa !2424
  br label %block_4005f5
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b30___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b30:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %4 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %5 = load i64, i64* %R15, align 8
  %6 = add i64 %1, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2424
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %R14, align 8
  %11 = load i64, i64* %PC, align 8
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %10, i64* %14, align 8
  %15 = load i32, i32* %EDI, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC, align 8
  store i64 %16, i64* %R15, align 8, !tbaa !2424
  %18 = load i64, i64* %R13, align 8
  %19 = add i64 %17, 5
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %R12, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %PC, align 8
  %25 = add i64 %7, -32
  %26 = inttoptr i64 %25 to i64*
  store i64 %22, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64* %R12, align 8, !tbaa !2424
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %7, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2424
  %33 = load i64, i64* %RBX, align 8
  %34 = add i64 %32, 8
  store i64 %34, i64* %PC, align 8
  %35 = add i64 %7, -48
  %36 = inttoptr i64 %35 to i64*
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* %RSI, align 8
  %38 = load i64, i64* %PC, align 8
  store i64 %37, i64* %R14, align 8, !tbaa !2424
  %39 = load i64, i64* %RDX, align 8
  store i64 %39, i64* %R13, align 8, !tbaa !2424
  %40 = load i64, i64* %RBP, align 8
  %41 = load i64, i64* %R12, align 8
  %42 = sub i64 %40, %41
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %49 = lshr i64 %42, 2
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = ashr i64 %42, 3
  store i64 %52, i64* %RBP, align 8, !tbaa !2424
  store i8 %51, i8* %43, align 1, !tbaa !2447
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2447
  store i8 0, i8* %45, align 1, !tbaa !2447
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2447
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2447
  store i8 0, i8* %48, align 1, !tbaa !2447
  %63 = add i64 %38, -1779
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2424
  store i64 %63, i64* %PC, align 8, !tbaa !2424
  %67 = tail call %struct.Memory* @sub_400458__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2428
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2442
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2443
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2444
  store i8 0, i8* %48, align 1, !tbaa !2445
  store i8 0, i8* %45, align 1, !tbaa !2446
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2424
  br i1 %76, label %block_400b86, label %block_400b66

block_400b86.loopexit:                            ; preds = %block_400b70
  br label %block_400b86

block_400b86:                                     ; preds = %block_400b86.loopexit, %block_400b30
  %81 = phi i64 [ %80, %block_400b30 ], [ %179, %block_400b86.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_400b30 ], [ %149, %block_400b86.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2424
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2428
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2442
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2446
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2443
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2444
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2445
  %105 = add i64 %81, 5
  store i64 %105, i64* %PC, align 8
  %106 = add i64 %82, 16
  %107 = inttoptr i64 %83 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RBX, align 8, !tbaa !2424
  store i64 %106, i64* %RSP, align 8, !tbaa !2424
  %109 = add i64 %81, 6
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %82, 24
  %111 = inttoptr i64 %106 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2424
  store i64 %110, i64* %RSP, align 8, !tbaa !2424
  %113 = add i64 %81, 8
  store i64 %113, i64* %PC, align 8
  %114 = add i64 %82, 32
  %115 = inttoptr i64 %110 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %R12, align 8, !tbaa !2424
  store i64 %114, i64* %RSP, align 8, !tbaa !2424
  %117 = add i64 %81, 10
  store i64 %117, i64* %PC, align 8
  %118 = add i64 %82, 40
  %119 = inttoptr i64 %114 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %R13, align 8, !tbaa !2424
  store i64 %118, i64* %RSP, align 8, !tbaa !2424
  %121 = add i64 %81, 12
  store i64 %121, i64* %PC, align 8
  %122 = add i64 %82, 48
  %123 = inttoptr i64 %118 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %R14, align 8, !tbaa !2424
  store i64 %122, i64* %RSP, align 8, !tbaa !2424
  %125 = add i64 %81, 14
  store i64 %125, i64* %PC, align 8
  %126 = add i64 %82, 56
  %127 = inttoptr i64 %122 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %R15, align 8, !tbaa !2424
  store i64 %126, i64* %RSP, align 8, !tbaa !2424
  %129 = add i64 %81, 15
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %PC, align 8, !tbaa !2424
  %132 = add i64 %82, 64
  store i64 %132, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400b66:                                     ; preds = %block_400b30
  store i64 0, i64* %RBX, align 8, !tbaa !2424
  store i8 0, i8* %43, align 1, !tbaa !2428
  store i8 1, i8* %44, align 1, !tbaa !2442
  store i8 1, i8* %46, align 1, !tbaa !2443
  store i8 0, i8* %47, align 1, !tbaa !2444
  store i8 0, i8* %48, align 1, !tbaa !2445
  store i8 0, i8* %45, align 1, !tbaa !2446
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_400b70

block_400b70:                                     ; preds = %block_400b70, %block_400b66
  %134 = phi i64 [ 0, %block_400b66 ], [ %152, %block_400b70 ]
  %135 = phi i64 [ %133, %block_400b66 ], [ %179, %block_400b70 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_400b66 ], [ %149, %block_400b70 ]
  %136 = load i64, i64* %R13, align 8
  store i64 %136, i64* %RDX, align 8, !tbaa !2424
  %137 = load i64, i64* %R14, align 8
  store i64 %137, i64* %RSI, align 8, !tbaa !2424
  %138 = load i32, i32* %R15D, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2424
  %140 = load i64, i64* %R12, align 8
  %141 = shl i64 %134, 3
  %142 = add i64 %141, %140
  %143 = add i64 %135, 13
  store i64 %143, i64* %PC, align 8
  %144 = load i64, i64* %RSP, align 8, !tbaa !2424
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2424
  %147 = inttoptr i64 %142 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %PC, align 8, !tbaa !2424
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %148, %struct.Memory* %MEMORY.1)
  %150 = load i64, i64* %RBX, align 8
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %150, 1
  store i64 %152, i64* %RBX, align 8, !tbaa !2424
  %153 = lshr i64 %152, 63
  %154 = load i64, i64* %RBP, align 8
  %155 = sub i64 %154, %152
  %156 = icmp ult i64 %154, %152
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %43, align 1, !tbaa !2428
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2442
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2446
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2443
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2444
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2445
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2424
  br i1 %169, label %block_400b86.loopexit, label %block_400b70
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ba4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400ba4:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = xor i64 %4, %3
  %8 = lshr i64 %7, 4
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = lshr i64 %4, 63
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %15 = lshr i64 %3, 63
  %16 = xor i64 %13, %15
  %17 = add nuw nsw i64 %16, %15
  %18 = icmp eq i64 %17, 2
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %3, i64* %RSP, align 8, !tbaa !2424
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2428
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2442
  store i8 %10, i8* %11, align 1, !tbaa !2446
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2443
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2444
  store i8 %19, i8* %20, align 1, !tbaa !2445
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2424
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400660_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2424
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2424
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP, align 8, !tbaa !2424
  %12 = icmp ult i64 %8, 48
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2428
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2442
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2446
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2443
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2444
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2445
  %40 = add i64 %7, -12
  %41 = add i64 %10, 14
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -8
  %45 = load i32, i32* %EDI, align 4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RSI, align 8
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %56 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, -2
  %62 = icmp ult i32 %60, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %14, align 1, !tbaa !2428
  %64 = and i32 %61, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #9
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1, !tbaa !2442
  %69 = xor i32 %61, %60
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %27, align 1, !tbaa !2446
  %73 = icmp eq i32 %61, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %30, align 1, !tbaa !2443
  %75 = lshr i32 %61, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %33, align 1, !tbaa !2444
  %77 = lshr i32 %60, 31
  %78 = xor i32 %75, %77
  %79 = add nuw nsw i32 %78, %77
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %39, align 1, !tbaa !2445
  %82 = icmp ne i8 %76, 0
  %83 = xor i1 %82, %80
  %.v = select i1 %83, i64 10, i64 50
  %84 = add i64 %57, %.v
  store i64 %84, i64* %PC, align 8, !tbaa !2424
  br i1 %83, label %block_400680, label %block_4006a8

block_4006fc:                                     ; preds = %block_4006e5, %block_4006cc
  %85 = phi i64 [ %.pre, %block_4006e5 ], [ %108, %block_4006cc ]
  %MEMORY.0 = phi %struct.Memory* [ %163, %block_4006e5 ], [ %100, %block_4006cc ]
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -28
  %88 = add i64 %85, 3
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX, align 8, !tbaa !2424
  %92 = add i64 %86, -4
  %93 = add i64 %85, 6
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %90, i32* %94, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400702

block_4006cc:                                     ; preds = %block_4006a8
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 42), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %95 = add i64 %153, -572
  %96 = add i64 %153, 17
  %97 = load i64, i64* %RSP, align 8, !tbaa !2424
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %RSP, align 8, !tbaa !2424
  store i64 %95, i64* %PC, align 8, !tbaa !2424
  %100 = tail call fastcc %struct.Memory* @ext_601078_printf(%struct.State* nonnull %0, %struct.Memory* %131)
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -36
  %103 = load i32, i32* %EAX, align 4
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %102 to i32*
  store i32 %103, i32* %106, align 4
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, 28
  store i64 %108, i64* %PC, align 8, !tbaa !2424
  br label %block_4006fc

block_4006a8:                                     ; preds = %block_400660
  %109 = add i64 %55, -16
  %110 = add i64 %84, 4
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX, align 8, !tbaa !2424
  %113 = add i64 %112, 8
  %114 = add i64 %84, 8
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RAX, align 8, !tbaa !2424
  %117 = add i64 %55, -24
  %118 = add i64 %84, 12
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %RBP, align 8
  %121 = add i64 %120, -24
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %121 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %126 = add i64 %122, 92
  %127 = add i64 %122, 11
  %128 = load i64, i64* %RSP, align 8, !tbaa !2424
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %RSP, align 8, !tbaa !2424
  store i64 %126, i64* %PC, align 8, !tbaa !2424
  %131 = tail call %struct.Memory* @sub_400710_keycomp(%struct.State* nonnull %0, i64 %126, %struct.Memory* %2)
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -28
  %134 = load i32, i32* %EAX, align 4
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %137, align 4
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -28
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %139 to i32*
  %143 = load i32, i32* %142, align 4
  store i8 0, i8* %14, align 1, !tbaa !2428
  %144 = and i32 %143, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #9
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1, !tbaa !2442
  store i8 0, i8* %27, align 1, !tbaa !2446
  %149 = icmp eq i32 %143, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %30, align 1, !tbaa !2443
  %151 = lshr i32 %143, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %33, align 1, !tbaa !2444
  store i8 0, i8* %39, align 1, !tbaa !2445
  %.v3 = select i1 %149, i64 10, i64 35
  %153 = add i64 %140, %.v3
  %154 = add i64 %153, 10
  store i64 %154, i64* %PC, align 8
  br i1 %149, label %block_4006cc, label %block_4006e5

block_4006e5:                                     ; preds = %block_4006a8
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 60), i64* %RDI, align 8, !tbaa !2424
  %155 = add i64 %153, 13
  store i64 %155, i64* %PC, align 8
  %156 = load i32, i32* %142, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RSI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %158 = add i64 %153, -597
  %159 = add i64 %153, 20
  %160 = load i64, i64* %RSP, align 8, !tbaa !2424
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %RSP, align 8, !tbaa !2424
  store i64 %158, i64* %PC, align 8, !tbaa !2424
  %163 = tail call fastcc %struct.Memory* @ext_601078_printf(%struct.State* nonnull %0, %struct.Memory* %131)
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -40
  %166 = load i32, i32* %EAX, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %169, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006fc

block_400702:                                     ; preds = %block_400680, %block_4006fc
  %170 = phi i64 [ %.pre2, %block_4006fc ], [ %228, %block_400680 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4006fc ], [ %215, %block_400680 ]
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -4
  %173 = add i64 %170, 3
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RAX, align 8, !tbaa !2424
  %177 = load i64, i64* %RSP, align 8
  %178 = add i64 %177, 48
  store i64 %178, i64* %RSP, align 8, !tbaa !2424
  %179 = icmp ugt i64 %177, -49
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %14, align 1, !tbaa !2428
  %181 = trunc i64 %178 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #9
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %21, align 1, !tbaa !2442
  %187 = xor i64 %177, 16
  %188 = xor i64 %187, %178
  %189 = lshr i64 %188, 4
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %27, align 1, !tbaa !2446
  %192 = icmp eq i64 %178, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %30, align 1, !tbaa !2443
  %194 = lshr i64 %178, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %33, align 1, !tbaa !2444
  %196 = lshr i64 %177, 63
  %197 = xor i64 %194, %196
  %198 = add nuw nsw i64 %197, %194
  %199 = icmp eq i64 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %39, align 1, !tbaa !2445
  %201 = add i64 %170, 8
  store i64 %201, i64* %PC, align 8
  %202 = add i64 %177, 56
  %203 = inttoptr i64 %178 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RBP, align 8, !tbaa !2424
  store i64 %202, i64* %RSP, align 8, !tbaa !2424
  %205 = add i64 %170, 9
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %202 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %PC, align 8, !tbaa !2424
  %208 = add i64 %177, 64
  store i64 %208, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.1

block_400680:                                     ; preds = %block_400660
  store i64 add (i64 ptrtoint (%seg_400bb0__rodata_type* @seg_400bb0__rodata to i64), i64 4), i64* %RSI, align 8, !tbaa !2424
  %209 = load i64, i64* @stderr, align 64
  store i64 %209, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %210 = add i64 %84, -480
  %211 = add i64 %84, 25
  %212 = load i64, i64* %RSP, align 8, !tbaa !2424
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %RSP, align 8, !tbaa !2424
  store i64 %210, i64* %PC, align 8, !tbaa !2424
  %215 = tail call fastcc %struct.Memory* @ext_601088_fprintf(%struct.State* nonnull %0, %struct.Memory* %2)
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -4
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 -1, i32* %220, align 4
  %221 = load i64, i64* %RBP, align 8
  %222 = add i64 %221, -32
  %223 = load i32, i32* %EAX, align 4
  %224 = load i64, i64* %PC, align 8
  %225 = add i64 %224, 3
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %222 to i32*
  store i32 %223, i32* %226, align 4
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 95
  store i64 %228, i64* %PC, align 8, !tbaa !2424
  br label %block_400702
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400580_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400580;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400580_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400580_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400550___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400550___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601070_strlen(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400ba0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ba0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_400ba0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ba0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400b30___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400b30;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400b30___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400b30___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601080___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601078_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601088_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @keycomp() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400710;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @keycomp_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400710_keycomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400458;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400458__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ba4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ba4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @read_bytes() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @read_bytes_wrapper(%struct.State*, i64, %struct.Memory* readnone) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400600_read_bytes(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @to_byte() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @to_byte_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590_to_byte(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_400ba0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #9 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_400b30___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { naked nobuiltin noinline nounwind }
attributes #9 = { nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }
attributes #12 = { alwaysinline nobuiltin nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1255, !1256}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !354, !356, !360, !368, !373, !377, !381, !385, !389, !391, !393, !397, !403, !407, !413, !419, !421, !425, !429, !433, !437, !448, !450, !454, !458, !462, !464, !468, !472, !476, !478, !480, !484, !492, !496, !500, !504, !506, !512, !514, !520, !524, !528, !532, !536, !540, !544, !546, !548, !552, !556, !560, !562, !566, !570, !572, !574, !578, !582, !586, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !632, !633, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !663, !667, !672, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !708, !713, !717, !719, !721, !723, !725, !732, !736, !740, !744, !748, !752, !757, !761, !763, !767, !773, !777, !782, !784, !786, !790, !794, !798, !800, !802, !804, !806, !810, !812, !814, !818, !822, !826, !830, !834, !836, !838, !842, !846, !850, !854, !856, !858, !862, !866, !867, !868, !869, !870, !871, !876, !878, !880, !884, !886, !888, !890, !892, !894, !896, !898, !903, !907, !909, !911, !916, !918, !920, !922, !924, !926, !928, !931, !933, !935, !939, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1005, !1009, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1035, !1039, !1043, !1045, !1047, !1049, !1053, !1057, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1089, !1093, !1097, !1099, !1101, !1103, !1105, !1109, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1129, !1133, !1135, !1137, !1139, !1141, !1145, !1149, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1169, !1173, !1177, !1179, !1183, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1203, !1205, !1208, !1213, !1215, !1221, !1223, !1225, !1227, !1232, !1234, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/x86_64-linux-gnu/c++/7.0.1/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 735, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 124)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 125)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 127)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 476, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 128)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 480, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 131)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 485, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 134)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 105, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 135)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 108, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 136)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 111, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 137)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 715, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 702, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 138)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 429, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 139)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 749, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 140)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 504, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 141)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 444, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 142)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 525, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 143)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 736, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 144)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 751, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 145)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 427, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 147)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 823, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 148)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 834, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 149)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 826, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 151)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 725, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 154)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 510, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 157)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 335, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 158)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 441, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 159)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 337, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 160)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 125, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 161)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 144, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 162)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 148, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 163)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 677, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 165)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 837, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 166)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 830, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 194)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 82, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 78, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 80, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 81, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 200)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 518, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 204)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 740, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 210)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 757, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 221)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 118, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 222)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 170, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 223)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 175, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 225)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 133, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 226)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 136, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 234)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 236)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 238)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 239)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 207, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 240)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 242)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 243)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 244)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 245)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 246)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!283 = !DINamespace(name: "__exception_ptr", scope: !75, file: !282, line: 52)
!284 = !{!285, !286, !290, !293, !294, !299, !300, !304, !309, !313, !317, !320, !321, !324, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !281, file: !282, line: 81, baseType: !124, size: 64)
!286 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 83, type: !287, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !124}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !281, file: !282, line: 85, type: !291, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !289}
!293 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !281, file: !282, line: 86, type: !291, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !281, file: !282, line: 88, type: !295, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!124, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!299 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 96, type: !291, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 98, type: !301, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !289, !303}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!304 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 101, type: !305, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !75, file: !76, line: 235, baseType: !308)
!308 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!309 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 105, type: !310, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !289, !312}
!312 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !281, size: 64)
!313 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !281, file: !282, line: 118, type: !314, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !289, !303}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !281, file: !282, line: 122, type: !318, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!316, !289, !312}
!320 = !DISubprogram(name: "~exception_ptr", scope: !281, file: !282, line: 129, type: !291, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !281, file: !282, line: 132, type: !322, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !289, !316}
!324 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !281, file: !282, line: 144, type: !325, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !297}
!327 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !281, file: !282, line: 153, type: !329, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !297}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !75, file: !334, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/typeinfo", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 106, baseType: !342)
!341 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !341, line: 94, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 82, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !341, line: 84, baseType: !82, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !341, line: 93, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !341, line: 85, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !341, line: 88, baseType: !10, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !341, line: 92, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !355, line: 139)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !126, line: 132, baseType: !10)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !357, line: 141)
!357 = !DISubprogram(name: "btowc", scope: !341, file: !341, line: 356, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!355, !82}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !361, line: 142)
!361 = !DISubprogram(name: "fgetwc", scope: !341, file: !341, line: 748, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!355, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !366, line: 64, baseType: !367)
!366 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !366, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !369, line: 143)
!369 = !DISubprogram(name: "fgetws", scope: !341, file: !341, line: 777, type: !370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!174, !173, !82, !372}
!372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !374, line: 144)
!374 = !DISubprogram(name: "fputwc", scope: !341, file: !341, line: 762, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{!355, !175, !364}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !378, line: 145)
!378 = !DISubprogram(name: "fputws", scope: !341, file: !341, line: 784, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{!82, !220, !372}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !382, line: 146)
!382 = !DISubprogram(name: "fwide", scope: !341, file: !341, line: 590, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!82, !364, !82}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !386, line: 147)
!386 = !DISubprogram(name: "fwprintf", scope: !341, file: !341, line: 597, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!82, !372, !220, null}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !390, line: 148)
!390 = !DISubprogram(name: "fwscanf", scope: !341, file: !341, line: 638, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !392, line: 149)
!392 = !DISubprogram(name: "getwc", scope: !341, file: !341, line: 749, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !394, line: 150)
!394 = !DISubprogram(name: "getwchar", scope: !341, file: !341, line: 755, type: !395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DISubroutineType(types: !396)
!396 = !{!355}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !398, line: 151)
!398 = !DISubprogram(name: "mbrlen", scope: !341, file: !341, line: 379, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!125, !176, !125, !401}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !404, line: 152)
!404 = !DISubprogram(name: "mbrtowc", scope: !341, file: !341, line: 368, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!125, !173, !176, !125, !401}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !408, line: 153)
!408 = !DISubprogram(name: "mbsinit", scope: !341, file: !341, line: 364, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{!82, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !414, line: 154)
!414 = !DISubprogram(name: "mbsrtowcs", scope: !341, file: !341, line: 411, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{!125, !173, !417, !125, !401}
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !420, line: 155)
!420 = !DISubprogram(name: "putwc", scope: !341, file: !341, line: 763, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !422, line: 156)
!422 = !DISubprogram(name: "putwchar", scope: !341, file: !341, line: 769, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!355, !175}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !426, line: 158)
!426 = !DISubprogram(name: "swprintf", scope: !341, file: !341, line: 607, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{!82, !173, !125, !220, null}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !430, line: 160)
!430 = !DISubprogram(name: "swscanf", scope: !341, file: !341, line: 648, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{!82, !220, !220, null}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !434, line: 161)
!434 = !DISubprogram(name: "ungetwc", scope: !341, file: !341, line: 792, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!355, !355, !364}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !438, line: 162)
!438 = !DISubprogram(name: "vfwprintf", scope: !341, file: !341, line: 615, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!82, !372, !220, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !443, identifier: "_ZTS13__va_list_tag")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !2, baseType: !10, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !2, baseType: !10, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 128)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 164)
!449 = !DISubprogram(name: "vfwscanf", scope: !341, file: !341, line: 692, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !451, line: 167)
!451 = !DISubprogram(name: "vswprintf", scope: !341, file: !341, line: 628, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!82, !173, !125, !220, !441}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 170)
!455 = !DISubprogram(name: "vswscanf", scope: !341, file: !341, line: 704, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!82, !220, !220, !441}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !459, line: 172)
!459 = !DISubprogram(name: "vwprintf", scope: !341, file: !341, line: 623, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!82, !220, !441}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 174)
!463 = !DISubprogram(name: "vwscanf", scope: !341, file: !341, line: 700, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !465, line: 176)
!465 = !DISubprogram(name: "wcrtomb", scope: !341, file: !341, line: 373, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{!125, !219, !175, !401}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !469, line: 177)
!469 = !DISubprogram(name: "wcscat", scope: !341, file: !341, line: 157, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!174, !173, !220}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !473, line: 178)
!473 = !DISubprogram(name: "wcscmp", scope: !341, file: !341, line: 166, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !221, !221}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !477, line: 179)
!477 = !DISubprogram(name: "wcscoll", scope: !341, file: !341, line: 195, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !479, line: 180)
!479 = !DISubprogram(name: "wcscpy", scope: !341, file: !341, line: 147, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !481, line: 181)
!481 = !DISubprogram(name: "wcscspn", scope: !341, file: !341, line: 255, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{!125, !221, !221}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !485, line: 182)
!485 = !DISubprogram(name: "wcsftime", scope: !341, file: !341, line: 858, type: !486, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!125, !173, !125, !220, !488}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !341, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !493, line: 183)
!493 = !DISubprogram(name: "wcslen", scope: !341, file: !341, line: 290, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!125, !221}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !497, line: 184)
!497 = !DISubprogram(name: "wcsncat", scope: !341, file: !341, line: 161, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!174, !173, !220, !125}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !501, line: 185)
!501 = !DISubprogram(name: "wcsncmp", scope: !341, file: !341, line: 169, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{!82, !221, !221, !125}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !505, line: 186)
!505 = !DISubprogram(name: "wcsncpy", scope: !341, file: !341, line: 152, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !507, line: 187)
!507 = !DISubprogram(name: "wcsrtombs", scope: !341, file: !341, line: 417, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!125, !219, !510, !125, !401}
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !513, line: 188)
!513 = !DISubprogram(name: "wcsspn", scope: !341, file: !341, line: 259, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !515, line: 189)
!515 = !DISubprogram(name: "wcstod", scope: !341, file: !341, line: 453, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!108, !220, !518}
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 191)
!521 = !DISubprogram(name: "wcstof", scope: !341, file: !341, line: 460, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!262, !220, !518}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !525, line: 193)
!525 = !DISubprogram(name: "wcstok", scope: !341, file: !341, line: 285, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!174, !173, !220, !518}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !529, line: 194)
!529 = !DISubprogram(name: "wcstol", scope: !341, file: !341, line: 471, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!91, !220, !518, !82}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !533, line: 195)
!533 = !DISubprogram(name: "wcstoul", scope: !341, file: !341, line: 476, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!127, !220, !518, !82}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !537, line: 196)
!537 = !DISubprogram(name: "wcsxfrm", scope: !341, file: !341, line: 199, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!125, !173, !220, !125}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !541, line: 197)
!541 = !DISubprogram(name: "wctob", scope: !341, file: !341, line: 360, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!82, !355}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !545, line: 198)
!545 = !DISubprogram(name: "wmemcmp", scope: !341, file: !341, line: 328, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !547, line: 199)
!547 = !DISubprogram(name: "wmemcpy", scope: !341, file: !341, line: 332, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !549, line: 200)
!549 = !DISubprogram(name: "wmemmove", scope: !341, file: !341, line: 337, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!174, !174, !221, !125}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !553, line: 201)
!553 = !DISubprogram(name: "wmemset", scope: !341, file: !341, line: 341, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!174, !174, !175, !125}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !557, line: 202)
!557 = !DISubprogram(name: "wprintf", scope: !341, file: !341, line: 604, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!82, !220, null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !561, line: 203)
!561 = !DISubprogram(name: "wscanf", scope: !341, file: !341, line: 645, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !563, line: 204)
!563 = !DISubprogram(name: "wcschr", scope: !341, file: !341, line: 230, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!174, !221, !175}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !567, line: 205)
!567 = !DISubprogram(name: "wcspbrk", scope: !341, file: !341, line: 269, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!174, !221, !221}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !571, line: 206)
!571 = !DISubprogram(name: "wcsrchr", scope: !341, file: !341, line: 240, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !573, line: 207)
!573 = !DISubprogram(name: "wcsstr", scope: !341, file: !341, line: 280, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !575, line: 208)
!575 = !DISubprogram(name: "wmemchr", scope: !341, file: !341, line: 323, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!174, !221, !175, !125}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !579, line: 248)
!579 = !DISubprogram(name: "wcstold", scope: !341, file: !341, line: 462, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!267, !220, !518}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !583, line: 257)
!583 = !DISubprogram(name: "wcstoll", scope: !341, file: !341, line: 486, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!233, !220, !518, !82}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !587, line: 258)
!587 = !DISubprogram(name: "wcstoull", scope: !341, file: !341, line: 493, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!257, !220, !518, !82}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 264)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 265)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 266)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 280)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 283)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 286)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 289)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 293)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 294)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 295)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !601, line: 48)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !602, line: 194, baseType: !603)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!603 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !605, line: 49)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !602, line: 195, baseType: !606)
!606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !608, line: 50)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !602, line: 196, baseType: !82)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 51)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !602, line: 197, baseType: !91)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 53)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !601)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 54)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !605)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 55)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !608)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 56)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 58)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !601)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 59)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !605)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 60)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !608)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 61)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 63)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !610)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !635, line: 69)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 71)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 72)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 73)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 74)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !635)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 76)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 77)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 78)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 79)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !635)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 81)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 82)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !635)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !657, line: 44)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 45)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !661, line: 53)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !662, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!662 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !664, line: 54)
!664 = !DISubprogram(name: "setlocale", scope: !662, file: !662, line: 124, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!152, !82, !109}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !668, line: 55)
!668 = !DISubprogram(name: "localeconv", scope: !662, file: !662, line: 127, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !673, line: 64)
!673 = !DISubprogram(name: "isalnum", scope: !674, file: !674, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !676, line: 65)
!676 = !DISubprogram(name: "isalpha", scope: !674, file: !674, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 66)
!678 = !DISubprogram(name: "iscntrl", scope: !674, file: !674, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 67)
!680 = !DISubprogram(name: "isdigit", scope: !674, file: !674, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 68)
!682 = !DISubprogram(name: "isgraph", scope: !674, file: !674, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 69)
!684 = !DISubprogram(name: "islower", scope: !674, file: !674, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 70)
!686 = !DISubprogram(name: "isprint", scope: !674, file: !674, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 71)
!688 = !DISubprogram(name: "ispunct", scope: !674, file: !674, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 72)
!690 = !DISubprogram(name: "isspace", scope: !674, file: !674, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 73)
!692 = !DISubprogram(name: "isupper", scope: !674, file: !674, line: 119, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 74)
!694 = !DISubprogram(name: "isxdigit", scope: !674, file: !674, line: 120, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 75)
!696 = !DISubprogram(name: "tolower", scope: !674, file: !674, line: 124, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 76)
!698 = !DISubprogram(name: "toupper", scope: !674, file: !674, line: 127, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 87)
!700 = !DISubprogram(name: "isblank", scope: !674, file: !674, line: 136, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 98)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !366, line: 48, baseType: !367)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 99)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !366, line: 112, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !706, line: 25, baseType: !707)
!706 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !709, line: 101)
!709 = !DISubprogram(name: "clearerr", scope: !366, file: !366, line: 828, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !714, line: 102)
!714 = !DISubprogram(name: "fclose", scope: !366, file: !366, line: 239, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !712}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 103)
!718 = !DISubprogram(name: "feof", scope: !366, file: !366, line: 830, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !720, line: 104)
!720 = !DISubprogram(name: "ferror", scope: !366, file: !366, line: 832, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 105)
!722 = !DISubprogram(name: "fflush", scope: !366, file: !366, line: 244, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 106)
!724 = !DISubprogram(name: "fgetc", scope: !366, file: !366, line: 533, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 107)
!726 = !DISubprogram(name: "fgetpos", scope: !366, file: !366, line: 800, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!82, !729, !730}
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !733, line: 108)
!733 = !DISubprogram(name: "fgets", scope: !366, file: !366, line: 624, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!152, !219, !82, !729}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 109)
!737 = !DISubprogram(name: "fopen", scope: !366, file: !366, line: 274, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!712, !176, !176}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 110)
!741 = !DISubprogram(name: "fprintf", scope: !366, file: !366, line: 358, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!82, !729, !176, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 111)
!745 = !DISubprogram(name: "fputc", scope: !366, file: !366, line: 575, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !82, !712}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 112)
!749 = !DISubprogram(name: "fputs", scope: !366, file: !366, line: 691, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !176, !729}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 113)
!753 = !DISubprogram(name: "fread", scope: !366, file: !366, line: 711, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!125, !756, !125, !125, !729}
!756 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !758, line: 114)
!758 = !DISubprogram(name: "freopen", scope: !366, file: !366, line: 280, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!712, !176, !176, !729}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 115)
!762 = !DISubprogram(name: "fscanf", scope: !366, file: !366, line: 427, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !764, line: 116)
!764 = !DISubprogram(name: "fseek", scope: !366, file: !366, line: 751, type: !765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!82, !712, !91, !82}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 117)
!768 = !DISubprogram(name: "fsetpos", scope: !366, file: !366, line: 805, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !712, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !774, line: 118)
!774 = !DISubprogram(name: "ftell", scope: !366, file: !366, line: 756, type: !775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!91, !712}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 119)
!778 = !DISubprogram(name: "fwrite", scope: !366, file: !366, line: 717, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!125, !781, !125, !125, !729}
!781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !783, line: 120)
!783 = !DISubprogram(name: "getc", scope: !366, file: !366, line: 534, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !785, line: 121)
!785 = !DISubprogram(name: "getchar", scope: !366, file: !366, line: 540, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 124)
!787 = !DISubprogram(name: "gets", scope: !366, file: !366, line: 640, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!152, !152}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 126)
!791 = !DISubprogram(name: "perror", scope: !366, file: !366, line: 848, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !109}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 127)
!795 = !DISubprogram(name: "printf", scope: !366, file: !366, line: 364, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{!82, !176, null}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 128)
!799 = !DISubprogram(name: "putc", scope: !366, file: !366, line: 576, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !801, line: 129)
!801 = !DISubprogram(name: "putchar", scope: !366, file: !366, line: 582, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 130)
!803 = !DISubprogram(name: "puts", scope: !366, file: !366, line: 697, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 131)
!805 = !DISubprogram(name: "remove", scope: !366, file: !366, line: 180, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 132)
!807 = !DISubprogram(name: "rename", scope: !366, file: !366, line: 182, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!82, !109, !109}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 133)
!811 = !DISubprogram(name: "rewind", scope: !366, file: !366, line: 761, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !813, line: 134)
!813 = !DISubprogram(name: "scanf", scope: !366, file: !366, line: 433, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 135)
!815 = !DISubprogram(name: "setbuf", scope: !366, file: !366, line: 334, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !729, !219}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 136)
!819 = !DISubprogram(name: "setvbuf", scope: !366, file: !366, line: 338, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!82, !729, !219, !82, !125}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 137)
!823 = !DISubprogram(name: "sprintf", scope: !366, file: !366, line: 366, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !219, !176, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 138)
!827 = !DISubprogram(name: "sscanf", scope: !366, file: !366, line: 435, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !176, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 139)
!831 = !DISubprogram(name: "tmpfile", scope: !366, file: !366, line: 197, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!712}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 141)
!835 = !DISubprogram(name: "tmpnam", scope: !366, file: !366, line: 211, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !837, line: 143)
!837 = !DISubprogram(name: "ungetc", scope: !366, file: !366, line: 704, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 144)
!839 = !DISubprogram(name: "vfprintf", scope: !366, file: !366, line: 373, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!82, !729, !176, !441}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 145)
!843 = !DISubprogram(name: "vprintf", scope: !366, file: !366, line: 379, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !176, !441}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 146)
!847 = !DISubprogram(name: "vsprintf", scope: !366, file: !366, line: 381, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !219, !176, !441}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !851, line: 175)
!851 = !DISubprogram(name: "snprintf", scope: !366, file: !366, line: 388, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !125, !176, null}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 176)
!855 = !DISubprogram(name: "vfscanf", scope: !366, file: !366, line: 473, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !857, line: 177)
!857 = !DISubprogram(name: "vscanf", scope: !366, file: !366, line: 481, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 178)
!859 = !DISubprogram(name: "vsnprintf", scope: !366, file: !366, line: 392, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!82, !219, !125, !176, !441}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 179)
!863 = !DISubprogram(name: "vsscanf", scope: !366, file: !366, line: 485, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !176, !176, !441}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 185)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 186)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !857, line: 187)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 188)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 189)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !872, line: 83)
!872 = !DISubprogram(name: "acos", scope: !873, file: !873, line: 54, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!874 = !DISubroutineType(types: !875)
!875 = !{!108, !108}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !877, line: 102)
!877 = !DISubprogram(name: "asin", scope: !873, file: !873, line: 56, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !879, line: 121)
!879 = !DISubprogram(name: "atan", scope: !873, file: !873, line: 58, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 140)
!881 = !DISubprogram(name: "atan2", scope: !873, file: !873, line: 60, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!108, !108, !108}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 161)
!885 = !DISubprogram(name: "ceil", scope: !873, file: !873, line: 178, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !887, line: 180)
!887 = !DISubprogram(name: "cos", scope: !873, file: !873, line: 63, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 199)
!889 = !DISubprogram(name: "cosh", scope: !873, file: !873, line: 72, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 218)
!891 = !DISubprogram(name: "exp", scope: !873, file: !873, line: 100, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 237)
!893 = !DISubprogram(name: "fabs", scope: !873, file: !873, line: 181, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 256)
!895 = !DISubprogram(name: "floor", scope: !873, file: !873, line: 184, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 275)
!897 = !DISubprogram(name: "fmod", scope: !873, file: !873, line: 187, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 296)
!899 = !DISubprogram(name: "frexp", scope: !873, file: !873, line: 103, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{!108, !108, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !904, line: 315)
!904 = !DISubprogram(name: "ldexp", scope: !873, file: !873, line: 106, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{!108, !108, !82}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 334)
!908 = !DISubprogram(name: "log", scope: !873, file: !873, line: 109, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !910, line: 353)
!910 = !DISubprogram(name: "log10", scope: !873, file: !873, line: 112, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 372)
!912 = !DISubprogram(name: "modf", scope: !873, file: !873, line: 115, type: !913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!108, !108, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !917, line: 384)
!917 = !DISubprogram(name: "pow", scope: !873, file: !873, line: 153, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !919, line: 421)
!919 = !DISubprogram(name: "sin", scope: !873, file: !873, line: 65, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 440)
!921 = !DISubprogram(name: "sinh", scope: !873, file: !873, line: 74, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 459)
!923 = !DISubprogram(name: "sqrt", scope: !873, file: !873, line: 156, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 478)
!925 = !DISubprogram(name: "tan", scope: !873, file: !873, line: 67, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 497)
!927 = !DISubprogram(name: "tanh", scope: !873, file: !873, line: 76, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 1080)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !930, line: 29, baseType: !108)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !932, line: 1081)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !930, line: 28, baseType: !262)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !934, line: 1084)
!934 = !DISubprogram(name: "acosh", scope: !873, file: !873, line: 88, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1085)
!936 = !DISubprogram(name: "acoshf", scope: !873, file: !873, line: 88, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!262, !262}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1086)
!940 = !DISubprogram(name: "acoshl", scope: !873, file: !873, line: 88, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!267, !267}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1088)
!944 = !DISubprogram(name: "asinh", scope: !873, file: !873, line: 90, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !946, line: 1089)
!946 = !DISubprogram(name: "asinhf", scope: !873, file: !873, line: 90, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1090)
!948 = !DISubprogram(name: "asinhl", scope: !873, file: !873, line: 90, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1092)
!950 = !DISubprogram(name: "atanh", scope: !873, file: !873, line: 92, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1093)
!952 = !DISubprogram(name: "atanhf", scope: !873, file: !873, line: 92, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1094)
!954 = !DISubprogram(name: "atanhl", scope: !873, file: !873, line: 92, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1096)
!956 = !DISubprogram(name: "cbrt", scope: !873, file: !873, line: 169, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1097)
!958 = !DISubprogram(name: "cbrtf", scope: !873, file: !873, line: 169, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1098)
!960 = !DISubprogram(name: "cbrtl", scope: !873, file: !873, line: 169, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1100)
!962 = !DISubprogram(name: "copysign", scope: !873, file: !873, line: 221, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1101)
!964 = !DISubprogram(name: "copysignf", scope: !873, file: !873, line: 221, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubroutineType(types: !966)
!966 = !{!262, !262, !262}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1102)
!968 = !DISubprogram(name: "copysignl", scope: !873, file: !873, line: 221, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!267, !267, !267}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1104)
!972 = !DISubprogram(name: "erf", scope: !873, file: !873, line: 259, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !974, line: 1105)
!974 = !DISubprogram(name: "erff", scope: !873, file: !873, line: 259, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1106)
!976 = !DISubprogram(name: "erfl", scope: !873, file: !873, line: 259, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1108)
!978 = !DISubprogram(name: "erfc", scope: !873, file: !873, line: 260, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1109)
!980 = !DISubprogram(name: "erfcf", scope: !873, file: !873, line: 260, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1110)
!982 = !DISubprogram(name: "erfcl", scope: !873, file: !873, line: 260, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1112)
!984 = !DISubprogram(name: "exp2", scope: !873, file: !873, line: 141, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1113)
!986 = !DISubprogram(name: "exp2f", scope: !873, file: !873, line: 141, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1114)
!988 = !DISubprogram(name: "exp2l", scope: !873, file: !873, line: 141, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1116)
!990 = !DISubprogram(name: "expm1", scope: !873, file: !873, line: 128, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1117)
!992 = !DISubprogram(name: "expm1f", scope: !873, file: !873, line: 128, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1118)
!994 = !DISubprogram(name: "expm1l", scope: !873, file: !873, line: 128, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1120)
!996 = !DISubprogram(name: "fdim", scope: !873, file: !873, line: 354, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1121)
!998 = !DISubprogram(name: "fdimf", scope: !873, file: !873, line: 354, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1122)
!1000 = !DISubprogram(name: "fdiml", scope: !873, file: !873, line: 354, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1124)
!1002 = !DISubprogram(name: "fma", scope: !873, file: !873, line: 373, type: !1003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!108, !108, !108, !108}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1125)
!1006 = !DISubprogram(name: "fmaf", scope: !873, file: !873, line: 373, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!262, !262, !262, !262}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1126)
!1010 = !DISubprogram(name: "fmal", scope: !873, file: !873, line: 373, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!267, !267, !267, !267}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1128)
!1014 = !DISubprogram(name: "fmax", scope: !873, file: !873, line: 357, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1016, line: 1129)
!1016 = !DISubprogram(name: "fmaxf", scope: !873, file: !873, line: 357, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1130)
!1018 = !DISubprogram(name: "fmaxl", scope: !873, file: !873, line: 357, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1132)
!1020 = !DISubprogram(name: "fmin", scope: !873, file: !873, line: 360, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1133)
!1022 = !DISubprogram(name: "fminf", scope: !873, file: !873, line: 360, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1134)
!1024 = !DISubprogram(name: "fminl", scope: !873, file: !873, line: 360, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1136)
!1026 = !DISubprogram(name: "hypot", scope: !873, file: !873, line: 162, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1137)
!1028 = !DISubprogram(name: "hypotf", scope: !873, file: !873, line: 162, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1138)
!1030 = !DISubprogram(name: "hypotl", scope: !873, file: !873, line: 162, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1140)
!1032 = !DISubprogram(name: "ilogb", scope: !873, file: !873, line: 313, type: !1033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!82, !108}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1141)
!1036 = !DISubprogram(name: "ilogbf", scope: !873, file: !873, line: 313, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !262}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1142)
!1040 = !DISubprogram(name: "ilogbl", scope: !873, file: !873, line: 313, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !267}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1144)
!1044 = !DISubprogram(name: "lgamma", scope: !873, file: !873, line: 261, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1046, line: 1145)
!1046 = !DISubprogram(name: "lgammaf", scope: !873, file: !873, line: 261, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1146)
!1048 = !DISubprogram(name: "lgammal", scope: !873, file: !873, line: 261, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1149)
!1050 = !DISubprogram(name: "llrint", scope: !873, file: !873, line: 344, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!233, !108}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1150)
!1054 = !DISubprogram(name: "llrintf", scope: !873, file: !873, line: 344, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !262}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1151)
!1058 = !DISubprogram(name: "llrintl", scope: !873, file: !873, line: 344, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !267}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1153)
!1062 = !DISubprogram(name: "llround", scope: !873, file: !873, line: 350, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1064, line: 1154)
!1064 = !DISubprogram(name: "llroundf", scope: !873, file: !873, line: 350, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1155)
!1066 = !DISubprogram(name: "llroundl", scope: !873, file: !873, line: 350, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1158)
!1068 = !DISubprogram(name: "log1p", scope: !873, file: !873, line: 131, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1159)
!1070 = !DISubprogram(name: "log1pf", scope: !873, file: !873, line: 131, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1160)
!1072 = !DISubprogram(name: "log1pl", scope: !873, file: !873, line: 131, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1162)
!1074 = !DISubprogram(name: "log2", scope: !873, file: !873, line: 144, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1163)
!1076 = !DISubprogram(name: "log2f", scope: !873, file: !873, line: 144, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1164)
!1078 = !DISubprogram(name: "log2l", scope: !873, file: !873, line: 144, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1166)
!1080 = !DISubprogram(name: "logb", scope: !873, file: !873, line: 134, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1167)
!1082 = !DISubprogram(name: "logbf", scope: !873, file: !873, line: 134, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1168)
!1084 = !DISubprogram(name: "logbl", scope: !873, file: !873, line: 134, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1170)
!1086 = !DISubprogram(name: "lrint", scope: !873, file: !873, line: 342, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!91, !108}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1171)
!1090 = !DISubprogram(name: "lrintf", scope: !873, file: !873, line: 342, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !262}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1172)
!1094 = !DISubprogram(name: "lrintl", scope: !873, file: !873, line: 342, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !267}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1174)
!1098 = !DISubprogram(name: "lround", scope: !873, file: !873, line: 348, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1100, line: 1175)
!1100 = !DISubprogram(name: "lroundf", scope: !873, file: !873, line: 348, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1176)
!1102 = !DISubprogram(name: "lroundl", scope: !873, file: !873, line: 348, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1178)
!1104 = !DISubprogram(name: "nan", scope: !873, file: !873, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1179)
!1106 = !DISubprogram(name: "nanf", scope: !873, file: !873, line: 228, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!262, !109}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1180)
!1110 = !DISubprogram(name: "nanl", scope: !873, file: !873, line: 228, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!267, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1182)
!1114 = !DISubprogram(name: "nearbyint", scope: !873, file: !873, line: 322, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1116, line: 1183)
!1116 = !DISubprogram(name: "nearbyintf", scope: !873, file: !873, line: 322, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1184)
!1118 = !DISubprogram(name: "nearbyintl", scope: !873, file: !873, line: 322, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1186)
!1120 = !DISubprogram(name: "nextafter", scope: !873, file: !873, line: 292, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1187)
!1122 = !DISubprogram(name: "nextafterf", scope: !873, file: !873, line: 292, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1188)
!1124 = !DISubprogram(name: "nextafterl", scope: !873, file: !873, line: 292, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1190)
!1126 = !DISubprogram(name: "nexttoward", scope: !873, file: !873, line: 294, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!108, !108, !267}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1191)
!1130 = !DISubprogram(name: "nexttowardf", scope: !873, file: !873, line: 294, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!262, !262, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1192)
!1134 = !DISubprogram(name: "nexttowardl", scope: !873, file: !873, line: 294, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1136, line: 1194)
!1136 = !DISubprogram(name: "remainder", scope: !873, file: !873, line: 305, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1195)
!1138 = !DISubprogram(name: "remainderf", scope: !873, file: !873, line: 305, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1196)
!1140 = !DISubprogram(name: "remainderl", scope: !873, file: !873, line: 305, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1198)
!1142 = !DISubprogram(name: "remquo", scope: !873, file: !873, line: 335, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!108, !108, !108, !902}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1199)
!1146 = !DISubprogram(name: "remquof", scope: !873, file: !873, line: 335, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!262, !262, !262, !902}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1200)
!1150 = !DISubprogram(name: "remquol", scope: !873, file: !873, line: 335, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!267, !267, !267, !902}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1202)
!1154 = !DISubprogram(name: "rint", scope: !873, file: !873, line: 289, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1156, line: 1203)
!1156 = !DISubprogram(name: "rintf", scope: !873, file: !873, line: 289, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1204)
!1158 = !DISubprogram(name: "rintl", scope: !873, file: !873, line: 289, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1206)
!1160 = !DISubprogram(name: "round", scope: !873, file: !873, line: 326, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1207)
!1162 = !DISubprogram(name: "roundf", scope: !873, file: !873, line: 326, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1208)
!1164 = !DISubprogram(name: "roundl", scope: !873, file: !873, line: 326, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1210)
!1166 = !DISubprogram(name: "scalbln", scope: !873, file: !873, line: 318, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!108, !108, !91}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1211)
!1170 = !DISubprogram(name: "scalblnf", scope: !873, file: !873, line: 318, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!262, !262, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1212)
!1174 = !DISubprogram(name: "scalblnl", scope: !873, file: !873, line: 318, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!267, !267, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1214)
!1178 = !DISubprogram(name: "scalbn", scope: !873, file: !873, line: 309, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1180, line: 1215)
!1180 = !DISubprogram(name: "scalbnf", scope: !873, file: !873, line: 309, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!262, !262, !82}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1216)
!1184 = !DISubprogram(name: "scalbnl", scope: !873, file: !873, line: 309, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!267, !267, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1218)
!1188 = !DISubprogram(name: "tgamma", scope: !873, file: !873, line: 268, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1190, line: 1219)
!1190 = !DISubprogram(name: "tgammaf", scope: !873, file: !873, line: 268, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1220)
!1192 = !DISubprogram(name: "tgammal", scope: !873, file: !873, line: 268, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1222)
!1194 = !DISubprogram(name: "trunc", scope: !873, file: !873, line: 330, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1223)
!1196 = !DISubprogram(name: "truncf", scope: !873, file: !873, line: 330, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1224)
!1198 = !DISubprogram(name: "truncl", scope: !873, file: !873, line: 330, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 58)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1201, line: 94, baseType: !1202)
!1201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 59)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1201, line: 68, baseType: !29)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 62)
!1206 = !DISubprogram(name: "feclearexcept", scope: !1207, file: !1207, line: 64, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1207 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 63)
!1209 = !DISubprogram(name: "fegetexceptflag", scope: !1207, file: !1207, line: 68, type: !1210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!82, !1212, !82}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 64)
!1214 = !DISubprogram(name: "feraiseexcept", scope: !1207, file: !1207, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 65)
!1216 = !DISubprogram(name: "fesetexceptflag", scope: !1207, file: !1207, line: 75, type: !1217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!82, !1219, !82}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 66)
!1222 = !DISubprogram(name: "fetestexcept", scope: !1207, file: !1207, line: 79, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 68)
!1224 = !DISubprogram(name: "fegetround", scope: !1207, file: !1207, line: 85, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1226 = !DISubprogram(name: "fesetround", scope: !1207, file: !1207, line: 88, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1228 = !DISubprogram(name: "fegetenv", scope: !1207, file: !1207, line: 95, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!82, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 72)
!1233 = !DISubprogram(name: "feholdexcept", scope: !1207, file: !1207, line: 100, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 73)
!1235 = !DISubprogram(name: "fesetenv", scope: !1207, file: !1207, line: 104, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!82, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 74)
!1241 = !DISubprogram(name: "feupdateenv", scope: !1207, file: !1207, line: 109, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 61)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 62)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 65)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 66)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 67)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 68)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 69)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 71)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 72)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 74)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 75)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 76)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 77)
!1255 = !{i32 2, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1258, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !1263, !1946, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1262, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1262 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1265, identifier: "_ZTS5State")
!1265 = !{!1266, !1278, !1487, !1507, !1537, !1562, !1591, !1628, !1638, !1699, !1724, !1748, !1928}
!1266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1264, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1268, line: 21, size: 128, elements: !1269, identifier: "_ZTS9ArchState")
!1268 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1267, file: !1268, line: 23, baseType: !4, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1267, file: !1268, line: 25, baseType: !8, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 31, baseType: !1273, size: 64, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 31, size: 64, elements: !1274, identifier: "_ZTSN9ArchStateUt_E")
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1273, file: !1268, line: 32, baseType: !635, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1273, file: !1268, line: 33, baseType: !635, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1273, file: !1268, line: 34, baseType: !8, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !27, line: 747, baseType: !1279, size: 16384, offset: 128)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 16384, elements: !1365)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1281, identifier: "_ZTS9VectorReg")
!1281 = !{!1282, !1357, !1422}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1280, file: !27, line: 637, baseType: !1283, size: 128, align: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1262, line: 317, size: 128, elements: !1284, identifier: "_ZTS8vec128_t")
!1284 = !{!1285, !1294, !1301, !1308, !1313, !1320, !1325, !1330, !1335, !1340, !1345, !1350}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1283, file: !1262, line: 321, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1262, line: 205, size: 128, elements: !1287, identifier: "_ZTS11uint128v1_t")
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1286, file: !1262, line: 205, baseType: !1289, size: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !1292)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1262, line: 46, baseType: !1291)
!1291 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1283, file: !1262, line: 323, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1262, line: 182, size: 128, elements: !1296, identifier: "_ZTS10uint8v16_t")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1295, file: !1262, line: 182, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1283, file: !1262, line: 324, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1262, line: 189, size: 128, elements: !1303, identifier: "_ZTS10uint16v8_t")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1302, file: !1262, line: 189, baseType: !1305, size: 128)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1283, file: !1262, line: 325, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1262, line: 195, size: 128, elements: !1310, identifier: "_ZTS10uint32v4_t")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1309, file: !1262, line: 195, baseType: !1312, size: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !352)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1283, file: !1262, line: 326, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1262, line: 200, size: 128, elements: !1315, identifier: "_ZTS10uint64v2_t")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1314, file: !1262, line: 200, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 2)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1283, file: !1262, line: 327, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1262, line: 242, size: 128, elements: !1322, identifier: "_ZTS11float32v4_t")
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1321, file: !1262, line: 242, baseType: !1324, size: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1283, file: !1262, line: 328, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1262, line: 247, size: 128, elements: !1327, identifier: "_ZTS11float64v2_t")
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1326, file: !1262, line: 247, baseType: !1329, size: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1318)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1283, file: !1262, line: 330, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1262, line: 213, size: 128, elements: !1332, identifier: "_ZTS9int8v16_t")
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1331, file: !1262, line: 213, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !1299)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1283, file: !1262, line: 331, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1262, line: 220, size: 128, elements: !1337, identifier: "_ZTS9int16v8_t")
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1336, file: !1262, line: 220, baseType: !1339, size: 128)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !1306)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1283, file: !1262, line: 332, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1262, line: 226, size: 128, elements: !1342, identifier: "_ZTS9int32v4_t")
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1341, file: !1262, line: 226, baseType: !1344, size: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1283, file: !1262, line: 333, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1262, line: 231, size: 128, elements: !1347, identifier: "_ZTS9int64v2_t")
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1346, file: !1262, line: 231, baseType: !1349, size: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !1318)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1283, file: !1262, line: 334, baseType: !1351, size: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1262, line: 236, size: 128, elements: !1352, identifier: "_ZTS10int128v1_t")
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1351, file: !1262, line: 236, baseType: !1354, size: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !1292)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1262, line: 47, baseType: !1356)
!1356 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1280, file: !27, line: 638, baseType: !1358, size: 256, align: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1262, line: 340, size: 256, elements: !1359, identifier: "_ZTS8vec256_t")
!1359 = !{!1360, !1367, !1372, !1377, !1382, !1387, !1392, !1397, !1402, !1407, !1412, !1417}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1358, file: !1262, line: 341, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1262, line: 183, size: 256, elements: !1362, identifier: "_ZTS10uint8v32_t")
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1361, file: !1262, line: 183, baseType: !1364, size: 256)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1358, file: !1262, line: 342, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1262, line: 190, size: 256, elements: !1369, identifier: "_ZTS11uint16v16_t")
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1368, file: !1262, line: 190, baseType: !1371, size: 256)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1299)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1358, file: !1262, line: 343, baseType: !1373, size: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1262, line: 196, size: 256, elements: !1374, identifier: "_ZTS10uint32v8_t")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1373, file: !1262, line: 196, baseType: !1376, size: 256)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1306)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1358, file: !1262, line: 344, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1262, line: 201, size: 256, elements: !1379, identifier: "_ZTS10uint64v4_t")
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1378, file: !1262, line: 201, baseType: !1381, size: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1358, file: !1262, line: 345, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1262, line: 206, size: 256, elements: !1384, identifier: "_ZTS11uint128v2_t")
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1383, file: !1262, line: 206, baseType: !1386, size: 256)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !1318)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1358, file: !1262, line: 346, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1262, line: 243, size: 256, elements: !1389, identifier: "_ZTS11float32v8_t")
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1388, file: !1262, line: 243, baseType: !1391, size: 256)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1306)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1358, file: !1262, line: 347, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1262, line: 248, size: 256, elements: !1394, identifier: "_ZTS11float64v4_t")
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1393, file: !1262, line: 248, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1358, file: !1262, line: 349, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1262, line: 214, size: 256, elements: !1399, identifier: "_ZTS9int8v32_t")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1398, file: !1262, line: 214, baseType: !1401, size: 256)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !1365)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1358, file: !1262, line: 350, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1262, line: 221, size: 256, elements: !1404, identifier: "_ZTS10int16v16_t")
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1403, file: !1262, line: 221, baseType: !1406, size: 256)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !1299)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1358, file: !1262, line: 351, baseType: !1408, size: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1262, line: 227, size: 256, elements: !1409, identifier: "_ZTS9int32v8_t")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1408, file: !1262, line: 227, baseType: !1411, size: 256)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !1306)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1358, file: !1262, line: 352, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1262, line: 232, size: 256, elements: !1414, identifier: "_ZTS9int64v4_t")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1413, file: !1262, line: 232, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !352)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1358, file: !1262, line: 353, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1262, line: 237, size: 256, elements: !1419, identifier: "_ZTS10int128v2_t")
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1418, file: !1262, line: 237, baseType: !1421, size: 256)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1318)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1280, file: !27, line: 639, baseType: !1423, size: 512, align: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1262, line: 359, size: 512, elements: !1424, identifier: "_ZTS8vec512_t")
!1424 = !{!1425, !1432, !1437, !1442, !1447, !1452, !1457, !1462, !1467, !1472, !1477, !1482}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1423, file: !1262, line: 360, baseType: !1426, size: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1262, line: 184, size: 512, elements: !1427, identifier: "_ZTS10uint8v64_t")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1426, file: !1262, line: 184, baseType: !1429, size: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1423, file: !1262, line: 361, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1262, line: 191, size: 512, elements: !1434, identifier: "_ZTS11uint16v32_t")
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1433, file: !1262, line: 191, baseType: !1436, size: 512)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1365)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1423, file: !1262, line: 362, baseType: !1438, size: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1262, line: 197, size: 512, elements: !1439, identifier: "_ZTS11uint32v16_t")
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1438, file: !1262, line: 197, baseType: !1441, size: 512)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1299)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1423, file: !1262, line: 363, baseType: !1443, size: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1262, line: 202, size: 512, elements: !1444, identifier: "_ZTS10uint64v8_t")
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1443, file: !1262, line: 202, baseType: !1446, size: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 512, elements: !1306)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1423, file: !1262, line: 364, baseType: !1448, size: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1262, line: 207, size: 512, elements: !1449, identifier: "_ZTS11uint128v4_t")
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1448, file: !1262, line: 207, baseType: !1451, size: 512)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 512, elements: !352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1423, file: !1262, line: 365, baseType: !1453, size: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1262, line: 244, size: 512, elements: !1454, identifier: "_ZTS12float32v16_t")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1453, file: !1262, line: 244, baseType: !1456, size: 512)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1299)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1423, file: !1262, line: 366, baseType: !1458, size: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1262, line: 249, size: 512, elements: !1459, identifier: "_ZTS11float64v8_t")
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1458, file: !1262, line: 249, baseType: !1461, size: 512)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1306)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1423, file: !1262, line: 368, baseType: !1463, size: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1262, line: 215, size: 512, elements: !1464, identifier: "_ZTS9int8v64_t")
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1463, file: !1262, line: 215, baseType: !1466, size: 512)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 512, elements: !1430)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1423, file: !1262, line: 369, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1262, line: 222, size: 512, elements: !1469, identifier: "_ZTS10int16v32_t")
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1468, file: !1262, line: 222, baseType: !1471, size: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1365)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1423, file: !1262, line: 370, baseType: !1473, size: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1262, line: 228, size: 512, elements: !1474, identifier: "_ZTS10int32v16_t")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1473, file: !1262, line: 228, baseType: !1476, size: 512)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1299)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1423, file: !1262, line: 371, baseType: !1478, size: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1262, line: 233, size: 512, elements: !1479, identifier: "_ZTS9int64v8_t")
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1478, file: !1262, line: 233, baseType: !1481, size: 512)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1306)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1423, file: !1262, line: 372, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1262, line: 238, size: 512, elements: !1484, identifier: "_ZTS10int128v4_t")
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1483, file: !1262, line: 238, baseType: !1486, size: 512)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 512, elements: !352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1264, file: !27, line: 751, baseType: !1488, size: 128, align: 64, offset: 16512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1489, identifier: "_ZTS10ArithFlags")
!1489 = !{!1490, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1488, file: !27, line: 404, baseType: !1491, size: 8)
!1491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1488, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1488, file: !27, line: 406, baseType: !1491, size: 8, offset: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1488, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1488, file: !27, line: 408, baseType: !1491, size: 8, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1488, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1488, file: !27, line: 410, baseType: !1491, size: 8, offset: 48)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1488, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1488, file: !27, line: 412, baseType: !1491, size: 8, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1488, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1488, file: !27, line: 414, baseType: !1491, size: 8, offset: 80)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1488, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1488, file: !27, line: 416, baseType: !1491, size: 8, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1488, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1488, file: !27, line: 418, baseType: !1491, size: 8, offset: 112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1488, file: !27, line: 419, baseType: !1491, size: 8, offset: 120)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1264, file: !27, line: 752, baseType: !1508, size: 64, align: 64, offset: 16640)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1509, identifier: "_ZTS5Flags")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1508, file: !27, line: 367, baseType: !635, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !27, line: 368, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !27, line: 368, size: 64, elements: !1513, identifier: "_ZTSN5FlagsUt_E")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1512, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1512, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1512, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1512, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1512, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1512, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1512, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1512, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1512, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1512, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1512, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1512, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1512, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1512, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1512, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1512, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1512, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1512, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1512, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1512, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1512, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1512, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1264, file: !27, line: 753, baseType: !1538, size: 192, align: 64, offset: 16704)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1539, identifier: "_ZTS8Segments")
!1539 = !{!1540, !1542, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1538, file: !27, line: 452, baseType: !1541, size: 16)
!1541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1538, file: !27, line: 453, baseType: !1543, size: 16, offset: 16)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1544, identifier: "_ZTS15SegmentSelector")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1543, file: !27, line: 77, baseType: !28, size: 16)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 78, baseType: !1547, size: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 78, size: 16, elements: !1548, identifier: "_ZTSN15SegmentSelectorUt_E")
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1547, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1547, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1547, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1538, file: !27, line: 454, baseType: !1541, size: 16, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1538, file: !27, line: 455, baseType: !1543, size: 16, offset: 48)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1538, file: !27, line: 456, baseType: !1541, size: 16, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1538, file: !27, line: 457, baseType: !1543, size: 16, offset: 80)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1538, file: !27, line: 458, baseType: !1541, size: 16, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1538, file: !27, line: 459, baseType: !1543, size: 16, offset: 112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1538, file: !27, line: 460, baseType: !1541, size: 16, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1538, file: !27, line: 461, baseType: !1543, size: 16, offset: 144)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1538, file: !27, line: 462, baseType: !1541, size: 16, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1538, file: !27, line: 463, baseType: !1543, size: 16, offset: 176)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1264, file: !27, line: 754, baseType: !1563, size: 768, align: 64, offset: 16896)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1564, identifier: "_ZTS12AddressSpace")
!1564 = !{!1565, !1567, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1563, file: !27, line: 655, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !635)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1563, file: !27, line: 656, baseType: !1568, size: 64, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1569, identifier: "_ZTS3Reg")
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !27, line: 611, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !27, line: 611, size: 64, elements: !1572, identifier: "_ZTSN3RegUt_E")
!1572 = !{!1573, !1578, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1571, file: !27, line: 615, baseType: !1574, size: 16, align: 8)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 612, size: 16, elements: !1575, identifier: "_ZTSN3RegUt_Ut_E")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1574, file: !27, line: 613, baseType: !62, size: 8)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1574, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1571, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1571, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1571, file: !27, line: 618, baseType: !635, size: 64, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1563, file: !27, line: 657, baseType: !1566, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1563, file: !27, line: 658, baseType: !1568, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1563, file: !27, line: 659, baseType: !1566, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1563, file: !27, line: 660, baseType: !1568, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1563, file: !27, line: 661, baseType: !1566, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1563, file: !27, line: 662, baseType: !1568, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1563, file: !27, line: 663, baseType: !1566, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1563, file: !27, line: 664, baseType: !1568, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1563, file: !27, line: 665, baseType: !1566, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1563, file: !27, line: 666, baseType: !1568, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1264, file: !27, line: 755, baseType: !1592, size: 2176, align: 64, offset: 17664)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1593, identifier: "_ZTS3GPR")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1592, file: !27, line: 679, baseType: !1566, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1592, file: !27, line: 680, baseType: !1568, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1592, file: !27, line: 681, baseType: !1566, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1592, file: !27, line: 682, baseType: !1568, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1592, file: !27, line: 683, baseType: !1566, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1592, file: !27, line: 684, baseType: !1568, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1592, file: !27, line: 685, baseType: !1566, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1592, file: !27, line: 686, baseType: !1568, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1592, file: !27, line: 687, baseType: !1566, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1592, file: !27, line: 688, baseType: !1568, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1592, file: !27, line: 689, baseType: !1566, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1592, file: !27, line: 690, baseType: !1568, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1592, file: !27, line: 691, baseType: !1566, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1592, file: !27, line: 692, baseType: !1568, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1592, file: !27, line: 693, baseType: !1566, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1592, file: !27, line: 694, baseType: !1568, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1592, file: !27, line: 695, baseType: !1566, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1592, file: !27, line: 696, baseType: !1568, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1592, file: !27, line: 697, baseType: !1566, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1592, file: !27, line: 698, baseType: !1568, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1592, file: !27, line: 699, baseType: !1566, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1592, file: !27, line: 700, baseType: !1568, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1592, file: !27, line: 701, baseType: !1566, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1592, file: !27, line: 702, baseType: !1568, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1592, file: !27, line: 703, baseType: !1566, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1592, file: !27, line: 704, baseType: !1568, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1592, file: !27, line: 705, baseType: !1566, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1592, file: !27, line: 706, baseType: !1568, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1592, file: !27, line: 707, baseType: !1566, size: 64, offset: 1792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1592, file: !27, line: 708, baseType: !1568, size: 64, offset: 1856)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1592, file: !27, line: 709, baseType: !1566, size: 64, offset: 1920)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1592, file: !27, line: 710, baseType: !1568, size: 64, offset: 1984)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1592, file: !27, line: 711, baseType: !1566, size: 64, offset: 2048)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1592, file: !27, line: 714, baseType: !1568, size: 64, offset: 2112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1264, file: !27, line: 756, baseType: !1629, size: 1024, align: 64, offset: 19840)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1630, identifier: "_ZTS8X87Stack")
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1629, file: !27, line: 723, baseType: !1632, size: 1024)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 1024, elements: !1306)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !27, line: 720, size: 128, align: 64, elements: !1634, identifier: "_ZTSN8X87StackUt_E")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1633, file: !27, line: 721, baseType: !635, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1633, file: !27, line: 722, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1262, line: 61, baseType: !108)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1264, file: !27, line: 757, baseType: !1639, size: 1024, align: 64, offset: 20864)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1640, identifier: "_ZTS3MMX")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1639, file: !27, line: 733, baseType: !1642, size: 1024)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 1024, elements: !1306)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !27, line: 730, size: 128, align: 64, elements: !1644, identifier: "_ZTSN3MMXUt_E")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1643, file: !27, line: 731, baseType: !635, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1643, file: !27, line: 732, baseType: !1647, size: 64, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1262, line: 294, size: 64, elements: !1648, identifier: "_ZTS7vec64_t")
!1648 = !{!1649, !1654, !1659, !1664, !1669, !1674, !1679, !1684, !1689, !1694}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1647, file: !1262, line: 298, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1262, line: 199, size: 64, elements: !1651, identifier: "_ZTS10uint64v1_t")
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1650, file: !1262, line: 199, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !1292)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1647, file: !1262, line: 300, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1262, line: 181, size: 64, elements: !1656, identifier: "_ZTS9uint8v8_t")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1655, file: !1262, line: 181, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1306)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1647, file: !1262, line: 301, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1262, line: 188, size: 64, elements: !1661, identifier: "_ZTS10uint16v4_t")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1660, file: !1262, line: 188, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1647, file: !1262, line: 302, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1262, line: 194, size: 64, elements: !1666, identifier: "_ZTS10uint32v2_t")
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1665, file: !1262, line: 194, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1318)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1647, file: !1262, line: 303, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1262, line: 241, size: 64, elements: !1671, identifier: "_ZTS11float32v2_t")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1670, file: !1262, line: 241, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1318)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1647, file: !1262, line: 304, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1262, line: 246, size: 64, elements: !1676, identifier: "_ZTS11float64v1_t")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1675, file: !1262, line: 246, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1292)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1647, file: !1262, line: 306, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1262, line: 212, size: 64, elements: !1681, identifier: "_ZTS8int8v8_t")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1680, file: !1262, line: 212, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !1306)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1647, file: !1262, line: 307, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1262, line: 219, size: 64, elements: !1686, identifier: "_ZTS9int16v4_t")
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1685, file: !1262, line: 219, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !352)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1647, file: !1262, line: 308, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1262, line: 225, size: 64, elements: !1691, identifier: "_ZTS9int32v2_t")
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1690, file: !1262, line: 225, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !1318)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1647, file: !1262, line: 309, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1262, line: 230, size: 64, elements: !1696, identifier: "_ZTS9int64v1_t")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1695, file: !1262, line: 230, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1292)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1264, file: !27, line: 758, baseType: !1700, size: 192, offset: 21888)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1701, identifier: "_ZTS14FPUStatusFlags")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1700, file: !27, line: 333, baseType: !62, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1700, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1700, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1700, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1700, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1700, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1700, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1700, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1700, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1700, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1700, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1700, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1700, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1700, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1700, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1700, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1700, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1700, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1700, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1700, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1700, file: !27, line: 360, baseType: !1723, size: 32, offset: 160)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1264, file: !27, line: 759, baseType: !1725, size: 64, offset: 22080)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1726, identifier: "_ZTS4XCR0")
!1726 = !{!1727, !1728, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1725, file: !27, line: 425, baseType: !635, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 427, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 427, size: 64, elements: !1730, identifier: "_ZTSN4XCR0Ut_E")
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1729, file: !27, line: 428, baseType: !8, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1729, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 433, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 433, size: 64, elements: !1735, identifier: "_ZTSN4XCR0Ut0_E")
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1734, file: !27, line: 434, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1734, file: !27, line: 435, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1734, file: !27, line: 436, baseType: !635, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1734, file: !27, line: 437, baseType: !635, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1734, file: !27, line: 438, baseType: !635, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1734, file: !27, line: 439, baseType: !635, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1734, file: !27, line: 440, baseType: !635, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1734, file: !27, line: 441, baseType: !635, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1734, file: !27, line: 442, baseType: !635, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1734, file: !27, line: 443, baseType: !635, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1734, file: !27, line: 444, baseType: !635, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1734, file: !27, line: 445, baseType: !635, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1264, file: !27, line: 760, baseType: !1749, size: 4096, align: 128, offset: 22144)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1750, identifier: "_ZTS3FPU")
!1750 = !{!1751, !1847, !1910}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1749, file: !27, line: 317, baseType: !1752, size: 4096)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 315, size: 4096, elements: !1753, identifier: "_ZTSN3FPUUt_E")
!1753 = !{!1754, !1843}
!1754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1752, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1756, identifier: "_ZTS8FpuFSAVE")
!1756 = !{!1757, !1775, !1776, !1797, !1798, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1755, file: !27, line: 264, baseType: !1758, size: 16)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1759, identifier: "_ZTS14FPUControlWord")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1758, file: !27, line: 143, baseType: !28, size: 16)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !27, line: 144, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !27, line: 144, size: 16, elements: !1763, identifier: "_ZTSN14FPUControlWordUt_E")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1762, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1762, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1762, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1762, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1762, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1762, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1762, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1762, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1762, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1762, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1762, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1755, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1755, file: !27, line: 266, baseType: !1777, size: 16, offset: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1778, identifier: "_ZTS13FPUStatusWord")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1777, file: !27, line: 101, baseType: !28, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !27, line: 102, baseType: !1781, size: 16)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !27, line: 102, size: 16, elements: !1782, identifier: "_ZTSN13FPUStatusWordUt_E")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1781, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1781, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1781, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1781, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1781, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1781, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1781, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1781, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1781, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1781, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1781, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1781, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1781, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1781, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1755, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1755, file: !27, line: 268, baseType: !1799, size: 16, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1800, identifier: "_ZTS10FPUTagWord")
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1799, file: !27, line: 228, baseType: !28, size: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !27, line: 229, baseType: !1803, size: 16)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !27, line: 229, size: 16, elements: !1804, identifier: "_ZTSN10FPUTagWordUt_E")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1803, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1803, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1803, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1803, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1803, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1803, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1803, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1803, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1755, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1755, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1755, file: !27, line: 271, baseType: !1543, size: 16, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1755, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1755, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1755, file: !27, line: 274, baseType: !1543, size: 16, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1755, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1755, file: !27, line: 276, baseType: !1821, size: 1024, offset: 224)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 1024, elements: !1306)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1823, identifier: "_ZTS12FPUStackElem")
!1823 = !{!1824, !1839}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !27, line: 163, baseType: !1825, size: 80)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !27, line: 163, size: 80, elements: !1826, identifier: "_ZTSN12FPUStackElemUt_E")
!1826 = !{!1827, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1825, file: !27, line: 164, baseType: !1828, size: 80)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1262, line: 65, size: 80, elements: !1829, identifier: "_ZTS9float80_t")
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1262, line: 66, baseType: !1831, size: 80)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 10)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !27, line: 165, baseType: !1835, size: 80)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !27, line: 165, size: 80, elements: !1836, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1835, file: !27, line: 166, baseType: !635, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1835, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1822, file: !27, line: 170, baseType: !1840, size: 48, offset: 80)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 6)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1752, file: !27, line: 316, baseType: !1844, size: 2848, offset: 1248)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 356)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1749, file: !27, line: 321, baseType: !1848, size: 4096)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 319, size: 4096, elements: !1849, identifier: "_ZTSN3FPUUt0_E")
!1849 = !{!1850, !1906}
!1850 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1848, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1852, identifier: "_ZTS9FpuFXSAVE")
!1852 = !{!1853, !1854, !1855, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1902, !1903, !1904}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1851, file: !27, line: 281, baseType: !1758, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1851, file: !27, line: 282, baseType: !1777, size: 16, offset: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1851, file: !27, line: 283, baseType: !1856, size: 8, offset: 32)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1857, identifier: "_ZTS18FPUAbridgedTagWord")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1856, file: !27, line: 246, baseType: !62, size: 8)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !27, line: 247, baseType: !1860, size: 8)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !27, line: 247, size: 8, elements: !1861, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1860, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1860, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1860, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1860, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1860, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1860, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1860, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1860, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1851, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1851, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1851, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1851, file: !27, line: 287, baseType: !1543, size: 16, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1851, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1851, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1851, file: !27, line: 290, baseType: !1543, size: 16, offset: 160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1851, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1851, file: !27, line: 292, baseType: !1879, size: 32, offset: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1880, identifier: "_ZTS16FPUControlStatus")
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1879, file: !27, line: 189, baseType: !8, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !27, line: 190, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !27, line: 190, size: 32, elements: !1884, identifier: "_ZTSN16FPUControlStatusUt_E")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1883, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1883, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1883, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1883, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1883, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1883, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1883, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1883, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1883, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1883, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1883, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1883, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1883, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1883, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1883, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1883, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1851, file: !27, line: 293, baseType: !1879, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1851, file: !27, line: 294, baseType: !1821, size: 1024, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1851, file: !27, line: 295, baseType: !1905, size: 2048, offset: 1280)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 2048, elements: !1299)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1848, file: !27, line: 320, baseType: !1907, size: 768, offset: 3328)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1749, file: !27, line: 325, baseType: !1911, size: 4096)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 323, size: 4096, elements: !1912, identifier: "_ZTSN3FPUUt1_E")
!1912 = !{!1913, !1927}
!1913 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1911, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1915, identifier: "_ZTS11FpuFXSAVE64")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1914, file: !27, line: 300, baseType: !1758, size: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1914, file: !27, line: 301, baseType: !1777, size: 16, offset: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1914, file: !27, line: 302, baseType: !1856, size: 8, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1914, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1914, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1914, file: !27, line: 305, baseType: !635, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1914, file: !27, line: 306, baseType: !635, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1914, file: !27, line: 307, baseType: !1879, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1914, file: !27, line: 308, baseType: !1879, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1914, file: !27, line: 309, baseType: !1821, size: 1024, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1914, file: !27, line: 310, baseType: !1905, size: 2048, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1911, file: !27, line: 324, baseType: !1907, size: 768, offset: 3328)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1264, file: !27, line: 761, baseType: !1929, size: 768, align: 64, offset: 26240)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1930, identifier: "_ZTS13SegmentCaches")
!1930 = !{!1931, !1941, !1942, !1943, !1944, !1945}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1929, file: !27, line: 469, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1933, identifier: "_ZTS13SegmentShadow")
!1933 = !{!1934, !1939, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1932, file: !27, line: 92, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !27, line: 89, size: 64, elements: !1936, identifier: "_ZTSN13SegmentShadowUt_E")
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1935, file: !27, line: 90, baseType: !8, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1935, file: !27, line: 91, baseType: !635, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1932, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1929, file: !27, line: 470, baseType: !1932, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1929, file: !27, line: 471, baseType: !1932, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1929, file: !27, line: 472, baseType: !1932, size: 128, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1929, file: !27, line: 473, baseType: !1932, size: 128, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1929, file: !27, line: 474, baseType: !1932, size: 128, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1262, line: 42, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1262, line: 41, baseType: !635)
!1948 = !DILocation(line: 54, column: 8, scope: !1257)
!1949 = !DILocation(line: 55, column: 10, scope: !1257)
!1950 = !DILocation(line: 56, column: 10, scope: !1257)
!1951 = !DILocation(line: 57, column: 10, scope: !1257)
!1952 = !DILocation(line: 58, column: 10, scope: !1257)
!1953 = !DILocation(line: 61, column: 9, scope: !1257)
!1954 = !DILocation(line: 62, column: 9, scope: !1257)
!1955 = !DILocation(line: 63, column: 20, scope: !1257)
!1956 = !DILocation(line: 63, column: 24, scope: !1257)
!1957 = !DILocation(line: 63, column: 28, scope: !1257)
!1958 = !DILocation(line: 69, column: 6, scope: !1257)
!1959 = !DILocation(line: 74, column: 20, scope: !1257)
!1960 = !DILocation(line: 74, column: 24, scope: !1257)
!1961 = !DILocation(line: 74, column: 28, scope: !1257)
!1962 = !DILocation(line: 74, column: 33, scope: !1257)
!1963 = !DILocation(line: 75, column: 20, scope: !1257)
!1964 = !DILocation(line: 75, column: 24, scope: !1257)
!1965 = !DILocation(line: 75, column: 28, scope: !1257)
!1966 = !DILocation(line: 75, column: 33, scope: !1257)
!1967 = !DILocation(line: 76, column: 20, scope: !1257)
!1968 = !DILocation(line: 76, column: 24, scope: !1257)
!1969 = !DILocation(line: 76, column: 28, scope: !1257)
!1970 = !DILocation(line: 76, column: 33, scope: !1257)
!1971 = !DILocation(line: 77, column: 20, scope: !1257)
!1972 = !DILocation(line: 77, column: 24, scope: !1257)
!1973 = !DILocation(line: 77, column: 28, scope: !1257)
!1974 = !DILocation(line: 77, column: 33, scope: !1257)
!1975 = !DILocation(line: 78, column: 20, scope: !1257)
!1976 = !DILocation(line: 78, column: 24, scope: !1257)
!1977 = !DILocation(line: 78, column: 28, scope: !1257)
!1978 = !DILocation(line: 78, column: 33, scope: !1257)
!1979 = !DILocation(line: 79, column: 20, scope: !1257)
!1980 = !DILocation(line: 79, column: 24, scope: !1257)
!1981 = !DILocation(line: 79, column: 28, scope: !1257)
!1982 = !DILocation(line: 79, column: 33, scope: !1257)
!1983 = !DILocation(line: 80, column: 20, scope: !1257)
!1984 = !DILocation(line: 80, column: 24, scope: !1257)
!1985 = !DILocation(line: 80, column: 28, scope: !1257)
!1986 = !DILocation(line: 80, column: 33, scope: !1257)
!1987 = !DILocation(line: 81, column: 20, scope: !1257)
!1988 = !DILocation(line: 81, column: 24, scope: !1257)
!1989 = !DILocation(line: 81, column: 28, scope: !1257)
!1990 = !DILocation(line: 81, column: 33, scope: !1257)
!1991 = !DILocation(line: 83, column: 21, scope: !1257)
!1992 = !DILocation(line: 83, column: 25, scope: !1257)
!1993 = !DILocation(line: 83, column: 29, scope: !1257)
!1994 = !DILocation(line: 83, column: 34, scope: !1257)
!1995 = !DILocation(line: 84, column: 21, scope: !1257)
!1996 = !DILocation(line: 84, column: 25, scope: !1257)
!1997 = !DILocation(line: 84, column: 29, scope: !1257)
!1998 = !DILocation(line: 84, column: 34, scope: !1257)
!1999 = !DILocation(line: 85, column: 21, scope: !1257)
!2000 = !DILocation(line: 85, column: 25, scope: !1257)
!2001 = !DILocation(line: 85, column: 29, scope: !1257)
!2002 = !DILocation(line: 85, column: 34, scope: !1257)
!2003 = !DILocation(line: 86, column: 21, scope: !1257)
!2004 = !DILocation(line: 86, column: 25, scope: !1257)
!2005 = !DILocation(line: 86, column: 29, scope: !1257)
!2006 = !DILocation(line: 86, column: 34, scope: !1257)
!2007 = !DILocation(line: 87, column: 21, scope: !1257)
!2008 = !DILocation(line: 87, column: 25, scope: !1257)
!2009 = !DILocation(line: 87, column: 28, scope: !1257)
!2010 = !DILocation(line: 87, column: 33, scope: !1257)
!2011 = !DILocation(line: 88, column: 21, scope: !1257)
!2012 = !DILocation(line: 88, column: 25, scope: !1257)
!2013 = !DILocation(line: 88, column: 28, scope: !1257)
!2014 = !DILocation(line: 88, column: 33, scope: !1257)
!2015 = !DILocation(line: 89, column: 22, scope: !1257)
!2016 = !DILocation(line: 89, column: 26, scope: !1257)
!2017 = !DILocation(line: 89, column: 30, scope: !1257)
!2018 = !DILocation(line: 89, column: 35, scope: !1257)
!2019 = !DILocation(line: 90, column: 22, scope: !1257)
!2020 = !DILocation(line: 90, column: 26, scope: !1257)
!2021 = !DILocation(line: 90, column: 30, scope: !1257)
!2022 = !DILocation(line: 90, column: 35, scope: !1257)
!2023 = !DILocation(line: 91, column: 22, scope: !1257)
!2024 = !DILocation(line: 91, column: 26, scope: !1257)
!2025 = !DILocation(line: 91, column: 30, scope: !1257)
!2026 = !DILocation(line: 91, column: 35, scope: !1257)
!2027 = !DILocation(line: 92, column: 22, scope: !1257)
!2028 = !DILocation(line: 92, column: 26, scope: !1257)
!2029 = !DILocation(line: 92, column: 30, scope: !1257)
!2030 = !DILocation(line: 92, column: 35, scope: !1257)
!2031 = !DILocation(line: 93, column: 22, scope: !1257)
!2032 = !DILocation(line: 93, column: 26, scope: !1257)
!2033 = !DILocation(line: 93, column: 30, scope: !1257)
!2034 = !DILocation(line: 93, column: 35, scope: !1257)
!2035 = !DILocation(line: 94, column: 22, scope: !1257)
!2036 = !DILocation(line: 94, column: 26, scope: !1257)
!2037 = !DILocation(line: 94, column: 30, scope: !1257)
!2038 = !DILocation(line: 94, column: 35, scope: !1257)
!2039 = !DILocation(line: 96, column: 20, scope: !1257)
!2040 = !DILocation(line: 96, column: 24, scope: !1257)
!2041 = !DILocation(line: 96, column: 28, scope: !1257)
!2042 = !DILocation(line: 97, column: 20, scope: !1257)
!2043 = !DILocation(line: 97, column: 24, scope: !1257)
!2044 = !DILocation(line: 97, column: 28, scope: !1257)
!2045 = !DILocation(line: 98, column: 20, scope: !1257)
!2046 = !DILocation(line: 98, column: 24, scope: !1257)
!2047 = !DILocation(line: 98, column: 28, scope: !1257)
!2048 = !DILocation(line: 99, column: 20, scope: !1257)
!2049 = !DILocation(line: 99, column: 24, scope: !1257)
!2050 = !DILocation(line: 99, column: 28, scope: !1257)
!2051 = !DILocation(line: 100, column: 20, scope: !1257)
!2052 = !DILocation(line: 100, column: 24, scope: !1257)
!2053 = !DILocation(line: 100, column: 28, scope: !1257)
!2054 = !DILocation(line: 101, column: 20, scope: !1257)
!2055 = !DILocation(line: 101, column: 24, scope: !1257)
!2056 = !DILocation(line: 101, column: 28, scope: !1257)
!2057 = !DILocation(line: 102, column: 20, scope: !1257)
!2058 = !DILocation(line: 102, column: 24, scope: !1257)
!2059 = !DILocation(line: 102, column: 28, scope: !1257)
!2060 = !DILocation(line: 103, column: 20, scope: !1257)
!2061 = !DILocation(line: 103, column: 24, scope: !1257)
!2062 = !DILocation(line: 103, column: 28, scope: !1257)
!2063 = !DILocation(line: 105, column: 21, scope: !1257)
!2064 = !DILocation(line: 105, column: 25, scope: !1257)
!2065 = !DILocation(line: 105, column: 28, scope: !1257)
!2066 = !DILocation(line: 106, column: 21, scope: !1257)
!2067 = !DILocation(line: 106, column: 25, scope: !1257)
!2068 = !DILocation(line: 106, column: 28, scope: !1257)
!2069 = !DILocation(line: 107, column: 22, scope: !1257)
!2070 = !DILocation(line: 107, column: 26, scope: !1257)
!2071 = !DILocation(line: 107, column: 30, scope: !1257)
!2072 = !DILocation(line: 108, column: 22, scope: !1257)
!2073 = !DILocation(line: 108, column: 26, scope: !1257)
!2074 = !DILocation(line: 108, column: 30, scope: !1257)
!2075 = !DILocation(line: 109, column: 22, scope: !1257)
!2076 = !DILocation(line: 109, column: 26, scope: !1257)
!2077 = !DILocation(line: 109, column: 30, scope: !1257)
!2078 = !DILocation(line: 110, column: 22, scope: !1257)
!2079 = !DILocation(line: 110, column: 26, scope: !1257)
!2080 = !DILocation(line: 110, column: 30, scope: !1257)
!2081 = !DILocation(line: 111, column: 22, scope: !1257)
!2082 = !DILocation(line: 111, column: 26, scope: !1257)
!2083 = !DILocation(line: 111, column: 30, scope: !1257)
!2084 = !DILocation(line: 112, column: 22, scope: !1257)
!2085 = !DILocation(line: 112, column: 26, scope: !1257)
!2086 = !DILocation(line: 112, column: 30, scope: !1257)
!2087 = !DILocation(line: 114, column: 20, scope: !1257)
!2088 = !DILocation(line: 114, column: 24, scope: !1257)
!2089 = !DILocation(line: 114, column: 28, scope: !1257)
!2090 = !DILocation(line: 116, column: 21, scope: !1257)
!2091 = !DILocation(line: 116, column: 25, scope: !1257)
!2092 = !DILocation(line: 116, column: 29, scope: !1257)
!2093 = !DILocation(line: 117, column: 21, scope: !1257)
!2094 = !DILocation(line: 117, column: 25, scope: !1257)
!2095 = !DILocation(line: 117, column: 29, scope: !1257)
!2096 = !DILocation(line: 118, column: 21, scope: !1257)
!2097 = !DILocation(line: 118, column: 25, scope: !1257)
!2098 = !DILocation(line: 118, column: 29, scope: !1257)
!2099 = !DILocation(line: 119, column: 21, scope: !1257)
!2100 = !DILocation(line: 119, column: 25, scope: !1257)
!2101 = !DILocation(line: 119, column: 29, scope: !1257)
!2102 = !DILocation(line: 120, column: 21, scope: !1257)
!2103 = !DILocation(line: 120, column: 25, scope: !1257)
!2104 = !DILocation(line: 120, column: 29, scope: !1257)
!2105 = !DILocation(line: 121, column: 21, scope: !1257)
!2106 = !DILocation(line: 121, column: 25, scope: !1257)
!2107 = !DILocation(line: 121, column: 29, scope: !1257)
!2108 = !DILocation(line: 122, column: 21, scope: !1257)
!2109 = !DILocation(line: 122, column: 25, scope: !1257)
!2110 = !DILocation(line: 122, column: 29, scope: !1257)
!2111 = !DILocation(line: 123, column: 21, scope: !1257)
!2112 = !DILocation(line: 123, column: 25, scope: !1257)
!2113 = !DILocation(line: 123, column: 29, scope: !1257)
!2114 = !DILocation(line: 124, column: 21, scope: !1257)
!2115 = !DILocation(line: 124, column: 25, scope: !1257)
!2116 = !DILocation(line: 124, column: 29, scope: !1257)
!2117 = !DILocation(line: 127, column: 21, scope: !1257)
!2118 = !DILocation(line: 127, column: 25, scope: !1257)
!2119 = !DILocation(line: 127, column: 28, scope: !1257)
!2120 = !DILocation(line: 128, column: 21, scope: !1257)
!2121 = !DILocation(line: 128, column: 25, scope: !1257)
!2122 = !DILocation(line: 128, column: 28, scope: !1257)
!2123 = !DILocation(line: 129, column: 22, scope: !1257)
!2124 = !DILocation(line: 129, column: 26, scope: !1257)
!2125 = !DILocation(line: 129, column: 30, scope: !1257)
!2126 = !DILocation(line: 130, column: 22, scope: !1257)
!2127 = !DILocation(line: 130, column: 26, scope: !1257)
!2128 = !DILocation(line: 130, column: 30, scope: !1257)
!2129 = !DILocation(line: 131, column: 22, scope: !1257)
!2130 = !DILocation(line: 131, column: 26, scope: !1257)
!2131 = !DILocation(line: 131, column: 30, scope: !1257)
!2132 = !DILocation(line: 132, column: 22, scope: !1257)
!2133 = !DILocation(line: 132, column: 26, scope: !1257)
!2134 = !DILocation(line: 132, column: 30, scope: !1257)
!2135 = !DILocation(line: 133, column: 22, scope: !1257)
!2136 = !DILocation(line: 133, column: 26, scope: !1257)
!2137 = !DILocation(line: 133, column: 30, scope: !1257)
!2138 = !DILocation(line: 134, column: 22, scope: !1257)
!2139 = !DILocation(line: 134, column: 26, scope: !1257)
!2140 = !DILocation(line: 134, column: 30, scope: !1257)
!2141 = !DILocation(line: 136, column: 21, scope: !1257)
!2142 = !DILocation(line: 136, column: 25, scope: !1257)
!2143 = !DILocation(line: 136, column: 29, scope: !1257)
!2144 = !DILocation(line: 137, column: 21, scope: !1257)
!2145 = !DILocation(line: 137, column: 25, scope: !1257)
!2146 = !DILocation(line: 137, column: 29, scope: !1257)
!2147 = !DILocation(line: 138, column: 21, scope: !1257)
!2148 = !DILocation(line: 138, column: 25, scope: !1257)
!2149 = !DILocation(line: 138, column: 29, scope: !1257)
!2150 = !DILocation(line: 139, column: 21, scope: !1257)
!2151 = !DILocation(line: 139, column: 25, scope: !1257)
!2152 = !DILocation(line: 139, column: 29, scope: !1257)
!2153 = !DILocation(line: 140, column: 21, scope: !1257)
!2154 = !DILocation(line: 140, column: 25, scope: !1257)
!2155 = !DILocation(line: 140, column: 29, scope: !1257)
!2156 = !DILocation(line: 141, column: 21, scope: !1257)
!2157 = !DILocation(line: 141, column: 25, scope: !1257)
!2158 = !DILocation(line: 141, column: 29, scope: !1257)
!2159 = !DILocation(line: 142, column: 21, scope: !1257)
!2160 = !DILocation(line: 142, column: 25, scope: !1257)
!2161 = !DILocation(line: 142, column: 29, scope: !1257)
!2162 = !DILocation(line: 143, column: 21, scope: !1257)
!2163 = !DILocation(line: 143, column: 25, scope: !1257)
!2164 = !DILocation(line: 143, column: 29, scope: !1257)
!2165 = !DILocation(line: 144, column: 20, scope: !1257)
!2166 = !DILocation(line: 144, column: 24, scope: !1257)
!2167 = !DILocation(line: 144, column: 27, scope: !1257)
!2168 = !DILocation(line: 145, column: 20, scope: !1257)
!2169 = !DILocation(line: 145, column: 24, scope: !1257)
!2170 = !DILocation(line: 145, column: 27, scope: !1257)
!2171 = !DILocation(line: 146, column: 21, scope: !1257)
!2172 = !DILocation(line: 146, column: 25, scope: !1257)
!2173 = !DILocation(line: 146, column: 29, scope: !1257)
!2174 = !DILocation(line: 147, column: 21, scope: !1257)
!2175 = !DILocation(line: 147, column: 25, scope: !1257)
!2176 = !DILocation(line: 147, column: 29, scope: !1257)
!2177 = !DILocation(line: 148, column: 21, scope: !1257)
!2178 = !DILocation(line: 148, column: 25, scope: !1257)
!2179 = !DILocation(line: 148, column: 29, scope: !1257)
!2180 = !DILocation(line: 149, column: 21, scope: !1257)
!2181 = !DILocation(line: 149, column: 25, scope: !1257)
!2182 = !DILocation(line: 149, column: 29, scope: !1257)
!2183 = !DILocation(line: 150, column: 21, scope: !1257)
!2184 = !DILocation(line: 150, column: 25, scope: !1257)
!2185 = !DILocation(line: 150, column: 29, scope: !1257)
!2186 = !DILocation(line: 151, column: 21, scope: !1257)
!2187 = !DILocation(line: 151, column: 25, scope: !1257)
!2188 = !DILocation(line: 151, column: 29, scope: !1257)
!2189 = !DILocation(line: 152, column: 21, scope: !1257)
!2190 = !DILocation(line: 152, column: 25, scope: !1257)
!2191 = !DILocation(line: 152, column: 29, scope: !1257)
!2192 = !DILocation(line: 155, column: 20, scope: !1257)
!2193 = !DILocation(line: 155, column: 24, scope: !1257)
!2194 = !DILocation(line: 155, column: 27, scope: !1257)
!2195 = !DILocation(line: 156, column: 20, scope: !1257)
!2196 = !DILocation(line: 156, column: 24, scope: !1257)
!2197 = !DILocation(line: 156, column: 27, scope: !1257)
!2198 = !DILocation(line: 157, column: 20, scope: !1257)
!2199 = !DILocation(line: 157, column: 24, scope: !1257)
!2200 = !DILocation(line: 157, column: 27, scope: !1257)
!2201 = !DILocation(line: 158, column: 20, scope: !1257)
!2202 = !DILocation(line: 158, column: 24, scope: !1257)
!2203 = !DILocation(line: 158, column: 27, scope: !1257)
!2204 = !DILocation(line: 159, column: 20, scope: !1257)
!2205 = !DILocation(line: 159, column: 24, scope: !1257)
!2206 = !DILocation(line: 159, column: 27, scope: !1257)
!2207 = !DILocation(line: 160, column: 20, scope: !1257)
!2208 = !DILocation(line: 160, column: 24, scope: !1257)
!2209 = !DILocation(line: 160, column: 27, scope: !1257)
!2210 = !DILocation(line: 164, column: 25, scope: !1257)
!2211 = !DILocation(line: 164, column: 30, scope: !1257)
!2212 = !DILocation(line: 164, column: 38, scope: !1257)
!2213 = !DILocation(line: 165, column: 25, scope: !1257)
!2214 = !DILocation(line: 165, column: 30, scope: !1257)
!2215 = !DILocation(line: 165, column: 38, scope: !1257)
!2216 = !DILocation(line: 205, column: 22, scope: !1257)
!2217 = !DILocation(line: 205, column: 16, scope: !1257)
!2218 = !DILocation(line: 205, column: 29, scope: !1257)
!2219 = !DILocation(line: 206, column: 22, scope: !1257)
!2220 = !DILocation(line: 206, column: 16, scope: !1257)
!2221 = !DILocation(line: 206, column: 29, scope: !1257)
!2222 = !DILocation(line: 207, column: 22, scope: !1257)
!2223 = !DILocation(line: 207, column: 16, scope: !1257)
!2224 = !DILocation(line: 207, column: 29, scope: !1257)
!2225 = !DILocation(line: 208, column: 22, scope: !1257)
!2226 = !DILocation(line: 208, column: 16, scope: !1257)
!2227 = !DILocation(line: 208, column: 29, scope: !1257)
!2228 = !DILocation(line: 209, column: 22, scope: !1257)
!2229 = !DILocation(line: 209, column: 16, scope: !1257)
!2230 = !DILocation(line: 209, column: 29, scope: !1257)
!2231 = !DILocation(line: 210, column: 22, scope: !1257)
!2232 = !DILocation(line: 210, column: 16, scope: !1257)
!2233 = !DILocation(line: 210, column: 29, scope: !1257)
!2234 = !DILocation(line: 211, column: 22, scope: !1257)
!2235 = !DILocation(line: 211, column: 16, scope: !1257)
!2236 = !DILocation(line: 211, column: 29, scope: !1257)
!2237 = !DILocation(line: 212, column: 22, scope: !1257)
!2238 = !DILocation(line: 212, column: 16, scope: !1257)
!2239 = !DILocation(line: 212, column: 29, scope: !1257)
!2240 = !DILocation(line: 214, column: 22, scope: !1257)
!2241 = !DILocation(line: 214, column: 16, scope: !1257)
!2242 = !DILocation(line: 214, column: 29, scope: !1257)
!2243 = !DILocation(line: 215, column: 22, scope: !1257)
!2244 = !DILocation(line: 215, column: 16, scope: !1257)
!2245 = !DILocation(line: 215, column: 29, scope: !1257)
!2246 = !DILocation(line: 216, column: 23, scope: !1257)
!2247 = !DILocation(line: 216, column: 17, scope: !1257)
!2248 = !DILocation(line: 216, column: 31, scope: !1257)
!2249 = !DILocation(line: 217, column: 23, scope: !1257)
!2250 = !DILocation(line: 217, column: 17, scope: !1257)
!2251 = !DILocation(line: 217, column: 31, scope: !1257)
!2252 = !DILocation(line: 218, column: 23, scope: !1257)
!2253 = !DILocation(line: 218, column: 17, scope: !1257)
!2254 = !DILocation(line: 218, column: 31, scope: !1257)
!2255 = !DILocation(line: 219, column: 23, scope: !1257)
!2256 = !DILocation(line: 219, column: 17, scope: !1257)
!2257 = !DILocation(line: 219, column: 31, scope: !1257)
!2258 = !DILocation(line: 220, column: 23, scope: !1257)
!2259 = !DILocation(line: 220, column: 17, scope: !1257)
!2260 = !DILocation(line: 220, column: 31, scope: !1257)
!2261 = !DILocation(line: 221, column: 23, scope: !1257)
!2262 = !DILocation(line: 221, column: 17, scope: !1257)
!2263 = !DILocation(line: 221, column: 31, scope: !1257)
!2264 = !DILocation(line: 245, column: 22, scope: !1257)
!2265 = !DILocation(line: 245, column: 16, scope: !1257)
!2266 = !DILocation(line: 245, column: 29, scope: !1257)
!2267 = !DILocation(line: 246, column: 22, scope: !1257)
!2268 = !DILocation(line: 246, column: 16, scope: !1257)
!2269 = !DILocation(line: 246, column: 29, scope: !1257)
!2270 = !DILocation(line: 247, column: 22, scope: !1257)
!2271 = !DILocation(line: 247, column: 16, scope: !1257)
!2272 = !DILocation(line: 247, column: 29, scope: !1257)
!2273 = !DILocation(line: 248, column: 22, scope: !1257)
!2274 = !DILocation(line: 248, column: 16, scope: !1257)
!2275 = !DILocation(line: 248, column: 29, scope: !1257)
!2276 = !DILocation(line: 249, column: 22, scope: !1257)
!2277 = !DILocation(line: 249, column: 16, scope: !1257)
!2278 = !DILocation(line: 249, column: 29, scope: !1257)
!2279 = !DILocation(line: 250, column: 22, scope: !1257)
!2280 = !DILocation(line: 250, column: 16, scope: !1257)
!2281 = !DILocation(line: 250, column: 29, scope: !1257)
!2282 = !DILocation(line: 251, column: 22, scope: !1257)
!2283 = !DILocation(line: 251, column: 16, scope: !1257)
!2284 = !DILocation(line: 251, column: 29, scope: !1257)
!2285 = !DILocation(line: 252, column: 22, scope: !1257)
!2286 = !DILocation(line: 252, column: 16, scope: !1257)
!2287 = !DILocation(line: 252, column: 29, scope: !1257)
!2288 = !DILocation(line: 255, column: 22, scope: !1257)
!2289 = !DILocation(line: 255, column: 16, scope: !1257)
!2290 = !DILocation(line: 255, column: 29, scope: !1257)
!2291 = !DILocation(line: 256, column: 22, scope: !1257)
!2292 = !DILocation(line: 256, column: 16, scope: !1257)
!2293 = !DILocation(line: 256, column: 29, scope: !1257)
!2294 = !DILocation(line: 257, column: 23, scope: !1257)
!2295 = !DILocation(line: 257, column: 17, scope: !1257)
!2296 = !DILocation(line: 257, column: 31, scope: !1257)
!2297 = !DILocation(line: 258, column: 23, scope: !1257)
!2298 = !DILocation(line: 258, column: 17, scope: !1257)
!2299 = !DILocation(line: 258, column: 31, scope: !1257)
!2300 = !DILocation(line: 259, column: 23, scope: !1257)
!2301 = !DILocation(line: 259, column: 17, scope: !1257)
!2302 = !DILocation(line: 259, column: 31, scope: !1257)
!2303 = !DILocation(line: 260, column: 23, scope: !1257)
!2304 = !DILocation(line: 260, column: 17, scope: !1257)
!2305 = !DILocation(line: 260, column: 31, scope: !1257)
!2306 = !DILocation(line: 261, column: 23, scope: !1257)
!2307 = !DILocation(line: 261, column: 17, scope: !1257)
!2308 = !DILocation(line: 261, column: 31, scope: !1257)
!2309 = !DILocation(line: 262, column: 23, scope: !1257)
!2310 = !DILocation(line: 262, column: 17, scope: !1257)
!2311 = !DILocation(line: 262, column: 31, scope: !1257)
!2312 = !DILocation(line: 285, column: 21, scope: !1257)
!2313 = !DILocation(line: 285, column: 24, scope: !1257)
!2314 = !DILocation(line: 285, column: 15, scope: !1257)
!2315 = !DILocation(line: 285, column: 33, scope: !1257)
!2316 = !DILocation(line: 286, column: 21, scope: !1257)
!2317 = !DILocation(line: 286, column: 24, scope: !1257)
!2318 = !DILocation(line: 286, column: 15, scope: !1257)
!2319 = !DILocation(line: 286, column: 33, scope: !1257)
!2320 = !DILocation(line: 287, column: 21, scope: !1257)
!2321 = !DILocation(line: 287, column: 24, scope: !1257)
!2322 = !DILocation(line: 287, column: 15, scope: !1257)
!2323 = !DILocation(line: 287, column: 33, scope: !1257)
!2324 = !DILocation(line: 288, column: 21, scope: !1257)
!2325 = !DILocation(line: 288, column: 24, scope: !1257)
!2326 = !DILocation(line: 288, column: 15, scope: !1257)
!2327 = !DILocation(line: 288, column: 33, scope: !1257)
!2328 = !DILocation(line: 289, column: 21, scope: !1257)
!2329 = !DILocation(line: 289, column: 24, scope: !1257)
!2330 = !DILocation(line: 289, column: 15, scope: !1257)
!2331 = !DILocation(line: 289, column: 33, scope: !1257)
!2332 = !DILocation(line: 290, column: 21, scope: !1257)
!2333 = !DILocation(line: 290, column: 24, scope: !1257)
!2334 = !DILocation(line: 290, column: 15, scope: !1257)
!2335 = !DILocation(line: 290, column: 33, scope: !1257)
!2336 = !DILocation(line: 291, column: 21, scope: !1257)
!2337 = !DILocation(line: 291, column: 24, scope: !1257)
!2338 = !DILocation(line: 291, column: 15, scope: !1257)
!2339 = !DILocation(line: 291, column: 33, scope: !1257)
!2340 = !DILocation(line: 292, column: 21, scope: !1257)
!2341 = !DILocation(line: 292, column: 24, scope: !1257)
!2342 = !DILocation(line: 292, column: 15, scope: !1257)
!2343 = !DILocation(line: 292, column: 33, scope: !1257)
!2344 = !DILocation(line: 318, column: 21, scope: !1257)
!2345 = !DILocation(line: 318, column: 25, scope: !1257)
!2346 = !DILocation(line: 318, column: 15, scope: !1257)
!2347 = !DILocation(line: 318, column: 34, scope: !1257)
!2348 = !DILocation(line: 318, column: 38, scope: !1257)
!2349 = !DILocation(line: 318, column: 45, scope: !1257)
!2350 = !DILocation(line: 319, column: 21, scope: !1257)
!2351 = !DILocation(line: 319, column: 25, scope: !1257)
!2352 = !DILocation(line: 319, column: 15, scope: !1257)
!2353 = !DILocation(line: 319, column: 34, scope: !1257)
!2354 = !DILocation(line: 319, column: 38, scope: !1257)
!2355 = !DILocation(line: 319, column: 45, scope: !1257)
!2356 = !DILocation(line: 320, column: 21, scope: !1257)
!2357 = !DILocation(line: 320, column: 25, scope: !1257)
!2358 = !DILocation(line: 320, column: 15, scope: !1257)
!2359 = !DILocation(line: 320, column: 34, scope: !1257)
!2360 = !DILocation(line: 320, column: 38, scope: !1257)
!2361 = !DILocation(line: 320, column: 45, scope: !1257)
!2362 = !DILocation(line: 321, column: 21, scope: !1257)
!2363 = !DILocation(line: 321, column: 25, scope: !1257)
!2364 = !DILocation(line: 321, column: 15, scope: !1257)
!2365 = !DILocation(line: 321, column: 34, scope: !1257)
!2366 = !DILocation(line: 321, column: 38, scope: !1257)
!2367 = !DILocation(line: 321, column: 45, scope: !1257)
!2368 = !DILocation(line: 322, column: 21, scope: !1257)
!2369 = !DILocation(line: 322, column: 25, scope: !1257)
!2370 = !DILocation(line: 322, column: 15, scope: !1257)
!2371 = !DILocation(line: 322, column: 34, scope: !1257)
!2372 = !DILocation(line: 322, column: 38, scope: !1257)
!2373 = !DILocation(line: 322, column: 45, scope: !1257)
!2374 = !DILocation(line: 323, column: 21, scope: !1257)
!2375 = !DILocation(line: 323, column: 25, scope: !1257)
!2376 = !DILocation(line: 323, column: 15, scope: !1257)
!2377 = !DILocation(line: 323, column: 34, scope: !1257)
!2378 = !DILocation(line: 323, column: 38, scope: !1257)
!2379 = !DILocation(line: 323, column: 45, scope: !1257)
!2380 = !DILocation(line: 324, column: 21, scope: !1257)
!2381 = !DILocation(line: 324, column: 25, scope: !1257)
!2382 = !DILocation(line: 324, column: 15, scope: !1257)
!2383 = !DILocation(line: 324, column: 34, scope: !1257)
!2384 = !DILocation(line: 324, column: 38, scope: !1257)
!2385 = !DILocation(line: 324, column: 45, scope: !1257)
!2386 = !DILocation(line: 325, column: 21, scope: !1257)
!2387 = !DILocation(line: 325, column: 25, scope: !1257)
!2388 = !DILocation(line: 325, column: 15, scope: !1257)
!2389 = !DILocation(line: 325, column: 34, scope: !1257)
!2390 = !DILocation(line: 325, column: 38, scope: !1257)
!2391 = !DILocation(line: 325, column: 45, scope: !1257)
!2392 = !DILocation(line: 328, column: 20, scope: !1257)
!2393 = !DILocation(line: 328, column: 26, scope: !1257)
!2394 = !DILocation(line: 329, column: 20, scope: !1257)
!2395 = !DILocation(line: 329, column: 26, scope: !1257)
!2396 = !DILocation(line: 330, column: 20, scope: !1257)
!2397 = !DILocation(line: 330, column: 26, scope: !1257)
!2398 = !DILocation(line: 331, column: 20, scope: !1257)
!2399 = !DILocation(line: 331, column: 26, scope: !1257)
!2400 = !DILocation(line: 332, column: 20, scope: !1257)
!2401 = !DILocation(line: 332, column: 26, scope: !1257)
!2402 = !DILocation(line: 333, column: 20, scope: !1257)
!2403 = !DILocation(line: 333, column: 26, scope: !1257)
!2404 = !DILocation(line: 334, column: 20, scope: !1257)
!2405 = !DILocation(line: 334, column: 26, scope: !1257)
!2406 = !DILocation(line: 337, column: 9, scope: !1257)
!2407 = !DILocation(line: 338, column: 9, scope: !1257)
!2408 = !DILocation(line: 339, column: 9, scope: !1257)
!2409 = !DILocation(line: 340, column: 9, scope: !1257)
!2410 = !DILocation(line: 341, column: 9, scope: !1257)
!2411 = !DILocation(line: 342, column: 9, scope: !1257)
!2412 = !DILocation(line: 343, column: 9, scope: !1257)
!2413 = !DILocation(line: 344, column: 9, scope: !1257)
!2414 = !DILocation(line: 347, column: 9, scope: !1257)
!2415 = !DILocation(line: 348, column: 9, scope: !1257)
!2416 = !DILocation(line: 349, column: 9, scope: !1257)
!2417 = !DILocation(line: 350, column: 9, scope: !1257)
!2418 = !DILocation(line: 351, column: 9, scope: !1257)
!2419 = !DILocation(line: 353, column: 9, scope: !1257)
!2420 = !DILocation(line: 357, column: 3, scope: !1257)
!2421 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2422, file: !2422, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2422 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2423 = !DILocation(line: 116, column: 1, scope: !2421)
!2424 = !{!2425, !2425, i64 0}
!2425 = !{!"long", !2426, i64 0}
!2426 = !{!"omnipotent char", !2427, i64 0}
!2427 = !{!"Simple C++ TBAA"}
!2428 = !{!2429, !2426, i64 2065}
!2429 = !{!"_ZTS5State", !2426, i64 16, !2430, i64 2064, !2426, i64 2080, !2431, i64 2088, !2433, i64 2112, !2435, i64 2208, !2436, i64 2480, !2437, i64 2608, !2438, i64 2736, !2426, i64 2760, !2426, i64 2768, !2439, i64 3280}
!2430 = !{!"_ZTS10ArithFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15}
!2431 = !{!"_ZTS8Segments", !2432, i64 0, !2426, i64 2, !2432, i64 4, !2426, i64 6, !2432, i64 8, !2426, i64 10, !2432, i64 12, !2426, i64 14, !2432, i64 16, !2426, i64 18, !2432, i64 20, !2426, i64 22}
!2432 = !{!"short", !2426, i64 0}
!2433 = !{!"_ZTS12AddressSpace", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88}
!2434 = !{!"_ZTS3Reg", !2426, i64 0}
!2435 = !{!"_ZTS3GPR", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88, !2425, i64 96, !2434, i64 104, !2425, i64 112, !2434, i64 120, !2425, i64 128, !2434, i64 136, !2425, i64 144, !2434, i64 152, !2425, i64 160, !2434, i64 168, !2425, i64 176, !2434, i64 184, !2425, i64 192, !2434, i64 200, !2425, i64 208, !2434, i64 216, !2425, i64 224, !2434, i64 232, !2425, i64 240, !2434, i64 248, !2425, i64 256, !2434, i64 264}
!2436 = !{!"_ZTS8X87Stack", !2426, i64 0}
!2437 = !{!"_ZTS3MMX", !2426, i64 0}
!2438 = !{!"_ZTS14FPUStatusFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15, !2426, i64 16, !2426, i64 17, !2426, i64 18, !2426, i64 19, !2426, i64 20}
!2439 = !{!"_ZTS13SegmentCaches", !2440, i64 0, !2440, i64 16, !2440, i64 32, !2440, i64 48, !2440, i64 64, !2440, i64 80}
!2440 = !{!"_ZTS13SegmentShadow", !2426, i64 0, !2441, i64 8, !2441, i64 12}
!2441 = !{!"int", !2426, i64 0}
!2442 = !{!2429, !2426, i64 2067}
!2443 = !{!2429, !2426, i64 2071}
!2444 = !{!2429, !2426, i64 2073}
!2445 = !{!2429, !2426, i64 2077}
!2446 = !{!2429, !2426, i64 2069}
!2447 = !{!2426, !2426, i64 0}
!2448 = !{!2432, !2432, i64 0}
