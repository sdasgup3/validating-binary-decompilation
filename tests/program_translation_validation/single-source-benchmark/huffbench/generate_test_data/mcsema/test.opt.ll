; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401650__rodata_type = type <{ [4 x i8], [33 x i8], [26 x i8], [33 x i8], [23 x i8], [7 x i8], [35 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602050__data_type = type <{ [16 x i8], [8 x i8] }>
%seg_602080__bss_type = type <{ [32 x i8], [8 x i8], [8 x i8] }>
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
@stderr = external local_unnamed_addr global i64, align 32
@stdout = external local_unnamed_addr global i64, align 128
@seg_401650__rodata = internal constant %seg_401650__rodata_type <{ [4 x i8] c"\01\00\02\00", [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", [26 x i8] c"error: bit code overflow\0A\00", [33 x i8] c"error: file has only one value!\0A\00", [23 x i8] c"error: no compression\0A\00", [7 x i8] c"-ga\00%f\00", [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400740_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400710___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602050__data = internal global %seg_602050__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400740_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400710___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401640___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015d0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @compdecomp_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @generate_test_data_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 !dbg !1261 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1952
  store i64 0, i64* %SS_BASE, align 8, !dbg !1953
  store i64 0, i64* %ES_BASE, align 8, !dbg !1954
  store i64 0, i64* %DS_BASE, align 8, !dbg !1955
  store i64 0, i64* %CS_BASE, align 8, !dbg !1956
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1957
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1958
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1960
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1961
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1961
  store i64 %1, i64* %PC, align 8, !dbg !1962
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1964
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1965
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1965
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1966
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1968
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1969
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1969
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1970
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1972
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1973
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1973
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1974
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1976
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1977
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1977
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1978
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1980
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1981
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1981
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1982
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1984
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1985
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1985
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1986
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1988
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1989
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1989
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1990
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1992
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1993
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1993
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1994
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1996
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1997
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1997
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1998
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !2000
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !2001
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !2001
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !2002
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2004
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2005
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2005
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2006
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2008
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2009
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2009
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2010
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2012
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2013
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2013
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2014
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2016
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2017
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2017
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2018
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2020
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2021
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2021
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2022
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2024
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2025
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2025
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2026
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2028
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2029
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2029
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2030
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2032
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2033
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2033
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2034
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2036
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2037
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2037
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2038
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2040
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2041
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2041
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2042
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2043
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2044
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2045
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2045
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2046
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2047
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2048
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2048
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2049
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2050
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2051
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2051
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2052
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2053
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2054
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2054
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2055
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2056
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2057
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2057
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2058
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2059
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2060
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2060
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2061
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2062
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2063
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2063
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2064
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2065
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2066
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2066
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2067
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2068
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2069
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2069
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2070
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2071
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2072
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2072
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2073
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2074
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2075
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2075
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2076
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2077
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2078
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2078
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2079
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2080
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2081
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2081
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2082
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2083
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2084
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2084
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2085
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2086
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2087
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2087
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2088
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2089
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2090
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2090
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2091
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2092
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2093
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2093
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2094
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2095
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2096
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2096
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2097
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2098
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2099
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2099
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2100
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2101
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2102
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2102
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2103
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2104
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2105
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2105
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2106
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2107
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2108
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2108
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2109
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2110
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2111
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2111
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2112
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2113
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2114
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2114
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2115
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2116
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2117
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2117
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2118
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2119
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2120
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2120
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2121
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2122
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2123
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2123
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2124
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2125
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2126
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2126
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2127
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2128
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2129
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2129
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2130
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2131
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2132
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2132
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2133
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2134
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2135
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2135
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2136
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2137
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2138
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2138
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2139
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2140
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2141
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2141
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2142
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2143
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2144
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2144
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2145
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2146
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2147
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2147
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2148
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2149
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2150
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2150
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2151
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2152
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2153
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2153
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2154
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2155
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2156
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2156
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2157
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2158
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2159
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2159
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2160
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2161
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2162
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2162
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2163
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2164
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2165
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2165
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2166
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2167
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2168
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2168
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2169
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2170
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2171
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2171
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2172
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2173
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2174
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2174
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2175
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2176
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2177
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2177
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2178
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2179
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2180
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2180
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2181
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2182
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2183
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2183
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2184
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2185
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2186
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2186
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2187
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2188
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2189
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2189
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2190
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2191
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2192
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2192
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2193
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2194
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2195
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2195
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2196
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2197
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2198
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2199
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2200
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2201
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2202
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2203
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2204
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2205
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2206
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2207
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2208
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2209
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2210
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2211
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2212
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2213
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2214
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2215
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2216
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2216
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2217
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2218
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2219
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2219
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2220
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2221
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2222
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2223
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2224
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2225
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2226
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2227
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2228
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2229
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2230
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2231
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2232
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2233
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2234
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2235
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2236
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2237
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2238
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2239
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2240
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2241
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2242
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2243
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2244
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2245
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2246
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2247
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2248
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2249
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2250
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2251
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2252
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2253
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2254
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2255
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2256
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2257
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2258
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2259
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2260
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2261
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2262
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2263
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2264
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2265
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2266
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2267
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2268
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2269
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2270
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2271
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2272
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2273
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2274
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2275
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2276
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2277
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2278
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2279
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2280
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2281
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2282
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2283
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2284
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2285
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2286
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2287
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2288
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2289
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2290
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2291
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2292
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2293
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2294
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2295
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2296
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2297
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2298
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2299
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2300
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2301
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2302
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2303
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2304
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2305
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2306
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2307
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2308
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2309
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2310
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2311
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2312
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2313
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2314
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2315
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2317
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2318
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2319
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2321
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2322
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2323
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2325
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2326
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2327
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2329
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2330
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2331
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2333
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2334
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2335
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2337
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2338
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2339
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2341
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2342
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2343
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2344
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2345
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2346
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2347
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2348
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2349
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2350
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2351
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2352
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2353
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2350
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2354
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2355
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2356
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2357
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2358
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2359
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2356
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2360
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2361
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2362
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2363
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2364
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2365
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2362
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2366
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2367
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2368
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2369
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2370
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2371
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2368
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2372
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2373
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2374
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2375
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2376
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2377
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2374
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2378
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2379
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2380
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2381
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2382
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2383
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2380
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2384
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2385
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2386
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2387
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2388
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2389
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2386
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2390
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2391
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2392
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2393
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2394
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2395
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2392
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2397
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2399
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2401
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2403
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2405
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2406
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2407
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2408
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2409
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2410
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2411
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2412
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2413
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2414
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2415
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2416
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2419
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2420
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2421
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2422
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2423
  ret %struct.Memory* %2, !dbg !2424
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() local_unnamed_addr #3 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400660__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
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
  store i64 0, i64* %RBP, align 8, !tbaa !2428
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2432
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2446
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2447
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2448
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2449
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2450
  %9 = load i64, i64* %RDX, align 8
  store i64 %9, i64* %R9, align 8, !tbaa !2428
  %10 = add i64 %1, 6
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RSI, align 8, !tbaa !2428
  store i64 %12, i64* %RDX, align 8, !tbaa !2428
  %15 = and i64 %12, -16
  store i8 0, i8* %3, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2446
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2447
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2448
  store i8 0, i8* %7, align 1, !tbaa !2449
  store i8 0, i8* %8, align 1, !tbaa !2450
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
  store i64 ptrtoint (void ()* @callback_sub_401640___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4015d0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602100___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006c8:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2428
  %8 = load i64, i64* %PC, align 8
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !2432
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2450
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %12, align 1, !tbaa !2447
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2449
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %8, 40
  store i64 %15, i64* %PC, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %17 = add i64 %8, 41
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %5 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  %20 = add i64 %5, 8
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400690__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400690:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2428
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2428
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401644__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401644:
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
  store i64 %3, i64* %RSP, align 8, !tbaa !2428
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2432
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2446
  store i8 %10, i8* %11, align 1, !tbaa !2450
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2447
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2448
  store i8 %19, i8* %20, align 1, !tbaa !2449
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401640___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401640:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2428
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2428
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007e0_random4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  store i64 127773, i64* %RCX, align 8, !tbaa !2428
  %10 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %11 = xor i64 %10, 123459876
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %11 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #9
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = icmp eq i64 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1, !tbaa !2447
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1, !tbaa !2449
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i64 %11, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %29 = ashr i64 %10, 63
  store i64 %29, i64* %RDX, align 8, !tbaa !2428
  %30 = add i64 %9, 46
  store i64 %30, i64* %PC, align 8
  %31 = zext i64 %29 to i128
  %32 = shl nuw i128 %31, 64
  %33 = zext i64 %11 to i128
  %34 = or i128 %32, %33
  %35 = sdiv i128 %34, 127773
  %36 = trunc i128 %35 to i64
  %37 = and i128 %35, 18446744073709551615
  %38 = sext i64 %36 to i128
  %39 = and i128 %38, -18446744073709551616
  %40 = or i128 %39, %37
  %41 = icmp eq i128 %35, %40
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %block_4007e0
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %30, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %RAX, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:44:                                     ; preds = %block_4007e0
  %45 = srem i128 %34, 127773
  %46 = trunc i128 %45 to i64
  store i64 %36, i64* %28, align 8, !tbaa !2428
  store i64 %46, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1: ; preds = %44, %42
  %47 = phi i64 [ %.pre2, %42 ], [ %30, %44 ]
  %48 = phi i64 [ %.pre1, %42 ], [ %36, %44 ]
  %49 = phi i64 [ %.pre, %42 ], [ %7, %44 ]
  %50 = phi %struct.Memory* [ %43, %42 ], [ %2, %44 ]
  %51 = add i64 %49, -8
  %52 = add i64 %47, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i64*
  store i64 %48, i64* %53, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -8
  %58 = add i64 %54, 16
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 127773
  store i64 %61, i64* %RCX, align 8, !tbaa !2428
  %62 = sub i64 %55, %61
  %63 = sext i64 %62 to i128
  %64 = and i128 %63, -18446744073709551616
  %65 = zext i64 %62 to i128
  %66 = or i128 %64, %65
  %67 = mul nsw i128 %66, 16807
  %68 = trunc i128 %67 to i64
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = sext i64 %68 to i128
  %70 = icmp ne i128 %69, %67
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %12, align 1, !tbaa !2432
  %72 = trunc i128 %67 to i32
  %73 = and i32 %72, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73) #9
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %25, align 1, !tbaa !2448
  store i8 %71, i8* %26, align 1, !tbaa !2449
  %80 = add i64 %54, 34
  store i64 %80, i64* %PC, align 8
  %81 = load i64, i64* %59, align 8
  %82 = mul i64 %81, 2836
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = sub i64 %68, %82
  store i64 %83, i64* %RAX, align 8, !tbaa !2428
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #9
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = icmp eq i64 %83, 0
  %91 = zext i1 %90 to i8
  %92 = lshr i64 %83, 63
  %93 = trunc i64 %92 to i8
  store i64 %83, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %94 = add i64 %54, 54
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 %89, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 %91, i8* %22, align 1, !tbaa !2447
  store i8 %93, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  %95 = icmp ne i8 %93, 0
  %.v = select i1 %95, i64 6, i64 28
  %96 = add i64 %94, %.v
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  br i1 %95, label %block_40084f, label %block_400865

block_40084f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %97 = add i64 %83, 2147483647
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp ugt i64 %83, -2147483648
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %12, align 1, !tbaa !2432
  %100 = trunc i64 %97 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #9
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %19, align 1, !tbaa !2446
  %106 = xor i64 %83, 16
  %107 = xor i64 %106, %97
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %27, align 1, !tbaa !2450
  %111 = icmp eq i64 %97, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %22, align 1, !tbaa !2447
  %113 = lshr i64 %97, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %25, align 1, !tbaa !2448
  %115 = xor i64 %113, %92
  %116 = add nuw nsw i64 %115, %113
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %26, align 1, !tbaa !2449
  %119 = add i64 %96, 22
  store i64 %119, i64* %PC, align 8
  store i64 %97, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  br label %block_400865

block_400865:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1, %block_40084f
  %120 = phi i64 [ %83, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %97, %block_40084f ]
  %121 = phi i64 [ %96, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %119, %block_40084f ]
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %122 = ashr i64 %120, 63
  store i64 %122, i64* %RDX, align 8, !tbaa !2428
  %123 = add i64 %121, 20
  store i64 %123, i64* %PC, align 8
  %124 = zext i64 %122 to i128
  %125 = shl nuw i128 %124, 64
  %126 = zext i64 %120 to i128
  %127 = or i128 %125, %126
  %128 = sdiv i128 %127, 32
  %129 = trunc i128 %128 to i64
  %130 = and i128 %128, 18446744073709551615
  %131 = sext i64 %129 to i128
  %132 = and i128 %131, -18446744073709551616
  %133 = or i128 %132, %130
  %134 = icmp eq i128 %128, %133
  br i1 %134, label %137, label %135

; <label>:135:                                    ; preds = %block_400865
  %136 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %123, %struct.Memory* %50) #12
  %.pre3 = load i64, i64* %RDX, align 8
  %.pre4 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:137:                                    ; preds = %block_400865
  %138 = srem i128 %127, 32
  %139 = trunc i128 %138 to i64
  store i64 %129, i64* %28, align 8, !tbaa !2428
  store i64 %139, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %137, %135
  %140 = phi i64 [ %.pre4, %135 ], [ %123, %137 ]
  %141 = phi i64 [ %.pre3, %135 ], [ %139, %137 ]
  %142 = phi %struct.Memory* [ %136, %135 ], [ %50, %137 ]
  %143 = load i64, i64* %RBP, align 8
  %144 = add i64 %143, -16
  %145 = add i64 %140, 4
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i64*
  store i64 %141, i64* %146, align 8
  %147 = load i64, i64* %PC, align 8
  %148 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %149 = xor i64 %148, 123459876
  store i64 %149, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  %150 = trunc i64 %149 to i32
  %151 = and i32 %150, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #9
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %19, align 1, !tbaa !2446
  %156 = icmp eq i64 %149, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %22, align 1, !tbaa !2447
  %158 = lshr i64 %148, 63
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i64 %149, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -16
  %162 = add i64 %147, 27
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = add i64 %147, 31
  store i64 %165, i64* %PC, align 8
  %166 = load i64, i64* %5, align 8, !tbaa !2428
  %167 = add i64 %166, 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RBP, align 8, !tbaa !2428
  store i64 %167, i64* %5, align 8, !tbaa !2428
  %170 = add i64 %147, 32
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %167 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  %173 = add i64 %166, 16
  store i64 %173, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %142
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4014a0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4014a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -72
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 64
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2449
  %41 = add i64 %9, -12
  %42 = add i64 %12, 14
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %EDI, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -21
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i8*
  store i8 0, i8* %60, align 1
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, -1
  %68 = icmp eq i32 %66, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %16, align 1, !tbaa !2432
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #9
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %23, align 1, !tbaa !2446
  %75 = xor i32 %67, %66
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %28, align 1, !tbaa !2450
  %79 = icmp eq i32 %67, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %31, align 1, !tbaa !2447
  %81 = lshr i32 %67, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %34, align 1, !tbaa !2448
  %83 = lshr i32 %66, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %40, align 1, !tbaa !2449
  %88 = icmp ne i8 %82, 0
  %89 = xor i1 %88, %86
  %90 = or i1 %79, %89
  %.v = select i1 %90, i64 91, i64 10
  %91 = add i64 %63, %.v
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_401515, label %block_4014c4

block_401595:                                     ; preds = %block_401554
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !2428
  %92 = load i64, i64* @stdout, align 128
  store i64 %92, i64* %RDI, align 8, !tbaa !2428
  %93 = add i64 %230, -40
  %94 = add i64 %243, 23
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %215, align 1, !tbaa !2451
  %97 = bitcast i64* %211 to double*
  store double 0.000000e+00, double* %97, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %98 = add i64 %243, -3957
  %99 = add i64 %243, 30
  %100 = load i64, i64* %RSP, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %RSP, align 8, !tbaa !2428
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  %103 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %229)
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -48
  %106 = load i32, i32* %EAX, align 4
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %109, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_4015b6

block_4014fd:                                     ; preds = %block_4014d7
  %110 = add i64 %294, -20
  %111 = add i64 %293, 8
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %16, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #9
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %23, align 1, !tbaa !2446
  %125 = xor i32 %114, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %28, align 1, !tbaa !2450
  %129 = zext i1 %117 to i8
  store i8 %129, i8* %31, align 1, !tbaa !2447
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %34, align 1, !tbaa !2448
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %40, align 1, !tbaa !2449
  %137 = add i64 %293, 14
  store i64 %137, i64* %PC, align 8
  store i32 %114, i32* %112, align 4
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %138, -64
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  br label %block_4014cb

block_4015b6:                                     ; preds = %block_40156f, %block_401595
  %140 = phi i64 [ %.pre12, %block_401595 ], [ %267, %block_40156f ]
  %MEMORY.0 = phi %struct.Memory* [ %103, %block_401595 ], [ %259, %block_40156f ]
  %141 = load i64, i64* @stdout, align 128
  store i64 %141, i64* %RDI, align 8, !tbaa !2428
  %142 = add i64 %140, -3958
  %143 = add i64 %140, 13
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %148 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -52
  %151 = load i32, i32* %EAX, align 4
  %152 = add i64 %148, 5
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %ECX, align 4
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %PC, align 8
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %157 = load i64, i64* %RSP, align 8
  %158 = add i64 %157, 64
  store i64 %158, i64* %RSP, align 8, !tbaa !2428
  %159 = icmp ugt i64 %157, -65
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %16, align 1, !tbaa !2432
  %161 = trunc i64 %158 to i32
  %162 = and i32 %161, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162) #9
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %23, align 1, !tbaa !2446
  %167 = xor i64 %158, %157
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %28, align 1, !tbaa !2450
  %171 = icmp eq i64 %158, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %31, align 1, !tbaa !2447
  %173 = lshr i64 %158, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %34, align 1, !tbaa !2448
  %175 = lshr i64 %157, 63
  %176 = xor i64 %173, %175
  %177 = add nuw nsw i64 %176, %173
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %40, align 1, !tbaa !2449
  %180 = add i64 %156, 7
  store i64 %180, i64* %PC, align 8
  %181 = add i64 %157, 72
  %182 = inttoptr i64 %158 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RBP, align 8, !tbaa !2428
  store i64 %181, i64* %RSP, align 8, !tbaa !2428
  %184 = add i64 %156, 8
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %181 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %PC, align 8, !tbaa !2428
  %187 = add i64 %157, 80
  store i64 %187, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %147

block_401515:                                     ; preds = %block_401510, %block_4014a0
  %188 = phi i64 [ %91, %block_4014a0 ], [ %247, %block_401510 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4014a0 ], [ %MEMORY.2, %block_401510 ]
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RDI, align 8, !tbaa !2428
  %189 = add i64 %188, -3525
  %190 = add i64 %188, 12
  %191 = load i64, i64* %RSP, align 8, !tbaa !2428
  %192 = add i64 %191, -8
  %193 = inttoptr i64 %192 to i64*
  store i64 %190, i64* %193, align 8
  store i64 %192, i64* %RSP, align 8, !tbaa !2428
  store i64 %189, i64* %PC, align 8, !tbaa !2428
  %194 = tail call %struct.Memory* @sub_400750_generate_test_data(%struct.State* nonnull %0, i64 %189, %struct.Memory* %MEMORY.1)
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -32
  %197 = load i64, i64* %RAX, align 8
  %198 = load i64, i64* %PC, align 8
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %196 to i64*
  store i64 %197, i64* %200, align 8
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -20
  %203 = load i64, i64* %PC, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %202 to i32*
  store i32 0, i32* %205, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_40152c

block_4014f4:                                     ; preds = %block_4014d7
  %206 = add i64 %294, -21
  %207 = add i64 %293, 4
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i8*
  store i8 1, i8* %208, align 1
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 24
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br label %block_401510

block_401554:                                     ; preds = %block_40152c
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %212 = bitcast %union.VectorReg* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %212, align 1, !tbaa !2454
  %213 = add i64 %296, -40
  %214 = add i64 %325, 8
  store i64 %214, i64* %PC, align 8
  %215 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %216 = load i64, i64* %215, align 1
  %217 = inttoptr i64 %213 to i64*
  store i64 %216, i64* %217, align 8
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -32
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RDI, align 8, !tbaa !2428
  %224 = add i64 %220, -3948
  %225 = add i64 %220, 9
  %226 = load i64, i64* %RSP, align 8, !tbaa !2428
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228, align 8
  store i64 %227, i64* %RSP, align 8, !tbaa !2428
  store i64 %224, i64* %PC, align 8, !tbaa !2428
  %229 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -21
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %231 to i8*
  %235 = load i8, i8* %234, align 1
  %236 = and i8 %235, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %237 = zext i8 %236 to i32
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237) #9
  %239 = trunc i32 %238 to i8
  %240 = xor i8 %239, 1
  store i8 %240, i8* %23, align 1, !tbaa !2446
  %241 = xor i8 %236, 1
  store i8 %241, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  store i8 0, i8* %28, align 1, !tbaa !2450
  %242 = icmp ne i8 %241, 0
  %.v15 = select i1 %242, i64 48, i64 10
  %243 = add i64 %232, %.v15
  %244 = icmp eq i8 %236, 0
  %245 = add i64 %243, 10
  store i64 %245, i64* %PC, align 8
  br i1 %244, label %block_401595, label %block_40156f

block_401510.loopexit:                            ; preds = %block_4014cb
  br label %block_401510

block_401510:                                     ; preds = %block_401510.loopexit, %block_4014f4
  %246 = phi i64 [ %210, %block_4014f4 ], [ %363, %block_401510.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %281, %block_4014f4 ], [ %MEMORY.4, %block_401510.loopexit ]
  %247 = add i64 %246, 5
  store i64 %247, i64* %PC, align 8, !tbaa !2428
  br label %block_401515

block_40156f:                                     ; preds = %block_401554
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !2428
  %248 = load i64, i64* @stdout, align 128
  store i64 %248, i64* %RDI, align 8, !tbaa !2428
  %249 = add i64 %230, -40
  %250 = add i64 %243, 23
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %215, align 1, !tbaa !2451
  %253 = bitcast i64* %211 to double*
  store double 0.000000e+00, double* %253, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %254 = add i64 %243, -3919
  %255 = add i64 %243, 30
  %256 = load i64, i64* %RSP, align 8, !tbaa !2428
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %RSP, align 8, !tbaa !2428
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  %259 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %229)
  %260 = load i64, i64* %RBP, align 8
  %261 = add i64 %260, -44
  %262 = load i32, i32* %EAX, align 4
  %263 = load i64, i64* %PC, align 8
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %265, align 4
  %266 = load i64, i64* %PC, align 8
  %267 = add i64 %266, 38
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br label %block_4015b6

block_4014d7:                                     ; preds = %block_4014cb
  %268 = add i64 %327, -16
  %269 = add i64 %363, 4
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  %272 = add i64 %271, 8
  %273 = add i64 %363, 8
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 119), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %276 = add i64 %363, -3783
  %277 = add i64 %363, 20
  %278 = load i64, i64* %RSP, align 8, !tbaa !2428
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %RSP, align 8, !tbaa !2428
  store i64 %276, i64* %PC, align 8, !tbaa !2428
  %281 = tail call fastcc %struct.Memory* @ext_400610_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %282 = load i32, i32* %EAX, align 4
  %283 = load i64, i64* %PC, align 8
  store i8 0, i8* %16, align 1, !tbaa !2432
  %284 = and i32 %282, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #9
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2450
  %289 = icmp eq i32 %282, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %31, align 1, !tbaa !2447
  %291 = lshr i32 %282, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  %.v16 = select i1 %289, i64 9, i64 18
  %293 = add i64 %283, %.v16
  store i64 %293, i64* %PC, align 8, !tbaa !2428
  %294 = load i64, i64* %RBP, align 8
  br i1 %289, label %block_4014f4, label %block_4014fd

block_40152c:                                     ; preds = %block_401536, %block_401515
  %295 = phi i64 [ %.pre11, %block_401515 ], [ %405, %block_401536 ]
  %MEMORY.3 = phi %struct.Memory* [ %194, %block_401515 ], [ %373, %block_401536 ]
  %296 = load i64, i64* %RBP, align 8
  %297 = add i64 %296, -20
  %298 = add i64 %295, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, -30
  %302 = icmp ult i32 %300, 30
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %16, align 1, !tbaa !2432
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #9
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %23, align 1, !tbaa !2446
  %309 = xor i32 %300, 16
  %310 = xor i32 %309, %301
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %28, align 1, !tbaa !2450
  %314 = icmp eq i32 %301, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %31, align 1, !tbaa !2447
  %316 = lshr i32 %301, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %34, align 1, !tbaa !2448
  %318 = lshr i32 %300, 31
  %319 = xor i32 %316, %318
  %320 = add nuw nsw i32 %319, %318
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %40, align 1, !tbaa !2449
  %323 = icmp ne i8 %317, 0
  %324 = xor i1 %323, %321
  %.v14 = select i1 %324, i64 10, i64 40
  %325 = add i64 %295, %.v14
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  br i1 %324, label %block_401536, label %block_401554

block_4014cb:                                     ; preds = %block_4014c4, %block_4014fd
  %326 = phi i64 [ %.pre, %block_4014c4 ], [ %139, %block_4014fd ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_4014c4 ], [ %281, %block_4014fd ]
  %327 = load i64, i64* %RBP, align 8
  %328 = add i64 %327, -20
  %329 = add i64 %326, 3
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = add i64 %327, -8
  %334 = add i64 %326, 6
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sub i32 %331, %336
  %338 = icmp ult i32 %331, %336
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %16, align 1, !tbaa !2432
  %340 = and i32 %337, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340) #9
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %23, align 1, !tbaa !2446
  %345 = xor i32 %336, %331
  %346 = xor i32 %345, %337
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %28, align 1, !tbaa !2450
  %350 = icmp eq i32 %337, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %31, align 1, !tbaa !2447
  %352 = lshr i32 %337, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %34, align 1, !tbaa !2448
  %354 = lshr i32 %331, 31
  %355 = lshr i32 %336, 31
  %356 = xor i32 %355, %354
  %357 = xor i32 %352, %354
  %358 = add nuw nsw i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %40, align 1, !tbaa !2449
  %361 = icmp ne i8 %353, 0
  %362 = xor i1 %361, %359
  %.v13 = select i1 %362, i64 12, i64 69
  %363 = add i64 %326, %.v13
  store i64 %363, i64* %PC, align 8, !tbaa !2428
  br i1 %362, label %block_4014d7, label %block_401510.loopexit

block_401536:                                     ; preds = %block_40152c
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RSI, align 8, !tbaa !2428
  %364 = add i64 %296, -32
  %365 = add i64 %325, 11
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RDI, align 8, !tbaa !2428
  %368 = add i64 %325, -3222
  %369 = add i64 %325, 16
  %370 = load i64, i64* %RSP, align 8, !tbaa !2428
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372, align 8
  store i64 %371, i64* %RSP, align 8, !tbaa !2428
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  %373 = tail call %struct.Memory* @sub_4008a0_compdecomp(%struct.State* nonnull %0, i64 %368, %struct.Memory* %MEMORY.3)
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -20
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = add i32 %379, 1
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = icmp eq i32 %379, -1
  %383 = icmp eq i32 %380, 0
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %16, align 1, !tbaa !2432
  %386 = and i32 %380, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386) #9
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %23, align 1, !tbaa !2446
  %391 = xor i32 %380, %379
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %28, align 1, !tbaa !2450
  %395 = zext i1 %383 to i8
  store i8 %395, i8* %31, align 1, !tbaa !2447
  %396 = lshr i32 %380, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %34, align 1, !tbaa !2448
  %398 = lshr i32 %379, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %396
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %40, align 1, !tbaa !2449
  %403 = add i64 %376, 9
  store i64 %403, i64* %PC, align 8
  store i32 %380, i32* %378, align 4
  %404 = load i64, i64* %PC, align 8
  %405 = add i64 %404, -35
  store i64 %405, i64* %PC, align 8, !tbaa !2428
  br label %block_40152c

block_4014c4:                                     ; preds = %block_4014a0
  %406 = add i64 %61, -20
  %407 = add i64 %91, 7
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  store i32 1, i32* %408, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4014cb
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008a0_compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = load i64, i64* %R15, align 8
  %13 = add i64 %11, 5
  store i64 %13, i64* %PC, align 8
  %14 = add i64 %8, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %R14, align 8
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %PC, align 8
  %19 = add i64 %8, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* %RBX, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = add i64 %8, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %8, -13112
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  %28 = icmp ult i64 %24, 13080
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1, !tbaa !2432
  %31 = trunc i64 %27 to i32
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #9
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1, !tbaa !2446
  %38 = xor i64 %24, 16
  %39 = xor i64 %38, %27
  %40 = lshr i64 %39, 4
  %41 = trunc i64 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = icmp eq i64 %27, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1, !tbaa !2447
  %47 = lshr i64 %27, 63
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1, !tbaa !2448
  %50 = lshr i64 %24, 63
  %51 = xor i64 %47, %50
  %52 = add nuw nsw i64 %51, %50
  %53 = icmp eq i64 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1, !tbaa !2449
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %RDI, align 8
  %59 = add i64 %26, 11
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -40
  %63 = load i64, i64* %RSI, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RSI, align 8, !tbaa !2428
  %73 = add i64 %67, -112
  %74 = add i64 %69, 8
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -40
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %RSI, align 8, !tbaa !2428
  %83 = icmp eq i64 %81, -1
  %84 = icmp eq i64 %82, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %30, align 1, !tbaa !2432
  %87 = trunc i64 %82 to i32
  %88 = and i32 %87, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #9
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %37, align 1, !tbaa !2446
  %93 = xor i64 %82, %81
  %94 = lshr i64 %93, 4
  %95 = trunc i64 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %43, align 1, !tbaa !2450
  %97 = zext i1 %84 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2447
  %98 = lshr i64 %82, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %49, align 1, !tbaa !2448
  %100 = lshr i64 %81, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %55, align 1, !tbaa !2449
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  %105 = add i64 %78, -656
  %106 = add i64 %78, 16
  %107 = load i64, i64* %RSP, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %RSP, align 8, !tbaa !2428
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %110 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %111 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -10624
  store i64 %113, i64* %RDI, align 8, !tbaa !2428
  store i64 2048, i64* %RSI, align 8, !tbaa !2428
  %114 = add i64 %112, -10368
  store i64 %114, i64* %R9, align 8, !tbaa !2428
  %115 = add i64 %112, -8320
  store i64 %115, i64* %R10, align 8, !tbaa !2428
  %116 = add i64 %112, -6272
  store i64 %116, i64* %R11, align 8, !tbaa !2428
  store i64 4096, i64* %R8, align 8, !tbaa !2428
  store i64 4096, i64* %RBX, align 8, !tbaa !2428
  %117 = add i64 %112, -4224
  store i64 %117, i64* %R14, align 8, !tbaa !2428
  %118 = add i64 %112, -120
  %119 = load i64, i64* %RAX, align 8
  %120 = add i64 %111, 64
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -120
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i64 %122, -40
  %129 = add i64 %124, 8
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %R15, align 8, !tbaa !2428
  %133 = icmp eq i64 %131, -1
  %134 = icmp eq i64 %132, 0
  %135 = or i1 %133, %134
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1, !tbaa !2432
  %137 = trunc i64 %132 to i32
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #9
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %37, align 1, !tbaa !2446
  %143 = xor i64 %132, %131
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %43, align 1, !tbaa !2450
  %147 = zext i1 %134 to i8
  store i8 %147, i8* %46, align 1, !tbaa !2447
  %148 = lshr i64 %132, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %49, align 1, !tbaa !2448
  %150 = lshr i64 %131, 63
  %151 = xor i64 %148, %150
  %152 = add nuw nsw i64 %151, %148
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %55, align 1, !tbaa !2449
  %155 = add i64 %122, -13008
  %156 = load i64, i64* %RDI, align 8
  %157 = add i64 %124, 23
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %RAX, align 8
  %160 = load i64, i64* %PC, align 8
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -13016
  %163 = load i64, i64* %RSI, align 8
  %164 = add i64 %160, 10
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %ECX, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %PC, align 8
  store i64 %167, i64* %RSI, align 8, !tbaa !2428
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -13024
  %171 = load i64, i64* %RDX, align 8
  %172 = add i64 %168, 9
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %R15, align 8
  %175 = load i64, i64* %PC, align 8
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -13032
  %178 = load i64, i64* %R14, align 8
  %179 = add i64 %175, 10
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -13036
  %183 = load i32, i32* %ECX, align 4
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, 6
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %182 to i32*
  store i32 %183, i32* %186, align 4
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -13048
  %189 = load i64, i64* %R10, align 8
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %188 to i64*
  store i64 %189, i64* %192, align 8
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -13056
  %195 = load i64, i64* %R11, align 8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 7
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198, align 8
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -13064
  %201 = load i64, i64* %RBX, align 8
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 7
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -13072
  %207 = load i64, i64* %R9, align 8
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i64*
  store i64 %207, i64* %210, align 8
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, -870
  %213 = add i64 %211, 5
  %214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %217 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %110)
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -13032
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 7
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  store i64 %223, i64* %RDI, align 8, !tbaa !2428
  %224 = add i64 %218, -13036
  %225 = add i64 %220, 16
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RSI, align 8, !tbaa !2428
  %229 = add i64 %218, -13064
  %230 = add i64 %220, 23
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RDX, align 8, !tbaa !2428
  %233 = add i64 %220, -875
  %234 = add i64 %220, 28
  %235 = load i64, i64* %RSP, align 8, !tbaa !2428
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  store i64 %233, i64* %PC, align 8, !tbaa !2428
  %238 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %217)
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -13056
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, 7
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  store i64 %244, i64* %RDI, align 8, !tbaa !2428
  %245 = add i64 %239, -13036
  %246 = add i64 %241, 16
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RSI, align 8, !tbaa !2428
  %250 = add i64 %239, -13016
  %251 = add i64 %241, 23
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RDX, align 8, !tbaa !2428
  %254 = add i64 %241, -903
  %255 = add i64 %241, 28
  %256 = load i64, i64* %RSP, align 8, !tbaa !2428
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %RSP, align 8, !tbaa !2428
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  %259 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %238)
  %260 = load i64, i64* %RBP, align 8
  %261 = add i64 %260, -13048
  %262 = load i64, i64* %PC, align 8
  %263 = add i64 %262, 7
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  store i64 %265, i64* %RDI, align 8, !tbaa !2428
  %266 = add i64 %260, -13036
  %267 = add i64 %262, 16
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RSI, align 8, !tbaa !2428
  %271 = add i64 %260, -13016
  %272 = add i64 %262, 23
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RDX, align 8, !tbaa !2428
  %275 = add i64 %262, -931
  %276 = add i64 %262, 28
  %277 = load i64, i64* %RSP, align 8, !tbaa !2428
  %278 = add i64 %277, -8
  %279 = inttoptr i64 %278 to i64*
  store i64 %276, i64* %279, align 8
  store i64 %278, i64* %RSP, align 8, !tbaa !2428
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  %280 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %259)
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -13072
  %283 = load i64, i64* %PC, align 8
  %284 = add i64 %283, 7
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %282 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  store i64 %286, i64* %RDI, align 8, !tbaa !2428
  %287 = add i64 %281, -13036
  %288 = add i64 %283, 16
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RSI, align 8, !tbaa !2428
  %292 = add i64 %281, -13016
  %293 = add i64 %283, 23
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RDX, align 8, !tbaa !2428
  %296 = add i64 %283, -959
  %297 = add i64 %283, 28
  %298 = load i64, i64* %RSP, align 8, !tbaa !2428
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %RSP, align 8, !tbaa !2428
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  %301 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %280)
  %302 = load i64, i64* %RBP, align 8
  %303 = add i64 %302, -13008
  %304 = load i64, i64* %PC, align 8
  %305 = add i64 %304, 7
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %303 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RDI, align 8, !tbaa !2428
  %308 = add i64 %302, -13036
  %309 = add i64 %304, 13
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  %313 = add i64 %302, -13024
  %314 = add i64 %304, 20
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDX, align 8, !tbaa !2428
  %317 = add i64 %304, -987
  %318 = add i64 %304, 25
  %319 = load i64, i64* %RSP, align 8, !tbaa !2428
  %320 = add i64 %319, -8
  %321 = inttoptr i64 %320 to i64*
  store i64 %318, i64* %321, align 8
  store i64 %320, i64* %RSP, align 8, !tbaa !2428
  store i64 %317, i64* %PC, align 8, !tbaa !2428
  %322 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %301)
  %323 = load i64, i64* %RBP, align 8
  %324 = add i64 %323, -48
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 8
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %324 to i64*
  store i64 0, i64* %327, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4009fc

block_400bf0:                                     ; preds = %block_400afd
  %328 = add i64 %1042, 4
  store i64 %328, i64* %PC, align 8
  %329 = load i64, i64* %1017, align 8
  %330 = add i64 %329, 256
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp ugt i64 %329, -257
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %30, align 1, !tbaa !2432
  %333 = trunc i64 %330 to i32
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334) #9
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %37, align 1, !tbaa !2446
  %339 = xor i64 %330, %329
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %43, align 1, !tbaa !2450
  %343 = icmp eq i64 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %46, align 1, !tbaa !2447
  %345 = lshr i64 %330, 63
  %346 = trunc i64 %345 to i8
  store i8 %346, i8* %49, align 1, !tbaa !2448
  %347 = lshr i64 %329, 63
  %348 = xor i64 %345, %347
  %349 = add nuw nsw i64 %348, %345
  %350 = icmp eq i64 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %55, align 1, !tbaa !2449
  %352 = shl i64 %330, 2
  %353 = add i64 %1012, -8320
  %354 = add i64 %353, %352
  %355 = add i64 %1042, 21
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 0, i32* %356, align 4
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -10656
  %359 = load i64, i64* %PC, align 8
  %360 = add i64 %359, 11
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %358 to i64*
  store i64 0, i64* %361, align 8
  %362 = load i64, i64* %RBP, align 8
  %363 = add i64 %362, -10664
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, 11
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %363 to i64*
  store i64 0, i64* %366, align 8
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -10640
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, 11
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %368 to i64*
  store i64 0, i64* %371, align 8
  %.pre122 = load i64, i64* %PC, align 8
  br label %block_400c26

block_4011b3:                                     ; preds = %block_4011a0
  %372 = add i64 %484, -56
  %373 = add i64 %496, 4
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  %376 = add i64 %375, -1
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = icmp eq i64 %375, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %30, align 1, !tbaa !2432
  %379 = trunc i64 %376 to i32
  %380 = and i32 %379, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #9
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %37, align 1, !tbaa !2446
  %385 = xor i64 %376, %375
  %386 = lshr i64 %385, 4
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %43, align 1, !tbaa !2450
  %389 = icmp eq i64 %376, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %46, align 1, !tbaa !2447
  %391 = lshr i64 %376, 63
  %392 = trunc i64 %391 to i8
  store i8 %392, i8* %49, align 1, !tbaa !2448
  %393 = lshr i64 %375, 63
  %394 = xor i64 %391, %393
  %395 = add nuw nsw i64 %394, %393
  %396 = icmp eq i64 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %55, align 1, !tbaa !2449
  %398 = shl i64 %376, 3
  %399 = add i64 %484, -12736
  %400 = add i64 %399, %398
  %401 = add i64 %496, 16
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = add i64 %496, 20
  store i64 %404, i64* %PC, align 8
  %405 = load i64, i64* %374, align 8
  store i64 %405, i64* %RCX, align 8, !tbaa !2428
  %406 = shl i64 %405, 3
  %407 = add i64 %406, -12736
  %408 = add i64 %407, %484
  %409 = add i64 %496, 28
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i64*
  store i64 %403, i64* %410, align 8
  %411 = load i64, i64* %RBP, align 8
  %412 = add i64 %411, -56
  %413 = load i64, i64* %PC, align 8
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415, align 8
  %417 = add i64 %416, -1
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  %418 = icmp eq i64 %416, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %30, align 1, !tbaa !2432
  %420 = trunc i64 %417 to i32
  %421 = and i32 %420, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421) #9
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %37, align 1, !tbaa !2446
  %426 = xor i64 %417, %416
  %427 = lshr i64 %426, 4
  %428 = trunc i64 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %43, align 1, !tbaa !2450
  %430 = icmp eq i64 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %46, align 1, !tbaa !2447
  %432 = lshr i64 %417, 63
  %433 = trunc i64 %432 to i8
  store i8 %433, i8* %49, align 1, !tbaa !2448
  %434 = lshr i64 %416, 63
  %435 = xor i64 %432, %434
  %436 = add nuw nsw i64 %435, %434
  %437 = icmp eq i64 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %55, align 1, !tbaa !2449
  %439 = add i64 %411, -12992
  %440 = add i64 %439, %417
  %441 = add i64 %413, 15
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i8*
  %443 = load i8, i8* %442, align 1
  store i8 %443, i8* %DL, align 1, !tbaa !2453
  %444 = add i64 %413, 19
  store i64 %444, i64* %PC, align 8
  %445 = load i64, i64* %415, align 8
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = add i64 %445, -12992
  %447 = add i64 %446, %411
  %448 = add i64 %413, 26
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i8*
  store i8 %443, i8* %449, align 1
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -56
  %452 = load i64, i64* %PC, align 8
  %453 = add i64 %452, 4
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %451 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, -1
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = icmp ne i64 %455, 0
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %30, align 1, !tbaa !2432
  %459 = trunc i64 %456 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #9
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %37, align 1, !tbaa !2446
  %465 = xor i64 %455, 16
  %466 = xor i64 %465, %456
  %467 = lshr i64 %466, 4
  %468 = trunc i64 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %43, align 1, !tbaa !2450
  %470 = icmp eq i64 %456, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %46, align 1, !tbaa !2447
  %472 = lshr i64 %456, 63
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %49, align 1, !tbaa !2448
  %474 = lshr i64 %455, 63
  %475 = xor i64 %472, %474
  %476 = xor i64 %472, 1
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %55, align 1, !tbaa !2449
  %480 = add i64 %452, 12
  store i64 %480, i64* %PC, align 8
  store i64 %456, i64* %454, align 8
  %481 = load i64, i64* %PC, align 8
  %482 = add i64 %481, -135
  store i64 %482, i64* %PC, align 8, !tbaa !2428
  br label %block_40116e

block_4011a0:                                     ; preds = %block_40116e, %block_401183
  %483 = phi i64 [ %2543, %block_40116e ], [ %.pre141, %block_401183 ]
  %484 = load i64, i64* %RBP, align 8
  %485 = add i64 %484, -13097
  %486 = add i64 %483, 6
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i8*
  %488 = load i8, i8* %487, align 1
  store i8 %488, i8* %AL, align 1, !tbaa !2453
  %489 = and i8 %488, 1
  store i8 0, i8* %30, align 1, !tbaa !2432
  %490 = zext i8 %489 to i32
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490) #9
  %492 = trunc i32 %491 to i8
  %493 = xor i8 %492, 1
  store i8 %493, i8* %37, align 1, !tbaa !2446
  %494 = xor i8 %489, 1
  store i8 %494, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %495 = icmp eq i8 %494, 0
  %.v150 = select i1 %495, i64 19, i64 14
  %496 = add i64 %483, %.v150
  store i64 %496, i64* %PC, align 8, !tbaa !2428
  br i1 %495, label %block_4011b3, label %block_4011ae

block_400a44:                                     ; preds = %block_4009fc
  %AL = bitcast %union.anon* %3 to i8*
  %CL = bitcast %union.anon* %4 to i8*
  %DL = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %497 = add i64 %1237, -64
  %498 = add i64 %1271, 8
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %497 to i64*
  store i64 0, i64* %499, align 8
  %500 = load i64, i64* %RBP, align 8
  %501 = add i64 %500, -48
  %502 = load i64, i64* %PC, align 8
  %503 = add i64 %502, 8
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %501 to i64*
  store i64 0, i64* %504, align 8
  %.pre116 = load i64, i64* %PC, align 8
  br label %block_400a54

block_400d97:                                     ; preds = %block_400c26
  %505 = add i64 %2991, -10664
  %506 = add i64 %3018, 8
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  %509 = add i64 %508, -64
  %510 = icmp ult i64 %508, 64
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %30, align 1, !tbaa !2432
  %512 = trunc i64 %509 to i32
  %513 = and i32 %512, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513) #9
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %37, align 1, !tbaa !2446
  %518 = xor i64 %509, %508
  %519 = lshr i64 %518, 4
  %520 = trunc i64 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %43, align 1, !tbaa !2450
  %522 = icmp eq i64 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %46, align 1, !tbaa !2447
  %524 = lshr i64 %509, 63
  %525 = trunc i64 %524 to i8
  store i8 %525, i8* %49, align 1, !tbaa !2448
  %526 = lshr i64 %508, 63
  %527 = xor i64 %524, %526
  %528 = add nuw nsw i64 %527, %526
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %55, align 1, !tbaa !2449
  %531 = or i1 %522, %510
  %.v157 = select i1 %531, i64 55, i64 14
  %532 = add i64 %3018, %.v157
  store i64 %532, i64* %PC, align 8, !tbaa !2428
  br i1 %531, label %block_400dce, label %block_400da5

block_401298:                                     ; preds = %block_40128a
  %533 = add i64 %2565, -80
  %534 = add i64 %2599, 4
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  %537 = shl i64 %536, 1
  %538 = or i64 %537, 1
  store i64 %538, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %539 = trunc i64 %538 to i32
  %540 = and i32 %539, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540) #9
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %46, align 1, !tbaa !2447
  %545 = lshr i64 %536, 62
  %546 = and i64 %545, 1
  %547 = trunc i64 %546 to i8
  store i8 %547, i8* %49, align 1, !tbaa !2448
  %548 = lshr i64 %536, 62
  %549 = and i64 %548, 1
  %550 = xor i64 %546, %549
  %551 = add nuw nsw i64 %550, %546
  %552 = icmp eq i64 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %55, align 1, !tbaa !2449
  %554 = add i64 %2599, 16
  store i64 %554, i64* %PC, align 8
  store i64 %538, i64* %535, align 8
  %555 = load i64, i64* %RBP, align 8
  %556 = add i64 %555, -104
  %557 = load i64, i64* %PC, align 8
  %558 = add i64 %557, 4
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %556 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = add i64 %557, 7
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i8*
  %563 = load i8, i8* %562, align 1
  %564 = zext i8 %563 to i64
  store i64 %564, i64* %RCX, align 8, !tbaa !2428
  %565 = zext i8 %563 to i64
  store i64 %565, i64* %RAX, align 8, !tbaa !2428
  %566 = add i64 %555, -72
  %567 = add i64 %557, 13
  store i64 %567, i64* %PC, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  %570 = and i64 %569, %565
  store i64 %570, i64* %RAX, align 8, !tbaa !2428
  %571 = trunc i64 %570 to i32
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571) #9
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  %576 = icmp eq i64 %570, 0
  %577 = zext i1 %576 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %575, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %577, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v163 = select i1 %576, i64 35, i64 23
  %578 = add i64 %557, %.v163
  store i64 %578, i64* %PC, align 8, !tbaa !2428
  br i1 %576, label %block_4012d0, label %block_4012bf

block_401183:                                     ; preds = %block_40116e
  %579 = load i64, i64* %RBP, align 8
  %580 = add i64 %579, -56
  %581 = add i64 %2543, 4
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  %584 = add i64 %583, -1
  store i64 %584, i64* %RAX, align 8, !tbaa !2428
  %585 = icmp eq i64 %583, 0
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %30, align 1, !tbaa !2432
  %587 = trunc i64 %584 to i32
  %588 = and i32 %587, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588) #9
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %37, align 1, !tbaa !2446
  %593 = xor i64 %584, %583
  %594 = lshr i64 %593, 4
  %595 = trunc i64 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %43, align 1, !tbaa !2450
  %597 = icmp eq i64 %584, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %46, align 1, !tbaa !2447
  %599 = lshr i64 %584, 63
  %600 = trunc i64 %599 to i8
  store i8 %600, i8* %49, align 1, !tbaa !2448
  %601 = lshr i64 %583, 63
  %602 = xor i64 %599, %601
  %603 = add nuw nsw i64 %602, %601
  %604 = icmp eq i64 %603, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %55, align 1, !tbaa !2449
  %606 = shl i64 %584, 3
  %607 = add i64 %579, -12736
  %608 = add i64 %607, %606
  %609 = add i64 %2543, 16
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i64*
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = add i64 %579, -88
  %613 = add i64 %2543, 20
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  %616 = sub i64 %611, %615
  %617 = icmp ult i64 %611, %615
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %30, align 1, !tbaa !2432
  %619 = trunc i64 %616 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620) #9
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %37, align 1, !tbaa !2446
  %625 = xor i64 %615, %611
  %626 = xor i64 %625, %616
  %627 = lshr i64 %626, 4
  %628 = trunc i64 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %43, align 1, !tbaa !2450
  %630 = icmp eq i64 %616, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %46, align 1, !tbaa !2447
  %632 = lshr i64 %616, 63
  %633 = trunc i64 %632 to i8
  store i8 %633, i8* %49, align 1, !tbaa !2448
  %634 = lshr i64 %611, 63
  %635 = lshr i64 %615, 63
  %636 = xor i64 %635, %634
  %637 = xor i64 %632, %634
  %638 = add nuw nsw i64 %637, %636
  %639 = icmp eq i64 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %55, align 1, !tbaa !2449
  %641 = or i1 %630, %617
  %642 = xor i1 %641, true
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %CL, align 1, !tbaa !2453
  %644 = add i64 %579, -13097
  %645 = add i64 %2543, 29
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i8*
  store i8 %643, i8* %646, align 1
  %.pre141 = load i64, i64* %PC, align 8
  br label %block_4011a0

block_401362:                                     ; preds = %block_401346
  %647 = add i64 %884, 8
  store i64 %647, i64* %PC, align 8
  store i64 128, i64* %859, align 8
  %648 = load i64, i64* %RBP, align 8
  %649 = add i64 %648, -104
  %650 = load i64, i64* %PC, align 8
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652, align 8
  %654 = add i64 %653, 1
  store i64 %654, i64* %RAX, align 8, !tbaa !2428
  %655 = icmp eq i64 %653, -1
  %656 = icmp eq i64 %654, 0
  %657 = or i1 %655, %656
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %30, align 1, !tbaa !2432
  %659 = trunc i64 %654 to i32
  %660 = and i32 %659, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660) #9
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %37, align 1, !tbaa !2446
  %665 = xor i64 %654, %653
  %666 = lshr i64 %665, 4
  %667 = trunc i64 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %43, align 1, !tbaa !2450
  %669 = zext i1 %656 to i8
  store i8 %669, i8* %46, align 1, !tbaa !2447
  %670 = lshr i64 %654, 63
  %671 = trunc i64 %670 to i8
  store i8 %671, i8* %49, align 1, !tbaa !2448
  %672 = lshr i64 %653, 63
  %673 = xor i64 %670, %672
  %674 = add nuw nsw i64 %673, %670
  %675 = icmp eq i64 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %55, align 1, !tbaa !2449
  %677 = add i64 %650, 12
  store i64 %677, i64* %PC, align 8
  store i64 %654, i64* %652, align 8
  %.pre148 = load i64, i64* %PC, align 8
  br label %block_401376

block_400f60:                                     ; preds = %block_400f2f, %block_400f4e
  %678 = phi i64 [ %917, %block_400f2f ], [ %.pre132, %block_400f4e ]
  %679 = phi i64 [ %886, %block_400f2f ], [ %.pre131, %block_400f4e ]
  %680 = add i64 %679, -72
  %681 = add i64 %678, 4
  store i64 %681, i64* %PC, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  %684 = lshr i64 %683, 63
  %685 = trunc i64 %684 to i8
  %686 = trunc i64 %683 to i8
  %687 = and i8 %686, 1
  %688 = lshr i64 %683, 1
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  store i8 %687, i8* %30, align 1, !tbaa !2453
  %689 = trunc i64 %688 to i32
  %690 = and i32 %689, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690) #9
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %695 = icmp eq i64 %688, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %49, align 1, !tbaa !2453
  store i8 %685, i8* %55, align 1, !tbaa !2453
  %697 = add i64 %678, 12
  store i64 %697, i64* %PC, align 8
  store i64 %688, i64* %682, align 8
  %698 = load i64, i64* %RBP, align 8
  %699 = add i64 %698, -48
  %700 = load i64, i64* %PC, align 8
  %701 = add i64 %700, 4
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %699 to i64*
  %703 = load i64, i64* %702, align 8
  %704 = add i64 %703, 1
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = icmp eq i64 %703, -1
  %706 = icmp eq i64 %704, 0
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %30, align 1, !tbaa !2432
  %709 = trunc i64 %704 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710) #9
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %37, align 1, !tbaa !2446
  %715 = xor i64 %704, %703
  %716 = lshr i64 %715, 4
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %43, align 1, !tbaa !2450
  %719 = zext i1 %706 to i8
  store i8 %719, i8* %46, align 1, !tbaa !2447
  %720 = lshr i64 %704, 63
  %721 = trunc i64 %720 to i8
  store i8 %721, i8* %49, align 1, !tbaa !2448
  %722 = lshr i64 %703, 63
  %723 = xor i64 %720, %722
  %724 = add nuw nsw i64 %723, %720
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %55, align 1, !tbaa !2449
  %727 = add i64 %700, 12
  store i64 %727, i64* %PC, align 8
  store i64 %704, i64* %702, align 8
  %728 = load i64, i64* %PC, align 8
  %729 = add i64 %728, -269
  store i64 %729, i64* %PC, align 8, !tbaa !2428
  br label %block_400e6b

block_400d5a:                                     ; preds = %block_400d0e, %block_400d4c
  %730 = phi i64 [ %2146, %block_400d0e ], [ %.pre127, %block_400d4c ]
  %731 = phi i64 [ %2110, %block_400d0e ], [ %.pre126, %block_400d4c ]
  %732 = add i64 %731, -48
  %733 = add i64 %730, 4
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX, align 8, !tbaa !2428
  %736 = add i64 %731, -10664
  %737 = add i64 %730, 11
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %736 to i64*
  %739 = load i64, i64* %738, align 8
  %740 = sub i64 %735, %739
  %741 = icmp ult i64 %735, %739
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %30, align 1, !tbaa !2432
  %743 = trunc i64 %740 to i32
  %744 = and i32 %743, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744) #9
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %37, align 1, !tbaa !2446
  %749 = xor i64 %739, %735
  %750 = xor i64 %749, %740
  %751 = lshr i64 %750, 4
  %752 = trunc i64 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %43, align 1, !tbaa !2450
  %754 = icmp eq i64 %740, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %46, align 1, !tbaa !2447
  %756 = lshr i64 %740, 63
  %757 = trunc i64 %756 to i8
  store i8 %757, i8* %49, align 1, !tbaa !2448
  %758 = lshr i64 %735, 63
  %759 = lshr i64 %739, 63
  %760 = xor i64 %759, %758
  %761 = xor i64 %756, %758
  %762 = add nuw nsw i64 %761, %760
  %763 = icmp eq i64 %762, 2
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %55, align 1, !tbaa !2449
  %765 = or i1 %754, %741
  %.v176 = select i1 %765, i64 28, i64 17
  %766 = add i64 %730, %.v176
  store i64 %766, i64* %PC, align 8, !tbaa !2428
  br i1 %765, label %block_400d7b, label %block_400d6b

block_4010e3:                                     ; preds = %block_4010b9
  %767 = add i64 %1427, -80
  %768 = add i64 %1454, 4
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  %771 = add i64 %770, 1
  store i64 %771, i64* %RAX, align 8, !tbaa !2428
  %772 = icmp eq i64 %770, -1
  %773 = icmp eq i64 %771, 0
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %30, align 1, !tbaa !2432
  %776 = trunc i64 %771 to i32
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777) #9
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %37, align 1, !tbaa !2446
  %782 = xor i64 %771, %770
  %783 = lshr i64 %782, 4
  %784 = trunc i64 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %43, align 1, !tbaa !2450
  %786 = zext i1 %773 to i8
  store i8 %786, i8* %46, align 1, !tbaa !2447
  %787 = lshr i64 %771, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %49, align 1, !tbaa !2448
  %789 = lshr i64 %770, 63
  %790 = xor i64 %787, %789
  %791 = add nuw nsw i64 %790, %787
  %792 = icmp eq i64 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %55, align 1, !tbaa !2449
  %794 = add i64 %1454, 12
  store i64 %794, i64* %PC, align 8
  store i64 %771, i64* %769, align 8
  %.pre135 = load i64, i64* %RBP, align 8
  %.pre136 = load i64, i64* %PC, align 8
  br label %block_4010ef

block_401351:                                     ; preds = %block_401346
  %795 = add i64 %884, 4
  store i64 %795, i64* %PC, align 8
  %796 = load i64, i64* %859, align 8
  %797 = lshr i64 %796, 63
  %798 = trunc i64 %797 to i8
  %799 = trunc i64 %796 to i8
  %800 = and i8 %799, 1
  %801 = lshr i64 %796, 1
  store i64 %801, i64* %RAX, align 8, !tbaa !2428
  store i8 %800, i8* %30, align 1, !tbaa !2453
  %802 = trunc i64 %801 to i32
  %803 = and i32 %802, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803) #9
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %808 = icmp eq i64 %801, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %49, align 1, !tbaa !2453
  store i8 %798, i8* %55, align 1, !tbaa !2453
  %810 = add i64 %884, 12
  store i64 %810, i64* %PC, align 8
  store i64 %801, i64* %859, align 8
  %811 = load i64, i64* %PC, align 8
  %812 = add i64 %811, 25
  store i64 %812, i64* %PC, align 8, !tbaa !2428
  br label %block_401376

block_400f4e:                                     ; preds = %block_400f2f
  %813 = add i64 %886, -10681
  %814 = add i64 %917, 7
  store i64 %814, i64* %PC, align 8
  %815 = inttoptr i64 %813 to i8*
  %816 = load i8, i8* %815, align 1
  %817 = sext i8 %816 to i64
  %818 = and i64 %817, 4294967294
  %819 = or i64 %818, 1
  %820 = trunc i64 %819 to i32
  store i64 %819, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %821 = and i32 %820, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821) #9
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %46, align 1, !tbaa !2447
  %826 = lshr i32 %820, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %828 = trunc i64 %819 to i8
  store i8 %828, i8* %CL, align 1, !tbaa !2453
  %829 = add i64 %917, 18
  store i64 %829, i64* %PC, align 8
  store i8 %828, i8* %815, align 1
  %.pre131 = load i64, i64* %RBP, align 8
  %.pre132 = load i64, i64* %PC, align 8
  br label %block_400f60

block_400da5:                                     ; preds = %block_400d97
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %830 = load i64, i64* @stderr, align 32
  store i64 %830, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %831 = add i64 %532, -1925
  %832 = add i64 %532, 25
  %833 = load i64, i64* %RSP, align 8, !tbaa !2428
  %834 = add i64 %833, -8
  %835 = inttoptr i64 %834 to i64*
  store i64 %832, i64* %835, align 8
  store i64 %834, i64* %RSP, align 8, !tbaa !2428
  store i64 %831, i64* %PC, align 8, !tbaa !2428
  %836 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %837 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %838 = load i64, i64* %RBP, align 8
  %839 = add i64 %838, -13080
  %840 = load i32, i32* %EAX, align 4
  %841 = add i64 %837, 11
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %842, align 4
  %843 = load i64, i64* %PC, align 8
  %844 = add i64 %843, -1913
  %845 = add i64 %843, 5
  %846 = load i64, i64* %RSP, align 8, !tbaa !2428
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848, align 8
  store i64 %847, i64* %RSP, align 8, !tbaa !2428
  store i64 %844, i64* %PC, align 8, !tbaa !2428
  %849 = tail call fastcc %struct.Memory* @ext_6020e8_exit(%struct.State* nonnull %0, %struct.Memory* %836)
  %850 = load i64, i64* %PC, align 8
  %851 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %850, %struct.Memory* %849)
  ret %struct.Memory* %851

block_400d4c:                                     ; preds = %block_400d0e
  %852 = add i64 %2146, 7
  store i64 %852, i64* %PC, align 8
  %853 = load i64, i64* %2114, align 8
  store i64 %853, i64* %RAX, align 8, !tbaa !2428
  %854 = add i64 %2146, 14
  store i64 %854, i64* %PC, align 8
  store i64 %853, i64* %2118, align 8
  %.pre126 = load i64, i64* %RBP, align 8
  %.pre127 = load i64, i64* %PC, align 8
  br label %block_400d5a

block_401346:                                     ; preds = %block_4012f7, %block_40130d
  %855 = phi i64 [ %1994, %block_4012f7 ], [ %.pre147, %block_40130d ]
  %856 = phi i64 [ %1182, %block_4012f7 ], [ %.pre146, %block_40130d ]
  %857 = add i64 %856, -72
  %858 = add i64 %855, 5
  store i64 %858, i64* %PC, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  %861 = add i64 %860, -1
  %862 = icmp eq i64 %860, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %30, align 1, !tbaa !2432
  %864 = trunc i64 %861 to i32
  %865 = and i32 %864, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865) #9
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %37, align 1, !tbaa !2446
  %870 = xor i64 %861, %860
  %871 = lshr i64 %870, 4
  %872 = trunc i64 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %43, align 1, !tbaa !2450
  %874 = icmp eq i64 %861, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %46, align 1, !tbaa !2447
  %876 = lshr i64 %861, 63
  %877 = trunc i64 %876 to i8
  store i8 %877, i8* %49, align 1, !tbaa !2448
  %878 = lshr i64 %860, 63
  %879 = xor i64 %876, %878
  %880 = add nuw nsw i64 %879, %878
  %881 = icmp eq i64 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %55, align 1, !tbaa !2449
  %883 = or i1 %874, %862
  %.v166 = select i1 %883, i64 28, i64 11
  %884 = add i64 %855, %.v166
  store i64 %884, i64* %PC, align 8, !tbaa !2428
  br i1 %883, label %block_401362, label %block_401351

block_400f2f:                                     ; preds = %block_400f0e, %block_400ef8
  %885 = phi i64 [ %.pre130, %block_400f0e ], [ %1235, %block_400ef8 ]
  %886 = load i64, i64* %RBP, align 8
  %887 = add i64 %886, -112
  %888 = add i64 %885, 4
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %RAX, align 8, !tbaa !2428
  %891 = add i64 %885, 7
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %890 to i8*
  %893 = load i8, i8* %892, align 1
  %894 = zext i8 %893 to i64
  store i64 %894, i64* %RCX, align 8, !tbaa !2428
  %895 = zext i8 %893 to i64
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = shl nuw nsw i64 %895, 3
  %897 = add nsw i64 %896, -10368
  %898 = add i64 %897, %886
  %899 = add i64 %885, 17
  store i64 %899, i64* %PC, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX, align 8, !tbaa !2428
  %902 = add i64 %886, -72
  %903 = add i64 %885, 21
  store i64 %903, i64* %PC, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  %906 = and i64 %905, %901
  store i64 %906, i64* %RAX, align 8, !tbaa !2428
  %907 = trunc i64 %906 to i32
  %908 = and i32 %907, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908) #9
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  %913 = icmp eq i64 %906, 0
  %914 = zext i1 %913 to i8
  %915 = lshr i64 %906, 63
  %916 = trunc i64 %915 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %912, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %914, i8* %46, align 1, !tbaa !2447
  store i8 %916, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v171 = select i1 %913, i64 49, i64 31
  %917 = add i64 %885, %.v171
  store i64 %917, i64* %PC, align 8, !tbaa !2428
  br i1 %913, label %block_400f60, label %block_400f4e

block_40111c:                                     ; preds = %block_401027, %block_40110c
  %918 = phi i64 [ %2957, %block_401027 ], [ %.pre138, %block_40110c ]
  %919 = phi i64 [ %2989, %block_401027 ], [ %.pre137, %block_40110c ]
  %920 = add i64 %918, -56
  %921 = add i64 %919, 9
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i64*
  %923 = load i64, i64* %922, align 8
  %924 = add i64 %923, 1
  store i64 %924, i64* %RAX, align 8, !tbaa !2428
  %925 = icmp eq i64 %923, -1
  %926 = icmp eq i64 %924, 0
  %927 = or i1 %925, %926
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %30, align 1, !tbaa !2432
  %929 = trunc i64 %924 to i32
  %930 = and i32 %929, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930) #9
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %37, align 1, !tbaa !2446
  %935 = xor i64 %924, %923
  %936 = lshr i64 %935, 4
  %937 = trunc i64 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %43, align 1, !tbaa !2450
  %939 = zext i1 %926 to i8
  store i8 %939, i8* %46, align 1, !tbaa !2447
  %940 = lshr i64 %924, 63
  %941 = trunc i64 %940 to i8
  store i8 %941, i8* %49, align 1, !tbaa !2448
  %942 = lshr i64 %923, 63
  %943 = xor i64 %940, %942
  %944 = add nuw nsw i64 %943, %940
  %945 = icmp eq i64 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %55, align 1, !tbaa !2449
  %947 = add i64 %919, 17
  store i64 %947, i64* %PC, align 8
  store i64 %924, i64* %922, align 8
  %948 = load i64, i64* %PC, align 8
  %949 = add i64 %948, -276
  store i64 %949, i64* %PC, align 8, !tbaa !2428
  br label %block_401019

block_40137b:                                     ; preds = %block_40128a
  %950 = add i64 %2565, -120
  %951 = add i64 %2599, 4
  store i64 %951, i64* %PC, align 8
  %952 = inttoptr i64 %950 to i64*
  %953 = load i64, i64* %952, align 8
  store i64 %953, i64* %RDI, align 8, !tbaa !2428
  %954 = add i64 %2599, -3467
  %955 = add i64 %2599, 9
  %956 = load i64, i64* %RSP, align 8, !tbaa !2428
  %957 = add i64 %956, -8
  %958 = inttoptr i64 %957 to i64*
  store i64 %955, i64* %958, align 8
  store i64 %957, i64* %RSP, align 8, !tbaa !2428
  store i64 %954, i64* %PC, align 8, !tbaa !2428
  %959 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %3219)
  %960 = load i64, i64* %RSP, align 8
  %961 = load i64, i64* %PC, align 8
  %962 = add i64 %960, 13080
  store i64 %962, i64* %RSP, align 8, !tbaa !2428
  %963 = icmp ugt i64 %960, -13081
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %30, align 1, !tbaa !2432
  %965 = trunc i64 %962 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966) #9
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %37, align 1, !tbaa !2446
  %971 = xor i64 %960, 16
  %972 = xor i64 %971, %962
  %973 = lshr i64 %972, 4
  %974 = trunc i64 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %43, align 1, !tbaa !2450
  %976 = icmp eq i64 %962, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %46, align 1, !tbaa !2447
  %978 = lshr i64 %962, 63
  %979 = trunc i64 %978 to i8
  store i8 %979, i8* %49, align 1, !tbaa !2448
  %980 = lshr i64 %960, 63
  %981 = xor i64 %978, %980
  %982 = add nuw nsw i64 %981, %978
  %983 = icmp eq i64 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %55, align 1, !tbaa !2449
  %985 = add i64 %961, 8
  store i64 %985, i64* %PC, align 8
  %986 = add i64 %960, 13088
  %987 = inttoptr i64 %962 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %RBX, align 8, !tbaa !2428
  store i64 %986, i64* %RSP, align 8, !tbaa !2428
  %989 = add i64 %961, 10
  store i64 %989, i64* %PC, align 8
  %990 = add i64 %960, 13096
  %991 = inttoptr i64 %986 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %R14, align 8, !tbaa !2428
  store i64 %990, i64* %RSP, align 8, !tbaa !2428
  %993 = add i64 %961, 12
  store i64 %993, i64* %PC, align 8
  %994 = add i64 %960, 13104
  %995 = inttoptr i64 %990 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %R15, align 8, !tbaa !2428
  store i64 %994, i64* %RSP, align 8, !tbaa !2428
  %997 = add i64 %961, 13
  store i64 %997, i64* %PC, align 8
  %998 = add i64 %960, 13112
  %999 = inttoptr i64 %994 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RBP, align 8, !tbaa !2428
  store i64 %998, i64* %RSP, align 8, !tbaa !2428
  %1001 = add i64 %961, 14
  store i64 %1001, i64* %PC, align 8
  %1002 = inttoptr i64 %998 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %PC, align 8, !tbaa !2428
  %1004 = add i64 %960, 13120
  store i64 %1004, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %959

block_40110c:                                     ; preds = %block_40109e
  %1005 = add i64 %1686, 8
  store i64 %1005, i64* %PC, align 8
  %1006 = load i64, i64* %1654, align 8
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = shl i64 %1006, 3
  %1008 = add i64 %1007, -12736
  %1009 = add i64 %1008, %1647
  %1010 = add i64 %1686, 16
  store i64 %1010, i64* %PC, align 8
  %1011 = inttoptr i64 %1009 to i64*
  store i64 %1690, i64* %1011, align 8
  %.pre137 = load i64, i64* %PC, align 8
  %.pre138 = load i64, i64* %RBP, align 8
  br label %block_40111c

block_400afd:                                     ; preds = %block_400afd.preheader, %block_400b08
  %1012 = phi i64 [ %.pre121, %block_400b08 ], [ %2896, %block_400afd.preheader ]
  %1013 = phi i64 [ %.pre120, %block_400b08 ], [ %2911, %block_400afd.preheader ]
  %.sink62 = phi i64 [ -238, %block_400b08 ], [ 5, %block_400afd.preheader ]
  %MEMORY.6 = phi %struct.Memory* [ %2894, %block_400b08 ], [ %MEMORY.25, %block_400afd.preheader ]
  %1014 = add i64 %1013, %.sink62
  %1015 = add i64 %1012, -64
  %1016 = add i64 %1014, 5
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  %1019 = add i64 %1018, -1
  %1020 = icmp eq i64 %1018, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %30, align 1, !tbaa !2432
  %1022 = trunc i64 %1019 to i32
  %1023 = and i32 %1022, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023) #9
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %37, align 1, !tbaa !2446
  %1028 = xor i64 %1019, %1018
  %1029 = lshr i64 %1028, 4
  %1030 = trunc i64 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %43, align 1, !tbaa !2450
  %1032 = icmp eq i64 %1019, 0
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %46, align 1, !tbaa !2447
  %1034 = lshr i64 %1019, 63
  %1035 = trunc i64 %1034 to i8
  store i8 %1035, i8* %49, align 1, !tbaa !2448
  %1036 = lshr i64 %1018, 63
  %1037 = xor i64 %1034, %1036
  %1038 = add nuw nsw i64 %1037, %1036
  %1039 = icmp eq i64 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %55, align 1, !tbaa !2449
  %1041 = or i1 %1032, %1020
  %.v155 = select i1 %1041, i64 243, i64 11
  %1042 = add i64 %1014, %.v155
  store i64 %1042, i64* %PC, align 8, !tbaa !2428
  br i1 %1041, label %block_400bf0, label %block_400b08

block_401229:                                     ; preds = %block_40113a
  %1043 = add i64 %2054, -56
  %1044 = add i64 %2081, 8
  store i64 %1044, i64* %PC, align 8
  %1045 = inttoptr i64 %1043 to i64*
  store i64 0, i64* %1045, align 8
  %.pre142 = load i64, i64* %PC, align 8
  br label %block_401231

block_4012e6:                                     ; preds = %block_4012d0
  %1046 = load i64, i64* %1187, align 8
  %1047 = add i64 %1224, 8
  store i64 %1047, i64* %PC, align 8
  %1048 = add i64 %1046, 1
  store i64 %1048, i64* %RAX, align 8, !tbaa !2428
  %1049 = icmp eq i64 %1046, -1
  %1050 = icmp eq i64 %1048, 0
  %1051 = or i1 %1049, %1050
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %30, align 1, !tbaa !2432
  %1053 = trunc i64 %1048 to i32
  %1054 = and i32 %1053, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054) #9
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %37, align 1, !tbaa !2446
  %1059 = xor i64 %1048, %1046
  br label %block_4012d0.sink.split

block_400d7b:                                     ; preds = %block_400d5a, %block_400d6b, %block_400c4d
  %.sink9 = phi i64 [ 268, %block_400c4d ], [ 5, %block_400d6b ], [ 5, %block_400d5a ]
  %1060 = load i64, i64* %PC, align 8
  %1061 = add i64 %1060, %.sink9
  %1062 = load i64, i64* %RBP, align 8
  %1063 = add i64 %1062, -10640
  %1064 = add i64 %1061, 12
  store i64 %1064, i64* %PC, align 8
  %1065 = inttoptr i64 %1063 to i64*
  %1066 = load i64, i64* %1065, align 8
  %1067 = add i64 %1066, 1
  store i64 %1067, i64* %RAX, align 8, !tbaa !2428
  %1068 = icmp eq i64 %1066, -1
  %1069 = icmp eq i64 %1067, 0
  %1070 = or i1 %1068, %1069
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %30, align 1, !tbaa !2432
  %1072 = trunc i64 %1067 to i32
  %1073 = and i32 %1072, 255
  %1074 = tail call i32 @llvm.ctpop.i32(i32 %1073) #9
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  store i8 %1077, i8* %37, align 1, !tbaa !2446
  %1078 = xor i64 %1067, %1066
  %1079 = lshr i64 %1078, 4
  %1080 = trunc i64 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %43, align 1, !tbaa !2450
  %1082 = zext i1 %1069 to i8
  store i8 %1082, i8* %46, align 1, !tbaa !2447
  %1083 = lshr i64 %1067, 63
  %1084 = trunc i64 %1083 to i8
  store i8 %1084, i8* %49, align 1, !tbaa !2448
  %1085 = lshr i64 %1066, 63
  %1086 = xor i64 %1083, %1085
  %1087 = add nuw nsw i64 %1086, %1083
  %1088 = icmp eq i64 %1087, 2
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %55, align 1, !tbaa !2449
  %1090 = add i64 %1061, 23
  store i64 %1090, i64* %PC, align 8
  store i64 %1067, i64* %1065, align 8
  %1091 = load i64, i64* %PC, align 8
  %1092 = add i64 %1091, -364
  store i64 %1092, i64* %PC, align 8, !tbaa !2428
  br label %block_400c26

block_400cdd:                                     ; preds = %block_400cb0, %block_400cbd
  %1093 = phi i64 [ %1467, %block_400cb0 ], [ %.pre125, %block_400cbd ]
  %1094 = phi i64 [ %1544, %block_400cb0 ], [ %.pre124, %block_400cbd ]
  %1095 = add i64 %1094, -10668
  %1096 = add i64 %1093, 7
  store i64 %1096, i64* %PC, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RAX, align 8, !tbaa !2428
  %1100 = shl nsw i64 %1099, 2
  %1101 = add i64 %1094, -8320
  %1102 = add i64 %1101, %1100
  %1103 = add i64 %1093, 14
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RCX, align 8, !tbaa !2428
  %1107 = add i64 %1093, 20
  store i64 %1107, i64* %PC, align 8
  store i32 %1105, i32* %1097, align 4
  %1108 = load i64, i64* %RBP, align 8
  %1109 = add i64 %1108, -56
  %1110 = load i64, i64* %PC, align 8
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1109 to i64*
  %1113 = load i64, i64* %1112, align 8
  %1114 = shl i64 %1113, 1
  %1115 = icmp slt i64 %1113, 0
  %1116 = icmp slt i64 %1114, 0
  %1117 = xor i1 %1115, %1116
  store i64 %1114, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %1113, 63
  %1118 = trunc i64 %.lobit to i8
  store i8 %1118, i8* %30, align 1, !tbaa !2453
  %1119 = trunc i64 %1114 to i32
  %1120 = and i32 %1119, 254
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120) #9
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %1125 = icmp eq i64 %1114, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %46, align 1, !tbaa !2453
  %1127 = lshr i64 %1113, 62
  %1128 = trunc i64 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %49, align 1, !tbaa !2453
  %1130 = zext i1 %1117 to i8
  store i8 %1130, i8* %55, align 1, !tbaa !2453
  %1131 = add i64 %1110, 12
  store i64 %1131, i64* %PC, align 8
  store i64 %1114, i64* %1112, align 8
  %1132 = load i64, i64* %RBP, align 8
  %1133 = add i64 %1132, -48
  %1134 = load i64, i64* %PC, align 8
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC, align 8
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136, align 8
  %1138 = add i64 %1137, 1
  store i64 %1138, i64* %RAX, align 8, !tbaa !2428
  %1139 = icmp eq i64 %1137, -1
  %1140 = icmp eq i64 %1138, 0
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %30, align 1, !tbaa !2432
  %1143 = trunc i64 %1138 to i32
  %1144 = and i32 %1143, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144) #9
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %37, align 1, !tbaa !2446
  %1149 = xor i64 %1138, %1137
  %1150 = lshr i64 %1149, 4
  %1151 = trunc i64 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %43, align 1, !tbaa !2450
  %1153 = zext i1 %1140 to i8
  store i8 %1153, i8* %46, align 1, !tbaa !2447
  %1154 = lshr i64 %1138, 63
  %1155 = trunc i64 %1154 to i8
  store i8 %1155, i8* %49, align 1, !tbaa !2448
  %1156 = lshr i64 %1137, 63
  %1157 = xor i64 %1154, %1156
  %1158 = add nuw nsw i64 %1157, %1154
  %1159 = icmp eq i64 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %55, align 1, !tbaa !2449
  %1161 = add i64 %1134, 12
  store i64 %1161, i64* %PC, align 8
  store i64 %1138, i64* %1136, align 8
  %1162 = load i64, i64* %PC, align 8
  %1163 = add i64 %1162, -102
  store i64 %1163, i64* %PC, align 8, !tbaa !2428
  br label %block_400ca3

block_4012d0.sink.split:                          ; preds = %block_4012e6, %block_4012bf
  %1164 = phi i64 [ %1047, %block_4012e6 ], [ %1276, %block_4012bf ]
  %1165 = phi i64 [ %1182, %block_4012e6 ], [ %555, %block_4012bf ]
  %.sink69 = phi i64 [ %1059, %block_4012e6 ], [ %1288, %block_4012bf ]
  %1166 = phi i64 [ %1048, %block_4012e6 ], [ %1277, %block_4012bf ]
  %.sink58 = phi i64 [ %1046, %block_4012e6 ], [ %1275, %block_4012bf ]
  %.sink53 = phi i64 [ -48, %block_4012e6 ], [ -80, %block_4012bf ]
  %.sink48.ph = phi i64 [ -34, %block_4012e6 ], [ 5, %block_4012bf ]
  %1167 = lshr i64 %.sink69, 4
  %1168 = trunc i64 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %43, align 1, !tbaa !2450
  %1170 = icmp eq i64 %1166, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %46, align 1, !tbaa !2447
  %1172 = lshr i64 %1166, 63
  %1173 = trunc i64 %1172 to i8
  store i8 %1173, i8* %49, align 1, !tbaa !2448
  %1174 = lshr i64 %.sink58, 63
  %1175 = xor i64 %1174, %1172
  %1176 = add nuw nsw i64 %1175, %1172
  %1177 = icmp eq i64 %1176, 2
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %55, align 1, !tbaa !2449
  %1179 = add i64 %1165, %.sink53
  %1180 = add i64 %1164, 4
  store i64 %1180, i64* %PC, align 8
  %1181 = inttoptr i64 %1179 to i64*
  store i64 %1166, i64* %1181, align 8
  %.pre144 = load i64, i64* %PC, align 8
  %.pre145 = load i64, i64* %RBP, align 8
  br label %block_4012d0

block_4012d0:                                     ; preds = %block_4012d0.sink.split, %block_401298
  %1182 = phi i64 [ %555, %block_401298 ], [ %.pre145, %block_4012d0.sink.split ]
  %1183 = phi i64 [ %578, %block_401298 ], [ %.pre144, %block_4012d0.sink.split ]
  %.sink48 = phi i64 [ 5, %block_401298 ], [ %.sink48.ph, %block_4012d0.sink.split ]
  %1184 = add i64 %1183, %.sink48
  %1185 = add i64 %1182, -48
  %1186 = add i64 %1184, 4
  store i64 %1186, i64* %PC, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i64 %1188, i64* %RAX, align 8, !tbaa !2428
  %1189 = shl i64 %1188, 3
  %1190 = add i64 %1189, -12736
  %1191 = add i64 %1190, %1182
  %1192 = add i64 %1184, 12
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1191 to i64*
  %1194 = load i64, i64* %1193, align 8
  store i64 %1194, i64* %RAX, align 8, !tbaa !2428
  %1195 = add i64 %1182, -80
  %1196 = add i64 %1184, 16
  store i64 %1196, i64* %PC, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  %1199 = sub i64 %1194, %1198
  %1200 = icmp ult i64 %1194, %1198
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %30, align 1, !tbaa !2432
  %1202 = trunc i64 %1199 to i32
  %1203 = and i32 %1202, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203) #9
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %37, align 1, !tbaa !2446
  %1208 = xor i64 %1198, %1194
  %1209 = xor i64 %1208, %1199
  %1210 = lshr i64 %1209, 4
  %1211 = trunc i64 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %43, align 1, !tbaa !2450
  %1213 = icmp eq i64 %1199, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %46, align 1, !tbaa !2447
  %1215 = lshr i64 %1199, 63
  %1216 = trunc i64 %1215 to i8
  store i8 %1216, i8* %49, align 1, !tbaa !2448
  %1217 = lshr i64 %1194, 63
  %1218 = lshr i64 %1198, 63
  %1219 = xor i64 %1218, %1217
  %1220 = xor i64 %1215, %1217
  %1221 = add nuw nsw i64 %1220, %1219
  %1222 = icmp eq i64 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %55, align 1, !tbaa !2449
  %.v164 = select i1 %1200, i64 22, i64 39
  %1224 = add i64 %1184, %.v164
  %1225 = add i64 %1224, 4
  store i64 %1225, i64* %PC, align 8
  br i1 %1200, label %block_4012e6, label %block_4012f7

block_400ef8:                                     ; preds = %block_400e98
  %1226 = add i64 %2418, -10688
  %1227 = add i64 %2453, 10
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1226 to i32*
  store i32 0, i32* %1228, align 4
  %1229 = load i64, i64* %RBP, align 8
  %1230 = add i64 %1229, -10681
  %1231 = load i64, i64* %PC, align 8
  %1232 = add i64 %1231, 7
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1230 to i8*
  store i8 0, i8* %1233, align 1
  %1234 = load i64, i64* %PC, align 8
  %1235 = add i64 %1234, 38
  store i64 %1235, i64* %PC, align 8, !tbaa !2428
  br label %block_400f2f

block_4009fc:                                     ; preds = %block_400a0a, %block_4008a0
  %1236 = phi i64 [ %3337, %block_400a0a ], [ %.pre, %block_4008a0 ]
  %1237 = load i64, i64* %RBP, align 8
  %1238 = add i64 %1237, -48
  %1239 = add i64 %1236, 4
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1238 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RAX, align 8, !tbaa !2428
  %1242 = add i64 %1237, -40
  %1243 = add i64 %1236, 8
  store i64 %1243, i64* %PC, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  %1246 = sub i64 %1241, %1245
  %1247 = icmp ult i64 %1241, %1245
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %30, align 1, !tbaa !2432
  %1249 = trunc i64 %1246 to i32
  %1250 = and i32 %1249, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250) #9
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %37, align 1, !tbaa !2446
  %1255 = xor i64 %1245, %1241
  %1256 = xor i64 %1255, %1246
  %1257 = lshr i64 %1256, 4
  %1258 = trunc i64 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %43, align 1, !tbaa !2450
  %1260 = icmp eq i64 %1246, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %46, align 1, !tbaa !2447
  %1262 = lshr i64 %1246, 63
  %1263 = trunc i64 %1262 to i8
  store i8 %1263, i8* %49, align 1, !tbaa !2448
  %1264 = lshr i64 %1241, 63
  %1265 = lshr i64 %1245, 63
  %1266 = xor i64 %1265, %1264
  %1267 = xor i64 %1262, %1264
  %1268 = add nuw nsw i64 %1267, %1266
  %1269 = icmp eq i64 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %55, align 1, !tbaa !2449
  %.v152 = select i1 %1247, i64 14, i64 72
  %1271 = add i64 %1236, %.v152
  store i64 %1271, i64* %PC, align 8, !tbaa !2428
  br i1 %1247, label %block_400a0a, label %block_400a44

block_4012bf:                                     ; preds = %block_401298
  %1272 = add i64 %555, -80
  %1273 = add i64 %578, 4
  store i64 %1273, i64* %PC, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  %1276 = add i64 %578, 8
  store i64 %1276, i64* %PC, align 8
  %1277 = add i64 %1275, 1
  store i64 %1277, i64* %RAX, align 8, !tbaa !2428
  %1278 = icmp eq i64 %1275, -1
  %1279 = icmp eq i64 %1277, 0
  %1280 = or i1 %1278, %1279
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %30, align 1, !tbaa !2432
  %1282 = trunc i64 %1277 to i32
  %1283 = and i32 %1282, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283) #9
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %37, align 1, !tbaa !2446
  %1288 = xor i64 %1277, %1275
  br label %block_4012d0.sink.split

block_4011ae:                                     ; preds = %block_4011a0
  %1289 = add i64 %484, -88
  %1290 = add i64 %496, 80
  store i64 %1290, i64* %PC, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX, align 8, !tbaa !2428
  %1293 = add i64 %484, -56
  %1294 = add i64 %496, 84
  store i64 %1294, i64* %PC, align 8
  %1295 = inttoptr i64 %1293 to i64*
  %1296 = load i64, i64* %1295, align 8
  store i64 %1296, i64* %RCX, align 8, !tbaa !2428
  %1297 = shl i64 %1296, 3
  %1298 = add i64 %1297, -12736
  %1299 = add i64 %1298, %484
  %1300 = add i64 %496, 92
  store i64 %1300, i64* %PC, align 8
  %1301 = inttoptr i64 %1299 to i64*
  store i64 %1292, i64* %1301, align 8
  %1302 = load i64, i64* %RBP, align 8
  %1303 = add i64 %1302, -89
  %1304 = load i64, i64* %PC, align 8
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC, align 8
  %1306 = inttoptr i64 %1303 to i8*
  %1307 = load i8, i8* %1306, align 1
  store i8 %1307, i8* %DL, align 1, !tbaa !2453
  %1308 = add i64 %1302, -56
  %1309 = add i64 %1304, 7
  store i64 %1309, i64* %PC, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RAX, align 8, !tbaa !2428
  %1312 = add i64 %1311, -12992
  %1313 = add i64 %1312, %1302
  %1314 = add i64 %1304, 14
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1313 to i8*
  store i8 %1307, i8* %1315, align 1
  %1316 = load i64, i64* %RBP, align 8
  %1317 = add i64 %1316, -48
  %1318 = load i64, i64* %PC, align 8
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC, align 8
  %1320 = inttoptr i64 %1317 to i64*
  %1321 = load i64, i64* %1320, align 8
  %1322 = add i64 %1321, 1
  store i64 %1322, i64* %RAX, align 8, !tbaa !2428
  %1323 = icmp eq i64 %1321, -1
  %1324 = icmp eq i64 %1322, 0
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %30, align 1, !tbaa !2432
  %1327 = trunc i64 %1322 to i32
  %1328 = and i32 %1327, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328) #9
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %37, align 1, !tbaa !2446
  %1333 = xor i64 %1322, %1321
  %1334 = lshr i64 %1333, 4
  %1335 = trunc i64 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %43, align 1, !tbaa !2450
  %1337 = zext i1 %1324 to i8
  store i8 %1337, i8* %46, align 1, !tbaa !2447
  %1338 = lshr i64 %1322, 63
  %1339 = trunc i64 %1338 to i8
  store i8 %1339, i8* %49, align 1, !tbaa !2448
  %1340 = lshr i64 %1321, 63
  %1341 = xor i64 %1338, %1340
  %1342 = add nuw nsw i64 %1341, %1338
  %1343 = icmp eq i64 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %55, align 1, !tbaa !2449
  %1345 = add i64 %1318, 12
  store i64 %1345, i64* %PC, align 8
  store i64 %1322, i64* %1320, align 8
  %1346 = load i64, i64* %PC, align 8
  %1347 = add i64 %1346, -234
  store i64 %1347, i64* %PC, align 8, !tbaa !2428
  br label %block_40113a

block_400aba:                                     ; preds = %block_400aaf
  %1348 = add i64 %2896, -6272
  store i64 %1348, i64* %RSI, align 8, !tbaa !2428
  %1349 = add i64 %2896, -4224
  store i64 %1349, i64* %RDI, align 8, !tbaa !2428
  %1350 = add i64 %2896, -64
  %1351 = add i64 %2911, 18
  store i64 %1351, i64* %PC, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RAX, align 8, !tbaa !2428
  %1354 = and i64 %1353, 4294967295
  store i64 %1354, i64* %RCX, align 8, !tbaa !2428
  %1355 = add i64 %2911, 24
  store i64 %1355, i64* %PC, align 8
  %1356 = load i64, i64* %2899, align 8
  store i64 %1356, i64* %RAX, align 8, !tbaa !2428
  %1357 = trunc i64 %1356 to i32
  %1358 = add i64 %2896, -13076
  %1359 = add i64 %2911, 32
  store i64 %1359, i64* %PC, align 8
  %1360 = inttoptr i64 %1358 to i32*
  store i32 %1357, i32* %1360, align 4
  %1361 = load i32, i32* %ECX, align 4
  %1362 = zext i32 %1361 to i64
  %1363 = load i64, i64* %PC, align 8
  store i64 %1362, i64* %RDX, align 8, !tbaa !2428
  %1364 = load i64, i64* %RBP, align 8
  %1365 = add i64 %1364, -13076
  %1366 = add i64 %1363, 8
  store i64 %1366, i64* %PC, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RCX, align 8, !tbaa !2428
  %1370 = add i64 %1363, 2246
  %1371 = add i64 %1363, 13
  %1372 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1371, i64* %1374, align 8
  store i64 %1373, i64* %RSP, align 8, !tbaa !2428
  store i64 %1370, i64* %PC, align 8, !tbaa !2428
  %1375 = tail call %struct.Memory* @sub_4013a0_heap_adjust(%struct.State* nonnull %0, i64 %1370, %struct.Memory* %MEMORY.25)
  %1376 = load i64, i64* %RBP, align 8
  %1377 = add i64 %1376, -48
  %1378 = load i64, i64* %PC, align 8
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %PC, align 8
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380, align 8
  %1382 = add i64 %1381, -1
  store i64 %1382, i64* %RAX, align 8, !tbaa !2428
  %1383 = icmp ne i64 %1381, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %30, align 1, !tbaa !2432
  %1385 = trunc i64 %1382 to i32
  %1386 = and i32 %1385, 255
  %1387 = tail call i32 @llvm.ctpop.i32(i32 %1386) #9
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  store i8 %1390, i8* %37, align 1, !tbaa !2446
  %1391 = xor i64 %1381, 16
  %1392 = xor i64 %1391, %1382
  %1393 = lshr i64 %1392, 4
  %1394 = trunc i64 %1393 to i8
  %1395 = and i8 %1394, 1
  store i8 %1395, i8* %43, align 1, !tbaa !2450
  %1396 = icmp eq i64 %1382, 0
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %46, align 1, !tbaa !2447
  %1398 = lshr i64 %1382, 63
  %1399 = trunc i64 %1398 to i8
  store i8 %1399, i8* %49, align 1, !tbaa !2448
  %1400 = lshr i64 %1381, 63
  %1401 = xor i64 %1398, %1400
  %1402 = xor i64 %1398, 1
  %1403 = add nuw nsw i64 %1401, %1402
  %1404 = icmp eq i64 %1403, 2
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %55, align 1, !tbaa !2449
  %1406 = add i64 %1378, 12
  store i64 %1406, i64* %PC, align 8
  store i64 %1382, i64* %1380, align 8
  %1407 = load i64, i64* %PC, align 8
  %1408 = add i64 %1407, -68
  store i64 %1408, i64* %PC, align 8, !tbaa !2428
  br label %block_400aaf

block_4010b9:                                     ; preds = %block_40109e
  %1409 = shl i64 %1690, 1
  %1410 = or i64 %1409, 1
  store i64 %1410, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1411 = trunc i64 %1410 to i32
  %1412 = and i32 %1411, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412) #9
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %46, align 1, !tbaa !2447
  %1417 = lshr i64 %1690, 62
  %1418 = and i64 %1417, 1
  %1419 = trunc i64 %1418 to i8
  store i8 %1419, i8* %49, align 1, !tbaa !2448
  %1420 = lshr i64 %1690, 62
  %1421 = and i64 %1420, 1
  %1422 = xor i64 %1418, %1421
  %1423 = add nuw nsw i64 %1422, %1418
  %1424 = icmp eq i64 %1423, 2
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %55, align 1, !tbaa !2449
  %1426 = add i64 %1686, 16
  store i64 %1426, i64* %PC, align 8
  store i64 %1410, i64* %1689, align 8
  %1427 = load i64, i64* %RBP, align 8
  %1428 = add i64 %1427, -56
  %1429 = load i64, i64* %PC, align 8
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC, align 8
  %1431 = inttoptr i64 %1428 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RAX, align 8, !tbaa !2428
  %1433 = shl i64 %1432, 3
  %1434 = add i64 %1433, -10368
  %1435 = add i64 %1434, %1427
  %1436 = add i64 %1429, 12
  store i64 %1436, i64* %PC, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RAX, align 8, !tbaa !2428
  %1439 = add i64 %1427, -72
  %1440 = add i64 %1429, 16
  store i64 %1440, i64* %PC, align 8
  %1441 = inttoptr i64 %1439 to i64*
  %1442 = load i64, i64* %1441, align 8
  %1443 = and i64 %1442, %1438
  store i64 %1443, i64* %RAX, align 8, !tbaa !2428
  %1444 = trunc i64 %1443 to i32
  %1445 = and i32 %1444, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445) #9
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  %1450 = icmp eq i64 %1443, 0
  %1451 = zext i1 %1450 to i8
  %1452 = lshr i64 %1443, 63
  %1453 = trunc i64 %1452 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %1449, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %1451, i8* %46, align 1, !tbaa !2447
  store i8 %1453, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v168 = select i1 %1450, i64 38, i64 26
  %1454 = add i64 %1429, %.v168
  store i64 %1454, i64* %PC, align 8, !tbaa !2428
  br i1 %1450, label %block_4010ef, label %block_4010e3

block_400cb0:                                     ; preds = %block_400ca3
  %1455 = add i64 %1558, 7
  store i64 %1455, i64* %PC, align 8
  %1456 = load i32, i32* %1547, align 4
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1457 = and i32 %1456, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457) #9
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1462 = icmp eq i32 %1456, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %46, align 1, !tbaa !2447
  %1464 = lshr i32 %1456, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %1466 = icmp ne i8 %1465, 0
  %.v = select i1 %1466, i64 6, i64 38
  %1467 = add i64 %1455, %.v
  store i64 %1467, i64* %PC, align 8, !tbaa !2428
  br i1 %1466, label %block_400cbd, label %block_400cdd

block_400cbd:                                     ; preds = %block_400cb0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1468 = add i64 %1544, -56
  %1469 = add i64 %1467, 6
  store i64 %1469, i64* %PC, align 8
  %1470 = inttoptr i64 %1468 to i64*
  %1471 = load i64, i64* %1470, align 8
  store i64 %1471, i64* %RCX, align 8, !tbaa !2428
  %1472 = add i64 %1544, -10648
  %1473 = add i64 %1467, 13
  store i64 %1473, i64* %PC, align 8
  %1474 = inttoptr i64 %1472 to i64*
  %1475 = load i64, i64* %1474, align 8
  %1476 = add i64 %1475, %1471
  store i64 %1476, i64* %RCX, align 8, !tbaa !2428
  %1477 = icmp ult i64 %1476, %1471
  %1478 = icmp ult i64 %1476, %1475
  %1479 = or i1 %1477, %1478
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %30, align 1, !tbaa !2432
  %1481 = trunc i64 %1476 to i32
  %1482 = and i32 %1481, 255
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482) #9
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %37, align 1, !tbaa !2446
  %1487 = xor i64 %1475, %1471
  %1488 = xor i64 %1487, %1476
  %1489 = lshr i64 %1488, 4
  %1490 = trunc i64 %1489 to i8
  %1491 = and i8 %1490, 1
  store i8 %1491, i8* %43, align 1, !tbaa !2450
  %1492 = icmp eq i64 %1476, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %46, align 1, !tbaa !2447
  %1494 = lshr i64 %1476, 63
  %1495 = trunc i64 %1494 to i8
  store i8 %1495, i8* %49, align 1, !tbaa !2448
  %1496 = lshr i64 %1471, 63
  %1497 = lshr i64 %1475, 63
  %1498 = xor i64 %1494, %1496
  %1499 = xor i64 %1494, %1497
  %1500 = add nuw nsw i64 %1498, %1499
  %1501 = icmp eq i64 %1500, 2
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %55, align 1, !tbaa !2449
  %1503 = add i64 %1467, 20
  store i64 %1503, i64* %PC, align 8
  store i64 %1476, i64* %1474, align 8
  %1504 = load i64, i64* %RAX, align 8
  %1505 = load i64, i64* %RBP, align 8
  %1506 = add i64 %1505, -10668
  %1507 = load i64, i64* %PC, align 8
  %1508 = add i64 %1507, 6
  store i64 %1508, i64* %PC, align 8
  %1509 = trunc i64 %1504 to i32
  %1510 = inttoptr i64 %1506 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = sub i32 %1509, %1511
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX, align 8, !tbaa !2428
  %1514 = icmp ult i32 %1509, %1511
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %30, align 1, !tbaa !2432
  %1516 = and i32 %1512, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516) #9
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %37, align 1, !tbaa !2446
  %1521 = xor i32 %1511, %1509
  %1522 = xor i32 %1521, %1512
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %43, align 1, !tbaa !2450
  %1526 = icmp eq i32 %1512, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %46, align 1, !tbaa !2447
  %1528 = lshr i32 %1512, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %49, align 1, !tbaa !2448
  %1530 = lshr i32 %1509, 31
  %1531 = lshr i32 %1511, 31
  %1532 = xor i32 %1531, %1530
  %1533 = xor i32 %1528, %1530
  %1534 = add nuw nsw i32 %1533, %1532
  %1535 = icmp eq i32 %1534, 2
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %55, align 1, !tbaa !2449
  %1537 = add i64 %1507, 12
  store i64 %1537, i64* %PC, align 8
  store i32 %1512, i32* %1510, align 4
  %.pre124 = load i64, i64* %RBP, align 8
  %.pre125 = load i64, i64* %PC, align 8
  br label %block_400cdd

block_400aa7:                                     ; preds = %block_400a54
  %1538 = add i64 %2273, -64
  %1539 = add i64 %2300, 4
  store i64 %1539, i64* %PC, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RAX, align 8, !tbaa !2428
  %1542 = add i64 %2300, 8
  store i64 %1542, i64* %PC, align 8
  store i64 %1541, i64* %2276, align 8
  %.pre119 = load i64, i64* %PC, align 8
  br label %block_400aaf

block_400ca3:                                     ; preds = %block_400c74, %block_400cdd
  %1543 = phi i64 [ %.pre123, %block_400c74 ], [ %1163, %block_400cdd ]
  %1544 = load i64, i64* %RBP, align 8
  %1545 = add i64 %1544, -10668
  %1546 = add i64 %1543, 7
  store i64 %1546, i64* %PC, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1549 = and i32 %1548, 255
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549) #9
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1554 = icmp eq i32 %1548, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %46, align 1, !tbaa !2447
  %1556 = lshr i32 %1548, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v174 = select i1 %1554, i64 107, i64 13
  %1558 = add i64 %1543, %.v174
  store i64 %1558, i64* %PC, align 8, !tbaa !2428
  br i1 %1554, label %block_400d0e, label %block_400cb0

block_40130d:                                     ; preds = %block_4012f7
  %1559 = add i64 %1994, 4
  store i64 %1559, i64* %PC, align 8
  %1560 = load i64, i64* %1187, align 8
  store i64 %1560, i64* %RAX, align 8, !tbaa !2428
  %1561 = add i64 %1560, -12992
  %1562 = add i64 %1561, %1182
  %1563 = add i64 %1994, 11
  store i64 %1563, i64* %PC, align 8
  %1564 = inttoptr i64 %1562 to i8*
  %1565 = load i8, i8* %1564, align 1
  store i8 %1565, i8* %CL, align 1, !tbaa !2453
  %1566 = add i64 %1182, -112
  %1567 = add i64 %1994, 15
  store i64 %1567, i64* %PC, align 8
  %1568 = inttoptr i64 %1566 to i64*
  %1569 = load i64, i64* %1568, align 8
  store i64 %1569, i64* %RAX, align 8, !tbaa !2428
  %1570 = add i64 %1994, 17
  store i64 %1570, i64* %PC, align 8
  %1571 = inttoptr i64 %1569 to i8*
  store i8 %1565, i8* %1571, align 1
  %1572 = load i64, i64* %RBP, align 8
  %1573 = add i64 %1572, -112
  %1574 = load i64, i64* %PC, align 8
  %1575 = add i64 %1574, 4
  store i64 %1575, i64* %PC, align 8
  %1576 = inttoptr i64 %1573 to i64*
  %1577 = load i64, i64* %1576, align 8
  %1578 = add i64 %1577, 1
  store i64 %1578, i64* %RAX, align 8, !tbaa !2428
  %1579 = icmp eq i64 %1577, -1
  %1580 = icmp eq i64 %1578, 0
  %1581 = or i1 %1579, %1580
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %30, align 1, !tbaa !2432
  %1583 = trunc i64 %1578 to i32
  %1584 = and i32 %1583, 255
  %1585 = tail call i32 @llvm.ctpop.i32(i32 %1584) #9
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = xor i8 %1587, 1
  store i8 %1588, i8* %37, align 1, !tbaa !2446
  %1589 = xor i64 %1578, %1577
  %1590 = lshr i64 %1589, 4
  %1591 = trunc i64 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %43, align 1, !tbaa !2450
  %1593 = zext i1 %1580 to i8
  store i8 %1593, i8* %46, align 1, !tbaa !2447
  %1594 = lshr i64 %1578, 63
  %1595 = trunc i64 %1594 to i8
  store i8 %1595, i8* %49, align 1, !tbaa !2448
  %1596 = lshr i64 %1577, 63
  %1597 = xor i64 %1594, %1596
  %1598 = add nuw nsw i64 %1597, %1594
  %1599 = icmp eq i64 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %55, align 1, !tbaa !2449
  %1601 = add i64 %1574, 12
  store i64 %1601, i64* %PC, align 8
  store i64 %1578, i64* %1576, align 8
  %1602 = load i64, i64* %RBP, align 8
  %1603 = add i64 %1602, -64
  %1604 = load i64, i64* %PC, align 8
  %1605 = add i64 %1604, 4
  store i64 %1605, i64* %PC, align 8
  %1606 = inttoptr i64 %1603 to i64*
  %1607 = load i64, i64* %1606, align 8
  %1608 = add i64 %1607, 1
  store i64 %1608, i64* %RAX, align 8, !tbaa !2428
  %1609 = icmp eq i64 %1607, -1
  %1610 = icmp eq i64 %1608, 0
  %1611 = or i1 %1609, %1610
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %30, align 1, !tbaa !2432
  %1613 = trunc i64 %1608 to i32
  %1614 = and i32 %1613, 255
  %1615 = tail call i32 @llvm.ctpop.i32(i32 %1614) #9
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  store i8 %1618, i8* %37, align 1, !tbaa !2446
  %1619 = xor i64 %1608, %1607
  %1620 = lshr i64 %1619, 4
  %1621 = trunc i64 %1620 to i8
  %1622 = and i8 %1621, 1
  store i8 %1622, i8* %43, align 1, !tbaa !2450
  %1623 = zext i1 %1610 to i8
  store i8 %1623, i8* %46, align 1, !tbaa !2447
  %1624 = lshr i64 %1608, 63
  %1625 = trunc i64 %1624 to i8
  store i8 %1625, i8* %49, align 1, !tbaa !2448
  %1626 = lshr i64 %1607, 63
  %1627 = xor i64 %1624, %1626
  %1628 = add nuw nsw i64 %1627, %1624
  %1629 = icmp eq i64 %1628, 2
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %55, align 1, !tbaa !2449
  %1631 = add i64 %1604, 12
  store i64 %1631, i64* %PC, align 8
  store i64 %1608, i64* %1606, align 8
  %1632 = load i64, i64* %RBP, align 8
  %1633 = add i64 %1632, -80
  %1634 = load i64, i64* %PC, align 8
  %1635 = add i64 %1634, 8
  store i64 %1635, i64* %PC, align 8
  %1636 = inttoptr i64 %1633 to i64*
  store i64 0, i64* %1636, align 8
  %1637 = load i64, i64* %RBP, align 8
  %1638 = add i64 %1637, -56
  %1639 = load i64, i64* %PC, align 8
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC, align 8
  %1641 = inttoptr i64 %1638 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RAX, align 8, !tbaa !2428
  %1643 = add i64 %1637, -48
  %1644 = add i64 %1639, 8
  store i64 %1644, i64* %PC, align 8
  %1645 = inttoptr i64 %1643 to i64*
  store i64 %1642, i64* %1645, align 8
  %.pre146 = load i64, i64* %RBP, align 8
  %.pre147 = load i64, i64* %PC, align 8
  br label %block_401346

block_40109e:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit, %block_4010ef
  %1646 = phi i64 [ %.pre134, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %2271, %block_4010ef ]
  %1647 = load i64, i64* %RBP, align 8
  %1648 = add i64 %1647, -48
  %1649 = add i64 %1646, 4
  store i64 %1649, i64* %PC, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RAX, align 8, !tbaa !2428
  %1652 = add i64 %1647, -56
  %1653 = add i64 %1646, 8
  store i64 %1653, i64* %PC, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RCX, align 8, !tbaa !2428
  %1656 = add i64 %1655, -10624
  %1657 = add i64 %1656, %1647
  %1658 = add i64 %1646, 16
  store i64 %1658, i64* %PC, align 8
  %1659 = inttoptr i64 %1657 to i8*
  %1660 = load i8, i8* %1659, align 1
  %1661 = zext i8 %1660 to i64
  store i64 %1661, i64* %RDX, align 8, !tbaa !2428
  %1662 = zext i8 %1660 to i64
  store i64 %1662, i64* %RCX, align 8, !tbaa !2428
  %1663 = sub i64 %1651, %1662
  %1664 = icmp ult i64 %1651, %1662
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %30, align 1, !tbaa !2432
  %1666 = trunc i64 %1663 to i32
  %1667 = and i32 %1666, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667) #9
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %37, align 1, !tbaa !2446
  %1672 = xor i64 %1651, %1662
  %1673 = xor i64 %1672, %1663
  %1674 = lshr i64 %1673, 4
  %1675 = trunc i64 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %43, align 1, !tbaa !2450
  %1677 = icmp eq i64 %1663, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %46, align 1, !tbaa !2447
  %1679 = lshr i64 %1663, 63
  %1680 = trunc i64 %1679 to i8
  store i8 %1680, i8* %49, align 1, !tbaa !2448
  %1681 = lshr i64 %1651, 63
  %1682 = xor i64 %1679, %1681
  %1683 = add nuw nsw i64 %1682, %1681
  %1684 = icmp eq i64 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %55, align 1, !tbaa !2449
  %.v149 = select i1 %1664, i64 27, i64 110
  %1686 = add i64 %1646, %.v149
  %1687 = add i64 %1647, -80
  %1688 = add i64 %1686, 4
  store i64 %1688, i64* %PC, align 8
  %1689 = inttoptr i64 %1687 to i64*
  %1690 = load i64, i64* %1689, align 8
  store i64 %1690, i64* %RAX, align 8, !tbaa !2428
  br i1 %1664, label %block_4010b9, label %block_40110c

block_400a91:                                     ; preds = %block_400a62, %block_400a75
  %1691 = phi i64 [ %2273, %block_400a62 ], [ %.pre118, %block_400a75 ]
  %1692 = phi i64 [ %1919, %block_400a62 ], [ %.pre117, %block_400a75 ]
  %1693 = add i64 %1691, -48
  %1694 = add i64 %1692, 9
  store i64 %1694, i64* %PC, align 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  %1697 = add i64 %1696, 1
  store i64 %1697, i64* %RAX, align 8, !tbaa !2428
  %1698 = icmp eq i64 %1696, -1
  %1699 = icmp eq i64 %1697, 0
  %1700 = or i1 %1698, %1699
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %30, align 1, !tbaa !2432
  %1702 = trunc i64 %1697 to i32
  %1703 = and i32 %1702, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703) #9
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %37, align 1, !tbaa !2446
  %1708 = xor i64 %1697, %1696
  %1709 = lshr i64 %1708, 4
  %1710 = trunc i64 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %43, align 1, !tbaa !2450
  %1712 = zext i1 %1699 to i8
  store i8 %1712, i8* %46, align 1, !tbaa !2447
  %1713 = lshr i64 %1697, 63
  %1714 = trunc i64 %1713 to i8
  store i8 %1714, i8* %49, align 1, !tbaa !2448
  %1715 = lshr i64 %1696, 63
  %1716 = xor i64 %1713, %1715
  %1717 = add nuw nsw i64 %1716, %1713
  %1718 = icmp eq i64 %1717, 2
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %55, align 1, !tbaa !2449
  %1720 = add i64 %1692, 17
  store i64 %1720, i64* %PC, align 8
  store i64 %1697, i64* %1695, align 8
  %1721 = load i64, i64* %PC, align 8
  %1722 = add i64 %1721, -78
  store i64 %1722, i64* %PC, align 8, !tbaa !2428
  br label %block_400a54

block_400e8b:                                     ; preds = %block_400e6b
  %1723 = add i64 %1856, -10688
  %1724 = add i64 %1900, 7
  store i64 %1724, i64* %PC, align 8
  %1725 = inttoptr i64 %1723 to i32*
  %1726 = load i32, i32* %1725, align 4
  %1727 = add i32 %1726, -7
  %1728 = icmp ult i32 %1726, 7
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %30, align 1, !tbaa !2432
  %1730 = and i32 %1727, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730) #9
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %37, align 1, !tbaa !2446
  %1735 = xor i32 %1727, %1726
  %1736 = lshr i32 %1735, 4
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  store i8 %1738, i8* %43, align 1, !tbaa !2450
  %1739 = icmp eq i32 %1727, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %46, align 1, !tbaa !2447
  %1741 = lshr i32 %1727, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %49, align 1, !tbaa !2448
  %1743 = lshr i32 %1726, 31
  %1744 = xor i32 %1741, %1743
  %1745 = add nuw nsw i32 %1744, %1743
  %1746 = icmp eq i32 %1745, 2
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %55, align 1, !tbaa !2449
  %.v170 = select i1 %1739, i64 13, i64 131
  %1748 = add i64 %1900, %.v170
  store i64 %1748, i64* %PC, align 8, !tbaa !2428
  br i1 %1739, label %block_400e98, label %block_400f0e

block_400a75:                                     ; preds = %block_400a62
  %1749 = add i64 %1919, 4
  store i64 %1749, i64* %PC, align 8
  %1750 = load i64, i64* %2276, align 8
  store i64 %1750, i64* %RAX, align 8, !tbaa !2428
  %1751 = add i64 %2273, -64
  %1752 = add i64 %1919, 8
  store i64 %1752, i64* %PC, align 8
  %1753 = inttoptr i64 %1751 to i64*
  %1754 = load i64, i64* %1753, align 8
  store i64 %1754, i64* %RCX, align 8, !tbaa !2428
  %1755 = shl i64 %1754, 3
  %1756 = add i64 %1755, -6272
  %1757 = add i64 %1756, %2273
  %1758 = add i64 %1919, 16
  store i64 %1758, i64* %PC, align 8
  %1759 = inttoptr i64 %1757 to i64*
  store i64 %1750, i64* %1759, align 8
  %1760 = load i64, i64* %RBP, align 8
  %1761 = add i64 %1760, -64
  %1762 = load i64, i64* %PC, align 8
  %1763 = add i64 %1762, 4
  store i64 %1763, i64* %PC, align 8
  %1764 = inttoptr i64 %1761 to i64*
  %1765 = load i64, i64* %1764, align 8
  %1766 = add i64 %1765, 1
  store i64 %1766, i64* %RAX, align 8, !tbaa !2428
  %1767 = icmp eq i64 %1765, -1
  %1768 = icmp eq i64 %1766, 0
  %1769 = or i1 %1767, %1768
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %30, align 1, !tbaa !2432
  %1771 = trunc i64 %1766 to i32
  %1772 = and i32 %1771, 255
  %1773 = tail call i32 @llvm.ctpop.i32(i32 %1772) #9
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  store i8 %1776, i8* %37, align 1, !tbaa !2446
  %1777 = xor i64 %1766, %1765
  %1778 = lshr i64 %1777, 4
  %1779 = trunc i64 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %43, align 1, !tbaa !2450
  %1781 = zext i1 %1768 to i8
  store i8 %1781, i8* %46, align 1, !tbaa !2447
  %1782 = lshr i64 %1766, 63
  %1783 = trunc i64 %1782 to i8
  store i8 %1783, i8* %49, align 1, !tbaa !2448
  %1784 = lshr i64 %1765, 63
  %1785 = xor i64 %1782, %1784
  %1786 = add nuw nsw i64 %1785, %1782
  %1787 = icmp eq i64 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %55, align 1, !tbaa !2449
  %1789 = add i64 %1762, 12
  store i64 %1789, i64* %PC, align 8
  store i64 %1766, i64* %1764, align 8
  %.pre117 = load i64, i64* %PC, align 8
  %.pre118 = load i64, i64* %RBP, align 8
  br label %block_400a91

block_400e31:                                     ; preds = %block_400e29, %block_400f7d
  %1790 = phi i64 [ %.pre128, %block_400e29 ], [ %2052, %block_400f7d ]
  %1791 = load i64, i64* %RBP, align 8
  %1792 = add i64 %1791, -56
  %1793 = add i64 %1790, 4
  store i64 %1793, i64* %PC, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  store i64 %1795, i64* %RAX, align 8, !tbaa !2428
  %1796 = add i64 %1791, -40
  %1797 = add i64 %1790, 8
  store i64 %1797, i64* %PC, align 8
  %1798 = inttoptr i64 %1796 to i64*
  %1799 = load i64, i64* %1798, align 8
  %1800 = sub i64 %1795, %1799
  %1801 = icmp ult i64 %1795, %1799
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %30, align 1, !tbaa !2432
  %1803 = trunc i64 %1800 to i32
  %1804 = and i32 %1803, 255
  %1805 = tail call i32 @llvm.ctpop.i32(i32 %1804) #9
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  store i8 %1808, i8* %37, align 1, !tbaa !2446
  %1809 = xor i64 %1799, %1795
  %1810 = xor i64 %1809, %1800
  %1811 = lshr i64 %1810, 4
  %1812 = trunc i64 %1811 to i8
  %1813 = and i8 %1812, 1
  store i8 %1813, i8* %43, align 1, !tbaa !2450
  %1814 = icmp eq i64 %1800, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %46, align 1, !tbaa !2447
  %1816 = lshr i64 %1800, 63
  %1817 = trunc i64 %1816 to i8
  store i8 %1817, i8* %49, align 1, !tbaa !2448
  %1818 = lshr i64 %1795, 63
  %1819 = lshr i64 %1799, 63
  %1820 = xor i64 %1819, %1818
  %1821 = xor i64 %1816, %1818
  %1822 = add nuw nsw i64 %1821, %1820
  %1823 = icmp eq i64 %1822, 2
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %55, align 1, !tbaa !2449
  %.v159 = select i1 %1801, i64 14, i64 361
  %1825 = add i64 %1790, %.v159
  store i64 %1825, i64* %PC, align 8, !tbaa !2428
  br i1 %1801, label %block_400e3f, label %block_400f9a

block_400c74:                                     ; preds = %block_400c37
  %1826 = add i64 %2991, -48
  %1827 = add i64 %2563, 8
  store i64 %1827, i64* %PC, align 8
  %1828 = inttoptr i64 %1826 to i64*
  store i64 0, i64* %1828, align 8
  %1829 = load i64, i64* %RBP, align 8
  %1830 = add i64 %1829, -56
  %1831 = load i64, i64* %PC, align 8
  %1832 = add i64 %1831, 8
  store i64 %1832, i64* %PC, align 8
  %1833 = inttoptr i64 %1830 to i64*
  store i64 1, i64* %1833, align 8
  %1834 = load i64, i64* %RBP, align 8
  %1835 = add i64 %1834, -10648
  %1836 = load i64, i64* %PC, align 8
  %1837 = add i64 %1836, 11
  store i64 %1837, i64* %PC, align 8
  %1838 = inttoptr i64 %1835 to i64*
  store i64 0, i64* %1838, align 8
  %1839 = load i64, i64* %RBP, align 8
  %1840 = add i64 %1839, -10640
  %1841 = load i64, i64* %PC, align 8
  %1842 = add i64 %1841, 7
  store i64 %1842, i64* %PC, align 8
  %1843 = inttoptr i64 %1840 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RAX, align 8, !tbaa !2428
  %1845 = shl i64 %1844, 2
  %1846 = add i64 %1845, -8320
  %1847 = add i64 %1846, %1839
  %1848 = add i64 %1841, 14
  store i64 %1848, i64* %PC, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RCX, align 8, !tbaa !2428
  %1852 = add i64 %1839, -10668
  %1853 = add i64 %1841, 20
  store i64 %1853, i64* %PC, align 8
  %1854 = inttoptr i64 %1852 to i32*
  store i32 %1850, i32* %1854, align 4
  %.pre123 = load i64, i64* %PC, align 8
  br label %block_400ca3

block_400e6b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2, %block_400f60
  %1855 = phi i64 [ %.pre129, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %729, %block_400f60 ]
  %1856 = load i64, i64* %RBP, align 8
  %1857 = add i64 %1856, -48
  %1858 = add i64 %1855, 4
  store i64 %1858, i64* %PC, align 8
  %1859 = inttoptr i64 %1857 to i64*
  %1860 = load i64, i64* %1859, align 8
  store i64 %1860, i64* %RAX, align 8, !tbaa !2428
  %1861 = add i64 %1856, -112
  %1862 = add i64 %1855, 8
  store i64 %1862, i64* %PC, align 8
  %1863 = inttoptr i64 %1861 to i64*
  %1864 = load i64, i64* %1863, align 8
  store i64 %1864, i64* %RCX, align 8, !tbaa !2428
  %1865 = add i64 %1855, 11
  store i64 %1865, i64* %PC, align 8
  %1866 = inttoptr i64 %1864 to i8*
  %1867 = load i8, i8* %1866, align 1
  %1868 = zext i8 %1867 to i64
  store i64 %1868, i64* %RDX, align 8, !tbaa !2428
  %1869 = zext i8 %1867 to i64
  store i64 %1869, i64* %RCX, align 8, !tbaa !2428
  %1870 = add nsw i64 %1869, -10624
  %1871 = add i64 %1870, %1856
  %1872 = add i64 %1855, 21
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %1871 to i8*
  %1874 = load i8, i8* %1873, align 1
  %1875 = zext i8 %1874 to i64
  store i64 %1875, i64* %RDX, align 8, !tbaa !2428
  %1876 = zext i8 %1874 to i64
  store i64 %1876, i64* %RCX, align 8, !tbaa !2428
  %1877 = sub i64 %1860, %1876
  %1878 = icmp ult i64 %1860, %1876
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %30, align 1, !tbaa !2432
  %1880 = trunc i64 %1877 to i32
  %1881 = and i32 %1880, 255
  %1882 = tail call i32 @llvm.ctpop.i32(i32 %1881) #9
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  store i8 %1885, i8* %37, align 1, !tbaa !2446
  %1886 = xor i64 %1860, %1876
  %1887 = xor i64 %1886, %1877
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %43, align 1, !tbaa !2450
  %1891 = icmp eq i64 %1877, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %46, align 1, !tbaa !2447
  %1893 = lshr i64 %1877, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %49, align 1, !tbaa !2448
  %1895 = lshr i64 %1860, 63
  %1896 = xor i64 %1893, %1895
  %1897 = add nuw nsw i64 %1896, %1895
  %1898 = icmp eq i64 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %55, align 1, !tbaa !2449
  %.v169 = select i1 %1878, i64 32, i64 274
  %1900 = add i64 %1855, %.v169
  store i64 %1900, i64* %PC, align 8, !tbaa !2428
  br i1 %1878, label %block_400e8b, label %block_400f7d

block_400a62:                                     ; preds = %block_400a54
  %1901 = add i64 %2300, 4
  store i64 %1901, i64* %PC, align 8
  %1902 = load i64, i64* %2276, align 8
  store i64 %1902, i64* %RAX, align 8, !tbaa !2428
  %1903 = shl i64 %1902, 3
  %1904 = add i64 %1903, -4224
  %1905 = add i64 %1904, %2273
  %1906 = add i64 %2300, 13
  store i64 %1906, i64* %PC, align 8
  %1907 = inttoptr i64 %1905 to i64*
  %1908 = load i64, i64* %1907, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1909 = trunc i64 %1908 to i32
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910) #9
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1915 = icmp eq i64 %1908, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %46, align 1, !tbaa !2447
  %1917 = lshr i64 %1908, 63
  %1918 = trunc i64 %1917 to i8
  store i8 %1918, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v177 = select i1 %1915, i64 47, i64 19
  %1919 = add i64 %2300, %.v177
  store i64 %1919, i64* %PC, align 8, !tbaa !2428
  br i1 %1915, label %block_400a91, label %block_400a75

block_40125a:                                     ; preds = %block_401231
  %1920 = add i64 %2601, -80
  %1921 = add i64 %2622, 8
  store i64 %1921, i64* %PC, align 8
  %1922 = inttoptr i64 %1920 to i64*
  store i64 0, i64* %1922, align 8
  %1923 = load i64, i64* %RBP, align 8
  %1924 = add i64 %1923, -56
  %1925 = load i64, i64* %PC, align 8
  %1926 = add i64 %1925, 4
  store i64 %1926, i64* %PC, align 8
  %1927 = inttoptr i64 %1924 to i64*
  %1928 = load i64, i64* %1927, align 8
  store i64 %1928, i64* %RAX, align 8, !tbaa !2428
  %1929 = add i64 %1923, -48
  %1930 = add i64 %1925, 8
  store i64 %1930, i64* %PC, align 8
  %1931 = inttoptr i64 %1929 to i64*
  store i64 %1928, i64* %1931, align 8
  %1932 = load i64, i64* %RBP, align 8
  %1933 = add i64 %1932, -72
  %1934 = load i64, i64* %PC, align 8
  %1935 = add i64 %1934, 8
  store i64 %1935, i64* %PC, align 8
  %1936 = inttoptr i64 %1933 to i64*
  store i64 128, i64* %1936, align 8
  %1937 = load i64, i64* %RBP, align 8
  %1938 = add i64 %1937, -64
  %1939 = load i64, i64* %PC, align 8
  %1940 = add i64 %1939, 8
  store i64 %1940, i64* %PC, align 8
  %1941 = inttoptr i64 %1938 to i64*
  store i64 0, i64* %1941, align 8
  %1942 = load i64, i64* %RBP, align 8
  %1943 = add i64 %1942, -120
  %1944 = load i64, i64* %PC, align 8
  %1945 = add i64 %1944, 4
  store i64 %1945, i64* %PC, align 8
  %1946 = inttoptr i64 %1943 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RAX, align 8, !tbaa !2428
  %1948 = add i64 %1942, -104
  %1949 = add i64 %1944, 8
  store i64 %1949, i64* %PC, align 8
  %1950 = inttoptr i64 %1948 to i64*
  store i64 %1947, i64* %1950, align 8
  %1951 = load i64, i64* %RBP, align 8
  %1952 = add i64 %1951, -32
  %1953 = load i64, i64* %PC, align 8
  %1954 = add i64 %1953, 4
  store i64 %1954, i64* %PC, align 8
  %1955 = inttoptr i64 %1952 to i64*
  %1956 = load i64, i64* %1955, align 8
  store i64 %1956, i64* %RAX, align 8, !tbaa !2428
  %1957 = add i64 %1951, -112
  %1958 = add i64 %1953, 8
  store i64 %1958, i64* %PC, align 8
  %1959 = inttoptr i64 %1957 to i64*
  store i64 %1956, i64* %1959, align 8
  %.pre143 = load i64, i64* %PC, align 8
  br label %block_40128a

block_4012f7:                                     ; preds = %block_4012d0
  %1960 = load i64, i64* %1197, align 8
  store i64 %1960, i64* %RAX, align 8, !tbaa !2428
  %1961 = add i64 %1224, 8
  store i64 %1961, i64* %PC, align 8
  %1962 = load i64, i64* %1187, align 8
  store i64 %1962, i64* %RCX, align 8, !tbaa !2428
  %1963 = shl i64 %1962, 3
  %1964 = add i64 %1963, -12736
  %1965 = add i64 %1964, %1182
  %1966 = add i64 %1224, 16
  store i64 %1966, i64* %PC, align 8
  %1967 = inttoptr i64 %1965 to i64*
  %1968 = load i64, i64* %1967, align 8
  %1969 = sub i64 %1960, %1968
  %1970 = icmp ult i64 %1960, %1968
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %30, align 1, !tbaa !2432
  %1972 = trunc i64 %1969 to i32
  %1973 = and i32 %1972, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973) #9
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %37, align 1, !tbaa !2446
  %1978 = xor i64 %1968, %1960
  %1979 = xor i64 %1978, %1969
  %1980 = lshr i64 %1979, 4
  %1981 = trunc i64 %1980 to i8
  %1982 = and i8 %1981, 1
  store i8 %1982, i8* %43, align 1, !tbaa !2450
  %1983 = icmp eq i64 %1969, 0
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %46, align 1, !tbaa !2447
  %1985 = lshr i64 %1969, 63
  %1986 = trunc i64 %1985 to i8
  store i8 %1986, i8* %49, align 1, !tbaa !2448
  %1987 = lshr i64 %1960, 63
  %1988 = lshr i64 %1968, 63
  %1989 = xor i64 %1988, %1987
  %1990 = xor i64 %1985, %1987
  %1991 = add nuw nsw i64 %1990, %1989
  %1992 = icmp eq i64 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %55, align 1, !tbaa !2449
  %.v165 = select i1 %1983, i64 22, i64 79
  %1994 = add i64 %1224, %.v165
  store i64 %1994, i64* %PC, align 8, !tbaa !2428
  br i1 %1983, label %block_40130d, label %block_401346

block_400f7d:                                     ; preds = %block_400e6b
  %1995 = add i64 %1900, 4
  store i64 %1995, i64* %PC, align 8
  %1996 = load i64, i64* %1863, align 8
  %1997 = add i64 %1996, 1
  store i64 %1997, i64* %RAX, align 8, !tbaa !2428
  %1998 = icmp eq i64 %1996, -1
  %1999 = icmp eq i64 %1997, 0
  %2000 = or i1 %1998, %1999
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %30, align 1, !tbaa !2432
  %2002 = trunc i64 %1997 to i32
  %2003 = and i32 %2002, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003) #9
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %37, align 1, !tbaa !2446
  %2008 = xor i64 %1997, %1996
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %43, align 1, !tbaa !2450
  %2012 = zext i1 %1999 to i8
  store i8 %2012, i8* %46, align 1, !tbaa !2447
  %2013 = lshr i64 %1997, 63
  %2014 = trunc i64 %2013 to i8
  store i8 %2014, i8* %49, align 1, !tbaa !2448
  %2015 = lshr i64 %1996, 63
  %2016 = xor i64 %2013, %2015
  %2017 = add nuw nsw i64 %2016, %2013
  %2018 = icmp eq i64 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %55, align 1, !tbaa !2449
  %2020 = add i64 %1900, 12
  store i64 %2020, i64* %PC, align 8
  store i64 %1997, i64* %1863, align 8
  %2021 = load i64, i64* %RBP, align 8
  %2022 = add i64 %2021, -56
  %2023 = load i64, i64* %PC, align 8
  %2024 = add i64 %2023, 4
  store i64 %2024, i64* %PC, align 8
  %2025 = inttoptr i64 %2022 to i64*
  %2026 = load i64, i64* %2025, align 8
  %2027 = add i64 %2026, 1
  store i64 %2027, i64* %RAX, align 8, !tbaa !2428
  %2028 = icmp eq i64 %2026, -1
  %2029 = icmp eq i64 %2027, 0
  %2030 = or i1 %2028, %2029
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %30, align 1, !tbaa !2432
  %2032 = trunc i64 %2027 to i32
  %2033 = and i32 %2032, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033) #9
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %37, align 1, !tbaa !2446
  %2038 = xor i64 %2027, %2026
  %2039 = lshr i64 %2038, 4
  %2040 = trunc i64 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %43, align 1, !tbaa !2450
  %2042 = zext i1 %2029 to i8
  store i8 %2042, i8* %46, align 1, !tbaa !2447
  %2043 = lshr i64 %2027, 63
  %2044 = trunc i64 %2043 to i8
  store i8 %2044, i8* %49, align 1, !tbaa !2448
  %2045 = lshr i64 %2026, 63
  %2046 = xor i64 %2043, %2045
  %2047 = add nuw nsw i64 %2046, %2043
  %2048 = icmp eq i64 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %55, align 1, !tbaa !2449
  %2050 = add i64 %2023, 12
  store i64 %2050, i64* %PC, align 8
  store i64 %2027, i64* %2025, align 8
  %2051 = load i64, i64* %PC, align 8
  %2052 = add i64 %2051, -356
  store i64 %2052, i64* %PC, align 8, !tbaa !2428
  br label %block_400e31

block_40113a:                                     ; preds = %block_401132, %block_4011ae
  %2053 = phi i64 [ %.pre139, %block_401132 ], [ %1347, %block_4011ae ]
  %2054 = load i64, i64* %RBP, align 8
  %2055 = add i64 %2054, -48
  %2056 = add i64 %2053, 8
  store i64 %2056, i64* %PC, align 8
  %2057 = inttoptr i64 %2055 to i64*
  %2058 = load i64, i64* %2057, align 8
  %2059 = add i64 %2058, -256
  %2060 = icmp ult i64 %2058, 256
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %30, align 1, !tbaa !2432
  %2062 = trunc i64 %2059 to i32
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063) #9
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %37, align 1, !tbaa !2446
  %2068 = xor i64 %2059, %2058
  %2069 = lshr i64 %2068, 4
  %2070 = trunc i64 %2069 to i8
  %2071 = and i8 %2070, 1
  store i8 %2071, i8* %43, align 1, !tbaa !2450
  %2072 = icmp eq i64 %2059, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %46, align 1, !tbaa !2447
  %2074 = lshr i64 %2059, 63
  %2075 = trunc i64 %2074 to i8
  store i8 %2075, i8* %49, align 1, !tbaa !2448
  %2076 = lshr i64 %2058, 63
  %2077 = xor i64 %2074, %2076
  %2078 = add nuw nsw i64 %2077, %2076
  %2079 = icmp eq i64 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %55, align 1, !tbaa !2449
  %.v161 = select i1 %2060, i64 14, i64 239
  %2081 = add i64 %2053, %.v161
  store i64 %2081, i64* %PC, align 8, !tbaa !2428
  br i1 %2060, label %block_401148, label %block_401229

block_400d0e:                                     ; preds = %block_400ca3
  %2082 = add i64 %1544, -10648
  %2083 = add i64 %1558, 7
  store i64 %2083, i64* %PC, align 8
  %2084 = inttoptr i64 %2082 to i64*
  %2085 = load i64, i64* %2084, align 8
  store i64 %2085, i64* %RAX, align 8, !tbaa !2428
  %2086 = add i64 %1544, -10640
  %2087 = add i64 %1558, 14
  store i64 %2087, i64* %PC, align 8
  %2088 = inttoptr i64 %2086 to i64*
  %2089 = load i64, i64* %2088, align 8
  store i64 %2089, i64* %RCX, align 8, !tbaa !2428
  %2090 = shl i64 %2089, 3
  %2091 = add i64 %2090, -10368
  %2092 = add i64 %2091, %1544
  %2093 = add i64 %1558, 22
  store i64 %2093, i64* %PC, align 8
  %2094 = inttoptr i64 %2092 to i64*
  store i64 %2085, i64* %2094, align 8
  %2095 = load i64, i64* %RBP, align 8
  %2096 = add i64 %2095, -48
  %2097 = load i64, i64* %PC, align 8
  %2098 = add i64 %2097, 4
  store i64 %2098, i64* %PC, align 8
  %2099 = inttoptr i64 %2096 to i64*
  %2100 = load i64, i64* %2099, align 8
  store i64 %2100, i64* %RAX, align 8, !tbaa !2428
  %2101 = trunc i64 %2100 to i8
  store i8 %2101, i8* %DL, align 1, !tbaa !2453
  %2102 = add i64 %2095, -10640
  %2103 = add i64 %2097, 13
  store i64 %2103, i64* %PC, align 8
  %2104 = inttoptr i64 %2102 to i64*
  %2105 = load i64, i64* %2104, align 8
  store i64 %2105, i64* %RAX, align 8, !tbaa !2428
  %2106 = add i64 %2105, -10624
  %2107 = add i64 %2106, %2095
  %2108 = add i64 %2097, 20
  store i64 %2108, i64* %PC, align 8
  %2109 = inttoptr i64 %2107 to i8*
  store i8 %2101, i8* %2109, align 1
  %2110 = load i64, i64* %RBP, align 8
  %2111 = add i64 %2110, -10648
  %2112 = load i64, i64* %PC, align 8
  %2113 = add i64 %2112, 7
  store i64 %2113, i64* %PC, align 8
  %2114 = inttoptr i64 %2111 to i64*
  %2115 = load i64, i64* %2114, align 8
  store i64 %2115, i64* %RAX, align 8, !tbaa !2428
  %2116 = add i64 %2110, -10656
  %2117 = add i64 %2112, 14
  store i64 %2117, i64* %PC, align 8
  %2118 = inttoptr i64 %2116 to i64*
  %2119 = load i64, i64* %2118, align 8
  %2120 = sub i64 %2115, %2119
  %2121 = icmp ult i64 %2115, %2119
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %30, align 1, !tbaa !2432
  %2123 = trunc i64 %2120 to i32
  %2124 = and i32 %2123, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124) #9
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %37, align 1, !tbaa !2446
  %2129 = xor i64 %2119, %2115
  %2130 = xor i64 %2129, %2120
  %2131 = lshr i64 %2130, 4
  %2132 = trunc i64 %2131 to i8
  %2133 = and i8 %2132, 1
  store i8 %2133, i8* %43, align 1, !tbaa !2450
  %2134 = icmp eq i64 %2120, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %46, align 1, !tbaa !2447
  %2136 = lshr i64 %2120, 63
  %2137 = trunc i64 %2136 to i8
  store i8 %2137, i8* %49, align 1, !tbaa !2448
  %2138 = lshr i64 %2115, 63
  %2139 = lshr i64 %2119, 63
  %2140 = xor i64 %2139, %2138
  %2141 = xor i64 %2136, %2138
  %2142 = add nuw nsw i64 %2141, %2140
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %55, align 1, !tbaa !2449
  %2145 = or i1 %2134, %2121
  %.v175 = select i1 %2145, i64 34, i64 20
  %2146 = add i64 %2112, %.v175
  store i64 %2146, i64* %PC, align 8, !tbaa !2428
  br i1 %2145, label %block_400d5a, label %block_400d4c

block_400dce:                                     ; preds = %block_400d97
  %2147 = add i64 %2991, -10680
  %2148 = add i64 %532, 11
  store i64 %2148, i64* %PC, align 8
  %2149 = inttoptr i64 %2147 to i64*
  store i64 0, i64* %2149, align 8
  %2150 = load i64, i64* %RBP, align 8
  %2151 = add i64 %2150, -10681
  %2152 = load i64, i64* %PC, align 8
  %2153 = add i64 %2152, 7
  store i64 %2153, i64* %PC, align 8
  %2154 = inttoptr i64 %2151 to i8*
  store i8 0, i8* %2154, align 1
  %2155 = load i64, i64* %RBP, align 8
  %2156 = add i64 %2155, -10688
  %2157 = load i64, i64* %PC, align 8
  %2158 = add i64 %2157, 10
  store i64 %2158, i64* %PC, align 8
  %2159 = inttoptr i64 %2156 to i32*
  store i32 -1, i32* %2159, align 4
  %2160 = load i64, i64* %RBP, align 8
  %2161 = add i64 %2160, -32
  %2162 = load i64, i64* %PC, align 8
  %2163 = add i64 %2162, 4
  store i64 %2163, i64* %PC, align 8
  %2164 = inttoptr i64 %2161 to i64*
  %2165 = load i64, i64* %2164, align 8
  store i64 %2165, i64* %RAX, align 8, !tbaa !2428
  %2166 = add i64 %2160, -112
  %2167 = add i64 %2162, 8
  store i64 %2167, i64* %PC, align 8
  %2168 = inttoptr i64 %2166 to i64*
  store i64 %2165, i64* %2168, align 8
  %2169 = load i64, i64* %RBP, align 8
  %2170 = add i64 %2169, -10656
  %2171 = load i64, i64* %PC, align 8
  %2172 = add i64 %2171, 8
  store i64 %2172, i64* %PC, align 8
  %2173 = inttoptr i64 %2170 to i64*
  %2174 = load i64, i64* %2173, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2175 = trunc i64 %2174 to i32
  %2176 = and i32 %2175, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176) #9
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2181 = icmp eq i64 %2174, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %46, align 1, !tbaa !2447
  %2183 = lshr i64 %2174, 63
  %2184 = trunc i64 %2183 to i8
  store i8 %2184, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v158 = select i1 %2181, i64 14, i64 55
  %2185 = add i64 %2171, %.v158
  store i64 %2185, i64* %PC, align 8, !tbaa !2428
  br i1 %2181, label %block_400e00, label %block_400e29

block_401148:                                     ; preds = %block_40113a
  %2186 = add i64 %2081, 4
  store i64 %2186, i64* %PC, align 8
  %2187 = load i64, i64* %2057, align 8
  store i64 %2187, i64* %RAX, align 8, !tbaa !2428
  %2188 = shl i64 %2187, 3
  %2189 = add i64 %2188, -12736
  %2190 = add i64 %2189, %2054
  %2191 = add i64 %2081, 12
  store i64 %2191, i64* %PC, align 8
  %2192 = inttoptr i64 %2190 to i64*
  %2193 = load i64, i64* %2192, align 8
  store i64 %2193, i64* %RAX, align 8, !tbaa !2428
  %2194 = add i64 %2054, -88
  %2195 = add i64 %2081, 16
  store i64 %2195, i64* %PC, align 8
  %2196 = inttoptr i64 %2194 to i64*
  store i64 %2193, i64* %2196, align 8
  %2197 = load i64, i64* %RBP, align 8
  %2198 = add i64 %2197, -48
  %2199 = load i64, i64* %PC, align 8
  %2200 = add i64 %2199, 4
  store i64 %2200, i64* %PC, align 8
  %2201 = inttoptr i64 %2198 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RAX, align 8, !tbaa !2428
  %2203 = add i64 %2202, -12992
  %2204 = add i64 %2203, %2197
  %2205 = add i64 %2199, 11
  store i64 %2205, i64* %PC, align 8
  %2206 = inttoptr i64 %2204 to i8*
  %2207 = load i8, i8* %2206, align 1
  store i8 %2207, i8* %CL, align 1, !tbaa !2453
  %2208 = add i64 %2197, -89
  %2209 = add i64 %2199, 14
  store i64 %2209, i64* %PC, align 8
  %2210 = inttoptr i64 %2208 to i8*
  store i8 %2207, i8* %2210, align 1
  %2211 = load i64, i64* %RBP, align 8
  %2212 = add i64 %2211, -48
  %2213 = load i64, i64* %PC, align 8
  %2214 = add i64 %2213, 4
  store i64 %2214, i64* %PC, align 8
  %2215 = inttoptr i64 %2212 to i64*
  %2216 = load i64, i64* %2215, align 8
  store i64 %2216, i64* %RAX, align 8, !tbaa !2428
  %2217 = add i64 %2211, -56
  %2218 = add i64 %2213, 8
  store i64 %2218, i64* %PC, align 8
  %2219 = inttoptr i64 %2217 to i64*
  store i64 %2216, i64* %2219, align 8
  %.pre140 = load i64, i64* %PC, align 8
  br label %block_40116e

block_4010ef:                                     ; preds = %block_4010b9, %block_4010e3
  %2220 = phi i64 [ %1454, %block_4010b9 ], [ %.pre136, %block_4010e3 ]
  %2221 = phi i64 [ %1427, %block_4010b9 ], [ %.pre135, %block_4010e3 ]
  %2222 = add i64 %2221, -72
  %2223 = add i64 %2220, 4
  store i64 %2223, i64* %PC, align 8
  %2224 = inttoptr i64 %2222 to i64*
  %2225 = load i64, i64* %2224, align 8
  %2226 = lshr i64 %2225, 63
  %2227 = trunc i64 %2226 to i8
  %2228 = trunc i64 %2225 to i8
  %2229 = and i8 %2228, 1
  %2230 = lshr i64 %2225, 1
  store i64 %2230, i64* %RAX, align 8, !tbaa !2428
  store i8 %2229, i8* %30, align 1, !tbaa !2453
  %2231 = trunc i64 %2230 to i32
  %2232 = and i32 %2231, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232) #9
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %2237 = icmp eq i64 %2230, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %49, align 1, !tbaa !2453
  store i8 %2227, i8* %55, align 1, !tbaa !2453
  %2239 = add i64 %2220, 12
  store i64 %2239, i64* %PC, align 8
  store i64 %2230, i64* %2224, align 8
  %2240 = load i64, i64* %RBP, align 8
  %2241 = add i64 %2240, -48
  %2242 = load i64, i64* %PC, align 8
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %PC, align 8
  %2244 = inttoptr i64 %2241 to i64*
  %2245 = load i64, i64* %2244, align 8
  %2246 = add i64 %2245, 1
  store i64 %2246, i64* %RAX, align 8, !tbaa !2428
  %2247 = icmp eq i64 %2245, -1
  %2248 = icmp eq i64 %2246, 0
  %2249 = or i1 %2247, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %30, align 1, !tbaa !2432
  %2251 = trunc i64 %2246 to i32
  %2252 = and i32 %2251, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252) #9
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %37, align 1, !tbaa !2446
  %2257 = xor i64 %2246, %2245
  %2258 = lshr i64 %2257, 4
  %2259 = trunc i64 %2258 to i8
  %2260 = and i8 %2259, 1
  store i8 %2260, i8* %43, align 1, !tbaa !2450
  %2261 = zext i1 %2248 to i8
  store i8 %2261, i8* %46, align 1, !tbaa !2447
  %2262 = lshr i64 %2246, 63
  %2263 = trunc i64 %2262 to i8
  store i8 %2263, i8* %49, align 1, !tbaa !2448
  %2264 = lshr i64 %2245, 63
  %2265 = xor i64 %2262, %2264
  %2266 = add nuw nsw i64 %2265, %2262
  %2267 = icmp eq i64 %2266, 2
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %55, align 1, !tbaa !2449
  %2269 = add i64 %2242, 12
  store i64 %2269, i64* %PC, align 8
  store i64 %2246, i64* %2244, align 8
  %2270 = load i64, i64* %PC, align 8
  %2271 = add i64 %2270, -105
  store i64 %2271, i64* %PC, align 8, !tbaa !2428
  br label %block_40109e

block_400a54:                                     ; preds = %block_400a91, %block_400a44
  %2272 = phi i64 [ %1722, %block_400a91 ], [ %.pre116, %block_400a44 ]
  %2273 = load i64, i64* %RBP, align 8
  %2274 = add i64 %2273, -48
  %2275 = add i64 %2272, 8
  store i64 %2275, i64* %PC, align 8
  %2276 = inttoptr i64 %2274 to i64*
  %2277 = load i64, i64* %2276, align 8
  %2278 = add i64 %2277, -256
  %2279 = icmp ult i64 %2277, 256
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %30, align 1, !tbaa !2432
  %2281 = trunc i64 %2278 to i32
  %2282 = and i32 %2281, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282) #9
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %37, align 1, !tbaa !2446
  %2287 = xor i64 %2278, %2277
  %2288 = lshr i64 %2287, 4
  %2289 = trunc i64 %2288 to i8
  %2290 = and i8 %2289, 1
  store i8 %2290, i8* %43, align 1, !tbaa !2450
  %2291 = icmp eq i64 %2278, 0
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %46, align 1, !tbaa !2447
  %2293 = lshr i64 %2278, 63
  %2294 = trunc i64 %2293 to i8
  store i8 %2294, i8* %49, align 1, !tbaa !2448
  %2295 = lshr i64 %2277, 63
  %2296 = xor i64 %2293, %2295
  %2297 = add nuw nsw i64 %2296, %2295
  %2298 = icmp eq i64 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %55, align 1, !tbaa !2449
  %.v153 = select i1 %2279, i64 14, i64 83
  %2300 = add i64 %2272, %.v153
  store i64 %2300, i64* %PC, align 8, !tbaa !2428
  br i1 %2279, label %block_400a62, label %block_400aa7

block_400c4d:                                     ; preds = %block_400c37
  %2301 = add i64 %2563, 7
  store i64 %2301, i64* %PC, align 8
  %2302 = load i64, i64* %2994, align 8
  store i64 %2302, i64* %RAX, align 8, !tbaa !2428
  %2303 = shl i64 %2302, 3
  %2304 = add i64 %2303, -10368
  %2305 = add i64 %2304, %2991
  %2306 = add i64 %2563, 19
  store i64 %2306, i64* %PC, align 8
  %2307 = inttoptr i64 %2305 to i64*
  store i64 0, i64* %2307, align 8
  %2308 = load i64, i64* %RBP, align 8
  %2309 = add i64 %2308, -10640
  %2310 = load i64, i64* %PC, align 8
  %2311 = add i64 %2310, 7
  store i64 %2311, i64* %PC, align 8
  %2312 = inttoptr i64 %2309 to i64*
  %2313 = load i64, i64* %2312, align 8
  store i64 %2313, i64* %RAX, align 8, !tbaa !2428
  %2314 = add i64 %2313, -10624
  %2315 = add i64 %2314, %2308
  %2316 = add i64 %2310, 15
  store i64 %2316, i64* %PC, align 8
  %2317 = inttoptr i64 %2315 to i8*
  store i8 0, i8* %2317, align 1
  br label %block_400d7b

block_400d6b:                                     ; preds = %block_400d5a
  %2318 = add i64 %766, 4
  store i64 %2318, i64* %PC, align 8
  %2319 = load i64, i64* %734, align 8
  store i64 %2319, i64* %RAX, align 8, !tbaa !2428
  %2320 = add i64 %766, 11
  store i64 %2320, i64* %PC, align 8
  store i64 %2319, i64* %738, align 8
  br label %block_400d7b

block_400ecf:                                     ; preds = %block_400e98
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %2321 = load i64, i64* @stderr, align 32
  store i64 %2321, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %2322 = add i64 %2453, -2223
  %2323 = add i64 %2453, 25
  %2324 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2325 = add i64 %2324, -8
  %2326 = inttoptr i64 %2325 to i64*
  store i64 %2323, i64* %2326, align 8
  store i64 %2325, i64* %RSP, align 8, !tbaa !2428
  store i64 %2322, i64* %PC, align 8, !tbaa !2428
  %2327 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %2328 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %2329 = load i64, i64* %RBP, align 8
  %2330 = add i64 %2329, -13088
  %2331 = load i32, i32* %EAX, align 4
  %2332 = add i64 %2328, 11
  store i64 %2332, i64* %PC, align 8
  %2333 = inttoptr i64 %2330 to i32*
  store i32 %2331, i32* %2333, align 4
  %2334 = load i64, i64* %PC, align 8
  %2335 = add i64 %2334, -2211
  %2336 = add i64 %2334, 5
  %2337 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2338 = add i64 %2337, -8
  %2339 = inttoptr i64 %2338 to i64*
  store i64 %2336, i64* %2339, align 8
  store i64 %2338, i64* %RSP, align 8, !tbaa !2428
  store i64 %2335, i64* %PC, align 8, !tbaa !2428
  %2340 = tail call fastcc %struct.Memory* @ext_6020e8_exit(%struct.State* nonnull %0, %struct.Memory* %2327)
  %2341 = load i64, i64* %PC, align 8
  %2342 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %2341, %struct.Memory* %2340)
  ret %struct.Memory* %2342

block_401244:                                     ; preds = %block_401231
  %2343 = add i64 %2622, 9
  store i64 %2343, i64* %PC, align 8
  %2344 = load i64, i64* %2604, align 8
  %2345 = add i64 %2344, 1
  store i64 %2345, i64* %RAX, align 8, !tbaa !2428
  %2346 = icmp eq i64 %2344, -1
  %2347 = icmp eq i64 %2345, 0
  %2348 = or i1 %2346, %2347
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %30, align 1, !tbaa !2432
  %2350 = trunc i64 %2345 to i32
  %2351 = and i32 %2350, 255
  %2352 = tail call i32 @llvm.ctpop.i32(i32 %2351) #9
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %37, align 1, !tbaa !2446
  %2356 = xor i64 %2345, %2344
  %2357 = lshr i64 %2356, 4
  %2358 = trunc i64 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %43, align 1, !tbaa !2450
  %2360 = zext i1 %2347 to i8
  store i8 %2360, i8* %46, align 1, !tbaa !2447
  %2361 = lshr i64 %2345, 63
  %2362 = trunc i64 %2361 to i8
  store i8 %2362, i8* %49, align 1, !tbaa !2448
  %2363 = lshr i64 %2344, 63
  %2364 = xor i64 %2361, %2363
  %2365 = add nuw nsw i64 %2364, %2361
  %2366 = icmp eq i64 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %55, align 1, !tbaa !2449
  %2368 = add i64 %2622, 17
  store i64 %2368, i64* %PC, align 8
  store i64 %2345, i64* %2604, align 8
  %2369 = load i64, i64* %PC, align 8
  %2370 = add i64 %2369, -36
  store i64 %2370, i64* %PC, align 8, !tbaa !2428
  br label %block_401231

block_401376:                                     ; preds = %block_401351, %block_401362
  %2371 = phi i64 [ %812, %block_401351 ], [ %.pre148, %block_401362 ]
  %2372 = add i64 %2371, -236
  store i64 %2372, i64* %PC, align 8, !tbaa !2428
  br label %block_40128a

block_400e98:                                     ; preds = %block_400e8b
  %2373 = add i64 %1856, -10681
  %2374 = add i64 %1748, 6
  store i64 %2374, i64* %PC, align 8
  %2375 = inttoptr i64 %2373 to i8*
  %2376 = load i8, i8* %2375, align 1
  store i8 %2376, i8* %AL, align 1, !tbaa !2453
  %2377 = add i64 %1856, -120
  %2378 = add i64 %1748, 10
  store i64 %2378, i64* %PC, align 8
  %2379 = inttoptr i64 %2377 to i64*
  %2380 = load i64, i64* %2379, align 8
  store i64 %2380, i64* %RCX, align 8, !tbaa !2428
  %2381 = add i64 %1856, -10680
  %2382 = add i64 %1748, 17
  store i64 %2382, i64* %PC, align 8
  %2383 = inttoptr i64 %2381 to i64*
  %2384 = load i64, i64* %2383, align 8
  store i64 %2384, i64* %RDX, align 8, !tbaa !2428
  %2385 = add i64 %2380, %2384
  %2386 = add i64 %1748, 20
  store i64 %2386, i64* %PC, align 8
  %2387 = inttoptr i64 %2385 to i8*
  store i8 %2376, i8* %2387, align 1
  %2388 = load i64, i64* %RBP, align 8
  %2389 = add i64 %2388, -10680
  %2390 = load i64, i64* %PC, align 8
  %2391 = add i64 %2390, 7
  store i64 %2391, i64* %PC, align 8
  %2392 = inttoptr i64 %2389 to i64*
  %2393 = load i64, i64* %2392, align 8
  %2394 = add i64 %2393, 1
  store i64 %2394, i64* %RCX, align 8, !tbaa !2428
  %2395 = icmp eq i64 %2393, -1
  %2396 = icmp eq i64 %2394, 0
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %30, align 1, !tbaa !2432
  %2399 = trunc i64 %2394 to i32
  %2400 = and i32 %2399, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400) #9
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %37, align 1, !tbaa !2446
  %2405 = xor i64 %2394, %2393
  %2406 = lshr i64 %2405, 4
  %2407 = trunc i64 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %43, align 1, !tbaa !2450
  %2409 = zext i1 %2396 to i8
  store i8 %2409, i8* %46, align 1, !tbaa !2447
  %2410 = lshr i64 %2394, 63
  %2411 = trunc i64 %2410 to i8
  store i8 %2411, i8* %49, align 1, !tbaa !2448
  %2412 = lshr i64 %2393, 63
  %2413 = xor i64 %2410, %2412
  %2414 = add nuw nsw i64 %2413, %2410
  %2415 = icmp eq i64 %2414, 2
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %55, align 1, !tbaa !2449
  %2417 = add i64 %2390, 18
  store i64 %2417, i64* %PC, align 8
  store i64 %2394, i64* %2392, align 8
  %2418 = load i64, i64* %RBP, align 8
  %2419 = add i64 %2418, -10680
  %2420 = load i64, i64* %PC, align 8
  %2421 = add i64 %2420, 7
  store i64 %2421, i64* %PC, align 8
  %2422 = inttoptr i64 %2419 to i64*
  %2423 = load i64, i64* %2422, align 8
  store i64 %2423, i64* %RCX, align 8, !tbaa !2428
  %2424 = add i64 %2418, -40
  %2425 = add i64 %2420, 11
  store i64 %2425, i64* %PC, align 8
  %2426 = inttoptr i64 %2424 to i64*
  %2427 = load i64, i64* %2426, align 8
  %2428 = sub i64 %2423, %2427
  %2429 = icmp ult i64 %2423, %2427
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %30, align 1, !tbaa !2432
  %2431 = trunc i64 %2428 to i32
  %2432 = and i32 %2431, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432) #9
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %37, align 1, !tbaa !2446
  %2437 = xor i64 %2427, %2423
  %2438 = xor i64 %2437, %2428
  %2439 = lshr i64 %2438, 4
  %2440 = trunc i64 %2439 to i8
  %2441 = and i8 %2440, 1
  store i8 %2441, i8* %43, align 1, !tbaa !2450
  %2442 = icmp eq i64 %2428, 0
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %46, align 1, !tbaa !2447
  %2444 = lshr i64 %2428, 63
  %2445 = trunc i64 %2444 to i8
  store i8 %2445, i8* %49, align 1, !tbaa !2448
  %2446 = lshr i64 %2423, 63
  %2447 = lshr i64 %2427, 63
  %2448 = xor i64 %2447, %2446
  %2449 = xor i64 %2444, %2446
  %2450 = add nuw nsw i64 %2449, %2448
  %2451 = icmp eq i64 %2450, 2
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %55, align 1, !tbaa !2449
  %.v172 = select i1 %2442, i64 17, i64 58
  %2453 = add i64 %2420, %.v172
  store i64 %2453, i64* %PC, align 8, !tbaa !2428
  br i1 %2442, label %block_400ecf, label %block_400ef8

block_400e3f:                                     ; preds = %block_400e31
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %2454 = add i64 %1791, -112
  %2455 = add i64 %1825, 9
  store i64 %2455, i64* %PC, align 8
  %2456 = inttoptr i64 %2454 to i64*
  %2457 = load i64, i64* %2456, align 8
  store i64 %2457, i64* %RCX, align 8, !tbaa !2428
  %2458 = add i64 %1825, 12
  store i64 %2458, i64* %PC, align 8
  %2459 = inttoptr i64 %2457 to i8*
  %2460 = load i8, i8* %2459, align 1
  %2461 = zext i8 %2460 to i64
  store i64 %2461, i64* %RDX, align 8, !tbaa !2428
  %2462 = zext i8 %2460 to i64
  store i64 %2462, i64* %RCX, align 8, !tbaa !2428
  %2463 = add nsw i64 %2462, -10624
  %2464 = add i64 %2463, %1791
  %2465 = add i64 %1825, 22
  store i64 %2465, i64* %PC, align 8
  %2466 = inttoptr i64 %2464 to i8*
  %2467 = load i8, i8* %2466, align 1
  %2468 = zext i8 %2467 to i32
  %2469 = add nsw i32 %2468, -1
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RDX, align 8, !tbaa !2428
  %2471 = icmp eq i8 %2467, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %30, align 1, !tbaa !2432
  %2473 = and i32 %2469, 255
  %2474 = tail call i32 @llvm.ctpop.i32(i32 %2473) #9
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = xor i8 %2476, 1
  store i8 %2477, i8* %37, align 1, !tbaa !2446
  %2478 = xor i32 %2469, %2468
  %2479 = lshr i32 %2478, 4
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  store i8 %2481, i8* %43, align 1, !tbaa !2450
  %2482 = icmp eq i32 %2469, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %46, align 1, !tbaa !2447
  %2484 = lshr i32 %2469, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i64 %2470, i64* %RCX, align 8, !tbaa !2428
  %2486 = add i64 %1825, 29
  store i64 %2486, i64* %PC, align 8
  %2487 = trunc i32 %2469 to i5
  switch i5 %2487, label %2488 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %2497
  ]

; <label>:2488:                                   ; preds = %block_400e3f
  %2489 = and i32 %2469, 31
  %2490 = zext i32 %2489 to i64
  %2491 = add nuw nsw i64 %2490, 4294967295
  %2492 = and i64 %2491, 4294967295
  %2493 = shl i64 1, %2492
  %2494 = trunc i64 %2493 to i32
  %2495 = icmp slt i32 %2494, 0
  %2496 = shl i32 %2494, 1
  br label %2497

; <label>:2497:                                   ; preds = %block_400e3f, %2488
  %2498 = phi i1 [ %2495, %2488 ], [ false, %block_400e3f ]
  %2499 = phi i32 [ %2496, %2488 ], [ 2, %block_400e3f ]
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RAX, align 8, !tbaa !2428
  %2501 = zext i1 %2498 to i8
  store i8 %2501, i8* %30, align 1, !tbaa !2453
  %2502 = and i32 %2499, 254
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502) #9
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %2507 = icmp eq i32 %2499, 0
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %46, align 1, !tbaa !2453
  %2509 = lshr i32 %2499, 31
  %2510 = trunc i32 %2509 to i8
  store i8 %2510, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %55, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %2497, %block_400e3f
  %2511 = phi i32 [ %2499, %2497 ], [ 1, %block_400e3f ]
  %2512 = sext i32 %2511 to i64
  store i64 %2512, i64* %RSI, align 8, !tbaa !2428
  %2513 = add i64 %1791, -72
  %2514 = add i64 %1825, 36
  store i64 %2514, i64* %PC, align 8
  %2515 = inttoptr i64 %2513 to i64*
  store i64 %2512, i64* %2515, align 8
  %2516 = load i64, i64* %RBP, align 8
  %2517 = add i64 %2516, -48
  %2518 = load i64, i64* %PC, align 8
  %2519 = add i64 %2518, 8
  store i64 %2519, i64* %PC, align 8
  %2520 = inttoptr i64 %2517 to i64*
  store i64 0, i64* %2520, align 8
  %.pre129 = load i64, i64* %PC, align 8
  br label %block_400e6b

block_40116e:                                     ; preds = %block_401148, %block_4011b3
  %2521 = phi i64 [ %.pre140, %block_401148 ], [ %482, %block_4011b3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %CL, align 1, !tbaa !2453
  %2522 = load i64, i64* %RBP, align 8
  %2523 = add i64 %2522, -56
  %2524 = add i64 %2521, 9
  store i64 %2524, i64* %PC, align 8
  %2525 = inttoptr i64 %2523 to i64*
  %2526 = load i64, i64* %2525, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2527 = trunc i64 %2526 to i32
  %2528 = and i32 %2527, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528) #9
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2533 = icmp eq i64 %2526, 0
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %46, align 1, !tbaa !2447
  %2535 = lshr i64 %2526, 63
  %2536 = trunc i64 %2535 to i8
  store i8 %2536, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %2537 = add i64 %2522, -13097
  %2538 = add i64 %2521, 15
  store i64 %2538, i64* %PC, align 8
  %2539 = inttoptr i64 %2537 to i8*
  store i8 0, i8* %2539, align 1
  %2540 = load i64, i64* %PC, align 8
  %2541 = load i8, i8* %46, align 1, !tbaa !2447
  %2542 = icmp ne i8 %2541, 0
  %.v214 = select i1 %2542, i64 35, i64 6
  %2543 = add i64 %2540, %.v214
  store i64 %2543, i64* %PC, align 8, !tbaa !2428
  %2544 = icmp eq i8 %2541, 1
  br i1 %2544, label %block_4011a0, label %block_401183

block_400c37:                                     ; preds = %block_400c26
  %2545 = add i64 %3018, 7
  store i64 %2545, i64* %PC, align 8
  %2546 = load i64, i64* %2994, align 8
  store i64 %2546, i64* %RAX, align 8, !tbaa !2428
  %2547 = shl i64 %2546, 3
  %2548 = add i64 %2547, -4224
  %2549 = add i64 %2548, %2991
  %2550 = add i64 %3018, 16
  store i64 %2550, i64* %PC, align 8
  %2551 = inttoptr i64 %2549 to i64*
  %2552 = load i64, i64* %2551, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2553 = trunc i64 %2552 to i32
  %2554 = and i32 %2553, 255
  %2555 = tail call i32 @llvm.ctpop.i32(i32 %2554) #9
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  store i8 %2558, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2559 = icmp eq i64 %2552, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %46, align 1, !tbaa !2447
  %2561 = lshr i64 %2552, 63
  %2562 = trunc i64 %2561 to i8
  store i8 %2562, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v173 = select i1 %2559, i64 22, i64 61
  %2563 = add i64 %3018, %.v173
  store i64 %2563, i64* %PC, align 8, !tbaa !2428
  br i1 %2559, label %block_400c4d, label %block_400c74

block_40128a:                                     ; preds = %block_401376, %block_40125a
  %2564 = phi i64 [ %2372, %block_401376 ], [ %.pre143, %block_40125a ]
  %2565 = load i64, i64* %RBP, align 8
  %2566 = add i64 %2565, -64
  %2567 = add i64 %2564, 4
  store i64 %2567, i64* %PC, align 8
  %2568 = inttoptr i64 %2566 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %RAX, align 8, !tbaa !2428
  %2570 = add i64 %2565, -40
  %2571 = add i64 %2564, 8
  store i64 %2571, i64* %PC, align 8
  %2572 = inttoptr i64 %2570 to i64*
  %2573 = load i64, i64* %2572, align 8
  %2574 = sub i64 %2569, %2573
  %2575 = icmp ult i64 %2569, %2573
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %30, align 1, !tbaa !2432
  %2577 = trunc i64 %2574 to i32
  %2578 = and i32 %2577, 255
  %2579 = tail call i32 @llvm.ctpop.i32(i32 %2578) #9
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %37, align 1, !tbaa !2446
  %2583 = xor i64 %2573, %2569
  %2584 = xor i64 %2583, %2574
  %2585 = lshr i64 %2584, 4
  %2586 = trunc i64 %2585 to i8
  %2587 = and i8 %2586, 1
  store i8 %2587, i8* %43, align 1, !tbaa !2450
  %2588 = icmp eq i64 %2574, 0
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %46, align 1, !tbaa !2447
  %2590 = lshr i64 %2574, 63
  %2591 = trunc i64 %2590 to i8
  store i8 %2591, i8* %49, align 1, !tbaa !2448
  %2592 = lshr i64 %2569, 63
  %2593 = lshr i64 %2573, 63
  %2594 = xor i64 %2593, %2592
  %2595 = xor i64 %2590, %2592
  %2596 = add nuw nsw i64 %2595, %2594
  %2597 = icmp eq i64 %2596, 2
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %55, align 1, !tbaa !2449
  %.v162 = select i1 %2575, i64 14, i64 241
  %2599 = add i64 %2564, %.v162
  store i64 %2599, i64* %PC, align 8, !tbaa !2428
  br i1 %2575, label %block_401298, label %block_40137b

block_401231:                                     ; preds = %block_401244, %block_401229
  %2600 = phi i64 [ %2370, %block_401244 ], [ %.pre142, %block_401229 ]
  %2601 = load i64, i64* %RBP, align 8
  %2602 = add i64 %2601, -56
  %2603 = add i64 %2600, 4
  store i64 %2603, i64* %PC, align 8
  %2604 = inttoptr i64 %2602 to i64*
  %2605 = load i64, i64* %2604, align 8
  store i64 %2605, i64* %RAX, align 8, !tbaa !2428
  %2606 = shl i64 %2605, 3
  %2607 = add i64 %2606, -12736
  %2608 = add i64 %2607, %2601
  %2609 = add i64 %2600, 13
  store i64 %2609, i64* %PC, align 8
  %2610 = inttoptr i64 %2608 to i64*
  %2611 = load i64, i64* %2610, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2612 = trunc i64 %2611 to i32
  %2613 = and i32 %2612, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613) #9
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2618 = icmp eq i64 %2611, 0
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %46, align 1, !tbaa !2447
  %2620 = lshr i64 %2611, 63
  %2621 = trunc i64 %2620 to i8
  store i8 %2621, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v151 = select i1 %2618, i64 19, i64 41
  %2622 = add i64 %2600, %.v151
  store i64 %2622, i64* %PC, align 8, !tbaa !2428
  br i1 %2618, label %block_401244, label %block_40125a

block_400b08:                                     ; preds = %block_400afd
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2623 = add i64 %1012, -6272
  store i64 %2623, i64* %RSI, align 8, !tbaa !2428
  %2624 = add i64 %1012, -4224
  store i64 %2624, i64* %RDI, align 8, !tbaa !2428
  %2625 = add i64 %1042, 23
  store i64 %2625, i64* %PC, align 8
  %2626 = load i64, i64* %1017, align 8
  %2627 = add i64 %2626, -1
  store i64 %2627, i64* %RAX, align 8, !tbaa !2428
  %2628 = icmp ne i64 %2626, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %30, align 1, !tbaa !2432
  %2630 = trunc i64 %2627 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631) #9
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %37, align 1, !tbaa !2446
  %2636 = xor i64 %2626, 16
  %2637 = xor i64 %2636, %2627
  %2638 = lshr i64 %2637, 4
  %2639 = trunc i64 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %43, align 1, !tbaa !2450
  %2641 = icmp eq i64 %2627, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %46, align 1, !tbaa !2447
  %2643 = lshr i64 %2627, 63
  %2644 = trunc i64 %2643 to i8
  store i8 %2644, i8* %49, align 1, !tbaa !2448
  %2645 = lshr i64 %2626, 63
  %2646 = xor i64 %2643, %2645
  %2647 = xor i64 %2643, 1
  %2648 = add nuw nsw i64 %2646, %2647
  %2649 = icmp eq i64 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %55, align 1, !tbaa !2449
  %2651 = add i64 %1042, 31
  store i64 %2651, i64* %PC, align 8
  store i64 %2627, i64* %1017, align 8
  %2652 = load i64, i64* %RBP, align 8
  %2653 = add i64 %2652, -6272
  %2654 = load i64, i64* %PC, align 8
  %2655 = add i64 %2654, 7
  store i64 %2655, i64* %PC, align 8
  %2656 = inttoptr i64 %2653 to i64*
  %2657 = load i64, i64* %2656, align 8
  store i64 %2657, i64* %RAX, align 8, !tbaa !2428
  %2658 = add i64 %2652, -10632
  %2659 = add i64 %2654, 14
  store i64 %2659, i64* %PC, align 8
  %2660 = inttoptr i64 %2658 to i64*
  store i64 %2657, i64* %2660, align 8
  %2661 = load i64, i64* %RBP, align 8
  %2662 = add i64 %2661, -64
  %2663 = load i64, i64* %PC, align 8
  %2664 = add i64 %2663, 4
  store i64 %2664, i64* %PC, align 8
  %2665 = inttoptr i64 %2662 to i64*
  %2666 = load i64, i64* %2665, align 8
  store i64 %2666, i64* %RAX, align 8, !tbaa !2428
  %2667 = shl i64 %2666, 3
  %2668 = add i64 %2667, -6272
  %2669 = add i64 %2668, %2661
  %2670 = add i64 %2663, 12
  store i64 %2670, i64* %PC, align 8
  %2671 = inttoptr i64 %2669 to i64*
  %2672 = load i64, i64* %2671, align 8
  store i64 %2672, i64* %RAX, align 8, !tbaa !2428
  %2673 = add i64 %2661, -6272
  %2674 = add i64 %2663, 19
  store i64 %2674, i64* %PC, align 8
  %2675 = inttoptr i64 %2673 to i64*
  store i64 %2672, i64* %2675, align 8
  %2676 = load i64, i64* %RBP, align 8
  %2677 = add i64 %2676, -64
  %2678 = load i64, i64* %PC, align 8
  %2679 = add i64 %2678, 4
  store i64 %2679, i64* %PC, align 8
  %2680 = inttoptr i64 %2677 to i64*
  %2681 = load i64, i64* %2680, align 8
  store i64 %2681, i64* %RAX, align 8, !tbaa !2428
  %2682 = and i64 %2681, 4294967295
  store i64 %2682, i64* %RDX, align 8, !tbaa !2428
  %2683 = add i64 %2678, 2136
  %2684 = add i64 %2678, 11
  %2685 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2686 = add i64 %2685, -8
  %2687 = inttoptr i64 %2686 to i64*
  store i64 %2684, i64* %2687, align 8
  store i64 %2686, i64* %RSP, align 8, !tbaa !2428
  store i64 %2683, i64* %PC, align 8, !tbaa !2428
  %2688 = tail call %struct.Memory* @sub_4013a0_heap_adjust(%struct.State* nonnull %0, i64 %2683, %struct.Memory* %MEMORY.6)
  %2689 = load i64, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2690 = load i64, i64* %RBP, align 8
  %2691 = add i64 %2690, -6272
  store i64 %2691, i64* %RSI, align 8, !tbaa !2428
  %2692 = add i64 %2690, -4224
  store i64 %2692, i64* %RDI, align 8, !tbaa !2428
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %2693 = add i64 %2689, 33
  store i64 %2693, i64* %PC, align 8
  %2694 = inttoptr i64 %2691 to i64*
  %2695 = load i64, i64* %2694, align 8
  store i64 %2695, i64* %R8, align 8, !tbaa !2428
  %2696 = shl i64 %2695, 3
  %2697 = add i64 %2696, -4224
  %2698 = add i64 %2697, %2690
  %2699 = add i64 %2689, 41
  store i64 %2699, i64* %PC, align 8
  %2700 = inttoptr i64 %2698 to i64*
  %2701 = load i64, i64* %2700, align 8
  store i64 %2701, i64* %R8, align 8, !tbaa !2428
  %2702 = add i64 %2690, -10632
  %2703 = add i64 %2689, 48
  store i64 %2703, i64* %PC, align 8
  %2704 = inttoptr i64 %2702 to i64*
  %2705 = load i64, i64* %2704, align 8
  store i64 %2705, i64* %R9, align 8, !tbaa !2428
  %2706 = shl i64 %2705, 3
  %2707 = add i64 %2706, -4224
  %2708 = add i64 %2707, %2690
  %2709 = add i64 %2689, 56
  store i64 %2709, i64* %PC, align 8
  %2710 = inttoptr i64 %2708 to i64*
  %2711 = load i64, i64* %2710, align 8
  %2712 = add i64 %2711, %2701
  store i64 %2712, i64* %R8, align 8, !tbaa !2428
  %2713 = icmp ult i64 %2712, %2701
  %2714 = icmp ult i64 %2712, %2711
  %2715 = or i1 %2713, %2714
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %30, align 1, !tbaa !2432
  %2717 = trunc i64 %2712 to i32
  %2718 = and i32 %2717, 255
  %2719 = tail call i32 @llvm.ctpop.i32(i32 %2718) #9
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %37, align 1, !tbaa !2446
  %2723 = xor i64 %2711, %2701
  %2724 = xor i64 %2723, %2712
  %2725 = lshr i64 %2724, 4
  %2726 = trunc i64 %2725 to i8
  %2727 = and i8 %2726, 1
  store i8 %2727, i8* %43, align 1, !tbaa !2450
  %2728 = icmp eq i64 %2712, 0
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %46, align 1, !tbaa !2447
  %2730 = lshr i64 %2712, 63
  %2731 = trunc i64 %2730 to i8
  store i8 %2731, i8* %49, align 1, !tbaa !2448
  %2732 = lshr i64 %2701, 63
  %2733 = lshr i64 %2711, 63
  %2734 = xor i64 %2730, %2732
  %2735 = xor i64 %2730, %2733
  %2736 = add nuw nsw i64 %2734, %2735
  %2737 = icmp eq i64 %2736, 2
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %55, align 1, !tbaa !2449
  %2739 = add i64 %2690, -64
  %2740 = add i64 %2689, 60
  store i64 %2740, i64* %PC, align 8
  %2741 = inttoptr i64 %2739 to i64*
  %2742 = load i64, i64* %2741, align 8
  %2743 = add i64 %2742, 256
  store i64 %2743, i64* %R9, align 8, !tbaa !2428
  %2744 = icmp ugt i64 %2742, -257
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %30, align 1, !tbaa !2432
  %2746 = trunc i64 %2743 to i32
  %2747 = and i32 %2746, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747) #9
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %37, align 1, !tbaa !2446
  %2752 = xor i64 %2743, %2742
  %2753 = lshr i64 %2752, 4
  %2754 = trunc i64 %2753 to i8
  %2755 = and i8 %2754, 1
  store i8 %2755, i8* %43, align 1, !tbaa !2450
  %2756 = icmp eq i64 %2743, 0
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %46, align 1, !tbaa !2447
  %2758 = lshr i64 %2743, 63
  %2759 = trunc i64 %2758 to i8
  store i8 %2759, i8* %49, align 1, !tbaa !2448
  %2760 = lshr i64 %2742, 63
  %2761 = xor i64 %2758, %2760
  %2762 = add nuw nsw i64 %2761, %2758
  %2763 = icmp eq i64 %2762, 2
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %55, align 1, !tbaa !2449
  %2765 = load i64, i64* %RBP, align 8
  %2766 = shl i64 %2743, 3
  %2767 = add i64 %2765, -4224
  %2768 = add i64 %2767, %2766
  %2769 = add i64 %2689, 75
  store i64 %2769, i64* %PC, align 8
  %2770 = inttoptr i64 %2768 to i64*
  store i64 %2712, i64* %2770, align 8
  %2771 = load i64, i64* %RBP, align 8
  %2772 = add i64 %2771, -64
  %2773 = load i64, i64* %PC, align 8
  %2774 = add i64 %2773, 4
  store i64 %2774, i64* %PC, align 8
  %2775 = inttoptr i64 %2772 to i64*
  %2776 = load i64, i64* %2775, align 8
  %2777 = add i64 %2776, 256
  store i64 %2777, i64* %R8, align 8, !tbaa !2428
  %2778 = icmp ugt i64 %2776, -257
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %30, align 1, !tbaa !2432
  %2780 = trunc i64 %2777 to i32
  %2781 = and i32 %2780, 255
  %2782 = tail call i32 @llvm.ctpop.i32(i32 %2781) #9
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  store i8 %2785, i8* %37, align 1, !tbaa !2446
  %2786 = xor i64 %2777, %2776
  %2787 = lshr i64 %2786, 4
  %2788 = trunc i64 %2787 to i8
  %2789 = and i8 %2788, 1
  store i8 %2789, i8* %43, align 1, !tbaa !2450
  %2790 = icmp eq i64 %2777, 0
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %46, align 1, !tbaa !2447
  %2792 = lshr i64 %2777, 63
  %2793 = trunc i64 %2792 to i8
  store i8 %2793, i8* %49, align 1, !tbaa !2448
  %2794 = lshr i64 %2776, 63
  %2795 = xor i64 %2792, %2794
  %2796 = add nuw nsw i64 %2795, %2792
  %2797 = icmp eq i64 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %55, align 1, !tbaa !2449
  %2799 = and i64 %2777, 4294967295
  store i64 %2799, i64* %RDX, align 8, !tbaa !2428
  %2800 = add i64 %2771, -10632
  %2801 = add i64 %2773, 21
  store i64 %2801, i64* %PC, align 8
  %2802 = inttoptr i64 %2800 to i64*
  %2803 = load i64, i64* %2802, align 8
  store i64 %2803, i64* %R8, align 8, !tbaa !2428
  %2804 = shl i64 %2803, 2
  %2805 = add i64 %2804, -8320
  %2806 = add i64 %2805, %2771
  %2807 = add i64 %2773, 29
  store i64 %2807, i64* %PC, align 8
  %2808 = inttoptr i64 %2806 to i32*
  store i32 %2780, i32* %2808, align 4
  %2809 = load i64, i64* %RAX, align 8
  %2810 = load i64, i64* %RBP, align 8
  %2811 = add i64 %2810, -64
  %2812 = load i64, i64* %PC, align 8
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC, align 8
  %2814 = inttoptr i64 %2811 to i64*
  %2815 = load i64, i64* %2814, align 8
  %2816 = sub i64 %2809, %2815
  store i64 %2816, i64* %RAX, align 8, !tbaa !2428
  %2817 = icmp ult i64 %2809, %2815
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %30, align 1, !tbaa !2432
  %2819 = trunc i64 %2816 to i32
  %2820 = and i32 %2819, 255
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820) #9
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %37, align 1, !tbaa !2446
  %2825 = xor i64 %2815, %2809
  %2826 = xor i64 %2825, %2816
  %2827 = lshr i64 %2826, 4
  %2828 = trunc i64 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %43, align 1, !tbaa !2450
  %2830 = icmp eq i64 %2816, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %46, align 1, !tbaa !2447
  %2832 = lshr i64 %2816, 63
  %2833 = trunc i64 %2832 to i8
  store i8 %2833, i8* %49, align 1, !tbaa !2448
  %2834 = lshr i64 %2809, 63
  %2835 = lshr i64 %2815, 63
  %2836 = xor i64 %2835, %2834
  %2837 = xor i64 %2832, %2834
  %2838 = add nuw nsw i64 %2837, %2836
  %2839 = icmp eq i64 %2838, 2
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %55, align 1, !tbaa !2449
  %2841 = and i64 %2816, 4294967295
  store i64 %2841, i64* %RDX, align 8, !tbaa !2428
  %2842 = add i64 %2810, -6272
  %2843 = add i64 %2812, 13
  store i64 %2843, i64* %PC, align 8
  %2844 = inttoptr i64 %2842 to i64*
  %2845 = load i64, i64* %2844, align 8
  store i64 %2845, i64* %RAX, align 8, !tbaa !2428
  %2846 = shl i64 %2845, 2
  %2847 = add i64 %2846, -8320
  %2848 = add i64 %2847, %2810
  %2849 = add i64 %2812, 20
  store i64 %2849, i64* %PC, align 8
  %2850 = inttoptr i64 %2848 to i32*
  store i32 %2819, i32* %2850, align 4
  %2851 = load i64, i64* %RBP, align 8
  %2852 = add i64 %2851, -64
  %2853 = load i64, i64* %PC, align 8
  %2854 = add i64 %2853, 4
  store i64 %2854, i64* %PC, align 8
  %2855 = inttoptr i64 %2852 to i64*
  %2856 = load i64, i64* %2855, align 8
  %2857 = add i64 %2856, 256
  store i64 %2857, i64* %RAX, align 8, !tbaa !2428
  %2858 = icmp ugt i64 %2856, -257
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %30, align 1, !tbaa !2432
  %2860 = trunc i64 %2857 to i32
  %2861 = and i32 %2860, 255
  %2862 = tail call i32 @llvm.ctpop.i32(i32 %2861) #9
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %37, align 1, !tbaa !2446
  %2866 = xor i64 %2857, %2856
  %2867 = lshr i64 %2866, 4
  %2868 = trunc i64 %2867 to i8
  %2869 = and i8 %2868, 1
  store i8 %2869, i8* %43, align 1, !tbaa !2450
  %2870 = icmp eq i64 %2857, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %46, align 1, !tbaa !2447
  %2872 = lshr i64 %2857, 63
  %2873 = trunc i64 %2872 to i8
  store i8 %2873, i8* %49, align 1, !tbaa !2448
  %2874 = lshr i64 %2856, 63
  %2875 = xor i64 %2872, %2874
  %2876 = add nuw nsw i64 %2875, %2872
  %2877 = icmp eq i64 %2876, 2
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %55, align 1, !tbaa !2449
  %2879 = add i64 %2851, -6272
  %2880 = add i64 %2853, 17
  store i64 %2880, i64* %PC, align 8
  %2881 = inttoptr i64 %2879 to i64*
  store i64 %2857, i64* %2881, align 8
  %2882 = load i64, i64* %RBP, align 8
  %2883 = add i64 %2882, -64
  %2884 = load i64, i64* %PC, align 8
  %2885 = add i64 %2884, 4
  store i64 %2885, i64* %PC, align 8
  %2886 = inttoptr i64 %2883 to i64*
  %2887 = load i64, i64* %2886, align 8
  store i64 %2887, i64* %RAX, align 8, !tbaa !2428
  %2888 = and i64 %2887, 4294967295
  store i64 %2888, i64* %RDX, align 8, !tbaa !2428
  %2889 = add i64 %2884, 1984
  %2890 = add i64 %2884, 11
  %2891 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2892 = add i64 %2891, -8
  %2893 = inttoptr i64 %2892 to i64*
  store i64 %2890, i64* %2893, align 8
  store i64 %2892, i64* %RSP, align 8, !tbaa !2428
  store i64 %2889, i64* %PC, align 8, !tbaa !2428
  %2894 = tail call %struct.Memory* @sub_4013a0_heap_adjust(%struct.State* nonnull %0, i64 %2889, %struct.Memory* %2688)
  %.pre120 = load i64, i64* %PC, align 8
  %.pre121 = load i64, i64* %RBP, align 8
  br label %block_400afd

block_400aaf:                                     ; preds = %block_400aa7, %block_400aba
  %2895 = phi i64 [ %.pre119, %block_400aa7 ], [ %1408, %block_400aba ]
  %MEMORY.25 = phi %struct.Memory* [ %322, %block_400aa7 ], [ %1375, %block_400aba ]
  %2896 = load i64, i64* %RBP, align 8
  %2897 = add i64 %2896, -48
  %2898 = add i64 %2895, 5
  store i64 %2898, i64* %PC, align 8
  %2899 = inttoptr i64 %2897 to i64*
  %2900 = load i64, i64* %2899, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2901 = trunc i64 %2900 to i32
  %2902 = and i32 %2901, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902) #9
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2907 = icmp eq i64 %2900, 0
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %46, align 1, !tbaa !2447
  %2909 = lshr i64 %2900, 63
  %2910 = trunc i64 %2909 to i8
  store i8 %2910, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v154 = select i1 %2907, i64 73, i64 11
  %2911 = add i64 %2895, %.v154
  store i64 %2911, i64* %PC, align 8, !tbaa !2428
  br i1 %2907, label %block_400afd.preheader, label %block_400aba

block_400afd.preheader:                           ; preds = %block_400aaf
  br label %block_400afd

block_400e29:                                     ; preds = %block_400dce
  %2912 = add i64 %2169, -56
  %2913 = add i64 %2185, 8
  store i64 %2913, i64* %PC, align 8
  %2914 = inttoptr i64 %2912 to i64*
  store i64 0, i64* %2914, align 8
  %.pre128 = load i64, i64* %PC, align 8
  br label %block_400e31

block_401132:                                     ; preds = %block_401019
  %2915 = add i64 %3067, -48
  %2916 = add i64 %3094, 8
  store i64 %2916, i64* %PC, align 8
  %2917 = inttoptr i64 %2915 to i64*
  store i64 1, i64* %2917, align 8
  %.pre139 = load i64, i64* %PC, align 8
  br label %block_40113a

block_401027:                                     ; preds = %block_401019
  %2918 = add i64 %3094, 4
  store i64 %2918, i64* %PC, align 8
  %2919 = load i64, i64* %3070, align 8
  store i64 %2919, i64* %RAX, align 8, !tbaa !2428
  %2920 = trunc i64 %2919 to i8
  store i8 %2920, i8* %CL, align 1, !tbaa !2453
  %2921 = add i64 %3067, -13000
  %2922 = add i64 %3094, 13
  store i64 %2922, i64* %PC, align 8
  %2923 = inttoptr i64 %2921 to i64*
  %2924 = load i64, i64* %2923, align 8
  store i64 %2924, i64* %RAX, align 8, !tbaa !2428
  %2925 = add i64 %3094, 15
  store i64 %2925, i64* %PC, align 8
  %2926 = inttoptr i64 %2924 to i8*
  store i8 %2920, i8* %2926, align 1
  %2927 = load i64, i64* %RBP, align 8
  %2928 = add i64 %2927, -13000
  %2929 = load i64, i64* %PC, align 8
  %2930 = add i64 %2929, 7
  store i64 %2930, i64* %PC, align 8
  %2931 = inttoptr i64 %2928 to i64*
  %2932 = load i64, i64* %2931, align 8
  %2933 = add i64 %2932, 1
  store i64 %2933, i64* %RAX, align 8, !tbaa !2428
  %2934 = icmp eq i64 %2932, -1
  %2935 = icmp eq i64 %2933, 0
  %2936 = or i1 %2934, %2935
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %30, align 1, !tbaa !2432
  %2938 = trunc i64 %2933 to i32
  %2939 = and i32 %2938, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939) #9
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %37, align 1, !tbaa !2446
  %2944 = xor i64 %2933, %2932
  %2945 = lshr i64 %2944, 4
  %2946 = trunc i64 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %43, align 1, !tbaa !2450
  %2948 = zext i1 %2935 to i8
  store i8 %2948, i8* %46, align 1, !tbaa !2447
  %2949 = lshr i64 %2933, 63
  %2950 = trunc i64 %2949 to i8
  store i8 %2950, i8* %49, align 1, !tbaa !2448
  %2951 = lshr i64 %2932, 63
  %2952 = xor i64 %2949, %2951
  %2953 = add nuw nsw i64 %2952, %2949
  %2954 = icmp eq i64 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %55, align 1, !tbaa !2449
  %2956 = add i64 %2929, 18
  store i64 %2956, i64* %PC, align 8
  store i64 %2933, i64* %2931, align 8
  %2957 = load i64, i64* %RBP, align 8
  %2958 = add i64 %2957, -56
  %2959 = load i64, i64* %PC, align 8
  %2960 = add i64 %2959, 4
  store i64 %2960, i64* %PC, align 8
  %2961 = inttoptr i64 %2958 to i64*
  %2962 = load i64, i64* %2961, align 8
  store i64 %2962, i64* %RAX, align 8, !tbaa !2428
  %2963 = shl i64 %2962, 3
  %2964 = add i64 %2963, -10368
  %2965 = add i64 %2964, %2957
  %2966 = add i64 %2959, 12
  store i64 %2966, i64* %PC, align 8
  %2967 = inttoptr i64 %2965 to i64*
  %2968 = load i64, i64* %2967, align 8
  store i64 %2968, i64* %RAX, align 8, !tbaa !2428
  %2969 = add i64 %2959, 16
  store i64 %2969, i64* %PC, align 8
  %2970 = load i64, i64* %2961, align 8
  store i64 %2970, i64* %RDX, align 8, !tbaa !2428
  %2971 = add i64 %2970, -10624
  %2972 = add i64 %2971, %2957
  %2973 = add i64 %2959, 24
  store i64 %2973, i64* %PC, align 8
  %2974 = inttoptr i64 %2972 to i8*
  %2975 = load i8, i8* %2974, align 1
  %2976 = zext i8 %2975 to i64
  store i64 %2976, i64* %RSI, align 8, !tbaa !2428
  %2977 = zext i8 %2975 to i64
  store i64 %2977, i64* %RDX, align 8, !tbaa !2428
  %2978 = or i64 %2968, %2977
  store i64 %2978, i64* %RAX, align 8, !tbaa !2428
  %2979 = trunc i64 %2978 to i32
  %2980 = and i32 %2979, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980) #9
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  %2985 = icmp eq i64 %2978, 0
  %2986 = zext i1 %2985 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %2984, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %2986, i8* %46, align 1, !tbaa !2447
  %2987 = lshr i64 %2968, 63
  %2988 = trunc i64 %2987 to i8
  store i8 %2988, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v167 = select i1 %2985, i64 212, i64 39
  %2989 = add i64 %2959, %.v167
  store i64 %2989, i64* %PC, align 8, !tbaa !2428
  br i1 %2985, label %block_40111c, label %block_40106f

block_400c26:                                     ; preds = %block_400d7b, %block_400bf0
  %2990 = phi i64 [ %1092, %block_400d7b ], [ %.pre122, %block_400bf0 ]
  %2991 = load i64, i64* %RBP, align 8
  %2992 = add i64 %2991, -10640
  %2993 = add i64 %2990, 11
  store i64 %2993, i64* %PC, align 8
  %2994 = inttoptr i64 %2992 to i64*
  %2995 = load i64, i64* %2994, align 8
  %2996 = add i64 %2995, -256
  %2997 = icmp ult i64 %2995, 256
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %30, align 1, !tbaa !2432
  %2999 = trunc i64 %2996 to i32
  %3000 = and i32 %2999, 255
  %3001 = tail call i32 @llvm.ctpop.i32(i32 %3000) #9
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  store i8 %3004, i8* %37, align 1, !tbaa !2446
  %3005 = xor i64 %2996, %2995
  %3006 = lshr i64 %3005, 4
  %3007 = trunc i64 %3006 to i8
  %3008 = and i8 %3007, 1
  store i8 %3008, i8* %43, align 1, !tbaa !2450
  %3009 = icmp eq i64 %2996, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %46, align 1, !tbaa !2447
  %3011 = lshr i64 %2996, 63
  %3012 = trunc i64 %3011 to i8
  store i8 %3012, i8* %49, align 1, !tbaa !2448
  %3013 = lshr i64 %2995, 63
  %3014 = xor i64 %3011, %3013
  %3015 = add nuw nsw i64 %3014, %3013
  %3016 = icmp eq i64 %3015, 2
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %55, align 1, !tbaa !2449
  %.v156 = select i1 %2997, i64 17, i64 369
  %3018 = add i64 %2990, %.v156
  store i64 %3018, i64* %PC, align 8, !tbaa !2428
  br i1 %2997, label %block_400c37, label %block_400d97

block_400f0e:                                     ; preds = %block_400e8b
  %3019 = add i64 %1748, 6
  store i64 %3019, i64* %PC, align 8
  %3020 = load i32, i32* %1725, align 4
  %3021 = add i32 %3020, 1
  %3022 = zext i32 %3021 to i64
  store i64 %3022, i64* %RAX, align 8, !tbaa !2428
  %3023 = icmp eq i32 %3020, -1
  %3024 = icmp eq i32 %3021, 0
  %3025 = or i1 %3023, %3024
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %30, align 1, !tbaa !2432
  %3027 = and i32 %3021, 255
  %3028 = tail call i32 @llvm.ctpop.i32(i32 %3027) #9
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  %3031 = xor i8 %3030, 1
  store i8 %3031, i8* %37, align 1, !tbaa !2446
  %3032 = xor i32 %3021, %3020
  %3033 = lshr i32 %3032, 4
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  store i8 %3035, i8* %43, align 1, !tbaa !2450
  %3036 = zext i1 %3024 to i8
  store i8 %3036, i8* %46, align 1, !tbaa !2447
  %3037 = lshr i32 %3021, 31
  %3038 = trunc i32 %3037 to i8
  store i8 %3038, i8* %49, align 1, !tbaa !2448
  %3039 = lshr i32 %3020, 31
  %3040 = xor i32 %3037, %3039
  %3041 = add nuw nsw i32 %3040, %3037
  %3042 = icmp eq i32 %3041, 2
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %55, align 1, !tbaa !2449
  %3044 = add i64 %1748, 15
  store i64 %3044, i64* %PC, align 8
  store i32 %3021, i32* %1725, align 4
  %3045 = load i64, i64* %RBP, align 8
  %3046 = add i64 %3045, -10681
  %3047 = load i64, i64* %PC, align 8
  %3048 = add i64 %3047, 7
  store i64 %3048, i64* %PC, align 8
  %3049 = inttoptr i64 %3046 to i8*
  %3050 = load i8, i8* %3049, align 1
  %3051 = sext i8 %3050 to i32
  %3052 = shl nsw i32 %3051, 1
  %3053 = zext i32 %3052 to i64
  store i64 %3053, i64* %RAX, align 8, !tbaa !2428
  %.lobit44 = lshr i8 %3050, 7
  store i8 %.lobit44, i8* %30, align 1, !tbaa !2453
  %3054 = and i32 %3052, 254
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054) #9
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %3059 = icmp eq i8 %3050, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %46, align 1, !tbaa !2453
  %3061 = lshr i32 %3051, 30
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  store i8 %3063, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %55, align 1, !tbaa !2453
  %3064 = trunc i32 %3052 to i8
  store i8 %3064, i8* %CL, align 1, !tbaa !2453
  %3065 = add i64 %3047, 18
  store i64 %3065, i64* %PC, align 8
  store i8 %3064, i8* %3049, align 1
  %.pre130 = load i64, i64* %PC, align 8
  br label %block_400f2f

block_401019:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_40111c
  %3066 = phi i64 [ %.pre133, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %949, %block_40111c ]
  %3067 = load i64, i64* %RBP, align 8
  %3068 = add i64 %3067, -56
  %3069 = add i64 %3066, 8
  store i64 %3069, i64* %PC, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  %3072 = add i64 %3071, -256
  %3073 = icmp ult i64 %3071, 256
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %30, align 1, !tbaa !2432
  %3075 = trunc i64 %3072 to i32
  %3076 = and i32 %3075, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076) #9
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %37, align 1, !tbaa !2446
  %3081 = xor i64 %3072, %3071
  %3082 = lshr i64 %3081, 4
  %3083 = trunc i64 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %43, align 1, !tbaa !2450
  %3085 = icmp eq i64 %3072, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %46, align 1, !tbaa !2447
  %3087 = lshr i64 %3072, 63
  %3088 = trunc i64 %3087 to i8
  store i8 %3088, i8* %49, align 1, !tbaa !2448
  %3089 = lshr i64 %3071, 63
  %3090 = xor i64 %3087, %3089
  %3091 = add nuw nsw i64 %3090, %3089
  %3092 = icmp eq i64 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %55, align 1, !tbaa !2449
  %.v160 = select i1 %3073, i64 14, i64 281
  %3094 = add i64 %3066, %.v160
  store i64 %3094, i64* %PC, align 8, !tbaa !2428
  br i1 %3073, label %block_401027, label %block_401132

block_400f9a:                                     ; preds = %block_400e31
  %3095 = add i64 %1791, -12992
  store i64 %3095, i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i64 2048, i64* %RDX, align 8, !tbaa !2428
  %3096 = add i64 %1791, -12736
  store i64 %3096, i64* %RDI, align 8, !tbaa !2428
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %3097 = add i64 %1791, -10688
  %3098 = add i64 %1825, 34
  store i64 %3098, i64* %PC, align 8
  %3099 = inttoptr i64 %3097 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = sub i32 7, %3100
  %3102 = zext i32 %3101 to i64
  store i64 %3102, i64* %RCX, align 8, !tbaa !2428
  %3103 = icmp ugt i32 %3100, 7
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %30, align 1, !tbaa !2432
  %3105 = and i32 %3101, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105) #9
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %37, align 1, !tbaa !2446
  %3110 = xor i32 %3101, %3100
  %3111 = lshr i32 %3110, 4
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  store i8 %3113, i8* %43, align 1, !tbaa !2450
  %3114 = icmp eq i32 %3101, 0
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %46, align 1, !tbaa !2447
  %3116 = lshr i32 %3101, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %49, align 1, !tbaa !2448
  %3118 = lshr i32 %3100, 31
  %3119 = add nuw nsw i32 %3116, %3118
  %3120 = icmp eq i32 %3119, 2
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %55, align 1, !tbaa !2449
  %3122 = add i64 %1791, -10681
  %3123 = add i64 %1825, 42
  store i64 %3123, i64* %PC, align 8
  %3124 = inttoptr i64 %3122 to i8*
  %3125 = load i8, i8* %3124, align 1
  %3126 = sext i8 %3125 to i64
  %3127 = and i64 %3126, 4294967295
  store i64 %3127, i64* %R8, align 8, !tbaa !2428
  %3128 = sext i8 %3125 to i32
  %3129 = add i64 %1825, 45
  store i64 %3129, i64* %PC, align 8
  %3130 = trunc i32 %3101 to i5
  switch i5 %3130, label %3133 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %3131
  ]

; <label>:3131:                                   ; preds = %block_400f9a
  %3132 = icmp slt i8 %3125, 0
  br label %3142

; <label>:3133:                                   ; preds = %block_400f9a
  %3134 = zext i32 %3128 to i64
  %3135 = and i32 %3101, 31
  %3136 = zext i32 %3135 to i64
  %3137 = add nuw nsw i64 %3136, 4294967295
  %3138 = and i64 %3137, 4294967295
  %3139 = shl i64 %3134, %3138
  %3140 = trunc i64 %3139 to i32
  %3141 = icmp slt i32 %3140, 0
  br label %3142

; <label>:3142:                                   ; preds = %3133, %3131
  %3143 = phi i1 [ %3132, %3131 ], [ %3141, %3133 ]
  %.in = phi i32 [ %3128, %3131 ], [ %3140, %3133 ]
  %3144 = shl i32 %.in, 1
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %R8, align 8, !tbaa !2428
  %3146 = zext i1 %3143 to i8
  store i8 %3146, i8* %30, align 1, !tbaa !2453
  %3147 = and i32 %3144, 254
  %3148 = tail call i32 @llvm.ctpop.i32(i32 %3147) #9
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  %3151 = xor i8 %3150, 1
  store i8 %3151, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %3152 = icmp eq i32 %3144, 0
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %46, align 1, !tbaa !2453
  %3154 = lshr i32 %.in, 30
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  store i8 %3156, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %55, align 1, !tbaa !2453
  %3157 = trunc i32 %3144 to i8
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %3142, %block_400f9a
  %3158 = phi i8 [ %3157, %3142 ], [ %3125, %block_400f9a ]
  store i8 %3158, i8* %CL, align 1, !tbaa !2453
  %3159 = add i64 %1825, 54
  store i64 %3159, i64* %PC, align 8
  store i8 %3158, i8* %3124, align 1
  %3160 = load i64, i64* %RBP, align 8
  %3161 = add i64 %3160, -10681
  %3162 = load i64, i64* %PC, align 8
  %3163 = add i64 %3162, 6
  store i64 %3163, i64* %PC, align 8
  %3164 = inttoptr i64 %3161 to i8*
  %3165 = load i8, i8* %3164, align 1
  store i8 %3165, i8* %CL, align 1, !tbaa !2453
  %3166 = add i64 %3160, -120
  %3167 = add i64 %3162, 10
  store i64 %3167, i64* %PC, align 8
  %3168 = inttoptr i64 %3166 to i64*
  %3169 = load i64, i64* %3168, align 8
  store i64 %3169, i64* %R9, align 8, !tbaa !2428
  %3170 = add i64 %3160, -10680
  %3171 = add i64 %3162, 17
  store i64 %3171, i64* %PC, align 8
  %3172 = inttoptr i64 %3170 to i64*
  %3173 = load i64, i64* %3172, align 8
  store i64 %3173, i64* %R10, align 8, !tbaa !2428
  %3174 = add i64 %3169, %3173
  %3175 = add i64 %3162, 21
  store i64 %3175, i64* %PC, align 8
  %3176 = inttoptr i64 %3174 to i8*
  store i8 %3165, i8* %3176, align 1
  %3177 = load i64, i64* %RBP, align 8
  %3178 = add i64 %3177, -10680
  %3179 = load i64, i64* %PC, align 8
  %3180 = add i64 %3179, 7
  store i64 %3180, i64* %PC, align 8
  %3181 = inttoptr i64 %3178 to i64*
  %3182 = load i64, i64* %3181, align 8
  %3183 = add i64 %3182, 1
  store i64 %3183, i64* %R9, align 8, !tbaa !2428
  %3184 = icmp eq i64 %3182, -1
  %3185 = icmp eq i64 %3183, 0
  %3186 = or i1 %3184, %3185
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %30, align 1, !tbaa !2432
  %3188 = trunc i64 %3183 to i32
  %3189 = and i32 %3188, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189) #9
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %37, align 1, !tbaa !2446
  %3194 = xor i64 %3183, %3182
  %3195 = lshr i64 %3194, 4
  %3196 = trunc i64 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %43, align 1, !tbaa !2450
  %3198 = zext i1 %3185 to i8
  store i8 %3198, i8* %46, align 1, !tbaa !2447
  %3199 = lshr i64 %3183, 63
  %3200 = trunc i64 %3199 to i8
  store i8 %3200, i8* %49, align 1, !tbaa !2448
  %3201 = lshr i64 %3182, 63
  %3202 = xor i64 %3199, %3201
  %3203 = add nuw nsw i64 %3202, %3199
  %3204 = icmp eq i64 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %55, align 1, !tbaa !2449
  %3206 = add i64 %3179, 18
  store i64 %3206, i64* %PC, align 8
  store i64 %3183, i64* %3181, align 8
  %3207 = load i64, i64* %RBP, align 8
  %3208 = add i64 %3207, -13096
  %3209 = load i64, i64* %RAX, align 8
  %3210 = load i64, i64* %PC, align 8
  %3211 = add i64 %3210, 7
  store i64 %3211, i64* %PC, align 8
  %3212 = inttoptr i64 %3208 to i64*
  store i64 %3209, i64* %3212, align 8
  %3213 = load i64, i64* %PC, align 8
  %3214 = add i64 %3213, -2558
  %3215 = add i64 %3213, 5
  %3216 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3217 = add i64 %3216, -8
  %3218 = inttoptr i64 %3217 to i64*
  store i64 %3215, i64* %3218, align 8
  store i64 %3217, i64* %RSP, align 8, !tbaa !2428
  store i64 %3214, i64* %PC, align 8, !tbaa !2428
  %3219 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %3220 = load i64, i64* %RBP, align 8
  %3221 = add i64 %3220, -13096
  %3222 = load i64, i64* %PC, align 8
  %3223 = add i64 %3222, 7
  store i64 %3223, i64* %PC, align 8
  %3224 = inttoptr i64 %3221 to i64*
  %3225 = load i64, i64* %3224, align 8
  store i64 %3225, i64* %RAX, align 8, !tbaa !2428
  %3226 = add i64 %3220, -13000
  %3227 = add i64 %3222, 14
  store i64 %3227, i64* %PC, align 8
  %3228 = inttoptr i64 %3226 to i64*
  store i64 %3225, i64* %3228, align 8
  %3229 = load i64, i64* %RBP, align 8
  %3230 = add i64 %3229, -56
  %3231 = load i64, i64* %PC, align 8
  %3232 = add i64 %3231, 8
  store i64 %3232, i64* %PC, align 8
  %3233 = inttoptr i64 %3230 to i64*
  store i64 0, i64* %3233, align 8
  %.pre133 = load i64, i64* %PC, align 8
  br label %block_401019

block_400a0a:                                     ; preds = %block_4009fc
  %3234 = add i64 %1237, -112
  %3235 = add i64 %1271, 4
  store i64 %3235, i64* %PC, align 8
  %3236 = inttoptr i64 %3234 to i64*
  %3237 = load i64, i64* %3236, align 8
  store i64 %3237, i64* %RAX, align 8, !tbaa !2428
  %3238 = add i64 %1271, 7
  store i64 %3238, i64* %PC, align 8
  %3239 = inttoptr i64 %3237 to i8*
  %3240 = load i8, i8* %3239, align 1
  %3241 = zext i8 %3240 to i64
  store i64 %3241, i64* %RCX, align 8, !tbaa !2428
  %3242 = zext i8 %3240 to i64
  store i64 %3242, i64* %RAX, align 8, !tbaa !2428
  %3243 = shl nuw nsw i64 %3242, 3
  %3244 = add nsw i64 %3243, -4224
  %3245 = add i64 %3244, %1237
  %3246 = add i64 %1271, 17
  store i64 %3246, i64* %PC, align 8
  %3247 = inttoptr i64 %3245 to i64*
  %3248 = load i64, i64* %3247, align 8
  %3249 = add i64 %3248, 1
  store i64 %3249, i64* %RDX, align 8, !tbaa !2428
  %3250 = icmp eq i64 %3248, -1
  %3251 = icmp eq i64 %3249, 0
  %3252 = or i1 %3250, %3251
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %30, align 1, !tbaa !2432
  %3254 = trunc i64 %3249 to i32
  %3255 = and i32 %3254, 255
  %3256 = tail call i32 @llvm.ctpop.i32(i32 %3255) #9
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = xor i8 %3258, 1
  store i8 %3259, i8* %37, align 1, !tbaa !2446
  %3260 = xor i64 %3249, %3248
  %3261 = lshr i64 %3260, 4
  %3262 = trunc i64 %3261 to i8
  %3263 = and i8 %3262, 1
  store i8 %3263, i8* %43, align 1, !tbaa !2450
  %3264 = zext i1 %3251 to i8
  store i8 %3264, i8* %46, align 1, !tbaa !2447
  %3265 = lshr i64 %3249, 63
  %3266 = trunc i64 %3265 to i8
  store i8 %3266, i8* %49, align 1, !tbaa !2448
  %3267 = lshr i64 %3248, 63
  %3268 = xor i64 %3265, %3267
  %3269 = add nuw nsw i64 %3268, %3265
  %3270 = icmp eq i64 %3269, 2
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %55, align 1, !tbaa !2449
  %3272 = add i64 %1237, -4224
  %3273 = add i64 %3272, %3243
  %3274 = add i64 %1271, 29
  store i64 %3274, i64* %PC, align 8
  %3275 = inttoptr i64 %3273 to i64*
  store i64 %3249, i64* %3275, align 8
  %3276 = load i64, i64* %RBP, align 8
  %3277 = add i64 %3276, -112
  %3278 = load i64, i64* %PC, align 8
  %3279 = add i64 %3278, 4
  store i64 %3279, i64* %PC, align 8
  %3280 = inttoptr i64 %3277 to i64*
  %3281 = load i64, i64* %3280, align 8
  %3282 = add i64 %3281, 1
  store i64 %3282, i64* %RAX, align 8, !tbaa !2428
  %3283 = icmp eq i64 %3281, -1
  %3284 = icmp eq i64 %3282, 0
  %3285 = or i1 %3283, %3284
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %30, align 1, !tbaa !2432
  %3287 = trunc i64 %3282 to i32
  %3288 = and i32 %3287, 255
  %3289 = tail call i32 @llvm.ctpop.i32(i32 %3288) #9
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  store i8 %3292, i8* %37, align 1, !tbaa !2446
  %3293 = xor i64 %3282, %3281
  %3294 = lshr i64 %3293, 4
  %3295 = trunc i64 %3294 to i8
  %3296 = and i8 %3295, 1
  store i8 %3296, i8* %43, align 1, !tbaa !2450
  %3297 = zext i1 %3284 to i8
  store i8 %3297, i8* %46, align 1, !tbaa !2447
  %3298 = lshr i64 %3282, 63
  %3299 = trunc i64 %3298 to i8
  store i8 %3299, i8* %49, align 1, !tbaa !2448
  %3300 = lshr i64 %3281, 63
  %3301 = xor i64 %3298, %3300
  %3302 = add nuw nsw i64 %3301, %3298
  %3303 = icmp eq i64 %3302, 2
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %55, align 1, !tbaa !2449
  %3305 = add i64 %3278, 12
  store i64 %3305, i64* %PC, align 8
  store i64 %3282, i64* %3280, align 8
  %3306 = load i64, i64* %RBP, align 8
  %3307 = add i64 %3306, -48
  %3308 = load i64, i64* %PC, align 8
  %3309 = add i64 %3308, 4
  store i64 %3309, i64* %PC, align 8
  %3310 = inttoptr i64 %3307 to i64*
  %3311 = load i64, i64* %3310, align 8
  %3312 = add i64 %3311, 1
  store i64 %3312, i64* %RAX, align 8, !tbaa !2428
  %3313 = icmp eq i64 %3311, -1
  %3314 = icmp eq i64 %3312, 0
  %3315 = or i1 %3313, %3314
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %30, align 1, !tbaa !2432
  %3317 = trunc i64 %3312 to i32
  %3318 = and i32 %3317, 255
  %3319 = tail call i32 @llvm.ctpop.i32(i32 %3318) #9
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  store i8 %3322, i8* %37, align 1, !tbaa !2446
  %3323 = xor i64 %3312, %3311
  %3324 = lshr i64 %3323, 4
  %3325 = trunc i64 %3324 to i8
  %3326 = and i8 %3325, 1
  store i8 %3326, i8* %43, align 1, !tbaa !2450
  %3327 = zext i1 %3314 to i8
  store i8 %3327, i8* %46, align 1, !tbaa !2447
  %3328 = lshr i64 %3312, 63
  %3329 = trunc i64 %3328 to i8
  store i8 %3329, i8* %49, align 1, !tbaa !2448
  %3330 = lshr i64 %3311, 63
  %3331 = xor i64 %3328, %3330
  %3332 = add nuw nsw i64 %3331, %3328
  %3333 = icmp eq i64 %3332, 2
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %55, align 1, !tbaa !2449
  %3335 = add i64 %3308, 12
  store i64 %3335, i64* %PC, align 8
  store i64 %3312, i64* %3310, align 8
  %3336 = load i64, i64* %PC, align 8
  %3337 = add i64 %3336, -67
  store i64 %3337, i64* %PC, align 8, !tbaa !2428
  br label %block_4009fc

block_40106f:                                     ; preds = %block_401027
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %3338 = add i64 %2957, -80
  %3339 = add i64 %2989, 13
  store i64 %3339, i64* %PC, align 8
  %3340 = inttoptr i64 %3338 to i64*
  store i64 0, i64* %3340, align 8
  %3341 = load i64, i64* %RBP, align 8
  %3342 = add i64 %3341, -56
  %3343 = load i64, i64* %PC, align 8
  %3344 = add i64 %3343, 4
  store i64 %3344, i64* %PC, align 8
  %3345 = inttoptr i64 %3342 to i64*
  %3346 = load i64, i64* %3345, align 8
  store i64 %3346, i64* %RCX, align 8, !tbaa !2428
  %3347 = add i64 %3346, -10624
  %3348 = add i64 %3347, %3341
  %3349 = add i64 %3343, 12
  store i64 %3349, i64* %PC, align 8
  %3350 = inttoptr i64 %3348 to i8*
  %3351 = load i8, i8* %3350, align 1
  %3352 = zext i8 %3351 to i32
  %3353 = add nsw i32 %3352, -1
  %3354 = zext i32 %3353 to i64
  store i64 %3354, i64* %RDX, align 8, !tbaa !2428
  %3355 = icmp eq i8 %3351, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %30, align 1, !tbaa !2432
  %3357 = and i32 %3353, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357) #9
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %37, align 1, !tbaa !2446
  %3362 = xor i32 %3353, %3352
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  store i8 %3365, i8* %43, align 1, !tbaa !2450
  %3366 = icmp eq i32 %3353, 0
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %46, align 1, !tbaa !2447
  %3368 = lshr i32 %3353, 31
  %3369 = trunc i32 %3368 to i8
  store i8 %3369, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i64 %3354, i64* %RCX, align 8, !tbaa !2428
  %3370 = load i64, i64* %RAX, align 8
  %3371 = add i64 %3343, 19
  store i64 %3371, i64* %PC, align 8
  %3372 = trunc i32 %3353 to i5
  %3373 = trunc i64 %3370 to i32
  switch i5 %3372, label %3379 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %3374
  ]

; <label>:3374:                                   ; preds = %block_40106f
  %3375 = shl i32 %3373, 1
  %3376 = icmp slt i32 %3373, 0
  %3377 = icmp slt i32 %3375, 0
  %3378 = xor i1 %3376, %3377
  br label %3389

; <label>:3379:                                   ; preds = %block_40106f
  %3380 = and i32 %3353, 31
  %3381 = zext i32 %3380 to i64
  %3382 = add nuw nsw i64 %3381, 4294967295
  %3383 = and i64 %3370, 4294967295
  %3384 = and i64 %3382, 4294967295
  %3385 = shl i64 %3383, %3384
  %3386 = trunc i64 %3385 to i32
  %3387 = icmp slt i32 %3386, 0
  %3388 = shl i32 %3386, 1
  br label %3389

; <label>:3389:                                   ; preds = %3379, %3374
  %3390 = phi i1 [ %3376, %3374 ], [ %3387, %3379 ]
  %3391 = phi i1 [ %3378, %3374 ], [ false, %3379 ]
  %3392 = phi i32 [ %3375, %3374 ], [ %3388, %3379 ]
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX, align 8, !tbaa !2428
  %3394 = zext i1 %3390 to i8
  store i8 %3394, i8* %30, align 1, !tbaa !2453
  %3395 = and i32 %3392, 254
  %3396 = tail call i32 @llvm.ctpop.i32(i32 %3395) #9
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = xor i8 %3398, 1
  store i8 %3399, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %43, align 1, !tbaa !2453
  %3400 = icmp eq i32 %3392, 0
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %46, align 1, !tbaa !2453
  %3402 = lshr i32 %3392, 31
  %3403 = trunc i32 %3402 to i8
  store i8 %3403, i8* %49, align 1, !tbaa !2453
  %3404 = zext i1 %3391 to i8
  store i8 %3404, i8* %55, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %3389, %block_40106f
  %3405 = phi i32 [ %3392, %3389 ], [ %3373, %block_40106f ]
  %3406 = sext i32 %3405 to i64
  store i64 %3406, i64* %RSI, align 8, !tbaa !2428
  %3407 = add i64 %3341, -72
  %3408 = add i64 %3343, 26
  store i64 %3408, i64* %PC, align 8
  %3409 = inttoptr i64 %3407 to i64*
  store i64 %3406, i64* %3409, align 8
  %3410 = load i64, i64* %RBP, align 8
  %3411 = add i64 %3410, -48
  %3412 = load i64, i64* %PC, align 8
  %3413 = add i64 %3412, 8
  store i64 %3413, i64* %PC, align 8
  %3414 = inttoptr i64 %3411 to i64*
  store i64 0, i64* %3414, align 8
  %.pre134 = load i64, i64* %PC, align 8
  br label %block_40109e

block_400e00:                                     ; preds = %block_400dce
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %3415 = load i64, i64* @stderr, align 32
  store i64 %3415, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %3416 = add i64 %2185, -2016
  %3417 = add i64 %2185, 25
  %3418 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3419 = add i64 %3418, -8
  %3420 = inttoptr i64 %3419 to i64*
  store i64 %3417, i64* %3420, align 8
  store i64 %3419, i64* %RSP, align 8, !tbaa !2428
  store i64 %3416, i64* %PC, align 8, !tbaa !2428
  %3421 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %3422 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3423 = load i64, i64* %RBP, align 8
  %3424 = add i64 %3423, -13084
  %3425 = load i32, i32* %EAX, align 4
  %3426 = add i64 %3422, 11
  store i64 %3426, i64* %PC, align 8
  %3427 = inttoptr i64 %3424 to i32*
  store i32 %3425, i32* %3427, align 4
  %3428 = load i64, i64* %PC, align 8
  %3429 = add i64 %3428, -2004
  %3430 = add i64 %3428, 5
  %3431 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3432 = add i64 %3431, -8
  %3433 = inttoptr i64 %3432 to i64*
  store i64 %3430, i64* %3433, align 8
  store i64 %3432, i64* %RSP, align 8, !tbaa !2428
  store i64 %3429, i64* %PC, align 8, !tbaa !2428
  %3434 = tail call fastcc %struct.Memory* @ext_6020e8_exit(%struct.State* nonnull %0, %struct.Memory* %3421)
  %3435 = load i64, i64* %PC, align 8
  %3436 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %3435, %struct.Memory* %3434)
  ret %struct.Memory* %3436
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400750_generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400750:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -56
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 48
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2432
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2446
  %21 = xor i64 %7, 16
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %7, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_401650__rodata_type* @seg_401650__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 21
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RAX, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  %55 = add i64 %51, -314
  %56 = add i64 %51, 9
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %RAX, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -24
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = add i64 %67, -32
  %74 = add i64 %69, 8
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -36
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400786

block_400786:                                     ; preds = %block_400794, %block_400750
  %81 = phi i64 [ %.pre, %block_400750 ], [ %210, %block_400794 ]
  %MEMORY.0 = phi %struct.Memory* [ %60, %block_400750 ], [ %131, %block_400794 ]
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -36
  %84 = add i64 %81, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %RAX, align 8, !tbaa !2428
  %88 = add i64 %82, -8
  %89 = add i64 %81, 8
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %87, %91
  %93 = icmp ult i64 %87, %91
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %13, align 1, !tbaa !2432
  %95 = trunc i64 %92 to i32
  %96 = and i32 %95, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #9
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %20, align 1, !tbaa !2446
  %101 = xor i64 %91, %87
  %102 = xor i64 %101, %92
  %103 = lshr i64 %102, 4
  %104 = trunc i64 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1, !tbaa !2450
  %106 = icmp eq i64 %92, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1, !tbaa !2447
  %108 = lshr i64 %92, 63
  %109 = trunc i64 %108 to i8
  store i8 %109, i8* %32, align 1, !tbaa !2448
  %110 = lshr i64 %87, 63
  %111 = lshr i64 %91, 63
  %112 = xor i64 %111, %110
  %113 = xor i64 %108, %110
  %114 = add nuw nsw i64 %113, %112
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1, !tbaa !2449
  %.v = select i1 %93, i64 14, i64 66
  %117 = add i64 %81, %.v
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %93, label %block_400794, label %block_4007c8

block_400794:                                     ; preds = %block_400786
  %118 = add i64 %82, -16
  %119 = add i64 %117, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = add i64 %82, -48
  %123 = add i64 %117, 8
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 68
  %127 = add i64 %125, 5
  %128 = load i64, i64* %RSP, align 8, !tbaa !2428
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %RSP, align 8, !tbaa !2428
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %131 = tail call %struct.Memory* @sub_4007e0_random4(%struct.State* nonnull %0, i64 %126, %struct.Memory* %MEMORY.0)
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -48
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = load i64, i64* %RAX, align 8
  %139 = add i64 %138, %137
  %140 = add i64 %134, 7
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i8*
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %DL, align 1, !tbaa !2453
  %143 = add i64 %132, -32
  %144 = add i64 %134, 11
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = add i64 %134, 13
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i8*
  store i8 %142, i8* %148, align 1
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -32
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = icmp eq i64 %154, -1
  %157 = icmp eq i64 %155, 0
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %13, align 1, !tbaa !2432
  %160 = trunc i64 %155 to i32
  %161 = and i32 %160, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #9
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %20, align 1, !tbaa !2446
  %166 = xor i64 %155, %154
  %167 = lshr i64 %166, 4
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %26, align 1, !tbaa !2450
  %170 = zext i1 %157 to i8
  store i8 %170, i8* %29, align 1, !tbaa !2447
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2448
  %173 = lshr i64 %154, 63
  %174 = xor i64 %171, %173
  %175 = add nuw nsw i64 %174, %171
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %38, align 1, !tbaa !2449
  %178 = add i64 %151, 12
  store i64 %178, i64* %PC, align 8
  store i64 %155, i64* %153, align 8
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -36
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, 1
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = icmp eq i32 %184, -1
  %188 = icmp eq i32 %185, 0
  %189 = or i1 %187, %188
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %13, align 1, !tbaa !2432
  %191 = and i32 %185, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #9
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %20, align 1, !tbaa !2446
  %196 = xor i32 %185, %184
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %26, align 1, !tbaa !2450
  %200 = zext i1 %188 to i8
  store i8 %200, i8* %29, align 1, !tbaa !2447
  %201 = lshr i32 %185, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %32, align 1, !tbaa !2448
  %203 = lshr i32 %184, 31
  %204 = xor i32 %201, %203
  %205 = add nuw nsw i32 %204, %201
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %38, align 1, !tbaa !2449
  %208 = add i64 %181, 9
  store i64 %208, i64* %PC, align 8
  store i32 %185, i32* %183, align 4
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, -61
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br label %block_400786

block_4007c8:                                     ; preds = %block_400786
  %211 = add i64 %82, -24
  %212 = add i64 %117, 4
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = load i64, i64* %RSP, align 8
  %216 = add i64 %215, 48
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  %217 = icmp ugt i64 %215, -49
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %13, align 1, !tbaa !2432
  %219 = trunc i64 %216 to i32
  %220 = and i32 %219, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #9
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %20, align 1, !tbaa !2446
  %225 = xor i64 %215, 16
  %226 = xor i64 %225, %216
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %26, align 1, !tbaa !2450
  %230 = icmp eq i64 %216, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1, !tbaa !2447
  %232 = lshr i64 %216, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %32, align 1, !tbaa !2448
  %234 = lshr i64 %215, 63
  %235 = xor i64 %232, %234
  %236 = add nuw nsw i64 %235, %232
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1, !tbaa !2449
  %239 = add i64 %117, 9
  store i64 %239, i64* %PC, align 8
  %240 = add i64 %215, 56
  %241 = inttoptr i64 %216 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RBP, align 8, !tbaa !2428
  store i64 %240, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %117, 10
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %240 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  %246 = add i64 %215, 64
  store i64 %246, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2428
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2428
  %8 = load i64, i64* %RSI, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %8, -6299752
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %17 = ashr i64 %10, 3
  %18 = lshr i64 %17, 63
  store i64 %18, i64* %RAX, align 8, !tbaa !2428
  %19 = add nsw i64 %18, %17
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = ashr i64 %19, 1
  store i64 %22, i64* %RSI, align 8, !tbaa !2428
  store i8 %21, i8* %11, align 1, !tbaa !2453
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2453
  store i8 0, i8* %13, align 1, !tbaa !2453
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2453
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2453
  store i8 0, i8* %16, align 1, !tbaa !2453
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400708, label %block_4006f3

block_4006f3:                                     ; preds = %block_4006d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400708

block_400708:                                     ; preds = %block_4006f3, %block_4006d0
  %35 = phi i64 [ %34, %block_4006f3 ], [ %33, %block_4006d0 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %RSP, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %RSP, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4013a0_heap_adjust(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4013a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8, !tbaa !2428
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -16
  %14 = load i64, i64* %RDI, align 8
  %15 = add i64 %12, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI, align 8
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX, align 4
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -24
  %31 = load i32, i32* %ECX, align 4
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* %RBP, align 8
  %36 = add i64 %35, -16
  %37 = load i64, i64* %PC, align 8
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %36 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %RSI, align 8, !tbaa !2428
  %42 = icmp ugt i64 %40, 7
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %44, align 1, !tbaa !2432
  %45 = trunc i64 %41 to i32
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #9
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %50, i8* %51, align 1, !tbaa !2446
  %52 = xor i64 %40, 16
  %53 = xor i64 %52, %41
  %54 = lshr i64 %53, 4
  %55 = trunc i64 %54 to i8
  %56 = and i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %56, i8* %57, align 1, !tbaa !2450
  %58 = icmp eq i64 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2447
  %61 = lshr i64 %41, 63
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2448
  %64 = lshr i64 %40, 63
  %65 = xor i64 %61, %64
  %66 = xor i64 %61, 1
  %67 = add nuw nsw i64 %65, %66
  %68 = icmp eq i64 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2449
  %71 = add i64 %37, 12
  store i64 %71, i64* %PC, align 8
  store i64 %41, i64* %39, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RSI, align 8, !tbaa !2428
  %78 = add i64 %72, -24
  %79 = add i64 %74, 8
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  %83 = shl nsw i64 %82, 3
  %84 = add i64 %83, %77
  %85 = add i64 %74, 12
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RSI, align 8, !tbaa !2428
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 4294967295
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = add i64 %72, -32
  %91 = add i64 %74, 17
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4013cf

block_401435:                                     ; preds = %block_401402
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -28
  %96 = add i64 %410, 3
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = icmp eq i32 %98, -1
  %102 = icmp eq i32 %99, 0
  %103 = or i1 %101, %102
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %44, align 1, !tbaa !2432
  %105 = and i32 %99, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #9
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %51, align 1, !tbaa !2446
  %110 = xor i32 %99, %98
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %57, align 1, !tbaa !2450
  %114 = zext i1 %102 to i8
  store i8 %114, i8* %60, align 1, !tbaa !2447
  %115 = lshr i32 %99, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %63, align 1, !tbaa !2448
  %117 = lshr i32 %98, 31
  %118 = xor i32 %115, %117
  %119 = add nuw nsw i32 %118, %115
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %70, align 1, !tbaa !2449
  %122 = add i64 %410, 9
  store i64 %122, i64* %PC, align 8
  store i32 %99, i32* %97, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_40143e

block_40148c.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  br label %block_40148c

block_40148c:                                     ; preds = %block_40148c.loopexit, %block_401464
  %123 = phi i64 [ %322, %block_401464 ], [ %287, %block_40148c.loopexit ]
  %124 = phi i64 [ %154, %block_401464 ], [ %288, %block_40148c.loopexit ]
  %125 = add i64 %124, -32
  %126 = add i64 %123, 4
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %RAX, align 8, !tbaa !2428
  %130 = add i64 %124, -16
  %131 = add i64 %123, 8
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = add i64 %124, -24
  %135 = add i64 %123, 12
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = shl nsw i64 %138, 3
  %140 = add i64 %139, %133
  %141 = add i64 %123, 16
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i64*
  store i64 %129, i64* %142, align 8
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %PC, align 8
  %145 = load i64, i64* %8, align 8, !tbaa !2428
  %146 = add i64 %145, 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RBP, align 8, !tbaa !2428
  store i64 %146, i64* %8, align 8, !tbaa !2428
  %149 = add i64 %143, 2
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %146 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  %152 = add i64 %145, 16
  store i64 %152, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %259

block_40143e:                                     ; preds = %block_4013ed, %block_401402, %block_401435
  %153 = phi i64 [ %485, %block_4013ed ], [ %410, %block_401402 ], [ %.pre10, %block_401435 ]
  %154 = load i64, i64* %RBP, align 8
  %155 = add i64 %154, -8
  %156 = add i64 %153, 4
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = add i64 %154, -32
  %160 = add i64 %153, 8
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = shl nsw i64 %163, 3
  %165 = add i64 %164, %158
  %166 = add i64 %153, 12
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = add i64 %153, 16
  store i64 %169, i64* %PC, align 8
  %170 = load i64, i64* %157, align 8
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = add i64 %154, -16
  %172 = add i64 %153, 20
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %175 = add i64 %154, -28
  %176 = add i64 %153, 24
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %RSI, align 8, !tbaa !2428
  %180 = shl nsw i64 %179, 3
  %181 = add i64 %180, %174
  %182 = add i64 %153, 28
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = shl i64 %184, 3
  %186 = add i64 %170, %185
  %187 = add i64 %153, 32
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %168, %189
  %191 = icmp ult i64 %168, %189
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %44, align 1, !tbaa !2432
  %193 = trunc i64 %190 to i32
  %194 = and i32 %193, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #9
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %51, align 1, !tbaa !2446
  %199 = xor i64 %189, %168
  %200 = xor i64 %199, %190
  %201 = lshr i64 %200, 4
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %57, align 1, !tbaa !2450
  %204 = icmp eq i64 %190, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %60, align 1, !tbaa !2447
  %206 = lshr i64 %190, 63
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %63, align 1, !tbaa !2448
  %208 = lshr i64 %168, 63
  %209 = lshr i64 %189, 63
  %210 = xor i64 %209, %208
  %211 = xor i64 %206, %208
  %212 = add nuw nsw i64 %211, %210
  %213 = icmp eq i64 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %70, align 1, !tbaa !2449
  %.v13 = select i1 %191, i64 38, i64 43
  %215 = add i64 %153, %.v13
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  br i1 %191, label %block_401464, label %block_401469

block_4013cf:                                     ; preds = %block_401469, %block_4013a0
  %216 = phi i64 [ %.pre, %block_4013a0 ], [ %321, %block_401469 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_4013a0 ], [ %259, %block_401469 ]
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -24
  %219 = add i64 %216, 8
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX, align 8, !tbaa !2428
  %223 = add i64 %217, -20
  %224 = add i64 %216, 11
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RDX, align 8, !tbaa !2428
  %228 = add i64 %217, -36
  %229 = add i64 %216, 14
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 2, i32* %230, align 4
  %231 = load i32, i32* %EDX, align 4
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* %PC, align 8
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %234 = sext i32 %231 to i64
  %235 = lshr i64 %234, 32
  store i64 %235, i64* %93, align 8, !tbaa !2428
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -36
  %238 = add i64 %233, 6
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RSI, align 8, !tbaa !2428
  %242 = add i64 %233, 8
  store i64 %242, i64* %PC, align 8
  %243 = sext i32 %240 to i64
  %244 = shl nuw i64 %235, 32
  %245 = or i64 %244, %232
  %246 = sdiv i64 %245, %243
  %247 = shl i64 %246, 32
  %248 = ashr exact i64 %247, 32
  %249 = icmp eq i64 %246, %248
  br i1 %249, label %252, label %250

; <label>:250:                                    ; preds = %block_4013cf
  %251 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %242, %struct.Memory* %MEMORY.2) #12
  %.pre8 = load i32, i32* %EAX, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:252:                                    ; preds = %block_4013cf
  %253 = srem i64 %245, %243
  %254 = and i64 %246, 4294967295
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = and i64 %253, 4294967295
  store i64 %255, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %60, align 1, !tbaa !2447
  store i8 0, i8* %63, align 1, !tbaa !2448
  store i8 0, i8* %70, align 1, !tbaa !2449
  %256 = trunc i64 %246 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %252, %250
  %257 = phi i64 [ %.pre9, %250 ], [ %242, %252 ]
  %258 = phi i32 [ %.pre8, %250 ], [ %256, %252 ]
  %259 = phi %struct.Memory* [ %251, %250 ], [ %MEMORY.2, %252 ]
  %260 = load i32, i32* %ECX, align 4
  %261 = sub i32 %260, %258
  %262 = icmp ult i32 %260, %258
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %44, align 1, !tbaa !2432
  %264 = and i32 %261, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #9
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %51, align 1, !tbaa !2446
  %269 = xor i32 %258, %260
  %270 = xor i32 %269, %261
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %57, align 1, !tbaa !2450
  %274 = icmp eq i32 %261, 0
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %60, align 1, !tbaa !2447
  %276 = lshr i32 %261, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %63, align 1, !tbaa !2448
  %278 = lshr i32 %260, 31
  %279 = lshr i32 %258, 31
  %280 = xor i32 %279, %278
  %281 = xor i32 %276, %278
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %70, align 1, !tbaa !2449
  %285 = icmp ne i8 %277, 0
  %286 = xor i1 %285, %283
  %.demorgan = or i1 %274, %286
  %.v = select i1 %.demorgan, i64 8, i64 167
  %287 = add i64 %257, %.v
  store i64 %287, i64* %PC, align 8, !tbaa !2428
  %288 = load i64, i64* %RBP, align 8
  br i1 %.demorgan, label %block_4013ed, label %block_40148c.loopexit

block_401469:                                     ; preds = %block_40143e
  %289 = add i64 %215, 4
  store i64 %289, i64* %PC, align 8
  %290 = load i64, i64* %173, align 8
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = add i64 %215, 8
  store i64 %291, i64* %PC, align 8
  %292 = load i32, i32* %177, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = shl nsw i64 %293, 3
  %295 = add i64 %294, %290
  %296 = add i64 %215, 12
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %RAX, align 8, !tbaa !2428
  %299 = add i64 %215, 16
  store i64 %299, i64* %PC, align 8
  %300 = load i64, i64* %173, align 8
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = add i64 %154, -24
  %302 = add i64 %215, 20
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %RDX, align 8, !tbaa !2428
  %306 = shl nsw i64 %305, 3
  %307 = add i64 %306, %300
  %308 = add i64 %215, 24
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i64*
  store i64 %298, i64* %309, align 8
  %310 = load i64, i64* %RBP, align 8
  %311 = add i64 %310, -28
  %312 = load i64, i64* %PC, align 8
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %311 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RSI, align 8, !tbaa !2428
  %317 = add i64 %310, -24
  %318 = add i64 %312, 6
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  store i32 %315, i32* %319, align 4
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, -184
  store i64 %321, i64* %PC, align 8, !tbaa !2428
  br label %block_4013cf

block_401464:                                     ; preds = %block_40143e
  %322 = add i64 %215, 40
  store i64 %322, i64* %PC, align 8, !tbaa !2428
  br label %block_40148c

block_401402:                                     ; preds = %block_4013ed
  %323 = add i64 %448, -8
  %324 = add i64 %485, 4
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i64*
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = add i64 %448, -16
  %328 = add i64 %485, 8
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RCX, align 8, !tbaa !2428
  %331 = add i64 %485, 12
  store i64 %331, i64* %PC, align 8
  %332 = load i32, i32* %452, align 4
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %RDX, align 8, !tbaa !2428
  %334 = shl nsw i64 %333, 3
  %335 = add i64 %334, %330
  %336 = add i64 %485, 16
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = shl i64 %338, 3
  %340 = add i64 %326, %339
  %341 = add i64 %485, 20
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = add i64 %485, 24
  store i64 %344, i64* %PC, align 8
  %345 = load i64, i64* %325, align 8
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = add i64 %485, 28
  store i64 %346, i64* %PC, align 8
  %347 = load i64, i64* %329, align 8
  store i64 %347, i64* %RDX, align 8, !tbaa !2428
  %348 = add i64 %485, 31
  store i64 %348, i64* %PC, align 8
  %349 = load i32, i32* %452, align 4
  %350 = add i32 %349, 1
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RSI, align 8, !tbaa !2428
  %352 = icmp eq i32 %349, -1
  %353 = icmp eq i32 %350, 0
  %354 = or i1 %352, %353
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %44, align 1, !tbaa !2432
  %356 = and i32 %350, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356) #9
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %51, align 1, !tbaa !2446
  %361 = xor i32 %350, %349
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %57, align 1, !tbaa !2450
  %365 = zext i1 %353 to i8
  store i8 %365, i8* %60, align 1, !tbaa !2447
  %366 = lshr i32 %350, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %63, align 1, !tbaa !2448
  %368 = lshr i32 %349, 31
  %369 = xor i32 %366, %368
  %370 = add nuw nsw i32 %369, %366
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %70, align 1, !tbaa !2449
  %373 = sext i32 %350 to i64
  store i64 %373, i64* %RDI, align 8, !tbaa !2428
  %374 = shl nsw i64 %373, 3
  %375 = add i64 %347, %374
  %376 = add i64 %485, 41
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RDX, align 8, !tbaa !2428
  %379 = shl i64 %378, 3
  %380 = add i64 %345, %379
  %381 = add i64 %485, 45
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %343, %383
  %385 = icmp ult i64 %343, %383
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %44, align 1, !tbaa !2432
  %387 = trunc i64 %384 to i32
  %388 = and i32 %387, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388) #9
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %51, align 1, !tbaa !2446
  %393 = xor i64 %383, %343
  %394 = xor i64 %393, %384
  %395 = lshr i64 %394, 4
  %396 = trunc i64 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %57, align 1, !tbaa !2450
  %398 = icmp eq i64 %384, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %60, align 1, !tbaa !2447
  %400 = lshr i64 %384, 63
  %401 = trunc i64 %400 to i8
  store i8 %401, i8* %63, align 1, !tbaa !2448
  %402 = lshr i64 %343, 63
  %403 = lshr i64 %383, 63
  %404 = xor i64 %403, %402
  %405 = xor i64 %400, %402
  %406 = add nuw nsw i64 %405, %404
  %407 = icmp eq i64 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %70, align 1, !tbaa !2449
  %409 = or i1 %398, %385
  %.v14 = select i1 %409, i64 60, i64 51
  %410 = add i64 %485, %.v14
  store i64 %410, i64* %PC, align 8, !tbaa !2428
  br i1 %409, label %block_40143e, label %block_401435

block_4013ed:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %411 = add i64 %288, -24
  %412 = add i64 %287, 3
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  %416 = add i64 %287, 6
  store i64 %416, i64* %PC, align 8
  %417 = load i32, i32* %413, align 4
  %418 = add i32 %417, %414
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX, align 8, !tbaa !2428
  %420 = icmp ult i32 %418, %414
  %421 = icmp ult i32 %418, %417
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %44, align 1, !tbaa !2432
  %424 = and i32 %418, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424) #9
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %51, align 1, !tbaa !2446
  %429 = xor i32 %417, %414
  %430 = xor i32 %429, %418
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %57, align 1, !tbaa !2450
  %434 = icmp eq i32 %418, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %60, align 1, !tbaa !2447
  %436 = lshr i32 %418, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %63, align 1, !tbaa !2448
  %438 = lshr i32 %414, 31
  %439 = lshr i32 %417, 31
  %440 = xor i32 %436, %438
  %441 = xor i32 %436, %439
  %442 = add nuw nsw i32 %440, %441
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %70, align 1, !tbaa !2449
  %445 = add i64 %288, -28
  %446 = add i64 %287, 9
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i32*
  store i32 %418, i32* %447, align 4
  %448 = load i64, i64* %RBP, align 8
  %449 = add i64 %448, -28
  %450 = load i64, i64* %PC, align 8
  %451 = add i64 %450, 3
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %449 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = add i64 %448, -20
  %456 = add i64 %450, 6
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sub i32 %453, %458
  %460 = icmp ult i32 %453, %458
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %44, align 1, !tbaa !2432
  %462 = and i32 %459, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #9
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %51, align 1, !tbaa !2446
  %467 = xor i32 %458, %453
  %468 = xor i32 %467, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %57, align 1, !tbaa !2450
  %472 = icmp eq i32 %459, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %60, align 1, !tbaa !2447
  %474 = lshr i32 %459, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %63, align 1, !tbaa !2448
  %476 = lshr i32 %453, 31
  %477 = lshr i32 %458, 31
  %478 = xor i32 %477, %476
  %479 = xor i32 %474, %476
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %70, align 1, !tbaa !2449
  %483 = icmp ne i8 %475, 0
  %484 = xor i1 %483, %481
  %.v12 = select i1 %484, i64 12, i64 72
  %485 = add i64 %450, %.v12
  store i64 %485, i64* %PC, align 8, !tbaa !2428
  br i1 %484, label %block_401402, label %block_40143e
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4015d0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4015d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13D = bitcast %union.anon* %4 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %R13 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %5 = load i64, i64* %R15, align 8
  %6 = add i64 %1, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
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
  %15 = load i64, i64* %RDX, align 8
  %16 = load i64, i64* %PC, align 8
  store i64 %15, i64* %R15, align 8, !tbaa !2428
  %17 = load i64, i64* %R13, align 8
  %18 = add i64 %16, 5
  store i64 %18, i64* %PC, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %R12, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 2
  store i64 %23, i64* %PC, align 8
  %24 = add i64 %7, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
  %32 = load i64, i64* %RBX, align 8
  %33 = add i64 %31, 8
  store i64 %33, i64* %PC, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35, align 8
  %36 = load i32, i32* %EDI, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %PC, align 8
  store i64 %37, i64* %R13, align 8, !tbaa !2428
  %39 = load i64, i64* %RSI, align 8
  store i64 %39, i64* %R14, align 8, !tbaa !2428
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
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  store i8 %51, i8* %43, align 1, !tbaa !2453
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2453
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %48, align 1, !tbaa !2453
  %63 = add i64 %38, -4131
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005c8__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2446
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401626, label %block_401606

block_401626.loopexit:                            ; preds = %block_401610
  br label %block_401626

block_401626:                                     ; preds = %block_401626.loopexit, %block_4015d0
  %81 = phi i64 [ %80, %block_4015d0 ], [ %179, %block_401626.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4015d0 ], [ %149, %block_401626.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2450
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2447
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2448
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2449
  %105 = add i64 %81, 5
  store i64 %105, i64* %PC, align 8
  %106 = add i64 %82, 16
  %107 = inttoptr i64 %83 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RBX, align 8, !tbaa !2428
  store i64 %106, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %81, 6
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %82, 24
  %111 = inttoptr i64 %106 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2428
  store i64 %110, i64* %RSP, align 8, !tbaa !2428
  %113 = add i64 %81, 8
  store i64 %113, i64* %PC, align 8
  %114 = add i64 %82, 32
  %115 = inttoptr i64 %110 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %R12, align 8, !tbaa !2428
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  %117 = add i64 %81, 10
  store i64 %117, i64* %PC, align 8
  %118 = add i64 %82, 40
  %119 = inttoptr i64 %114 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %R13, align 8, !tbaa !2428
  store i64 %118, i64* %RSP, align 8, !tbaa !2428
  %121 = add i64 %81, 12
  store i64 %121, i64* %PC, align 8
  %122 = add i64 %82, 48
  %123 = inttoptr i64 %118 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %R14, align 8, !tbaa !2428
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  %125 = add i64 %81, 14
  store i64 %125, i64* %PC, align 8
  %126 = add i64 %82, 56
  %127 = inttoptr i64 %122 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %R15, align 8, !tbaa !2428
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  %129 = add i64 %81, 15
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %PC, align 8, !tbaa !2428
  %132 = add i64 %82, 64
  store i64 %132, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401606:                                     ; preds = %block_4015d0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401610

block_401610:                                     ; preds = %block_401610, %block_401606
  %134 = phi i64 [ 0, %block_401606 ], [ %152, %block_401610 ]
  %135 = phi i64 [ %133, %block_401606 ], [ %179, %block_401610 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401606 ], [ %149, %block_401610 ]
  %136 = load i64, i64* %R15, align 8
  store i64 %136, i64* %RDX, align 8, !tbaa !2428
  %137 = load i64, i64* %R14, align 8
  store i64 %137, i64* %RSI, align 8, !tbaa !2428
  %138 = load i32, i32* %R13D, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2428
  %140 = load i64, i64* %R12, align 8
  %141 = shl i64 %134, 3
  %142 = add i64 %141, %140
  %143 = add i64 %135, 13
  store i64 %143, i64* %PC, align 8
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  %147 = inttoptr i64 %142 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %148, %struct.Memory* %MEMORY.1)
  %150 = load i64, i64* %RBX, align 8
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %150, 1
  store i64 %152, i64* %RBX, align 8, !tbaa !2428
  %153 = lshr i64 %152, 63
  %154 = load i64, i64* %RBP, align 8
  %155 = sub i64 %154, %152
  %156 = icmp ult i64 %154, %152
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %43, align 1, !tbaa !2432
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2446
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2450
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2447
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2448
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2449
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401626.loopexit, label %block_401610
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400740_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400740:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %12 = add i64 %9, -113
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4006d0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005c8:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %RSP, align 8, !tbaa !2428
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2446
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2447
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4005da, label %block_4005d8

block_4005d8:                                     ; preds = %block_4005c8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005da

block_4005da:                                     ; preds = %block_4005d8, %block_4005c8
  %27 = phi i64 [ %22, %block_4005c8 ], [ %.pre1, %block_4005d8 ]
  %28 = phi i64 [ %4, %block_4005c8 ], [ %.pre, %block_4005d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005c8 ], [ %26, %block_4005d8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2450
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2447
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2448
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2449
  %51 = add i64 %27, 5
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %29 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %PC, align 8, !tbaa !2428
  %54 = add i64 %28, 16
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400710___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400710:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2450
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2447
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2449
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400719, label %block_400730

block_400730:                                     ; preds = %block_400710
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !2428
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %21, 8
  store i64 %24, i64* %20, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400719:                                     ; preds = %block_400710
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %18, 1
  store i64 %26, i64* %PC, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  %32 = add i64 %31, -122
  %33 = add i64 %31, 8
  %34 = add i64 %28, -16
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 8
  store i64 %34, i64* %27, align 8, !tbaa !2428
  store i64 %32, i64* %PC, align 8, !tbaa !2428
  %36 = tail call %struct.Memory* @sub_4006a0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %27, align 8, !tbaa !2428
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  store i64 %40, i64* %27, align 8, !tbaa !2428
  %43 = add i64 %37, 9
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %46 = add i64 %39, 16
  store i64 %46, i64* %27, align 8, !tbaa !2428
  ret %struct.Memory* %36
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400740_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400740;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400740_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400740_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400710___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400710;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400710___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400710___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401640___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401640___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401640___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4015d0___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4015d0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015d0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4014a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4014a0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602100___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_free(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400610_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f8_memset(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005c8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4005c8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401644;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401644__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @compdecomp() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @compdecomp_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008a0_compdecomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @generate_test_data() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @generate_test_data_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400750_generate_test_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401640___libc_csu_fini()
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
  tail call void @callback_sub_4015d0___libc_csu_init()
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
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { alwaysinline nobuiltin nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1259, !1260}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!27 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !355, !358, !363, !371, !376, !380, !384, !388, !392, !394, !396, !400, !406, !410, !416, !422, !424, !428, !432, !436, !440, !451, !453, !457, !461, !465, !467, !471, !475, !479, !481, !483, !487, !495, !499, !503, !507, !509, !515, !517, !523, !527, !531, !535, !539, !543, !547, !549, !551, !555, !559, !563, !565, !569, !573, !575, !577, !581, !585, !589, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !606, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !634, !635, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !665, !669, !674, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !706, !712, !717, !721, !723, !725, !727, !729, !736, !740, !744, !748, !752, !756, !761, !765, !767, !771, !777, !781, !786, !788, !790, !794, !798, !802, !804, !806, !808, !810, !814, !816, !818, !822, !826, !830, !834, !838, !840, !842, !846, !850, !854, !858, !860, !862, !866, !870, !871, !872, !873, !874, !875, !880, !882, !884, !888, !890, !892, !894, !896, !898, !900, !902, !907, !911, !913, !915, !920, !922, !924, !926, !928, !930, !932, !935, !937, !939, !943, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !971, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1009, !1013, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1057, !1061, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1093, !1097, !1101, !1103, !1105, !1107, !1109, !1113, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1133, !1137, !1139, !1141, !1143, !1145, !1149, !1153, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1173, !1177, !1181, !1183, !1187, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1207, !1209, !1212, !1217, !1219, !1225, !1227, !1229, !1231, !1236, !1238, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/debug/debug.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/x86_64-linux-gnu/c++/7.4.0/bits/c++config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 837, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 127)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 130)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 588, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 134)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 592, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 137)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 597, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 140)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 101, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 141)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 104, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 142)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 107, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 143)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 817, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 805, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 144)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 541, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 145)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 849, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 146)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 614, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 147)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 563, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 148)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 631, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 149)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 838, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 150)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 851, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 151)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 539, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 153)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 919, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 154)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 930, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 155)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 922, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 157)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 827, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 160)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 620, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 163)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 453, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 164)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 549, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 165)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 455, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 166)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 117, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 167)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 176, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 168)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 180, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 169)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 781, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 171)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 933, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 172)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 926, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 200)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 80, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 76, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 78, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 79, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 206)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 626, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 210)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 841, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 216)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 855, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 227)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 112, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 228)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 200, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 229)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 205, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 231)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 123, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 232)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 126, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 240)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 242)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 244)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 245)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 213, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdlib", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 246)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 249)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 250)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 251)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 252)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/exception_ptr.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/typeinfo", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 6, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !343, line: 21, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 64, elements: !345, identifier: "_ZTS11__mbstate_t")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !343, line: 15, baseType: !82, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !344, file: !343, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 16, size: 32, elements: !349, identifier: "_ZTSN11__mbstate_tUt_E")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !343, line: 18, baseType: !10, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !343, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !356, line: 139)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !357, line: 20, baseType: !10)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !359, line: 141)
!359 = !DISubprogram(name: "btowc", scope: !360, file: !360, line: 284, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!361 = !DISubroutineType(types: !362)
!362 = !{!356, !82}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !364, line: 142)
!364 = !DISubprogram(name: "fgetwc", scope: !360, file: !360, line: 727, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!356, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !369, line: 5, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !372, line: 143)
!372 = !DISubprogram(name: "fgetws", scope: !360, file: !360, line: 756, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!174, !173, !82, !375}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !367)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !377, line: 144)
!377 = !DISubprogram(name: "fputwc", scope: !360, file: !360, line: 741, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!356, !175, !367}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !381, line: 145)
!381 = !DISubprogram(name: "fputws", scope: !360, file: !360, line: 763, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!82, !220, !375}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !385, line: 146)
!385 = !DISubprogram(name: "fwide", scope: !360, file: !360, line: 573, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!82, !367, !82}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !389, line: 147)
!389 = !DISubprogram(name: "fwprintf", scope: !360, file: !360, line: 580, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!82, !375, !220, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !393, line: 148)
!393 = !DISubprogram(name: "fwscanf", scope: !360, file: !360, line: 621, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !395, line: 149)
!395 = !DISubprogram(name: "getwc", scope: !360, file: !360, line: 728, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !397, line: 150)
!397 = !DISubprogram(name: "getwchar", scope: !360, file: !360, line: 734, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!356}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !401, line: 151)
!401 = !DISubprogram(name: "mbrlen", scope: !360, file: !360, line: 307, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!125, !176, !125, !404}
!404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, line: 152)
!407 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!125, !173, !176, !125, !404}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !411, line: 153)
!411 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!82, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !417, line: 154)
!417 = !DISubprogram(name: "mbsrtowcs", scope: !360, file: !360, line: 337, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{!125, !173, !420, !125, !404}
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !423, line: 155)
!423 = !DISubprogram(name: "putwc", scope: !360, file: !360, line: 742, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !425, line: 156)
!425 = !DISubprogram(name: "putwchar", scope: !360, file: !360, line: 748, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!356, !175}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !429, line: 158)
!429 = !DISubprogram(name: "swprintf", scope: !360, file: !360, line: 590, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!82, !173, !125, !220, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !433, line: 160)
!433 = !DISubprogram(name: "swscanf", scope: !360, file: !360, line: 631, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!82, !220, !220, null}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !437, line: 161)
!437 = !DISubprogram(name: "ungetwc", scope: !360, file: !360, line: 771, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!356, !356, !367}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !441, line: 162)
!441 = !DISubprogram(name: "vfwprintf", scope: !360, file: !360, line: 598, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{!82, !375, !220, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !446, identifier: "_ZTS13__va_list_tag")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !445, file: !2, baseType: !10, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !445, file: !2, baseType: !10, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 128)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 164)
!452 = !DISubprogram(name: "vfwscanf", scope: !360, file: !360, line: 673, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 167)
!454 = !DISubprogram(name: "vswprintf", scope: !360, file: !360, line: 611, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!82, !173, !125, !220, !444}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 170)
!458 = !DISubprogram(name: "vswscanf", scope: !360, file: !360, line: 685, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!82, !220, !220, !444}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 172)
!462 = !DISubprogram(name: "vwprintf", scope: !360, file: !360, line: 606, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!82, !220, !444}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 174)
!466 = !DISubprogram(name: "vwscanf", scope: !360, file: !360, line: 681, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, line: 176)
!468 = !DISubprogram(name: "wcrtomb", scope: !360, file: !360, line: 301, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!125, !219, !175, !404}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, line: 177)
!472 = !DISubprogram(name: "wcscat", scope: !360, file: !360, line: 97, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!174, !173, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, line: 178)
!476 = !DISubprogram(name: "wcscmp", scope: !360, file: !360, line: 106, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!82, !221, !221}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, line: 179)
!480 = !DISubprogram(name: "wcscoll", scope: !360, file: !360, line: 131, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !482, line: 180)
!482 = !DISubprogram(name: "wcscpy", scope: !360, file: !360, line: 87, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, line: 181)
!484 = !DISubprogram(name: "wcscspn", scope: !360, file: !360, line: 187, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!125, !221, !221}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !488, line: 182)
!488 = !DISubprogram(name: "wcsftime", scope: !360, file: !360, line: 835, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!125, !173, !125, !220, !491}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !360, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, line: 183)
!496 = !DISubprogram(name: "wcslen", scope: !360, file: !360, line: 222, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!125, !221}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, line: 184)
!500 = !DISubprogram(name: "wcsncat", scope: !360, file: !360, line: 101, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!174, !173, !220, !125}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, line: 185)
!504 = !DISubprogram(name: "wcsncmp", scope: !360, file: !360, line: 109, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!82, !221, !221, !125}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !508, line: 186)
!508 = !DISubprogram(name: "wcsncpy", scope: !360, file: !360, line: 92, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !510, line: 187)
!510 = !DISubprogram(name: "wcsrtombs", scope: !360, file: !360, line: 343, type: !511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!125, !219, !513, !125, !404}
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !516, line: 188)
!516 = !DISubprogram(name: "wcsspn", scope: !360, file: !360, line: 191, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !518, line: 189)
!518 = !DISubprogram(name: "wcstod", scope: !360, file: !360, line: 377, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!108, !220, !521}
!521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 191)
!524 = !DISubprogram(name: "wcstof", scope: !360, file: !360, line: 382, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!262, !220, !521}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !528, line: 193)
!528 = !DISubprogram(name: "wcstok", scope: !360, file: !360, line: 217, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!174, !173, !220, !521}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !532, line: 194)
!532 = !DISubprogram(name: "wcstol", scope: !360, file: !360, line: 428, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!91, !220, !521, !82}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, line: 195)
!536 = !DISubprogram(name: "wcstoul", scope: !360, file: !360, line: 433, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!127, !220, !521, !82}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, line: 196)
!540 = !DISubprogram(name: "wcsxfrm", scope: !360, file: !360, line: 135, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!125, !173, !220, !125}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !544, line: 197)
!544 = !DISubprogram(name: "wctob", scope: !360, file: !360, line: 288, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!82, !356}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !548, line: 198)
!548 = !DISubprogram(name: "wmemcmp", scope: !360, file: !360, line: 258, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !550, line: 199)
!550 = !DISubprogram(name: "wmemcpy", scope: !360, file: !360, line: 262, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !552, line: 200)
!552 = !DISubprogram(name: "wmemmove", scope: !360, file: !360, line: 267, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!174, !174, !221, !125}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !556, line: 201)
!556 = !DISubprogram(name: "wmemset", scope: !360, file: !360, line: 271, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!174, !174, !175, !125}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !560, line: 202)
!560 = !DISubprogram(name: "wprintf", scope: !360, file: !360, line: 587, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!82, !220, null}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !564, line: 203)
!564 = !DISubprogram(name: "wscanf", scope: !360, file: !360, line: 628, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !566, line: 204)
!566 = !DISubprogram(name: "wcschr", scope: !360, file: !360, line: 164, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !221, !175}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !570, line: 205)
!570 = !DISubprogram(name: "wcspbrk", scope: !360, file: !360, line: 201, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!174, !221, !221}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !574, line: 206)
!574 = !DISubprogram(name: "wcsrchr", scope: !360, file: !360, line: 174, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !576, line: 207)
!576 = !DISubprogram(name: "wcsstr", scope: !360, file: !360, line: 212, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 208)
!578 = !DISubprogram(name: "wmemchr", scope: !360, file: !360, line: 253, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!174, !221, !175, !125}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !582, line: 248)
!582 = !DISubprogram(name: "wcstold", scope: !360, file: !360, line: 384, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!267, !220, !521}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !586, line: 257)
!586 = !DISubprogram(name: "wcstoll", scope: !360, file: !360, line: 441, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!233, !220, !521, !82}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !590, line: 258)
!590 = !DISubprogram(name: "wcstoull", scope: !360, file: !360, line: 448, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!257, !220, !521, !82}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 264)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 265)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 266)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 280)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 283)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 286)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 289)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 293)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 294)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 295)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, line: 48)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !605)
!605 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !607, line: 49)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !608)
!608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 50)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !82)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 51)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !91)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 53)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !604)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 54)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !607)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 55)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 56)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !612)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 58)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !604)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 59)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !607)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 60)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 61)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !612)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 63)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !632, line: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !612)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 69)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 71)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 72)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 73)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 74)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !637)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 76)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 77)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 78)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 79)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !637)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 81)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !657, line: 82)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !637)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 44)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !661, line: 45)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !663, line: 53)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !664, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!664 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !666, line: 54)
!666 = !DISubprogram(name: "setlocale", scope: !664, file: !664, line: 122, type: !667, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!152, !82, !109}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !670, line: 55)
!670 = !DISubprogram(name: "localeconv", scope: !664, file: !664, line: 125, type: !671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, line: 64)
!675 = !DISubprogram(name: "isalnum", scope: !676, file: !676, line: 108, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 65)
!678 = !DISubprogram(name: "isalpha", scope: !676, file: !676, line: 109, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 66)
!680 = !DISubprogram(name: "iscntrl", scope: !676, file: !676, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 67)
!682 = !DISubprogram(name: "isdigit", scope: !676, file: !676, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 68)
!684 = !DISubprogram(name: "isgraph", scope: !676, file: !676, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 69)
!686 = !DISubprogram(name: "islower", scope: !676, file: !676, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 70)
!688 = !DISubprogram(name: "isprint", scope: !676, file: !676, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 71)
!690 = !DISubprogram(name: "ispunct", scope: !676, file: !676, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 72)
!692 = !DISubprogram(name: "isspace", scope: !676, file: !676, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 73)
!694 = !DISubprogram(name: "isupper", scope: !676, file: !676, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 74)
!696 = !DISubprogram(name: "isxdigit", scope: !676, file: !676, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 75)
!698 = !DISubprogram(name: "tolower", scope: !676, file: !676, line: 122, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 76)
!700 = !DISubprogram(name: "toupper", scope: !676, file: !676, line: 125, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 87)
!702 = !DISubprogram(name: "isblank", scope: !676, file: !676, line: 130, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 98)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !705, line: 7, baseType: !370)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !707, line: 99)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !708, line: 78, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !710, line: 30, baseType: !711)
!710 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !713, line: 101)
!713 = !DISubprogram(name: "clearerr", scope: !708, file: !708, line: 757, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 102)
!718 = !DISubprogram(name: "fclose", scope: !708, file: !708, line: 199, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!82, !716}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 103)
!722 = !DISubprogram(name: "feof", scope: !708, file: !708, line: 759, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 104)
!724 = !DISubprogram(name: "ferror", scope: !708, file: !708, line: 761, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 105)
!726 = !DISubprogram(name: "fflush", scope: !708, file: !708, line: 204, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !728, line: 106)
!728 = !DISubprogram(name: "fgetc", scope: !708, file: !708, line: 477, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !730, line: 107)
!730 = !DISubprogram(name: "fgetpos", scope: !708, file: !708, line: 731, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!82, !733, !734}
!733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 108)
!737 = !DISubprogram(name: "fgets", scope: !708, file: !708, line: 564, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!152, !219, !82, !733}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 109)
!741 = !DISubprogram(name: "fopen", scope: !708, file: !708, line: 232, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!716, !176, !176}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 110)
!745 = !DISubprogram(name: "fprintf", scope: !708, file: !708, line: 312, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !733, !176, null}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 111)
!749 = !DISubprogram(name: "fputc", scope: !708, file: !708, line: 517, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !82, !716}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 112)
!753 = !DISubprogram(name: "fputs", scope: !708, file: !708, line: 626, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!82, !176, !733}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !757, line: 113)
!757 = !DISubprogram(name: "fread", scope: !708, file: !708, line: 646, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!125, !760, !125, !125, !733}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 114)
!762 = !DISubprogram(name: "freopen", scope: !708, file: !708, line: 238, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!716, !176, !176, !733}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !766, line: 115)
!766 = !DISubprogram(name: "fscanf", scope: !708, file: !708, line: 377, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 116)
!768 = !DISubprogram(name: "fseek", scope: !708, file: !708, line: 684, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !716, !91, !82}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !772, line: 117)
!772 = !DISubprogram(name: "fsetpos", scope: !708, file: !708, line: 736, type: !773, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{!82, !716, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 118)
!778 = !DISubprogram(name: "ftell", scope: !708, file: !708, line: 689, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!91, !716}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !782, line: 119)
!782 = !DISubprogram(name: "fwrite", scope: !708, file: !708, line: 652, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!125, !785, !125, !125, !733}
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 120)
!787 = !DISubprogram(name: "getc", scope: !708, file: !708, line: 478, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !789, line: 121)
!789 = !DISubprogram(name: "getchar", scope: !708, file: !708, line: 484, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 124)
!791 = !DISubprogram(name: "gets", scope: !708, file: !708, line: 577, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{!152, !152}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 126)
!795 = !DISubprogram(name: "perror", scope: !708, file: !708, line: 775, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !109}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 127)
!799 = !DISubprogram(name: "printf", scope: !708, file: !708, line: 318, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!82, !176, null}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 128)
!803 = !DISubprogram(name: "putc", scope: !708, file: !708, line: 518, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 129)
!805 = !DISubprogram(name: "putchar", scope: !708, file: !708, line: 524, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 130)
!807 = !DISubprogram(name: "puts", scope: !708, file: !708, line: 632, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !809, line: 131)
!809 = !DISubprogram(name: "remove", scope: !708, file: !708, line: 144, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 132)
!811 = !DISubprogram(name: "rename", scope: !708, file: !708, line: 146, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!82, !109, !109}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 133)
!815 = !DISubprogram(name: "rewind", scope: !708, file: !708, line: 694, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !817, line: 134)
!817 = !DISubprogram(name: "scanf", scope: !708, file: !708, line: 383, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 135)
!819 = !DISubprogram(name: "setbuf", scope: !708, file: !708, line: 290, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !733, !219}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 136)
!823 = !DISubprogram(name: "setvbuf", scope: !708, file: !708, line: 294, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !733, !219, !82, !125}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 137)
!827 = !DISubprogram(name: "sprintf", scope: !708, file: !708, line: 320, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !219, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 138)
!831 = !DISubprogram(name: "sscanf", scope: !708, file: !708, line: 385, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !176, !176, null}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 139)
!835 = !DISubprogram(name: "tmpfile", scope: !708, file: !708, line: 159, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!716}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 141)
!839 = !DISubprogram(name: "tmpnam", scope: !708, file: !708, line: 173, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !841, line: 143)
!841 = !DISubprogram(name: "ungetc", scope: !708, file: !708, line: 639, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 144)
!843 = !DISubprogram(name: "vfprintf", scope: !708, file: !708, line: 327, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !733, !176, !444}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 145)
!847 = !DISubprogram(name: "vprintf", scope: !708, file: !708, line: 333, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !176, !444}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 146)
!851 = !DISubprogram(name: "vsprintf", scope: !708, file: !708, line: 335, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !176, !444}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 175)
!855 = !DISubprogram(name: "snprintf", scope: !708, file: !708, line: 340, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!82, !219, !125, !176, null}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 176)
!859 = !DISubprogram(name: "vfscanf", scope: !708, file: !708, line: 420, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !861, line: 177)
!861 = !DISubprogram(name: "vscanf", scope: !708, file: !708, line: 428, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 178)
!863 = !DISubprogram(name: "vsnprintf", scope: !708, file: !708, line: 344, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !219, !125, !176, !444}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !867, line: 179)
!867 = !DISubprogram(name: "vsscanf", scope: !708, file: !708, line: 432, type: !868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!82, !176, !176, !444}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 185)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 186)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !861, line: 187)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 188)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !867, line: 189)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !876, line: 83)
!876 = !DISubprogram(name: "acos", scope: !877, file: !877, line: 53, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!878 = !DISubroutineType(types: !879)
!879 = !{!108, !108}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 102)
!881 = !DISubprogram(name: "asin", scope: !877, file: !877, line: 55, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !883, line: 121)
!883 = !DISubprogram(name: "atan", scope: !877, file: !877, line: 57, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 140)
!885 = !DISubprogram(name: "atan2", scope: !877, file: !877, line: 59, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{!108, !108, !108}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 161)
!889 = !DISubprogram(name: "ceil", scope: !877, file: !877, line: 159, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 180)
!891 = !DISubprogram(name: "cos", scope: !877, file: !877, line: 62, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 199)
!893 = !DISubprogram(name: "cosh", scope: !877, file: !877, line: 71, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 218)
!895 = !DISubprogram(name: "exp", scope: !877, file: !877, line: 95, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 237)
!897 = !DISubprogram(name: "fabs", scope: !877, file: !877, line: 162, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 256)
!899 = !DISubprogram(name: "floor", scope: !877, file: !877, line: 165, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !901, line: 275)
!901 = !DISubprogram(name: "fmod", scope: !877, file: !877, line: 168, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !903, line: 296)
!903 = !DISubprogram(name: "frexp", scope: !877, file: !877, line: 98, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!108, !108, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 315)
!908 = !DISubprogram(name: "ldexp", scope: !877, file: !877, line: 101, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{!108, !108, !82}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 334)
!912 = !DISubprogram(name: "log", scope: !877, file: !877, line: 104, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !914, line: 353)
!914 = !DISubprogram(name: "log10", scope: !877, file: !877, line: 107, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !916, line: 372)
!916 = !DISubprogram(name: "modf", scope: !877, file: !877, line: 110, type: !917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!108, !108, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 384)
!921 = !DISubprogram(name: "pow", scope: !877, file: !877, line: 140, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 421)
!923 = !DISubprogram(name: "sin", scope: !877, file: !877, line: 64, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 440)
!925 = !DISubprogram(name: "sinh", scope: !877, file: !877, line: 73, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 459)
!927 = !DISubprogram(name: "sqrt", scope: !877, file: !877, line: 143, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 478)
!929 = !DISubprogram(name: "tan", scope: !877, file: !877, line: 66, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !931, line: 497)
!931 = !DISubprogram(name: "tanh", scope: !877, file: !877, line: 75, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !933, line: 1080)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !934, line: 150, baseType: !108)
!934 = !DIFile(filename: "/usr/include/math.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1081)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !934, line: 149, baseType: !262)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !938, line: 1084)
!938 = !DISubprogram(name: "acosh", scope: !877, file: !877, line: 85, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1085)
!940 = !DISubprogram(name: "acoshf", scope: !877, file: !877, line: 85, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!262, !262}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1086)
!944 = !DISubprogram(name: "acoshl", scope: !877, file: !877, line: 85, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{!267, !267}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1088)
!948 = !DISubprogram(name: "asinh", scope: !877, file: !877, line: 87, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1089)
!950 = !DISubprogram(name: "asinhf", scope: !877, file: !877, line: 87, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1090)
!952 = !DISubprogram(name: "asinhl", scope: !877, file: !877, line: 87, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1092)
!954 = !DISubprogram(name: "atanh", scope: !877, file: !877, line: 89, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1093)
!956 = !DISubprogram(name: "atanhf", scope: !877, file: !877, line: 89, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1094)
!958 = !DISubprogram(name: "atanhl", scope: !877, file: !877, line: 89, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1096)
!960 = !DISubprogram(name: "cbrt", scope: !877, file: !877, line: 152, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1097)
!962 = !DISubprogram(name: "cbrtf", scope: !877, file: !877, line: 152, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1098)
!964 = !DISubprogram(name: "cbrtl", scope: !877, file: !877, line: 152, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !966, line: 1100)
!966 = !DISubprogram(name: "copysign", scope: !877, file: !877, line: 196, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1101)
!968 = !DISubprogram(name: "copysignf", scope: !877, file: !877, line: 196, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!262, !262, !262}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1102)
!972 = !DISubprogram(name: "copysignl", scope: !877, file: !877, line: 196, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!267, !267, !267}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1104)
!976 = !DISubprogram(name: "erf", scope: !877, file: !877, line: 228, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1105)
!978 = !DISubprogram(name: "erff", scope: !877, file: !877, line: 228, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1106)
!980 = !DISubprogram(name: "erfl", scope: !877, file: !877, line: 228, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1108)
!982 = !DISubprogram(name: "erfc", scope: !877, file: !877, line: 229, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1109)
!984 = !DISubprogram(name: "erfcf", scope: !877, file: !877, line: 229, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1110)
!986 = !DISubprogram(name: "erfcl", scope: !877, file: !877, line: 229, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1112)
!988 = !DISubprogram(name: "exp2", scope: !877, file: !877, line: 130, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1113)
!990 = !DISubprogram(name: "exp2f", scope: !877, file: !877, line: 130, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1114)
!992 = !DISubprogram(name: "exp2l", scope: !877, file: !877, line: 130, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1116)
!994 = !DISubprogram(name: "expm1", scope: !877, file: !877, line: 119, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1117)
!996 = !DISubprogram(name: "expm1f", scope: !877, file: !877, line: 119, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1118)
!998 = !DISubprogram(name: "expm1l", scope: !877, file: !877, line: 119, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1120)
!1000 = !DISubprogram(name: "fdim", scope: !877, file: !877, line: 326, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1121)
!1002 = !DISubprogram(name: "fdimf", scope: !877, file: !877, line: 326, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1004, line: 1122)
!1004 = !DISubprogram(name: "fdiml", scope: !877, file: !877, line: 326, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1124)
!1006 = !DISubprogram(name: "fma", scope: !877, file: !877, line: 335, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !108, !108, !108}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1125)
!1010 = !DISubprogram(name: "fmaf", scope: !877, file: !877, line: 335, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!262, !262, !262, !262}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1126)
!1014 = !DISubprogram(name: "fmal", scope: !877, file: !877, line: 335, type: !1015, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!267, !267, !267, !267}
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1128)
!1018 = !DISubprogram(name: "fmax", scope: !877, file: !877, line: 329, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1129)
!1020 = !DISubprogram(name: "fmaxf", scope: !877, file: !877, line: 329, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1130)
!1022 = !DISubprogram(name: "fmaxl", scope: !877, file: !877, line: 329, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1132)
!1024 = !DISubprogram(name: "fmin", scope: !877, file: !877, line: 332, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1133)
!1026 = !DISubprogram(name: "fminf", scope: !877, file: !877, line: 332, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1134)
!1028 = !DISubprogram(name: "fminl", scope: !877, file: !877, line: 332, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1136)
!1030 = !DISubprogram(name: "hypot", scope: !877, file: !877, line: 147, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1137)
!1032 = !DISubprogram(name: "hypotf", scope: !877, file: !877, line: 147, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1034, line: 1138)
!1034 = !DISubprogram(name: "hypotl", scope: !877, file: !877, line: 147, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1140)
!1036 = !DISubprogram(name: "ilogb", scope: !877, file: !877, line: 280, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !108}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1141)
!1040 = !DISubprogram(name: "ilogbf", scope: !877, file: !877, line: 280, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !262}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1142)
!1044 = !DISubprogram(name: "ilogbl", scope: !877, file: !877, line: 280, type: !1045, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!82, !267}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1144)
!1048 = !DISubprogram(name: "lgamma", scope: !877, file: !877, line: 230, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1145)
!1050 = !DISubprogram(name: "lgammaf", scope: !877, file: !877, line: 230, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1052, line: 1146)
!1052 = !DISubprogram(name: "lgammal", scope: !877, file: !877, line: 230, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1149)
!1054 = !DISubprogram(name: "llrint", scope: !877, file: !877, line: 316, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !108}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1150)
!1058 = !DISubprogram(name: "llrintf", scope: !877, file: !877, line: 316, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !262}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1151)
!1062 = !DISubprogram(name: "llrintl", scope: !877, file: !877, line: 316, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!233, !267}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1153)
!1066 = !DISubprogram(name: "llround", scope: !877, file: !877, line: 322, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1154)
!1068 = !DISubprogram(name: "llroundf", scope: !877, file: !877, line: 322, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1155)
!1070 = !DISubprogram(name: "llroundl", scope: !877, file: !877, line: 322, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1158)
!1072 = !DISubprogram(name: "log1p", scope: !877, file: !877, line: 122, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1159)
!1074 = !DISubprogram(name: "log1pf", scope: !877, file: !877, line: 122, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1160)
!1076 = !DISubprogram(name: "log1pl", scope: !877, file: !877, line: 122, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1162)
!1078 = !DISubprogram(name: "log2", scope: !877, file: !877, line: 133, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1163)
!1080 = !DISubprogram(name: "log2f", scope: !877, file: !877, line: 133, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1164)
!1082 = !DISubprogram(name: "log2l", scope: !877, file: !877, line: 133, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1166)
!1084 = !DISubprogram(name: "logb", scope: !877, file: !877, line: 125, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1167)
!1086 = !DISubprogram(name: "logbf", scope: !877, file: !877, line: 125, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1088, line: 1168)
!1088 = !DISubprogram(name: "logbl", scope: !877, file: !877, line: 125, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1170)
!1090 = !DISubprogram(name: "lrint", scope: !877, file: !877, line: 314, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !108}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1171)
!1094 = !DISubprogram(name: "lrintf", scope: !877, file: !877, line: 314, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !262}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1172)
!1098 = !DISubprogram(name: "lrintl", scope: !877, file: !877, line: 314, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!91, !267}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1174)
!1102 = !DISubprogram(name: "lround", scope: !877, file: !877, line: 320, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1175)
!1104 = !DISubprogram(name: "lroundf", scope: !877, file: !877, line: 320, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1176)
!1106 = !DISubprogram(name: "lroundl", scope: !877, file: !877, line: 320, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1108, line: 1178)
!1108 = !DISubprogram(name: "nan", scope: !877, file: !877, line: 201, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1179)
!1110 = !DISubprogram(name: "nanf", scope: !877, file: !877, line: 201, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!262, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1180)
!1114 = !DISubprogram(name: "nanl", scope: !877, file: !877, line: 201, type: !1115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!267, !109}
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1182)
!1118 = !DISubprogram(name: "nearbyint", scope: !877, file: !877, line: 294, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1183)
!1120 = !DISubprogram(name: "nearbyintf", scope: !877, file: !877, line: 294, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1184)
!1122 = !DISubprogram(name: "nearbyintl", scope: !877, file: !877, line: 294, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1186)
!1124 = !DISubprogram(name: "nextafter", scope: !877, file: !877, line: 259, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1187)
!1126 = !DISubprogram(name: "nextafterf", scope: !877, file: !877, line: 259, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1128, line: 1188)
!1128 = !DISubprogram(name: "nextafterl", scope: !877, file: !877, line: 259, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1190)
!1130 = !DISubprogram(name: "nexttoward", scope: !877, file: !877, line: 261, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!108, !108, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1191)
!1134 = !DISubprogram(name: "nexttowardf", scope: !877, file: !877, line: 261, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!262, !262, !267}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1192)
!1138 = !DISubprogram(name: "nexttowardl", scope: !877, file: !877, line: 261, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1194)
!1140 = !DISubprogram(name: "remainder", scope: !877, file: !877, line: 272, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1195)
!1142 = !DISubprogram(name: "remainderf", scope: !877, file: !877, line: 272, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1144, line: 1196)
!1144 = !DISubprogram(name: "remainderl", scope: !877, file: !877, line: 272, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1198)
!1146 = !DISubprogram(name: "remquo", scope: !877, file: !877, line: 307, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!108, !108, !108, !906}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1199)
!1150 = !DISubprogram(name: "remquof", scope: !877, file: !877, line: 307, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!262, !262, !262, !906}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1200)
!1154 = !DISubprogram(name: "remquol", scope: !877, file: !877, line: 307, type: !1155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!267, !267, !267, !906}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1202)
!1158 = !DISubprogram(name: "rint", scope: !877, file: !877, line: 256, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1203)
!1160 = !DISubprogram(name: "rintf", scope: !877, file: !877, line: 256, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1204)
!1162 = !DISubprogram(name: "rintl", scope: !877, file: !877, line: 256, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1206)
!1164 = !DISubprogram(name: "round", scope: !877, file: !877, line: 298, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1207)
!1166 = !DISubprogram(name: "roundf", scope: !877, file: !877, line: 298, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1168, line: 1208)
!1168 = !DISubprogram(name: "roundl", scope: !877, file: !877, line: 298, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1210)
!1170 = !DISubprogram(name: "scalbln", scope: !877, file: !877, line: 290, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!108, !108, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1211)
!1174 = !DISubprogram(name: "scalblnf", scope: !877, file: !877, line: 290, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!262, !262, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1212)
!1178 = !DISubprogram(name: "scalblnl", scope: !877, file: !877, line: 290, type: !1179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!267, !267, !91}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1182, line: 1214)
!1182 = !DISubprogram(name: "scalbn", scope: !877, file: !877, line: 276, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1215)
!1184 = !DISubprogram(name: "scalbnf", scope: !877, file: !877, line: 276, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!262, !262, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1216)
!1188 = !DISubprogram(name: "scalbnl", scope: !877, file: !877, line: 276, type: !1189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!267, !267, !82}
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1218)
!1192 = !DISubprogram(name: "tgamma", scope: !877, file: !877, line: 235, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1219)
!1194 = !DISubprogram(name: "tgammaf", scope: !877, file: !877, line: 235, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1220)
!1196 = !DISubprogram(name: "tgammal", scope: !877, file: !877, line: 235, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1222)
!1198 = !DISubprogram(name: "trunc", scope: !877, file: !877, line: 302, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 1223)
!1200 = !DISubprogram(name: "truncf", scope: !877, file: !877, line: 302, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1202, line: 1224)
!1202 = !DISubprogram(name: "truncl", scope: !877, file: !877, line: 302, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 58)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1205, line: 94, baseType: !1206)
!1205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 59)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1205, line: 68, baseType: !29)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 62)
!1210 = !DISubprogram(name: "feclearexcept", scope: !1211, file: !1211, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 63)
!1213 = !DISubprogram(name: "fegetexceptflag", scope: !1211, file: !1211, line: 75, type: !1214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!82, !1216, !82}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 64)
!1218 = !DISubprogram(name: "feraiseexcept", scope: !1211, file: !1211, line: 78, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 65)
!1220 = !DISubprogram(name: "fesetexceptflag", scope: !1211, file: !1211, line: 88, type: !1221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!82, !1223, !82}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 66)
!1226 = !DISubprogram(name: "fetestexcept", scope: !1211, file: !1211, line: 92, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 68)
!1228 = !DISubprogram(name: "fegetround", scope: !1211, file: !1211, line: 104, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 69)
!1230 = !DISubprogram(name: "fesetround", scope: !1211, file: !1211, line: 107, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 71)
!1232 = !DISubprogram(name: "fegetenv", scope: !1211, file: !1211, line: 114, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!82, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 72)
!1237 = !DISubprogram(name: "feholdexcept", scope: !1211, file: !1211, line: 119, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 73)
!1239 = !DISubprogram(name: "fesetenv", scope: !1211, file: !1211, line: 123, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!82, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 74)
!1245 = !DISubprogram(name: "feupdateenv", scope: !1211, file: !1211, line: 128, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 61)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 62)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 65)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 66)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 67)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 68)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 72)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 74)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 75)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 76)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 77)
!1259 = !{i32 2, !"Dwarf Version", i32 4}
!1260 = !{i32 2, !"Debug Info Version", i32 3}
!1261 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1262, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1264, !1267, !1950, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1266, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1266 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1269, identifier: "_ZTS5State")
!1269 = !{!1270, !1282, !1491, !1511, !1541, !1566, !1595, !1632, !1642, !1703, !1728, !1752, !1932}
!1270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1268, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1272, line: 21, size: 128, elements: !1273, identifier: "_ZTS9ArchState")
!1272 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1271, file: !1272, line: 23, baseType: !4, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1271, file: !1272, line: 25, baseType: !8, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 31, baseType: !1277, size: 64, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 31, size: 64, elements: !1278, identifier: "_ZTSN9ArchStateUt_E")
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1277, file: !1272, line: 32, baseType: !637, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1277, file: !1272, line: 33, baseType: !637, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1277, file: !1272, line: 34, baseType: !8, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !27, line: 747, baseType: !1283, size: 16384, offset: 128)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 16384, elements: !1369)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1285, identifier: "_ZTS9VectorReg")
!1285 = !{!1286, !1361, !1426}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1284, file: !27, line: 637, baseType: !1287, size: 128, align: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1266, line: 317, size: 128, elements: !1288, identifier: "_ZTS8vec128_t")
!1288 = !{!1289, !1298, !1305, !1312, !1317, !1324, !1329, !1334, !1339, !1344, !1349, !1354}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1287, file: !1266, line: 321, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1266, line: 205, size: 128, elements: !1291, identifier: "_ZTS11uint128v1_t")
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1290, file: !1266, line: 205, baseType: !1293, size: 128)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 128, elements: !1296)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1266, line: 46, baseType: !1295)
!1295 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1296 = !{!1297}
!1297 = !DISubrange(count: 1)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1287, file: !1266, line: 323, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1266, line: 182, size: 128, elements: !1300, identifier: "_ZTS10uint8v16_t")
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1299, file: !1266, line: 182, baseType: !1302, size: 128)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 16)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1287, file: !1266, line: 324, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1266, line: 189, size: 128, elements: !1307, identifier: "_ZTS10uint16v8_t")
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1306, file: !1266, line: 189, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 8)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1287, file: !1266, line: 325, baseType: !1313, size: 128)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1266, line: 195, size: 128, elements: !1314, identifier: "_ZTS10uint32v4_t")
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1313, file: !1266, line: 195, baseType: !1316, size: 128)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !353)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1287, file: !1266, line: 326, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1266, line: 200, size: 128, elements: !1319, identifier: "_ZTS10uint64v2_t")
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1318, file: !1266, line: 200, baseType: !1321, size: 128)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 2)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1287, file: !1266, line: 327, baseType: !1325, size: 128)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1266, line: 242, size: 128, elements: !1326, identifier: "_ZTS11float32v4_t")
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1325, file: !1266, line: 242, baseType: !1328, size: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !353)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1287, file: !1266, line: 328, baseType: !1330, size: 128)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1266, line: 247, size: 128, elements: !1331, identifier: "_ZTS11float64v2_t")
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1330, file: !1266, line: 247, baseType: !1333, size: 128)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1322)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1287, file: !1266, line: 330, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1266, line: 213, size: 128, elements: !1336, identifier: "_ZTS9int8v16_t")
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1335, file: !1266, line: 213, baseType: !1338, size: 128)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !1303)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1287, file: !1266, line: 331, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1266, line: 220, size: 128, elements: !1341, identifier: "_ZTS9int16v8_t")
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1340, file: !1266, line: 220, baseType: !1343, size: 128)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !1310)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1287, file: !1266, line: 332, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1266, line: 226, size: 128, elements: !1346, identifier: "_ZTS9int32v4_t")
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1345, file: !1266, line: 226, baseType: !1348, size: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !353)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1287, file: !1266, line: 333, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1266, line: 231, size: 128, elements: !1351, identifier: "_ZTS9int64v2_t")
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1350, file: !1266, line: 231, baseType: !1353, size: 128)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 128, elements: !1322)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1287, file: !1266, line: 334, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1266, line: 236, size: 128, elements: !1356, identifier: "_ZTS10int128v1_t")
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1355, file: !1266, line: 236, baseType: !1358, size: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 128, elements: !1296)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1266, line: 47, baseType: !1360)
!1360 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1284, file: !27, line: 638, baseType: !1362, size: 256, align: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1266, line: 340, size: 256, elements: !1363, identifier: "_ZTS8vec256_t")
!1363 = !{!1364, !1371, !1376, !1381, !1386, !1391, !1396, !1401, !1406, !1411, !1416, !1421}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1362, file: !1266, line: 341, baseType: !1365, size: 256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1266, line: 183, size: 256, elements: !1366, identifier: "_ZTS10uint8v32_t")
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1365, file: !1266, line: 183, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1362, file: !1266, line: 342, baseType: !1372, size: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1266, line: 190, size: 256, elements: !1373, identifier: "_ZTS11uint16v16_t")
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1372, file: !1266, line: 190, baseType: !1375, size: 256)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1303)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1362, file: !1266, line: 343, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1266, line: 196, size: 256, elements: !1378, identifier: "_ZTS10uint32v8_t")
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1377, file: !1266, line: 196, baseType: !1380, size: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1310)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1362, file: !1266, line: 344, baseType: !1382, size: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1266, line: 201, size: 256, elements: !1383, identifier: "_ZTS10uint64v4_t")
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1382, file: !1266, line: 201, baseType: !1385, size: 256)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !353)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1362, file: !1266, line: 345, baseType: !1387, size: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1266, line: 206, size: 256, elements: !1388, identifier: "_ZTS11uint128v2_t")
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1387, file: !1266, line: 206, baseType: !1390, size: 256)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 256, elements: !1322)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1362, file: !1266, line: 346, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1266, line: 243, size: 256, elements: !1393, identifier: "_ZTS11float32v8_t")
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1392, file: !1266, line: 243, baseType: !1395, size: 256)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1310)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1362, file: !1266, line: 347, baseType: !1397, size: 256)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1266, line: 248, size: 256, elements: !1398, identifier: "_ZTS11float64v4_t")
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1397, file: !1266, line: 248, baseType: !1400, size: 256)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !353)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1362, file: !1266, line: 349, baseType: !1402, size: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1266, line: 214, size: 256, elements: !1403, identifier: "_ZTS9int8v32_t")
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1402, file: !1266, line: 214, baseType: !1405, size: 256)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1369)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1362, file: !1266, line: 350, baseType: !1407, size: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1266, line: 221, size: 256, elements: !1408, identifier: "_ZTS10int16v16_t")
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1407, file: !1266, line: 221, baseType: !1410, size: 256)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 256, elements: !1303)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1362, file: !1266, line: 351, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1266, line: 227, size: 256, elements: !1413, identifier: "_ZTS9int32v8_t")
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1412, file: !1266, line: 227, baseType: !1415, size: 256)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !1310)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1362, file: !1266, line: 352, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1266, line: 232, size: 256, elements: !1418, identifier: "_ZTS9int64v4_t")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1417, file: !1266, line: 232, baseType: !1420, size: 256)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 256, elements: !353)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1362, file: !1266, line: 353, baseType: !1422, size: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1266, line: 237, size: 256, elements: !1423, identifier: "_ZTS10int128v2_t")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1422, file: !1266, line: 237, baseType: !1425, size: 256)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 256, elements: !1322)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1284, file: !27, line: 639, baseType: !1427, size: 512, align: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1266, line: 359, size: 512, elements: !1428, identifier: "_ZTS8vec512_t")
!1428 = !{!1429, !1436, !1441, !1446, !1451, !1456, !1461, !1466, !1471, !1476, !1481, !1486}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1427, file: !1266, line: 360, baseType: !1430, size: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1266, line: 184, size: 512, elements: !1431, identifier: "_ZTS10uint8v64_t")
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1430, file: !1266, line: 184, baseType: !1433, size: 512)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1427, file: !1266, line: 361, baseType: !1437, size: 512)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1266, line: 191, size: 512, elements: !1438, identifier: "_ZTS11uint16v32_t")
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1437, file: !1266, line: 191, baseType: !1440, size: 512)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1369)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1427, file: !1266, line: 362, baseType: !1442, size: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1266, line: 197, size: 512, elements: !1443, identifier: "_ZTS11uint32v16_t")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1442, file: !1266, line: 197, baseType: !1445, size: 512)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1303)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1427, file: !1266, line: 363, baseType: !1447, size: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1266, line: 202, size: 512, elements: !1448, identifier: "_ZTS10uint64v8_t")
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1447, file: !1266, line: 202, baseType: !1450, size: 512)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 512, elements: !1310)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1427, file: !1266, line: 364, baseType: !1452, size: 512)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1266, line: 207, size: 512, elements: !1453, identifier: "_ZTS11uint128v4_t")
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1452, file: !1266, line: 207, baseType: !1455, size: 512)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 512, elements: !353)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1427, file: !1266, line: 365, baseType: !1457, size: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1266, line: 244, size: 512, elements: !1458, identifier: "_ZTS12float32v16_t")
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1457, file: !1266, line: 244, baseType: !1460, size: 512)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1303)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1427, file: !1266, line: 366, baseType: !1462, size: 512)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1266, line: 249, size: 512, elements: !1463, identifier: "_ZTS11float64v8_t")
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1462, file: !1266, line: 249, baseType: !1465, size: 512)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1310)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1427, file: !1266, line: 368, baseType: !1467, size: 512)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1266, line: 215, size: 512, elements: !1468, identifier: "_ZTS9int8v64_t")
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1467, file: !1266, line: 215, baseType: !1470, size: 512)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 512, elements: !1434)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1427, file: !1266, line: 369, baseType: !1472, size: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1266, line: 222, size: 512, elements: !1473, identifier: "_ZTS10int16v32_t")
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1472, file: !1266, line: 222, baseType: !1475, size: 512)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1369)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1427, file: !1266, line: 370, baseType: !1477, size: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1266, line: 228, size: 512, elements: !1478, identifier: "_ZTS10int32v16_t")
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1477, file: !1266, line: 228, baseType: !1480, size: 512)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1303)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1427, file: !1266, line: 371, baseType: !1482, size: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1266, line: 233, size: 512, elements: !1483, identifier: "_ZTS9int64v8_t")
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1482, file: !1266, line: 233, baseType: !1485, size: 512)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 512, elements: !1310)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1427, file: !1266, line: 372, baseType: !1487, size: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1266, line: 238, size: 512, elements: !1488, identifier: "_ZTS10int128v4_t")
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1487, file: !1266, line: 238, baseType: !1490, size: 512)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 512, elements: !353)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1268, file: !27, line: 751, baseType: !1492, size: 128, align: 64, offset: 16512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1493, identifier: "_ZTS10ArithFlags")
!1493 = !{!1494, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1492, file: !27, line: 404, baseType: !1495, size: 8)
!1495 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1492, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1492, file: !27, line: 406, baseType: !1495, size: 8, offset: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1492, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1492, file: !27, line: 408, baseType: !1495, size: 8, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1492, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1492, file: !27, line: 410, baseType: !1495, size: 8, offset: 48)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1492, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1492, file: !27, line: 412, baseType: !1495, size: 8, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1492, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1492, file: !27, line: 414, baseType: !1495, size: 8, offset: 80)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1492, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1492, file: !27, line: 416, baseType: !1495, size: 8, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1492, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1492, file: !27, line: 418, baseType: !1495, size: 8, offset: 112)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1492, file: !27, line: 419, baseType: !1495, size: 8, offset: 120)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1268, file: !27, line: 752, baseType: !1512, size: 64, align: 64, offset: 16640)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1513, identifier: "_ZTS5Flags")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1512, file: !27, line: 367, baseType: !637, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !27, line: 368, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !27, line: 368, size: 64, elements: !1517, identifier: "_ZTSN5FlagsUt_E")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1516, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1516, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1516, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1516, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1516, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1516, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1516, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1516, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1516, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1516, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1516, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1516, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1516, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1516, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1516, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1516, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1516, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1516, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1516, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1516, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1516, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1516, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1516, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1268, file: !27, line: 753, baseType: !1542, size: 192, align: 64, offset: 16704)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1543, identifier: "_ZTS8Segments")
!1543 = !{!1544, !1546, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1542, file: !27, line: 452, baseType: !1545, size: 16)
!1545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1542, file: !27, line: 453, baseType: !1547, size: 16, offset: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1548, identifier: "_ZTS15SegmentSelector")
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1547, file: !27, line: 77, baseType: !28, size: 16)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !27, line: 78, baseType: !1551, size: 16)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !27, line: 78, size: 16, elements: !1552, identifier: "_ZTSN15SegmentSelectorUt_E")
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1551, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1551, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1551, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1542, file: !27, line: 454, baseType: !1545, size: 16, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1542, file: !27, line: 455, baseType: !1547, size: 16, offset: 48)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1542, file: !27, line: 456, baseType: !1545, size: 16, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1542, file: !27, line: 457, baseType: !1547, size: 16, offset: 80)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1542, file: !27, line: 458, baseType: !1545, size: 16, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1542, file: !27, line: 459, baseType: !1547, size: 16, offset: 112)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1542, file: !27, line: 460, baseType: !1545, size: 16, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1542, file: !27, line: 461, baseType: !1547, size: 16, offset: 144)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1542, file: !27, line: 462, baseType: !1545, size: 16, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1542, file: !27, line: 463, baseType: !1547, size: 16, offset: 176)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1268, file: !27, line: 754, baseType: !1567, size: 768, align: 64, offset: 16896)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1568, identifier: "_ZTS12AddressSpace")
!1568 = !{!1569, !1571, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1567, file: !27, line: 655, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !637)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1567, file: !27, line: 656, baseType: !1572, size: 64, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1573, identifier: "_ZTS3Reg")
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !27, line: 611, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !27, line: 611, size: 64, elements: !1576, identifier: "_ZTSN3RegUt_E")
!1576 = !{!1577, !1582, !1583, !1584}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1575, file: !27, line: 615, baseType: !1578, size: 16, align: 8)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !27, line: 612, size: 16, elements: !1579, identifier: "_ZTSN3RegUt_Ut_E")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1578, file: !27, line: 613, baseType: !62, size: 8)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1578, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1575, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1575, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1575, file: !27, line: 618, baseType: !637, size: 64, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1567, file: !27, line: 657, baseType: !1570, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1567, file: !27, line: 658, baseType: !1572, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1567, file: !27, line: 659, baseType: !1570, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1567, file: !27, line: 660, baseType: !1572, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1567, file: !27, line: 661, baseType: !1570, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1567, file: !27, line: 662, baseType: !1572, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1567, file: !27, line: 663, baseType: !1570, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1567, file: !27, line: 664, baseType: !1572, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1567, file: !27, line: 665, baseType: !1570, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1567, file: !27, line: 666, baseType: !1572, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1268, file: !27, line: 755, baseType: !1596, size: 2176, align: 64, offset: 17664)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1597, identifier: "_ZTS3GPR")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1596, file: !27, line: 679, baseType: !1570, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1596, file: !27, line: 680, baseType: !1572, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1596, file: !27, line: 681, baseType: !1570, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1596, file: !27, line: 682, baseType: !1572, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1596, file: !27, line: 683, baseType: !1570, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1596, file: !27, line: 684, baseType: !1572, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1596, file: !27, line: 685, baseType: !1570, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1596, file: !27, line: 686, baseType: !1572, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1596, file: !27, line: 687, baseType: !1570, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1596, file: !27, line: 688, baseType: !1572, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1596, file: !27, line: 689, baseType: !1570, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1596, file: !27, line: 690, baseType: !1572, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1596, file: !27, line: 691, baseType: !1570, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1596, file: !27, line: 692, baseType: !1572, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1596, file: !27, line: 693, baseType: !1570, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1596, file: !27, line: 694, baseType: !1572, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1596, file: !27, line: 695, baseType: !1570, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1596, file: !27, line: 696, baseType: !1572, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1596, file: !27, line: 697, baseType: !1570, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1596, file: !27, line: 698, baseType: !1572, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1596, file: !27, line: 699, baseType: !1570, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1596, file: !27, line: 700, baseType: !1572, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1596, file: !27, line: 701, baseType: !1570, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1596, file: !27, line: 702, baseType: !1572, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1596, file: !27, line: 703, baseType: !1570, size: 64, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1596, file: !27, line: 704, baseType: !1572, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1596, file: !27, line: 705, baseType: !1570, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1596, file: !27, line: 706, baseType: !1572, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1596, file: !27, line: 707, baseType: !1570, size: 64, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1596, file: !27, line: 708, baseType: !1572, size: 64, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1596, file: !27, line: 709, baseType: !1570, size: 64, offset: 1920)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1596, file: !27, line: 710, baseType: !1572, size: 64, offset: 1984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1596, file: !27, line: 711, baseType: !1570, size: 64, offset: 2048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1596, file: !27, line: 714, baseType: !1572, size: 64, offset: 2112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1268, file: !27, line: 756, baseType: !1633, size: 1024, align: 64, offset: 19840)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1634, identifier: "_ZTS8X87Stack")
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1633, file: !27, line: 723, baseType: !1636, size: 1024)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1637, size: 1024, elements: !1310)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !27, line: 720, size: 128, align: 64, elements: !1638, identifier: "_ZTSN8X87StackUt_E")
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1637, file: !27, line: 721, baseType: !637, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1637, file: !27, line: 722, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1266, line: 61, baseType: !108)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1268, file: !27, line: 757, baseType: !1643, size: 1024, align: 64, offset: 20864)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1644, identifier: "_ZTS3MMX")
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1643, file: !27, line: 733, baseType: !1646, size: 1024)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 1024, elements: !1310)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !27, line: 730, size: 128, align: 64, elements: !1648, identifier: "_ZTSN3MMXUt_E")
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1647, file: !27, line: 731, baseType: !637, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1647, file: !27, line: 732, baseType: !1651, size: 64, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1266, line: 294, size: 64, elements: !1652, identifier: "_ZTS7vec64_t")
!1652 = !{!1653, !1658, !1663, !1668, !1673, !1678, !1683, !1688, !1693, !1698}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1651, file: !1266, line: 298, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1266, line: 199, size: 64, elements: !1655, identifier: "_ZTS10uint64v1_t")
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1654, file: !1266, line: 199, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !1296)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1651, file: !1266, line: 300, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1266, line: 181, size: 64, elements: !1660, identifier: "_ZTS9uint8v8_t")
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1659, file: !1266, line: 181, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1310)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1651, file: !1266, line: 301, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1266, line: 188, size: 64, elements: !1665, identifier: "_ZTS10uint16v4_t")
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1664, file: !1266, line: 188, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !353)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1651, file: !1266, line: 302, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1266, line: 194, size: 64, elements: !1670, identifier: "_ZTS10uint32v2_t")
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1669, file: !1266, line: 194, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1322)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1651, file: !1266, line: 303, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1266, line: 241, size: 64, elements: !1675, identifier: "_ZTS11float32v2_t")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1674, file: !1266, line: 241, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1322)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1651, file: !1266, line: 304, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1266, line: 246, size: 64, elements: !1680, identifier: "_ZTS11float64v1_t")
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1679, file: !1266, line: 246, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1296)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1651, file: !1266, line: 306, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1266, line: 212, size: 64, elements: !1685, identifier: "_ZTS8int8v8_t")
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1684, file: !1266, line: 212, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !1310)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1651, file: !1266, line: 307, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1266, line: 219, size: 64, elements: !1690, identifier: "_ZTS9int16v4_t")
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1689, file: !1266, line: 219, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !353)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1651, file: !1266, line: 308, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1266, line: 225, size: 64, elements: !1695, identifier: "_ZTS9int32v2_t")
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1694, file: !1266, line: 225, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1322)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1651, file: !1266, line: 309, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1266, line: 230, size: 64, elements: !1700, identifier: "_ZTS9int64v1_t")
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1699, file: !1266, line: 230, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !1296)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1268, file: !27, line: 758, baseType: !1704, size: 192, offset: 21888)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1705, identifier: "_ZTS14FPUStatusFlags")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1704, file: !27, line: 333, baseType: !62, size: 8)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1704, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1704, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1704, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1704, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1704, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1704, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1704, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1704, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1704, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1704, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1704, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1704, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1704, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1704, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1704, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1704, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1704, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1704, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1704, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1704, file: !27, line: 360, baseType: !1727, size: 32, offset: 160)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !353)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1268, file: !27, line: 759, baseType: !1729, size: 64, offset: 22080)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1730, identifier: "_ZTS4XCR0")
!1730 = !{!1731, !1732, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1729, file: !27, line: 425, baseType: !637, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 427, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 427, size: 64, elements: !1734, identifier: "_ZTSN4XCR0Ut_E")
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1733, file: !27, line: 428, baseType: !8, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1733, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 433, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 433, size: 64, elements: !1739, identifier: "_ZTSN4XCR0Ut0_E")
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1738, file: !27, line: 434, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1738, file: !27, line: 435, baseType: !637, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1738, file: !27, line: 436, baseType: !637, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1738, file: !27, line: 437, baseType: !637, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1738, file: !27, line: 438, baseType: !637, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1738, file: !27, line: 439, baseType: !637, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1738, file: !27, line: 440, baseType: !637, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1738, file: !27, line: 441, baseType: !637, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1738, file: !27, line: 442, baseType: !637, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1738, file: !27, line: 443, baseType: !637, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1738, file: !27, line: 444, baseType: !637, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1738, file: !27, line: 445, baseType: !637, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1268, file: !27, line: 760, baseType: !1753, size: 4096, align: 128, offset: 22144)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1754, identifier: "_ZTS3FPU")
!1754 = !{!1755, !1851, !1914}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1753, file: !27, line: 317, baseType: !1756, size: 4096)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 315, size: 4096, elements: !1757, identifier: "_ZTSN3FPUUt_E")
!1757 = !{!1758, !1847}
!1758 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1756, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1760, identifier: "_ZTS8FpuFSAVE")
!1760 = !{!1761, !1779, !1780, !1801, !1802, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1759, file: !27, line: 264, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1763, identifier: "_ZTS14FPUControlWord")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1762, file: !27, line: 143, baseType: !28, size: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !27, line: 144, baseType: !1766, size: 16)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !27, line: 144, size: 16, elements: !1767, identifier: "_ZTSN14FPUControlWordUt_E")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1766, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1766, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1766, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1766, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1766, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1766, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1766, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1766, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1766, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1766, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1766, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1759, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1759, file: !27, line: 266, baseType: !1781, size: 16, offset: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1782, identifier: "_ZTS13FPUStatusWord")
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1781, file: !27, line: 101, baseType: !28, size: 16)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !27, line: 102, baseType: !1785, size: 16)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !27, line: 102, size: 16, elements: !1786, identifier: "_ZTSN13FPUStatusWordUt_E")
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1785, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1785, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1785, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1785, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1785, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1785, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1785, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1785, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1785, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1785, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1785, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1785, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1785, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1785, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1759, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1759, file: !27, line: 268, baseType: !1803, size: 16, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1804, identifier: "_ZTS10FPUTagWord")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1803, file: !27, line: 228, baseType: !28, size: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !27, line: 229, baseType: !1807, size: 16)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !27, line: 229, size: 16, elements: !1808, identifier: "_ZTSN10FPUTagWordUt_E")
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1807, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1807, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1807, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1807, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1807, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1807, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1807, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1807, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1759, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1759, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1759, file: !27, line: 271, baseType: !1547, size: 16, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1759, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1759, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1759, file: !27, line: 274, baseType: !1547, size: 16, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1759, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1759, file: !27, line: 276, baseType: !1825, size: 1024, offset: 224)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 1024, elements: !1310)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1827, identifier: "_ZTS12FPUStackElem")
!1827 = !{!1828, !1843}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !27, line: 163, baseType: !1829, size: 80)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !27, line: 163, size: 80, elements: !1830, identifier: "_ZTSN12FPUStackElemUt_E")
!1830 = !{!1831, !1838}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1829, file: !27, line: 164, baseType: !1832, size: 80)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1266, line: 65, size: 80, elements: !1833, identifier: "_ZTS9float80_t")
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1266, line: 66, baseType: !1835, size: 80)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 10)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !27, line: 165, baseType: !1839, size: 80)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !27, line: 165, size: 80, elements: !1840, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1839, file: !27, line: 166, baseType: !637, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1839, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1826, file: !27, line: 170, baseType: !1844, size: 48, offset: 80)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 6)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1756, file: !27, line: 316, baseType: !1848, size: 2848, offset: 1248)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 356)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1753, file: !27, line: 321, baseType: !1852, size: 4096)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 319, size: 4096, elements: !1853, identifier: "_ZTSN3FPUUt0_E")
!1853 = !{!1854, !1910}
!1854 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1852, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1856, identifier: "_ZTS9FpuFXSAVE")
!1856 = !{!1857, !1858, !1859, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1906, !1907, !1908}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1855, file: !27, line: 281, baseType: !1762, size: 16)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1855, file: !27, line: 282, baseType: !1781, size: 16, offset: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1855, file: !27, line: 283, baseType: !1860, size: 8, offset: 32)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1861, identifier: "_ZTS18FPUAbridgedTagWord")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1860, file: !27, line: 246, baseType: !62, size: 8)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !27, line: 247, baseType: !1864, size: 8)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !27, line: 247, size: 8, elements: !1865, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1864, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1864, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1864, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1864, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1864, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1864, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1864, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1864, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1855, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1855, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1855, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1855, file: !27, line: 287, baseType: !1547, size: 16, offset: 96)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1855, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1855, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1855, file: !27, line: 290, baseType: !1547, size: 16, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1855, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1855, file: !27, line: 292, baseType: !1883, size: 32, offset: 192)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1884, identifier: "_ZTS16FPUControlStatus")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1883, file: !27, line: 189, baseType: !8, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !27, line: 190, baseType: !1887, size: 32)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !27, line: 190, size: 32, elements: !1888, identifier: "_ZTSN16FPUControlStatusUt_E")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1887, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1887, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1887, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1887, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1887, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1887, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1887, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1887, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1887, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1887, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1887, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1887, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1887, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1887, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1887, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1887, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1887, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1855, file: !27, line: 293, baseType: !1883, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1855, file: !27, line: 294, baseType: !1825, size: 1024, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1855, file: !27, line: 295, baseType: !1909, size: 2048, offset: 1280)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 2048, elements: !1303)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1852, file: !27, line: 320, baseType: !1911, size: 768, offset: 3328)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1753, file: !27, line: 325, baseType: !1915, size: 4096)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 323, size: 4096, elements: !1916, identifier: "_ZTSN3FPUUt1_E")
!1916 = !{!1917, !1931}
!1917 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1915, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1919, identifier: "_ZTS11FpuFXSAVE64")
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1918, file: !27, line: 300, baseType: !1762, size: 16)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1918, file: !27, line: 301, baseType: !1781, size: 16, offset: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1918, file: !27, line: 302, baseType: !1860, size: 8, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1918, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1918, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1918, file: !27, line: 305, baseType: !637, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1918, file: !27, line: 306, baseType: !637, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1918, file: !27, line: 307, baseType: !1883, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1918, file: !27, line: 308, baseType: !1883, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1918, file: !27, line: 309, baseType: !1825, size: 1024, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1918, file: !27, line: 310, baseType: !1909, size: 2048, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1915, file: !27, line: 324, baseType: !1911, size: 768, offset: 3328)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1268, file: !27, line: 761, baseType: !1933, size: 768, align: 64, offset: 26240)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1934, identifier: "_ZTS13SegmentCaches")
!1934 = !{!1935, !1945, !1946, !1947, !1948, !1949}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1933, file: !27, line: 469, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1937, identifier: "_ZTS13SegmentShadow")
!1937 = !{!1938, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1936, file: !27, line: 92, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !27, line: 89, size: 64, elements: !1940, identifier: "_ZTSN13SegmentShadowUt_E")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1939, file: !27, line: 90, baseType: !8, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1939, file: !27, line: 91, baseType: !637, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1936, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1933, file: !27, line: 470, baseType: !1936, size: 128, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1933, file: !27, line: 471, baseType: !1936, size: 128, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1933, file: !27, line: 472, baseType: !1936, size: 128, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1933, file: !27, line: 473, baseType: !1936, size: 128, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1933, file: !27, line: 474, baseType: !1936, size: 128, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1266, line: 42, baseType: !1951)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1266, line: 41, baseType: !637)
!1952 = !DILocation(line: 54, column: 8, scope: !1261)
!1953 = !DILocation(line: 55, column: 10, scope: !1261)
!1954 = !DILocation(line: 56, column: 10, scope: !1261)
!1955 = !DILocation(line: 57, column: 10, scope: !1261)
!1956 = !DILocation(line: 58, column: 10, scope: !1261)
!1957 = !DILocation(line: 61, column: 9, scope: !1261)
!1958 = !DILocation(line: 62, column: 9, scope: !1261)
!1959 = !DILocation(line: 63, column: 20, scope: !1261)
!1960 = !DILocation(line: 63, column: 24, scope: !1261)
!1961 = !DILocation(line: 63, column: 28, scope: !1261)
!1962 = !DILocation(line: 69, column: 6, scope: !1261)
!1963 = !DILocation(line: 74, column: 20, scope: !1261)
!1964 = !DILocation(line: 74, column: 24, scope: !1261)
!1965 = !DILocation(line: 74, column: 28, scope: !1261)
!1966 = !DILocation(line: 74, column: 33, scope: !1261)
!1967 = !DILocation(line: 75, column: 20, scope: !1261)
!1968 = !DILocation(line: 75, column: 24, scope: !1261)
!1969 = !DILocation(line: 75, column: 28, scope: !1261)
!1970 = !DILocation(line: 75, column: 33, scope: !1261)
!1971 = !DILocation(line: 76, column: 20, scope: !1261)
!1972 = !DILocation(line: 76, column: 24, scope: !1261)
!1973 = !DILocation(line: 76, column: 28, scope: !1261)
!1974 = !DILocation(line: 76, column: 33, scope: !1261)
!1975 = !DILocation(line: 77, column: 20, scope: !1261)
!1976 = !DILocation(line: 77, column: 24, scope: !1261)
!1977 = !DILocation(line: 77, column: 28, scope: !1261)
!1978 = !DILocation(line: 77, column: 33, scope: !1261)
!1979 = !DILocation(line: 78, column: 20, scope: !1261)
!1980 = !DILocation(line: 78, column: 24, scope: !1261)
!1981 = !DILocation(line: 78, column: 28, scope: !1261)
!1982 = !DILocation(line: 78, column: 33, scope: !1261)
!1983 = !DILocation(line: 79, column: 20, scope: !1261)
!1984 = !DILocation(line: 79, column: 24, scope: !1261)
!1985 = !DILocation(line: 79, column: 28, scope: !1261)
!1986 = !DILocation(line: 79, column: 33, scope: !1261)
!1987 = !DILocation(line: 80, column: 20, scope: !1261)
!1988 = !DILocation(line: 80, column: 24, scope: !1261)
!1989 = !DILocation(line: 80, column: 28, scope: !1261)
!1990 = !DILocation(line: 80, column: 33, scope: !1261)
!1991 = !DILocation(line: 81, column: 20, scope: !1261)
!1992 = !DILocation(line: 81, column: 24, scope: !1261)
!1993 = !DILocation(line: 81, column: 28, scope: !1261)
!1994 = !DILocation(line: 81, column: 33, scope: !1261)
!1995 = !DILocation(line: 83, column: 21, scope: !1261)
!1996 = !DILocation(line: 83, column: 25, scope: !1261)
!1997 = !DILocation(line: 83, column: 29, scope: !1261)
!1998 = !DILocation(line: 83, column: 34, scope: !1261)
!1999 = !DILocation(line: 84, column: 21, scope: !1261)
!2000 = !DILocation(line: 84, column: 25, scope: !1261)
!2001 = !DILocation(line: 84, column: 29, scope: !1261)
!2002 = !DILocation(line: 84, column: 34, scope: !1261)
!2003 = !DILocation(line: 85, column: 21, scope: !1261)
!2004 = !DILocation(line: 85, column: 25, scope: !1261)
!2005 = !DILocation(line: 85, column: 29, scope: !1261)
!2006 = !DILocation(line: 85, column: 34, scope: !1261)
!2007 = !DILocation(line: 86, column: 21, scope: !1261)
!2008 = !DILocation(line: 86, column: 25, scope: !1261)
!2009 = !DILocation(line: 86, column: 29, scope: !1261)
!2010 = !DILocation(line: 86, column: 34, scope: !1261)
!2011 = !DILocation(line: 87, column: 21, scope: !1261)
!2012 = !DILocation(line: 87, column: 25, scope: !1261)
!2013 = !DILocation(line: 87, column: 28, scope: !1261)
!2014 = !DILocation(line: 87, column: 33, scope: !1261)
!2015 = !DILocation(line: 88, column: 21, scope: !1261)
!2016 = !DILocation(line: 88, column: 25, scope: !1261)
!2017 = !DILocation(line: 88, column: 28, scope: !1261)
!2018 = !DILocation(line: 88, column: 33, scope: !1261)
!2019 = !DILocation(line: 89, column: 22, scope: !1261)
!2020 = !DILocation(line: 89, column: 26, scope: !1261)
!2021 = !DILocation(line: 89, column: 30, scope: !1261)
!2022 = !DILocation(line: 89, column: 35, scope: !1261)
!2023 = !DILocation(line: 90, column: 22, scope: !1261)
!2024 = !DILocation(line: 90, column: 26, scope: !1261)
!2025 = !DILocation(line: 90, column: 30, scope: !1261)
!2026 = !DILocation(line: 90, column: 35, scope: !1261)
!2027 = !DILocation(line: 91, column: 22, scope: !1261)
!2028 = !DILocation(line: 91, column: 26, scope: !1261)
!2029 = !DILocation(line: 91, column: 30, scope: !1261)
!2030 = !DILocation(line: 91, column: 35, scope: !1261)
!2031 = !DILocation(line: 92, column: 22, scope: !1261)
!2032 = !DILocation(line: 92, column: 26, scope: !1261)
!2033 = !DILocation(line: 92, column: 30, scope: !1261)
!2034 = !DILocation(line: 92, column: 35, scope: !1261)
!2035 = !DILocation(line: 93, column: 22, scope: !1261)
!2036 = !DILocation(line: 93, column: 26, scope: !1261)
!2037 = !DILocation(line: 93, column: 30, scope: !1261)
!2038 = !DILocation(line: 93, column: 35, scope: !1261)
!2039 = !DILocation(line: 94, column: 22, scope: !1261)
!2040 = !DILocation(line: 94, column: 26, scope: !1261)
!2041 = !DILocation(line: 94, column: 30, scope: !1261)
!2042 = !DILocation(line: 94, column: 35, scope: !1261)
!2043 = !DILocation(line: 96, column: 20, scope: !1261)
!2044 = !DILocation(line: 96, column: 24, scope: !1261)
!2045 = !DILocation(line: 96, column: 28, scope: !1261)
!2046 = !DILocation(line: 97, column: 20, scope: !1261)
!2047 = !DILocation(line: 97, column: 24, scope: !1261)
!2048 = !DILocation(line: 97, column: 28, scope: !1261)
!2049 = !DILocation(line: 98, column: 20, scope: !1261)
!2050 = !DILocation(line: 98, column: 24, scope: !1261)
!2051 = !DILocation(line: 98, column: 28, scope: !1261)
!2052 = !DILocation(line: 99, column: 20, scope: !1261)
!2053 = !DILocation(line: 99, column: 24, scope: !1261)
!2054 = !DILocation(line: 99, column: 28, scope: !1261)
!2055 = !DILocation(line: 100, column: 20, scope: !1261)
!2056 = !DILocation(line: 100, column: 24, scope: !1261)
!2057 = !DILocation(line: 100, column: 28, scope: !1261)
!2058 = !DILocation(line: 101, column: 20, scope: !1261)
!2059 = !DILocation(line: 101, column: 24, scope: !1261)
!2060 = !DILocation(line: 101, column: 28, scope: !1261)
!2061 = !DILocation(line: 102, column: 20, scope: !1261)
!2062 = !DILocation(line: 102, column: 24, scope: !1261)
!2063 = !DILocation(line: 102, column: 28, scope: !1261)
!2064 = !DILocation(line: 103, column: 20, scope: !1261)
!2065 = !DILocation(line: 103, column: 24, scope: !1261)
!2066 = !DILocation(line: 103, column: 28, scope: !1261)
!2067 = !DILocation(line: 105, column: 21, scope: !1261)
!2068 = !DILocation(line: 105, column: 25, scope: !1261)
!2069 = !DILocation(line: 105, column: 28, scope: !1261)
!2070 = !DILocation(line: 106, column: 21, scope: !1261)
!2071 = !DILocation(line: 106, column: 25, scope: !1261)
!2072 = !DILocation(line: 106, column: 28, scope: !1261)
!2073 = !DILocation(line: 107, column: 22, scope: !1261)
!2074 = !DILocation(line: 107, column: 26, scope: !1261)
!2075 = !DILocation(line: 107, column: 30, scope: !1261)
!2076 = !DILocation(line: 108, column: 22, scope: !1261)
!2077 = !DILocation(line: 108, column: 26, scope: !1261)
!2078 = !DILocation(line: 108, column: 30, scope: !1261)
!2079 = !DILocation(line: 109, column: 22, scope: !1261)
!2080 = !DILocation(line: 109, column: 26, scope: !1261)
!2081 = !DILocation(line: 109, column: 30, scope: !1261)
!2082 = !DILocation(line: 110, column: 22, scope: !1261)
!2083 = !DILocation(line: 110, column: 26, scope: !1261)
!2084 = !DILocation(line: 110, column: 30, scope: !1261)
!2085 = !DILocation(line: 111, column: 22, scope: !1261)
!2086 = !DILocation(line: 111, column: 26, scope: !1261)
!2087 = !DILocation(line: 111, column: 30, scope: !1261)
!2088 = !DILocation(line: 112, column: 22, scope: !1261)
!2089 = !DILocation(line: 112, column: 26, scope: !1261)
!2090 = !DILocation(line: 112, column: 30, scope: !1261)
!2091 = !DILocation(line: 114, column: 20, scope: !1261)
!2092 = !DILocation(line: 114, column: 24, scope: !1261)
!2093 = !DILocation(line: 114, column: 28, scope: !1261)
!2094 = !DILocation(line: 116, column: 21, scope: !1261)
!2095 = !DILocation(line: 116, column: 25, scope: !1261)
!2096 = !DILocation(line: 116, column: 29, scope: !1261)
!2097 = !DILocation(line: 117, column: 21, scope: !1261)
!2098 = !DILocation(line: 117, column: 25, scope: !1261)
!2099 = !DILocation(line: 117, column: 29, scope: !1261)
!2100 = !DILocation(line: 118, column: 21, scope: !1261)
!2101 = !DILocation(line: 118, column: 25, scope: !1261)
!2102 = !DILocation(line: 118, column: 29, scope: !1261)
!2103 = !DILocation(line: 119, column: 21, scope: !1261)
!2104 = !DILocation(line: 119, column: 25, scope: !1261)
!2105 = !DILocation(line: 119, column: 29, scope: !1261)
!2106 = !DILocation(line: 120, column: 21, scope: !1261)
!2107 = !DILocation(line: 120, column: 25, scope: !1261)
!2108 = !DILocation(line: 120, column: 29, scope: !1261)
!2109 = !DILocation(line: 121, column: 21, scope: !1261)
!2110 = !DILocation(line: 121, column: 25, scope: !1261)
!2111 = !DILocation(line: 121, column: 29, scope: !1261)
!2112 = !DILocation(line: 122, column: 21, scope: !1261)
!2113 = !DILocation(line: 122, column: 25, scope: !1261)
!2114 = !DILocation(line: 122, column: 29, scope: !1261)
!2115 = !DILocation(line: 123, column: 21, scope: !1261)
!2116 = !DILocation(line: 123, column: 25, scope: !1261)
!2117 = !DILocation(line: 123, column: 29, scope: !1261)
!2118 = !DILocation(line: 124, column: 21, scope: !1261)
!2119 = !DILocation(line: 124, column: 25, scope: !1261)
!2120 = !DILocation(line: 124, column: 29, scope: !1261)
!2121 = !DILocation(line: 127, column: 21, scope: !1261)
!2122 = !DILocation(line: 127, column: 25, scope: !1261)
!2123 = !DILocation(line: 127, column: 28, scope: !1261)
!2124 = !DILocation(line: 128, column: 21, scope: !1261)
!2125 = !DILocation(line: 128, column: 25, scope: !1261)
!2126 = !DILocation(line: 128, column: 28, scope: !1261)
!2127 = !DILocation(line: 129, column: 22, scope: !1261)
!2128 = !DILocation(line: 129, column: 26, scope: !1261)
!2129 = !DILocation(line: 129, column: 30, scope: !1261)
!2130 = !DILocation(line: 130, column: 22, scope: !1261)
!2131 = !DILocation(line: 130, column: 26, scope: !1261)
!2132 = !DILocation(line: 130, column: 30, scope: !1261)
!2133 = !DILocation(line: 131, column: 22, scope: !1261)
!2134 = !DILocation(line: 131, column: 26, scope: !1261)
!2135 = !DILocation(line: 131, column: 30, scope: !1261)
!2136 = !DILocation(line: 132, column: 22, scope: !1261)
!2137 = !DILocation(line: 132, column: 26, scope: !1261)
!2138 = !DILocation(line: 132, column: 30, scope: !1261)
!2139 = !DILocation(line: 133, column: 22, scope: !1261)
!2140 = !DILocation(line: 133, column: 26, scope: !1261)
!2141 = !DILocation(line: 133, column: 30, scope: !1261)
!2142 = !DILocation(line: 134, column: 22, scope: !1261)
!2143 = !DILocation(line: 134, column: 26, scope: !1261)
!2144 = !DILocation(line: 134, column: 30, scope: !1261)
!2145 = !DILocation(line: 136, column: 21, scope: !1261)
!2146 = !DILocation(line: 136, column: 25, scope: !1261)
!2147 = !DILocation(line: 136, column: 29, scope: !1261)
!2148 = !DILocation(line: 137, column: 21, scope: !1261)
!2149 = !DILocation(line: 137, column: 25, scope: !1261)
!2150 = !DILocation(line: 137, column: 29, scope: !1261)
!2151 = !DILocation(line: 138, column: 21, scope: !1261)
!2152 = !DILocation(line: 138, column: 25, scope: !1261)
!2153 = !DILocation(line: 138, column: 29, scope: !1261)
!2154 = !DILocation(line: 139, column: 21, scope: !1261)
!2155 = !DILocation(line: 139, column: 25, scope: !1261)
!2156 = !DILocation(line: 139, column: 29, scope: !1261)
!2157 = !DILocation(line: 140, column: 21, scope: !1261)
!2158 = !DILocation(line: 140, column: 25, scope: !1261)
!2159 = !DILocation(line: 140, column: 29, scope: !1261)
!2160 = !DILocation(line: 141, column: 21, scope: !1261)
!2161 = !DILocation(line: 141, column: 25, scope: !1261)
!2162 = !DILocation(line: 141, column: 29, scope: !1261)
!2163 = !DILocation(line: 142, column: 21, scope: !1261)
!2164 = !DILocation(line: 142, column: 25, scope: !1261)
!2165 = !DILocation(line: 142, column: 29, scope: !1261)
!2166 = !DILocation(line: 143, column: 21, scope: !1261)
!2167 = !DILocation(line: 143, column: 25, scope: !1261)
!2168 = !DILocation(line: 143, column: 29, scope: !1261)
!2169 = !DILocation(line: 144, column: 20, scope: !1261)
!2170 = !DILocation(line: 144, column: 24, scope: !1261)
!2171 = !DILocation(line: 144, column: 27, scope: !1261)
!2172 = !DILocation(line: 145, column: 20, scope: !1261)
!2173 = !DILocation(line: 145, column: 24, scope: !1261)
!2174 = !DILocation(line: 145, column: 27, scope: !1261)
!2175 = !DILocation(line: 146, column: 21, scope: !1261)
!2176 = !DILocation(line: 146, column: 25, scope: !1261)
!2177 = !DILocation(line: 146, column: 29, scope: !1261)
!2178 = !DILocation(line: 147, column: 21, scope: !1261)
!2179 = !DILocation(line: 147, column: 25, scope: !1261)
!2180 = !DILocation(line: 147, column: 29, scope: !1261)
!2181 = !DILocation(line: 148, column: 21, scope: !1261)
!2182 = !DILocation(line: 148, column: 25, scope: !1261)
!2183 = !DILocation(line: 148, column: 29, scope: !1261)
!2184 = !DILocation(line: 149, column: 21, scope: !1261)
!2185 = !DILocation(line: 149, column: 25, scope: !1261)
!2186 = !DILocation(line: 149, column: 29, scope: !1261)
!2187 = !DILocation(line: 150, column: 21, scope: !1261)
!2188 = !DILocation(line: 150, column: 25, scope: !1261)
!2189 = !DILocation(line: 150, column: 29, scope: !1261)
!2190 = !DILocation(line: 151, column: 21, scope: !1261)
!2191 = !DILocation(line: 151, column: 25, scope: !1261)
!2192 = !DILocation(line: 151, column: 29, scope: !1261)
!2193 = !DILocation(line: 152, column: 21, scope: !1261)
!2194 = !DILocation(line: 152, column: 25, scope: !1261)
!2195 = !DILocation(line: 152, column: 29, scope: !1261)
!2196 = !DILocation(line: 155, column: 20, scope: !1261)
!2197 = !DILocation(line: 155, column: 24, scope: !1261)
!2198 = !DILocation(line: 155, column: 27, scope: !1261)
!2199 = !DILocation(line: 156, column: 20, scope: !1261)
!2200 = !DILocation(line: 156, column: 24, scope: !1261)
!2201 = !DILocation(line: 156, column: 27, scope: !1261)
!2202 = !DILocation(line: 157, column: 20, scope: !1261)
!2203 = !DILocation(line: 157, column: 24, scope: !1261)
!2204 = !DILocation(line: 157, column: 27, scope: !1261)
!2205 = !DILocation(line: 158, column: 20, scope: !1261)
!2206 = !DILocation(line: 158, column: 24, scope: !1261)
!2207 = !DILocation(line: 158, column: 27, scope: !1261)
!2208 = !DILocation(line: 159, column: 20, scope: !1261)
!2209 = !DILocation(line: 159, column: 24, scope: !1261)
!2210 = !DILocation(line: 159, column: 27, scope: !1261)
!2211 = !DILocation(line: 160, column: 20, scope: !1261)
!2212 = !DILocation(line: 160, column: 24, scope: !1261)
!2213 = !DILocation(line: 160, column: 27, scope: !1261)
!2214 = !DILocation(line: 164, column: 25, scope: !1261)
!2215 = !DILocation(line: 164, column: 30, scope: !1261)
!2216 = !DILocation(line: 164, column: 38, scope: !1261)
!2217 = !DILocation(line: 165, column: 25, scope: !1261)
!2218 = !DILocation(line: 165, column: 30, scope: !1261)
!2219 = !DILocation(line: 165, column: 38, scope: !1261)
!2220 = !DILocation(line: 205, column: 22, scope: !1261)
!2221 = !DILocation(line: 205, column: 16, scope: !1261)
!2222 = !DILocation(line: 205, column: 29, scope: !1261)
!2223 = !DILocation(line: 206, column: 22, scope: !1261)
!2224 = !DILocation(line: 206, column: 16, scope: !1261)
!2225 = !DILocation(line: 206, column: 29, scope: !1261)
!2226 = !DILocation(line: 207, column: 22, scope: !1261)
!2227 = !DILocation(line: 207, column: 16, scope: !1261)
!2228 = !DILocation(line: 207, column: 29, scope: !1261)
!2229 = !DILocation(line: 208, column: 22, scope: !1261)
!2230 = !DILocation(line: 208, column: 16, scope: !1261)
!2231 = !DILocation(line: 208, column: 29, scope: !1261)
!2232 = !DILocation(line: 209, column: 22, scope: !1261)
!2233 = !DILocation(line: 209, column: 16, scope: !1261)
!2234 = !DILocation(line: 209, column: 29, scope: !1261)
!2235 = !DILocation(line: 210, column: 22, scope: !1261)
!2236 = !DILocation(line: 210, column: 16, scope: !1261)
!2237 = !DILocation(line: 210, column: 29, scope: !1261)
!2238 = !DILocation(line: 211, column: 22, scope: !1261)
!2239 = !DILocation(line: 211, column: 16, scope: !1261)
!2240 = !DILocation(line: 211, column: 29, scope: !1261)
!2241 = !DILocation(line: 212, column: 22, scope: !1261)
!2242 = !DILocation(line: 212, column: 16, scope: !1261)
!2243 = !DILocation(line: 212, column: 29, scope: !1261)
!2244 = !DILocation(line: 214, column: 22, scope: !1261)
!2245 = !DILocation(line: 214, column: 16, scope: !1261)
!2246 = !DILocation(line: 214, column: 29, scope: !1261)
!2247 = !DILocation(line: 215, column: 22, scope: !1261)
!2248 = !DILocation(line: 215, column: 16, scope: !1261)
!2249 = !DILocation(line: 215, column: 29, scope: !1261)
!2250 = !DILocation(line: 216, column: 23, scope: !1261)
!2251 = !DILocation(line: 216, column: 17, scope: !1261)
!2252 = !DILocation(line: 216, column: 31, scope: !1261)
!2253 = !DILocation(line: 217, column: 23, scope: !1261)
!2254 = !DILocation(line: 217, column: 17, scope: !1261)
!2255 = !DILocation(line: 217, column: 31, scope: !1261)
!2256 = !DILocation(line: 218, column: 23, scope: !1261)
!2257 = !DILocation(line: 218, column: 17, scope: !1261)
!2258 = !DILocation(line: 218, column: 31, scope: !1261)
!2259 = !DILocation(line: 219, column: 23, scope: !1261)
!2260 = !DILocation(line: 219, column: 17, scope: !1261)
!2261 = !DILocation(line: 219, column: 31, scope: !1261)
!2262 = !DILocation(line: 220, column: 23, scope: !1261)
!2263 = !DILocation(line: 220, column: 17, scope: !1261)
!2264 = !DILocation(line: 220, column: 31, scope: !1261)
!2265 = !DILocation(line: 221, column: 23, scope: !1261)
!2266 = !DILocation(line: 221, column: 17, scope: !1261)
!2267 = !DILocation(line: 221, column: 31, scope: !1261)
!2268 = !DILocation(line: 245, column: 22, scope: !1261)
!2269 = !DILocation(line: 245, column: 16, scope: !1261)
!2270 = !DILocation(line: 245, column: 29, scope: !1261)
!2271 = !DILocation(line: 246, column: 22, scope: !1261)
!2272 = !DILocation(line: 246, column: 16, scope: !1261)
!2273 = !DILocation(line: 246, column: 29, scope: !1261)
!2274 = !DILocation(line: 247, column: 22, scope: !1261)
!2275 = !DILocation(line: 247, column: 16, scope: !1261)
!2276 = !DILocation(line: 247, column: 29, scope: !1261)
!2277 = !DILocation(line: 248, column: 22, scope: !1261)
!2278 = !DILocation(line: 248, column: 16, scope: !1261)
!2279 = !DILocation(line: 248, column: 29, scope: !1261)
!2280 = !DILocation(line: 249, column: 22, scope: !1261)
!2281 = !DILocation(line: 249, column: 16, scope: !1261)
!2282 = !DILocation(line: 249, column: 29, scope: !1261)
!2283 = !DILocation(line: 250, column: 22, scope: !1261)
!2284 = !DILocation(line: 250, column: 16, scope: !1261)
!2285 = !DILocation(line: 250, column: 29, scope: !1261)
!2286 = !DILocation(line: 251, column: 22, scope: !1261)
!2287 = !DILocation(line: 251, column: 16, scope: !1261)
!2288 = !DILocation(line: 251, column: 29, scope: !1261)
!2289 = !DILocation(line: 252, column: 22, scope: !1261)
!2290 = !DILocation(line: 252, column: 16, scope: !1261)
!2291 = !DILocation(line: 252, column: 29, scope: !1261)
!2292 = !DILocation(line: 255, column: 22, scope: !1261)
!2293 = !DILocation(line: 255, column: 16, scope: !1261)
!2294 = !DILocation(line: 255, column: 29, scope: !1261)
!2295 = !DILocation(line: 256, column: 22, scope: !1261)
!2296 = !DILocation(line: 256, column: 16, scope: !1261)
!2297 = !DILocation(line: 256, column: 29, scope: !1261)
!2298 = !DILocation(line: 257, column: 23, scope: !1261)
!2299 = !DILocation(line: 257, column: 17, scope: !1261)
!2300 = !DILocation(line: 257, column: 31, scope: !1261)
!2301 = !DILocation(line: 258, column: 23, scope: !1261)
!2302 = !DILocation(line: 258, column: 17, scope: !1261)
!2303 = !DILocation(line: 258, column: 31, scope: !1261)
!2304 = !DILocation(line: 259, column: 23, scope: !1261)
!2305 = !DILocation(line: 259, column: 17, scope: !1261)
!2306 = !DILocation(line: 259, column: 31, scope: !1261)
!2307 = !DILocation(line: 260, column: 23, scope: !1261)
!2308 = !DILocation(line: 260, column: 17, scope: !1261)
!2309 = !DILocation(line: 260, column: 31, scope: !1261)
!2310 = !DILocation(line: 261, column: 23, scope: !1261)
!2311 = !DILocation(line: 261, column: 17, scope: !1261)
!2312 = !DILocation(line: 261, column: 31, scope: !1261)
!2313 = !DILocation(line: 262, column: 23, scope: !1261)
!2314 = !DILocation(line: 262, column: 17, scope: !1261)
!2315 = !DILocation(line: 262, column: 31, scope: !1261)
!2316 = !DILocation(line: 285, column: 21, scope: !1261)
!2317 = !DILocation(line: 285, column: 24, scope: !1261)
!2318 = !DILocation(line: 285, column: 15, scope: !1261)
!2319 = !DILocation(line: 285, column: 33, scope: !1261)
!2320 = !DILocation(line: 286, column: 21, scope: !1261)
!2321 = !DILocation(line: 286, column: 24, scope: !1261)
!2322 = !DILocation(line: 286, column: 15, scope: !1261)
!2323 = !DILocation(line: 286, column: 33, scope: !1261)
!2324 = !DILocation(line: 287, column: 21, scope: !1261)
!2325 = !DILocation(line: 287, column: 24, scope: !1261)
!2326 = !DILocation(line: 287, column: 15, scope: !1261)
!2327 = !DILocation(line: 287, column: 33, scope: !1261)
!2328 = !DILocation(line: 288, column: 21, scope: !1261)
!2329 = !DILocation(line: 288, column: 24, scope: !1261)
!2330 = !DILocation(line: 288, column: 15, scope: !1261)
!2331 = !DILocation(line: 288, column: 33, scope: !1261)
!2332 = !DILocation(line: 289, column: 21, scope: !1261)
!2333 = !DILocation(line: 289, column: 24, scope: !1261)
!2334 = !DILocation(line: 289, column: 15, scope: !1261)
!2335 = !DILocation(line: 289, column: 33, scope: !1261)
!2336 = !DILocation(line: 290, column: 21, scope: !1261)
!2337 = !DILocation(line: 290, column: 24, scope: !1261)
!2338 = !DILocation(line: 290, column: 15, scope: !1261)
!2339 = !DILocation(line: 290, column: 33, scope: !1261)
!2340 = !DILocation(line: 291, column: 21, scope: !1261)
!2341 = !DILocation(line: 291, column: 24, scope: !1261)
!2342 = !DILocation(line: 291, column: 15, scope: !1261)
!2343 = !DILocation(line: 291, column: 33, scope: !1261)
!2344 = !DILocation(line: 292, column: 21, scope: !1261)
!2345 = !DILocation(line: 292, column: 24, scope: !1261)
!2346 = !DILocation(line: 292, column: 15, scope: !1261)
!2347 = !DILocation(line: 292, column: 33, scope: !1261)
!2348 = !DILocation(line: 318, column: 21, scope: !1261)
!2349 = !DILocation(line: 318, column: 25, scope: !1261)
!2350 = !DILocation(line: 318, column: 15, scope: !1261)
!2351 = !DILocation(line: 318, column: 34, scope: !1261)
!2352 = !DILocation(line: 318, column: 38, scope: !1261)
!2353 = !DILocation(line: 318, column: 45, scope: !1261)
!2354 = !DILocation(line: 319, column: 21, scope: !1261)
!2355 = !DILocation(line: 319, column: 25, scope: !1261)
!2356 = !DILocation(line: 319, column: 15, scope: !1261)
!2357 = !DILocation(line: 319, column: 34, scope: !1261)
!2358 = !DILocation(line: 319, column: 38, scope: !1261)
!2359 = !DILocation(line: 319, column: 45, scope: !1261)
!2360 = !DILocation(line: 320, column: 21, scope: !1261)
!2361 = !DILocation(line: 320, column: 25, scope: !1261)
!2362 = !DILocation(line: 320, column: 15, scope: !1261)
!2363 = !DILocation(line: 320, column: 34, scope: !1261)
!2364 = !DILocation(line: 320, column: 38, scope: !1261)
!2365 = !DILocation(line: 320, column: 45, scope: !1261)
!2366 = !DILocation(line: 321, column: 21, scope: !1261)
!2367 = !DILocation(line: 321, column: 25, scope: !1261)
!2368 = !DILocation(line: 321, column: 15, scope: !1261)
!2369 = !DILocation(line: 321, column: 34, scope: !1261)
!2370 = !DILocation(line: 321, column: 38, scope: !1261)
!2371 = !DILocation(line: 321, column: 45, scope: !1261)
!2372 = !DILocation(line: 322, column: 21, scope: !1261)
!2373 = !DILocation(line: 322, column: 25, scope: !1261)
!2374 = !DILocation(line: 322, column: 15, scope: !1261)
!2375 = !DILocation(line: 322, column: 34, scope: !1261)
!2376 = !DILocation(line: 322, column: 38, scope: !1261)
!2377 = !DILocation(line: 322, column: 45, scope: !1261)
!2378 = !DILocation(line: 323, column: 21, scope: !1261)
!2379 = !DILocation(line: 323, column: 25, scope: !1261)
!2380 = !DILocation(line: 323, column: 15, scope: !1261)
!2381 = !DILocation(line: 323, column: 34, scope: !1261)
!2382 = !DILocation(line: 323, column: 38, scope: !1261)
!2383 = !DILocation(line: 323, column: 45, scope: !1261)
!2384 = !DILocation(line: 324, column: 21, scope: !1261)
!2385 = !DILocation(line: 324, column: 25, scope: !1261)
!2386 = !DILocation(line: 324, column: 15, scope: !1261)
!2387 = !DILocation(line: 324, column: 34, scope: !1261)
!2388 = !DILocation(line: 324, column: 38, scope: !1261)
!2389 = !DILocation(line: 324, column: 45, scope: !1261)
!2390 = !DILocation(line: 325, column: 21, scope: !1261)
!2391 = !DILocation(line: 325, column: 25, scope: !1261)
!2392 = !DILocation(line: 325, column: 15, scope: !1261)
!2393 = !DILocation(line: 325, column: 34, scope: !1261)
!2394 = !DILocation(line: 325, column: 38, scope: !1261)
!2395 = !DILocation(line: 325, column: 45, scope: !1261)
!2396 = !DILocation(line: 328, column: 20, scope: !1261)
!2397 = !DILocation(line: 328, column: 26, scope: !1261)
!2398 = !DILocation(line: 329, column: 20, scope: !1261)
!2399 = !DILocation(line: 329, column: 26, scope: !1261)
!2400 = !DILocation(line: 330, column: 20, scope: !1261)
!2401 = !DILocation(line: 330, column: 26, scope: !1261)
!2402 = !DILocation(line: 331, column: 20, scope: !1261)
!2403 = !DILocation(line: 331, column: 26, scope: !1261)
!2404 = !DILocation(line: 332, column: 20, scope: !1261)
!2405 = !DILocation(line: 332, column: 26, scope: !1261)
!2406 = !DILocation(line: 333, column: 20, scope: !1261)
!2407 = !DILocation(line: 333, column: 26, scope: !1261)
!2408 = !DILocation(line: 334, column: 20, scope: !1261)
!2409 = !DILocation(line: 334, column: 26, scope: !1261)
!2410 = !DILocation(line: 337, column: 9, scope: !1261)
!2411 = !DILocation(line: 338, column: 9, scope: !1261)
!2412 = !DILocation(line: 339, column: 9, scope: !1261)
!2413 = !DILocation(line: 340, column: 9, scope: !1261)
!2414 = !DILocation(line: 341, column: 9, scope: !1261)
!2415 = !DILocation(line: 342, column: 9, scope: !1261)
!2416 = !DILocation(line: 343, column: 9, scope: !1261)
!2417 = !DILocation(line: 344, column: 9, scope: !1261)
!2418 = !DILocation(line: 347, column: 9, scope: !1261)
!2419 = !DILocation(line: 348, column: 9, scope: !1261)
!2420 = !DILocation(line: 349, column: 9, scope: !1261)
!2421 = !DILocation(line: 350, column: 9, scope: !1261)
!2422 = !DILocation(line: 351, column: 9, scope: !1261)
!2423 = !DILocation(line: 353, column: 9, scope: !1261)
!2424 = !DILocation(line: 357, column: 3, scope: !1261)
!2425 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2426, file: !2426, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2426 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2427 = !DILocation(line: 116, column: 1, scope: !2425)
!2428 = !{!2429, !2429, i64 0}
!2429 = !{!"long", !2430, i64 0}
!2430 = !{!"omnipotent char", !2431, i64 0}
!2431 = !{!"Simple C++ TBAA"}
!2432 = !{!2433, !2430, i64 2065}
!2433 = !{!"_ZTS5State", !2430, i64 16, !2434, i64 2064, !2430, i64 2080, !2435, i64 2088, !2437, i64 2112, !2439, i64 2208, !2440, i64 2480, !2441, i64 2608, !2442, i64 2736, !2430, i64 2760, !2430, i64 2768, !2443, i64 3280}
!2434 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2435 = !{!"_ZTS8Segments", !2436, i64 0, !2430, i64 2, !2436, i64 4, !2430, i64 6, !2436, i64 8, !2430, i64 10, !2436, i64 12, !2430, i64 14, !2436, i64 16, !2430, i64 18, !2436, i64 20, !2430, i64 22}
!2436 = !{!"short", !2430, i64 0}
!2437 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88}
!2438 = !{!"_ZTS3Reg", !2430, i64 0}
!2439 = !{!"_ZTS3GPR", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88, !2429, i64 96, !2438, i64 104, !2429, i64 112, !2438, i64 120, !2429, i64 128, !2438, i64 136, !2429, i64 144, !2438, i64 152, !2429, i64 160, !2438, i64 168, !2429, i64 176, !2438, i64 184, !2429, i64 192, !2438, i64 200, !2429, i64 208, !2438, i64 216, !2429, i64 224, !2438, i64 232, !2429, i64 240, !2438, i64 248, !2429, i64 256, !2438, i64 264}
!2440 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2441 = !{!"_ZTS3MMX", !2430, i64 0}
!2442 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2443 = !{!"_ZTS13SegmentCaches", !2444, i64 0, !2444, i64 16, !2444, i64 32, !2444, i64 48, !2444, i64 64, !2444, i64 80}
!2444 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2445, i64 8, !2445, i64 12}
!2445 = !{!"int", !2430, i64 0}
!2446 = !{!2433, !2430, i64 2067}
!2447 = !{!2433, !2430, i64 2071}
!2448 = !{!2433, !2430, i64 2073}
!2449 = !{!2433, !2430, i64 2077}
!2450 = !{!2433, !2430, i64 2069}
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
