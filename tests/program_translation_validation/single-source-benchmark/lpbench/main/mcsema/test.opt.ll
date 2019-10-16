; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401210__rodata_type = type <{ [48 x i8], [4 x i8], [3 x i8], [33 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602040__data_type = type <{ [16 x i8], [8 x i8] }>
%seg_602058__bss_type = type <{ [8 x i8], [8 x i8] }>
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
@stdout = external global i64, align 8
@seg_401210__rodata = internal constant %seg_401210__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\E1\0F \00\00\00\00>\00\00\00\00\00\00\F0\BFUUUu\E4\E5\F3A\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [4 x i8] c"-ga\00", [3 x i8] c"%f\00", [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400670_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400640___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602040__data = internal global %seg_602040__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602058__bss = internal global %seg_602058__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400670_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400640___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401200___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401190___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @idamax_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @matgen_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dscal_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dgesl_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @daxpy_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dgefa_wrapper
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
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400f90_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400f90:
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
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %13 = add i64 %9, -104
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 96
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
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
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
  store i8 %78, i8* %28, align 1, !tbaa !2447
  %79 = icmp eq i32 %67, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %31, align 1, !tbaa !2448
  %81 = lshr i32 %67, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %34, align 1, !tbaa !2449
  %83 = lshr i32 %66, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %40, align 1, !tbaa !2450
  %88 = icmp ne i8 %82, 0
  %89 = xor i1 %88, %86
  %90 = or i1 %79, %89
  %.v15 = select i1 %90, i64 91, i64 10
  %91 = add i64 %63, %.v15
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_401005, label %block_400fb4

block_40101c:                                     ; preds = %block_401005, %block_401029
  %92 = phi i64 [ %.pre12, %block_401005 ], [ %466, %block_401029 ]
  %MEMORY.0 = phi %struct.Memory* [ %473, %block_401005 ], [ %418, %block_401029 ]
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -20
  %95 = add i64 %92, 7
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, -2000
  %99 = icmp ult i32 %97, 2000
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %16, align 1, !tbaa !2432
  %101 = and i32 %98, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #9
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %23, align 1, !tbaa !2446
  %106 = xor i32 %97, 16
  %107 = xor i32 %106, %98
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %28, align 1, !tbaa !2447
  %111 = icmp eq i32 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %31, align 1, !tbaa !2448
  %113 = lshr i32 %98, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %34, align 1, !tbaa !2449
  %115 = lshr i32 %97, 31
  %116 = xor i32 %113, %115
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %40, align 1, !tbaa !2450
  %120 = icmp ne i8 %114, 0
  %121 = xor i1 %120, %118
  %.v17 = select i1 %121, i64 13, i64 51
  %122 = add i64 %92, %.v17
  %123 = add i64 %122, 5
  store i64 %123, i64* %PC, align 8
  br i1 %121, label %block_401029, label %block_40104f

block_401119:                                     ; preds = %block_4010ea
  store i64 %264, i64* %RDI, align 8, !tbaa !2428
  %124 = add i64 %260, -3033
  %125 = add i64 %260, 12
  %126 = load i64, i64* %RSP, align 8, !tbaa !2428
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %129 = tail call fastcc %struct.Memory* @ext_602098_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -21
  %132 = load i64, i64* %PC, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %131 to i8*
  %135 = load i8, i8* %134, align 1
  %136 = and i8 %135, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %137 = zext i8 %136 to i32
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #9
  %139 = trunc i32 %138 to i8
  %140 = xor i8 %139, 1
  store i8 %140, i8* %23, align 1, !tbaa !2446
  %141 = xor i8 %136, 1
  store i8 %141, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  %142 = icmp ne i8 %141, 0
  %.v18 = select i1 %142, i64 48, i64 10
  %143 = add i64 %132, %.v18
  %144 = icmp eq i8 %136, 0
  %145 = add i64 %143, 10
  store i64 %145, i64* %PC, align 8
  br i1 %144, label %block_401155, label %block_40112f

block_401176:                                     ; preds = %block_401155, %block_40112f
  %146 = phi i64 [ %.pre14, %block_401155 ], [ %212, %block_40112f ]
  %MEMORY.1 = phi %struct.Memory* [ %223, %block_401155 ], [ %204, %block_40112f ]
  %147 = load i64, i64* @stdout, align 8
  store i64 %147, i64* %RDI, align 8, !tbaa !2428
  %148 = add i64 %146, -3062
  %149 = add i64 %146, 13
  %150 = load i64, i64* %RSP, align 8, !tbaa !2428
  %151 = add i64 %150, -8
  %152 = inttoptr i64 %151 to i64*
  store i64 %149, i64* %152, align 8
  store i64 %151, i64* %RSP, align 8, !tbaa !2428
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  %153 = tail call fastcc %struct.Memory* @ext_602090_fflush(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %154 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %155 = load i64, i64* %RBP, align 8
  %156 = add i64 %155, -84
  %157 = load i32, i32* %EAX, align 4
  %158 = add i64 %154, 5
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %ECX, align 4
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %PC, align 8
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %163 = load i64, i64* %RSP, align 8
  %164 = add i64 %163, 96
  store i64 %164, i64* %RSP, align 8, !tbaa !2428
  %165 = icmp ugt i64 %163, -97
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %16, align 1, !tbaa !2432
  %167 = trunc i64 %164 to i32
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #9
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %23, align 1, !tbaa !2446
  %173 = xor i64 %164, %163
  %174 = lshr i64 %173, 4
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %28, align 1, !tbaa !2447
  %177 = icmp eq i64 %164, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %31, align 1, !tbaa !2448
  %179 = lshr i64 %164, 63
  %180 = trunc i64 %179 to i8
  store i8 %180, i8* %34, align 1, !tbaa !2449
  %181 = lshr i64 %163, 63
  %182 = xor i64 %179, %181
  %183 = add nuw nsw i64 %182, %179
  %184 = icmp eq i64 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %40, align 1, !tbaa !2450
  %186 = add i64 %162, 7
  store i64 %186, i64* %PC, align 8
  %187 = add i64 %163, 104
  %188 = inttoptr i64 %164 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RBP, align 8, !tbaa !2428
  store i64 %187, i64* %RSP, align 8, !tbaa !2428
  %190 = add i64 %162, 8
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %187 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %PC, align 8, !tbaa !2428
  %193 = add i64 %163, 112
  store i64 %193, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %153

block_40112f:                                     ; preds = %block_401119
  store i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 52), i64* %RSI, align 8, !tbaa !2428
  %194 = load i64, i64* @stdout, align 8
  store i64 %194, i64* %RDI, align 8, !tbaa !2428
  %195 = add i64 %130, -72
  %196 = add i64 %143, 23
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %299, align 1, !tbaa !2451
  store double 0.000000e+00, double* %301, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %199 = add i64 %143, -3023
  %200 = add i64 %143, 30
  %201 = load i64, i64* %RSP, align 8, !tbaa !2428
  %202 = add i64 %201, -8
  %203 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %203, align 8
  store i64 %202, i64* %RSP, align 8, !tbaa !2428
  store i64 %199, i64* %PC, align 8, !tbaa !2428
  %204 = tail call fastcc %struct.Memory* @ext_6020b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %129)
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -76
  %207 = load i32, i32* %EAX, align 4
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %210, align 4
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, 38
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  br label %block_401176

block_401155:                                     ; preds = %block_401119
  store i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
  %213 = load i64, i64* @stdout, align 8
  store i64 %213, i64* %RDI, align 8, !tbaa !2428
  %214 = add i64 %130, -72
  %215 = add i64 %143, 23
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %299, align 1, !tbaa !2451
  store double 0.000000e+00, double* %301, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %218 = add i64 %143, -3061
  %219 = add i64 %143, 30
  %220 = load i64, i64* %RSP, align 8, !tbaa !2428
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %RSP, align 8, !tbaa !2428
  store i64 %218, i64* %PC, align 8, !tbaa !2428
  %223 = tail call fastcc %struct.Memory* @ext_6020b0_fprintf(%struct.State* nonnull %0, %struct.Memory* %129)
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -80
  %226 = load i32, i32* %EAX, align 4
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %229, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_401176

block_4010ea:                                     ; preds = %block_4010f7, %block_40104f
  %230 = phi i64 [ %.pre13, %block_40104f ], [ %573, %block_4010f7 ]
  %MEMORY.2 = phi %struct.Memory* [ %407, %block_40104f ], [ %541, %block_4010f7 ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -20
  %233 = add i64 %230, 7
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, -2000
  %237 = icmp ult i32 %235, 2000
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %16, align 1, !tbaa !2432
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239) #9
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %23, align 1, !tbaa !2446
  %244 = xor i32 %235, 16
  %245 = xor i32 %244, %236
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %28, align 1, !tbaa !2447
  %249 = icmp eq i32 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %31, align 1, !tbaa !2448
  %251 = lshr i32 %236, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %34, align 1, !tbaa !2449
  %253 = lshr i32 %235, 31
  %254 = xor i32 %251, %253
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %40, align 1, !tbaa !2450
  %258 = icmp ne i8 %252, 0
  %259 = xor i1 %258, %256
  %.v = select i1 %259, i64 13, i64 47
  %260 = add i64 %230, %.v
  %261 = add i64 %231, -32
  %262 = add i64 %260, 4
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  br i1 %259, label %block_4010f7, label %block_401119

block_40104f:                                     ; preds = %block_40101c
  store i64 16000, i64* %RAX, align 8, !tbaa !2428
  store i64 16000, i64* %RDI, align 8, !tbaa !2428
  %265 = add i64 %122, -2783
  %266 = add i64 %122, 12
  %267 = load i64, i64* %RSP, align 8, !tbaa !2428
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269, align 8
  store i64 %268, i64* %RSP, align 8, !tbaa !2428
  store i64 %265, i64* %PC, align 8, !tbaa !2428
  %270 = tail call fastcc %struct.Memory* @ext_602088_malloc(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %271 = load i64, i64* %PC, align 8
  store i64 16000, i64* %RCX, align 8, !tbaa !2428
  store i64 16000, i64* %RDI, align 8, !tbaa !2428
  %272 = load i64, i64* %RBP, align 8
  %273 = add i64 %272, -40
  %274 = load i64, i64* %RAX, align 8
  %275 = add i64 %271, 11
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %273 to i64*
  store i64 %274, i64* %276, align 8
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, -2806
  %279 = add i64 %277, 5
  %280 = load i64, i64* %RSP, align 8, !tbaa !2428
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %RSP, align 8, !tbaa !2428
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  %283 = tail call fastcc %struct.Memory* @ext_602088_malloc(%struct.State* nonnull %0, %struct.Memory* %270)
  %284 = load i64, i64* %PC, align 8
  store i64 8000, i64* %RCX, align 8, !tbaa !2428
  store i64 8000, i64* %RDI, align 8, !tbaa !2428
  %285 = load i64, i64* %RBP, align 8
  %286 = add i64 %285, -48
  %287 = load i64, i64* %RAX, align 8
  %288 = add i64 %284, 11
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %286 to i64*
  store i64 %287, i64* %289, align 8
  %290 = load i64, i64* %PC, align 8
  %291 = add i64 %290, -2822
  %292 = add i64 %290, 5
  %293 = load i64, i64* %RSP, align 8, !tbaa !2428
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295, align 8
  store i64 %294, i64* %RSP, align 8, !tbaa !2428
  store i64 %291, i64* %PC, align 8, !tbaa !2428
  %296 = tail call fastcc %struct.Memory* @ext_602088_malloc(%struct.State* nonnull %0, %struct.Memory* %283)
  %297 = load i64, i64* %PC, align 8
  %298 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 24) to i64*), align 8
  %299 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %298, i64* %299, align 1, !tbaa !2451
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %301 = bitcast i64* %300 to double*
  store double 0.000000e+00, double* %301, align 1, !tbaa !2451
  %302 = load i64, i64* %RBP, align 8
  %303 = add i64 %302, -56
  %304 = load i64, i64* %RAX, align 8
  %305 = add i64 %297, 12
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %303 to i64*
  store i64 %304, i64* %306, align 8
  %307 = load i64, i64* %RBP, align 8
  %308 = add i64 %307, -64
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC, align 8
  %311 = load i64, i64* %299, align 1
  %312 = inttoptr i64 %308 to i64*
  store i64 %311, i64* %312, align 8
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -32
  %315 = load i64, i64* %PC, align 8
  %316 = add i64 %315, 4
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %314 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RDI, align 8, !tbaa !2428
  %319 = add i64 %313, -40
  %320 = add i64 %315, 8
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RSI, align 8, !tbaa !2428
  %323 = add i64 %315, -2572
  %324 = add i64 %315, 13
  %325 = load i64, i64* %RSP, align 8, !tbaa !2428
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %RSP, align 8, !tbaa !2428
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  %328 = tail call %struct.Memory* @sub_400680_matgen(%struct.State* nonnull %0, i64 %323, %struct.Memory* %296)
  %329 = load i64, i64* %RBP, align 8
  %330 = add i64 %329, -32
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %330 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RDI, align 8, !tbaa !2428
  %335 = add i64 %329, -56
  %336 = add i64 %331, 8
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = add i64 %331, -1161
  %340 = add i64 %331, 13
  %341 = load i64, i64* %RSP, align 8, !tbaa !2428
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %RSP, align 8, !tbaa !2428
  store i64 %339, i64* %PC, align 8, !tbaa !2428
  %344 = tail call %struct.Memory* @sub_400c10_dgefa(%struct.State* nonnull %0, i64 %339, %struct.Memory* %328)
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -32
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RDI, align 8, !tbaa !2428
  %351 = add i64 %345, -56
  %352 = add i64 %347, 8
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RSI, align 8, !tbaa !2428
  %355 = add i64 %345, -40
  %356 = add i64 %347, 12
  store i64 %356, i64* %PC, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RDX, align 8, !tbaa !2428
  %359 = add i64 %347, -678
  %360 = add i64 %347, 17
  %361 = load i64, i64* %RSP, align 8, !tbaa !2428
  %362 = add i64 %361, -8
  %363 = inttoptr i64 %362 to i64*
  store i64 %360, i64* %363, align 8
  store i64 %362, i64* %RSP, align 8, !tbaa !2428
  store i64 %359, i64* %PC, align 8, !tbaa !2428
  %364 = tail call %struct.Memory* @sub_400e00_dgesl(%struct.State* nonnull %0, i64 %359, %struct.Memory* %344)
  %365 = load i64, i64* %PC, align 8
  %366 = bitcast %union.VectorReg* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %366, align 1, !tbaa !2454
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -72
  %369 = add i64 %365, 8
  store i64 %369, i64* %PC, align 8
  %370 = load i64, i64* %299, align 1
  %371 = inttoptr i64 %368 to i64*
  store i64 %370, i64* %371, align 8
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -56
  %374 = load i64, i64* %PC, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  store i64 %377, i64* %RDI, align 8, !tbaa !2428
  %378 = add i64 %374, -2943
  %379 = add i64 %374, 12
  %380 = load i64, i64* %RSP, align 8, !tbaa !2428
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %RSP, align 8, !tbaa !2428
  store i64 %378, i64* %PC, align 8, !tbaa !2428
  %383 = tail call fastcc %struct.Memory* @ext_602098_free(%struct.State* nonnull %0, %struct.Memory* %364)
  %384 = load i64, i64* %RBP, align 8
  %385 = add i64 %384, -48
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RAX, align 8, !tbaa !2428
  store i64 %389, i64* %RDI, align 8, !tbaa !2428
  %390 = add i64 %386, -2955
  %391 = add i64 %386, 12
  %392 = load i64, i64* %RSP, align 8, !tbaa !2428
  %393 = add i64 %392, -8
  %394 = inttoptr i64 %393 to i64*
  store i64 %391, i64* %394, align 8
  store i64 %393, i64* %RSP, align 8, !tbaa !2428
  store i64 %390, i64* %PC, align 8, !tbaa !2428
  %395 = tail call fastcc %struct.Memory* @ext_602098_free(%struct.State* nonnull %0, %struct.Memory* %383)
  %396 = load i64, i64* %RBP, align 8
  %397 = add i64 %396, -40
  %398 = load i64, i64* %PC, align 8
  %399 = add i64 %398, 4
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %397 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %RAX, align 8, !tbaa !2428
  store i64 %401, i64* %RDI, align 8, !tbaa !2428
  %402 = add i64 %398, -2967
  %403 = add i64 %398, 12
  %404 = load i64, i64* %RSP, align 8, !tbaa !2428
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %RSP, align 8, !tbaa !2428
  store i64 %402, i64* %PC, align 8, !tbaa !2428
  %407 = tail call fastcc %struct.Memory* @ext_602098_free(%struct.State* nonnull %0, %struct.Memory* %395)
  %408 = load i64, i64* %RBP, align 8
  %409 = add i64 %408, -20
  %410 = load i64, i64* %PC, align 8
  %411 = add i64 %410, 7
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %409 to i32*
  store i32 0, i32* %412, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_4010ea

block_401029:                                     ; preds = %block_40101c
  store i64 16008, i64* %RAX, align 8, !tbaa !2428
  store i64 16008, i64* %RDI, align 8, !tbaa !2428
  %413 = add i64 %122, -2745
  %414 = add i64 %122, 12
  %415 = load i64, i64* %RSP, align 8, !tbaa !2428
  %416 = add i64 %415, -8
  %417 = inttoptr i64 %416 to i64*
  store i64 %414, i64* %417, align 8
  store i64 %416, i64* %RSP, align 8, !tbaa !2428
  store i64 %413, i64* %PC, align 8, !tbaa !2428
  %418 = tail call fastcc %struct.Memory* @ext_602088_malloc(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %419 = load i64, i64* %RBP, align 8
  %420 = add i64 %419, -32
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %420 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RDI, align 8, !tbaa !2428
  %425 = add i64 %419, -20
  %426 = add i64 %421, 8
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  %430 = shl nsw i64 %429, 3
  %431 = add i64 %430, %424
  %432 = load i64, i64* %RAX, align 8
  %433 = add i64 %421, 12
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %431 to i64*
  store i64 %432, i64* %434, align 8
  %435 = load i64, i64* %RBP, align 8
  %436 = add i64 %435, -20
  %437 = load i64, i64* %PC, align 8
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %436 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = add i32 %440, 1
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RAX, align 8, !tbaa !2428
  %443 = icmp eq i32 %440, -1
  %444 = icmp eq i32 %441, 0
  %445 = or i1 %443, %444
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %16, align 1, !tbaa !2432
  %447 = and i32 %441, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447) #9
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %23, align 1, !tbaa !2446
  %452 = xor i32 %441, %440
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %28, align 1, !tbaa !2447
  %456 = zext i1 %444 to i8
  store i8 %456, i8* %31, align 1, !tbaa !2448
  %457 = lshr i32 %441, 31
  %458 = trunc i32 %457 to i8
  store i8 %458, i8* %34, align 1, !tbaa !2449
  %459 = lshr i32 %440, 31
  %460 = xor i32 %457, %459
  %461 = add nuw nsw i32 %460, %457
  %462 = icmp eq i32 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %40, align 1, !tbaa !2450
  %464 = add i64 %437, 9
  store i64 %464, i64* %PC, align 8
  store i32 %441, i32* %439, align 4
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, -46
  store i64 %466, i64* %PC, align 8, !tbaa !2428
  br label %block_40101c

block_401005:                                     ; preds = %block_401000, %block_400f90
  %467 = phi i64 [ %91, %block_400f90 ], [ %635, %block_401000 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400f90 ], [ %MEMORY.5, %block_401000 ]
  store i64 16000, i64* %RAX, align 8, !tbaa !2428
  store i64 16000, i64* %RDI, align 8, !tbaa !2428
  %468 = add i64 %467, -2709
  %469 = add i64 %467, 12
  %470 = load i64, i64* %RSP, align 8, !tbaa !2428
  %471 = add i64 %470, -8
  %472 = inttoptr i64 %471 to i64*
  store i64 %469, i64* %472, align 8
  store i64 %471, i64* %RSP, align 8, !tbaa !2428
  store i64 %468, i64* %PC, align 8, !tbaa !2428
  %473 = tail call fastcc %struct.Memory* @ext_602088_malloc(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %474 = load i64, i64* %RBP, align 8
  %475 = add i64 %474, -32
  %476 = load i64, i64* %RAX, align 8
  %477 = load i64, i64* %PC, align 8
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %475 to i64*
  store i64 %476, i64* %479, align 8
  %480 = load i64, i64* %RBP, align 8
  %481 = add i64 %480, -20
  %482 = load i64, i64* %PC, align 8
  %483 = add i64 %482, 7
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %481 to i32*
  store i32 0, i32* %484, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_40101c

block_400fe4:                                     ; preds = %block_400fc7
  %485 = add i64 %633, -21
  %486 = add i64 %632, 4
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i8*
  store i8 1, i8* %487, align 1
  %488 = load i64, i64* %PC, align 8
  %489 = add i64 %488, 24
  store i64 %489, i64* %PC, align 8, !tbaa !2428
  br label %block_401000

block_400fbb:                                     ; preds = %block_400fed, %block_400fb4
  %490 = phi i64 [ %.pre, %block_400fb4 ], [ %606, %block_400fed ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400fb4 ], [ %620, %block_400fed ]
  %491 = load i64, i64* %RBP, align 8
  %492 = add i64 %491, -20
  %493 = add i64 %490, 3
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX, align 8, !tbaa !2428
  %497 = add i64 %491, -8
  %498 = add i64 %490, 6
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sub i32 %495, %500
  %502 = icmp ult i32 %495, %500
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %16, align 1, !tbaa !2432
  %504 = and i32 %501, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504) #9
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %23, align 1, !tbaa !2446
  %509 = xor i32 %500, %495
  %510 = xor i32 %509, %501
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %28, align 1, !tbaa !2447
  %514 = icmp eq i32 %501, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %31, align 1, !tbaa !2448
  %516 = lshr i32 %501, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %34, align 1, !tbaa !2449
  %518 = lshr i32 %495, 31
  %519 = lshr i32 %500, 31
  %520 = xor i32 %519, %518
  %521 = xor i32 %516, %518
  %522 = add nuw nsw i32 %521, %520
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %40, align 1, !tbaa !2450
  %525 = icmp ne i8 %517, 0
  %526 = xor i1 %525, %523
  %.v16 = select i1 %526, i64 12, i64 69
  %527 = add i64 %490, %.v16
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  br i1 %526, label %block_400fc7, label %block_401000.loopexit

block_4010f7:                                     ; preds = %block_4010ea
  %528 = add i64 %260, 8
  store i64 %528, i64* %PC, align 8
  %529 = load i32, i32* %234, align 4
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX, align 8, !tbaa !2428
  %531 = shl nsw i64 %530, 3
  %532 = add i64 %531, %264
  %533 = add i64 %260, 12
  store i64 %533, i64* %PC, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RAX, align 8, !tbaa !2428
  store i64 %535, i64* %RDI, align 8, !tbaa !2428
  %536 = add i64 %260, -2999
  %537 = add i64 %260, 20
  %538 = load i64, i64* %RSP, align 8, !tbaa !2428
  %539 = add i64 %538, -8
  %540 = inttoptr i64 %539 to i64*
  store i64 %537, i64* %540, align 8
  store i64 %539, i64* %RSP, align 8, !tbaa !2428
  store i64 %536, i64* %PC, align 8, !tbaa !2428
  %541 = tail call fastcc %struct.Memory* @ext_602098_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %542 = load i64, i64* %RBP, align 8
  %543 = add i64 %542, -20
  %544 = load i64, i64* %PC, align 8
  %545 = add i64 %544, 3
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %543 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX, align 8, !tbaa !2428
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %16, align 1, !tbaa !2432
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554) #9
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %23, align 1, !tbaa !2446
  %559 = xor i32 %548, %547
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %28, align 1, !tbaa !2447
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %31, align 1, !tbaa !2448
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %34, align 1, !tbaa !2449
  %566 = lshr i32 %547, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %40, align 1, !tbaa !2450
  %571 = add i64 %544, 9
  store i64 %571, i64* %PC, align 8
  store i32 %548, i32* %546, align 4
  %572 = load i64, i64* %PC, align 8
  %573 = add i64 %572, -42
  store i64 %573, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ea

block_400fb4:                                     ; preds = %block_400f90
  %574 = add i64 %61, -20
  %575 = add i64 %91, 7
  store i64 %575, i64* %PC, align 8
  %576 = inttoptr i64 %574 to i32*
  store i32 1, i32* %576, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400fbb

block_400fed:                                     ; preds = %block_400fc7
  %577 = add i64 %633, -20
  %578 = add i64 %632, 8
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = add i32 %580, 1
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX, align 8, !tbaa !2428
  %583 = icmp eq i32 %580, -1
  %584 = icmp eq i32 %581, 0
  %585 = or i1 %583, %584
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %16, align 1, !tbaa !2432
  %587 = and i32 %581, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587) #9
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %23, align 1, !tbaa !2446
  %592 = xor i32 %581, %580
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  store i8 %595, i8* %28, align 1, !tbaa !2447
  %596 = zext i1 %584 to i8
  store i8 %596, i8* %31, align 1, !tbaa !2448
  %597 = lshr i32 %581, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %34, align 1, !tbaa !2449
  %599 = lshr i32 %580, 31
  %600 = xor i32 %597, %599
  %601 = add nuw nsw i32 %600, %597
  %602 = icmp eq i32 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %40, align 1, !tbaa !2450
  %604 = add i64 %632, 14
  store i64 %604, i64* %PC, align 8
  store i32 %581, i32* %579, align 4
  %605 = load i64, i64* %PC, align 8
  %606 = add i64 %605, -64
  store i64 %606, i64* %PC, align 8, !tbaa !2428
  br label %block_400fbb

block_400fc7:                                     ; preds = %block_400fbb
  %607 = add i64 %491, -16
  %608 = add i64 %527, 4
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i64*
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = add i64 %610, 8
  %612 = add i64 %527, 8
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 48), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 48), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %615 = add i64 %527, -2679
  %616 = add i64 %527, 20
  %617 = load i64, i64* %RSP, align 8, !tbaa !2428
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %616, i64* %619, align 8
  store i64 %618, i64* %RSP, align 8, !tbaa !2428
  store i64 %615, i64* %PC, align 8, !tbaa !2428
  %620 = tail call fastcc %struct.Memory* @ext_6020a8_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %621 = load i32, i32* %EAX, align 4
  %622 = load i64, i64* %PC, align 8
  store i8 0, i8* %16, align 1, !tbaa !2432
  %623 = and i32 %621, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623) #9
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  %628 = icmp eq i32 %621, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %31, align 1, !tbaa !2448
  %630 = lshr i32 %621, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v19 = select i1 %628, i64 9, i64 18
  %632 = add i64 %622, %.v19
  store i64 %632, i64* %PC, align 8, !tbaa !2428
  %633 = load i64, i64* %RBP, align 8
  br i1 %628, label %block_400fe4, label %block_400fed

block_401000.loopexit:                            ; preds = %block_400fbb
  br label %block_401000

block_401000:                                     ; preds = %block_401000.loopexit, %block_400fe4
  %634 = phi i64 [ %489, %block_400fe4 ], [ %527, %block_401000.loopexit ]
  %MEMORY.5 = phi %struct.Memory* [ %620, %block_400fe4 ], [ %MEMORY.4, %block_401000.loopexit ]
  %635 = add i64 %634, 5
  store i64 %635, i64* %PC, align 8, !tbaa !2428
  br label %block_401005
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400680_matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
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
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = load i64, i64* %RSI, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -20
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400697

block_400725:                                     ; preds = %block_4006fa
  %54 = add i64 %60, -24
  %55 = add i64 %89, 7
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  store i32 0, i32* %56, align 4
  %57 = bitcast %union.VectorReg* %3 to double*
  %58 = bitcast i64* %429 to double*
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_40072c

block_4006fa:                                     ; preds = %block_4006f3, %block_400707
  %59 = phi i64 [ %.pre15, %block_4006f3 ], [ %396, %block_400707 ]
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -20
  %62 = add i64 %59, 7
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, -2000
  %66 = icmp ult i32 %64, 2000
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %13, align 1, !tbaa !2432
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #9
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %20, align 1, !tbaa !2446
  %73 = xor i32 %64, 16
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %25, align 1, !tbaa !2447
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %28, align 1, !tbaa !2448
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %31, align 1, !tbaa !2449
  %82 = lshr i32 %64, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %37, align 1, !tbaa !2450
  %87 = icmp ne i8 %81, 0
  %88 = xor i1 %87, %85
  %.v21 = select i1 %88, i64 13, i64 43
  %89 = add i64 %59, %.v21
  store i64 %89, i64* %PC, align 8, !tbaa !2428
  br i1 %88, label %block_400707, label %block_400725

block_400739:                                     ; preds = %block_40072c
  %90 = add i64 %432, -20
  %91 = add i64 %461, 7
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 0, i32* %92, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400740

block_4006b8:                                     ; preds = %block_4006ab
  %93 = add i64 %349, 232
  %94 = add i64 %349, 5
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call %struct.Memory* @sub_4007a0_random_double(%struct.State* nonnull %0, i64 %93, %struct.Memory* %MEMORY.2)
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -8
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RAX, align 8, !tbaa !2428
  %105 = add i64 %99, -24
  %106 = add i64 %101, 8
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RCX, align 8, !tbaa !2428
  %110 = shl nsw i64 %109, 3
  %111 = add i64 %110, %104
  %112 = add i64 %101, 12
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = add i64 %99, -20
  %116 = add i64 %101, 16
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %RCX, align 8, !tbaa !2428
  %120 = shl nsw i64 %119, 3
  %121 = add i64 %120, %114
  %122 = add i64 %101, 21
  store i64 %122, i64* %PC, align 8
  %123 = load i64, i64* %53, align 1
  %124 = inttoptr i64 %121 to i64*
  store i64 %123, i64* %124, align 8
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -24
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %126 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, 1
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = icmp eq i32 %130, -1
  %134 = icmp eq i32 %131, 0
  %135 = or i1 %133, %134
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %13, align 1, !tbaa !2432
  %137 = and i32 %131, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137) #9
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %20, align 1, !tbaa !2446
  %142 = xor i32 %131, %130
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %25, align 1, !tbaa !2447
  %146 = zext i1 %134 to i8
  store i8 %146, i8* %28, align 1, !tbaa !2448
  %147 = lshr i32 %131, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %31, align 1, !tbaa !2449
  %149 = lshr i32 %130, 31
  %150 = xor i32 %147, %149
  %151 = add nuw nsw i32 %150, %147
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %37, align 1, !tbaa !2450
  %154 = add i64 %127, 9
  store i64 %154, i64* %PC, align 8
  store i32 %131, i32* %129, align 4
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, -48
  store i64 %156, i64* %PC, align 8, !tbaa !2428
  br label %block_4006ab

block_400697:                                     ; preds = %block_4006e0, %block_400680
  %157 = phi i64 [ %.pre, %block_400680 ], [ %491, %block_4006e0 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400680 ], [ %MEMORY.2, %block_4006e0 ]
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -20
  %160 = add i64 %157, 7
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, -2000
  %164 = icmp ult i32 %162, 2000
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %13, align 1, !tbaa !2432
  %166 = and i32 %163, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #9
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %20, align 1, !tbaa !2446
  %171 = xor i32 %162, 16
  %172 = xor i32 %171, %163
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %25, align 1, !tbaa !2447
  %176 = icmp eq i32 %163, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %28, align 1, !tbaa !2448
  %178 = lshr i32 %163, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %31, align 1, !tbaa !2449
  %180 = lshr i32 %162, 31
  %181 = xor i32 %178, %180
  %182 = add nuw nsw i32 %181, %180
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %37, align 1, !tbaa !2450
  %185 = icmp ne i8 %179, 0
  %186 = xor i1 %185, %183
  %.v20 = select i1 %186, i64 13, i64 92
  %187 = add i64 %157, %.v20
  store i64 %187, i64* %PC, align 8, !tbaa !2428
  br i1 %186, label %block_4006a4, label %block_4006f3

block_400782:                                     ; preds = %block_400740
  %188 = add i64 %398, -24
  %189 = add i64 %427, 8
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, 1
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = icmp eq i32 %191, -1
  %195 = icmp eq i32 %192, 0
  %196 = or i1 %194, %195
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %13, align 1, !tbaa !2432
  %198 = and i32 %192, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #9
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %20, align 1, !tbaa !2446
  %203 = xor i32 %192, %191
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %25, align 1, !tbaa !2447
  %207 = zext i1 %195 to i8
  store i8 %207, i8* %28, align 1, !tbaa !2448
  %208 = lshr i32 %192, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %31, align 1, !tbaa !2449
  %210 = lshr i32 %191, 31
  %211 = xor i32 %208, %210
  %212 = add nuw nsw i32 %211, %208
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %37, align 1, !tbaa !2450
  %215 = add i64 %427, 14
  store i64 %215, i64* %PC, align 8
  store i32 %192, i32* %190, align 4
  %216 = load i64, i64* %PC, align 8
  %217 = add i64 %216, -100
  store i64 %217, i64* %PC, align 8, !tbaa !2428
  br label %block_40072c

block_400795:                                     ; preds = %block_40072c
  %218 = load i64, i64* %RSP, align 8
  %219 = add i64 %218, 32
  store i64 %219, i64* %RSP, align 8, !tbaa !2428
  %220 = icmp ugt i64 %218, -33
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %13, align 1, !tbaa !2432
  %222 = trunc i64 %219 to i32
  %223 = and i32 %222, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #9
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %20, align 1, !tbaa !2446
  %228 = xor i64 %219, %218
  %229 = lshr i64 %228, 4
  %230 = trunc i64 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %25, align 1, !tbaa !2447
  %232 = icmp eq i64 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %28, align 1, !tbaa !2448
  %234 = lshr i64 %219, 63
  %235 = trunc i64 %234 to i8
  store i8 %235, i8* %31, align 1, !tbaa !2449
  %236 = lshr i64 %218, 63
  %237 = xor i64 %234, %236
  %238 = add nuw nsw i64 %237, %234
  %239 = icmp eq i64 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %37, align 1, !tbaa !2450
  %241 = add i64 %461, 5
  store i64 %241, i64* %PC, align 8
  %242 = add i64 %218, 40
  %243 = inttoptr i64 %219 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RBP, align 8, !tbaa !2428
  store i64 %242, i64* %RSP, align 8, !tbaa !2428
  %245 = add i64 %461, 6
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %242 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %PC, align 8, !tbaa !2428
  %248 = add i64 %218, 48
  store i64 %248, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_40074d:                                     ; preds = %block_400740
  %249 = add i64 %398, -8
  %250 = add i64 %427, 4
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = add i64 %398, -24
  %254 = add i64 %427, 8
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RCX, align 8, !tbaa !2428
  %258 = shl nsw i64 %257, 3
  %259 = add i64 %258, %252
  %260 = add i64 %427, 12
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RAX, align 8, !tbaa !2428
  %263 = add i64 %427, 16
  store i64 %263, i64* %PC, align 8
  %264 = load i32, i32* %401, align 4
  %265 = sext i32 %264 to i64
  store i64 %265, i64* %RCX, align 8, !tbaa !2428
  %266 = shl nsw i64 %265, 3
  %267 = add i64 %266, %262
  %268 = add i64 %427, 21
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %53, align 1, !tbaa !2451
  store double 0.000000e+00, double* %58, align 1, !tbaa !2451
  %271 = add i64 %398, -16
  %272 = add i64 %427, 25
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %427, 29
  store i64 %275, i64* %PC, align 8
  %276 = load i32, i32* %401, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = shl nsw i64 %277, 3
  %279 = add i64 %278, %274
  %280 = add i64 %427, 34
  store i64 %280, i64* %PC, align 8
  %281 = bitcast i64 %270 to double
  %282 = inttoptr i64 %279 to double*
  %283 = load double, double* %282, align 8
  %284 = fadd double %281, %283
  store double %284, double* %57, align 1, !tbaa !2451
  store i64 0, i64* %429, align 1, !tbaa !2451
  %285 = add i64 %427, 39
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %279 to double*
  store double %284, double* %286, align 8
  %287 = load i64, i64* %RBP, align 8
  %288 = add i64 %287, -20
  %289 = load i64, i64* %PC, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = icmp eq i32 %292, -1
  %296 = icmp eq i32 %293, 0
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %13, align 1, !tbaa !2432
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #9
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %20, align 1, !tbaa !2446
  %304 = xor i32 %293, %292
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %25, align 1, !tbaa !2447
  %308 = zext i1 %296 to i8
  store i8 %308, i8* %28, align 1, !tbaa !2448
  %309 = lshr i32 %293, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %31, align 1, !tbaa !2449
  %311 = lshr i32 %292, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %37, align 1, !tbaa !2450
  %316 = add i64 %289, 9
  store i64 %316, i64* %PC, align 8
  store i32 %293, i32* %291, align 4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, -61
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  br label %block_400740

block_4006ab:                                     ; preds = %block_4006a4, %block_4006b8
  %319 = phi i64 [ %.pre18, %block_4006a4 ], [ %156, %block_4006b8 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_4006a4 ], [ %98, %block_4006b8 ]
  %320 = load i64, i64* %RBP, align 8
  %321 = add i64 %320, -24
  %322 = add i64 %319, 7
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, -2000
  %326 = icmp ult i32 %324, 2000
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %13, align 1, !tbaa !2432
  %328 = and i32 %325, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #9
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %20, align 1, !tbaa !2446
  %333 = xor i32 %324, 16
  %334 = xor i32 %333, %325
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %25, align 1, !tbaa !2447
  %338 = icmp eq i32 %325, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %28, align 1, !tbaa !2448
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %31, align 1, !tbaa !2449
  %342 = lshr i32 %324, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %342
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %37, align 1, !tbaa !2450
  %347 = icmp ne i8 %341, 0
  %348 = xor i1 %347, %345
  %.v19 = select i1 %348, i64 13, i64 53
  %349 = add i64 %319, %.v19
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br i1 %348, label %block_4006b8, label %block_4006e0

block_4006a4:                                     ; preds = %block_400697
  %350 = add i64 %158, -24
  %351 = add i64 %187, 7
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i32*
  store i32 0, i32* %352, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_4006ab

block_400707:                                     ; preds = %block_4006fa
  store <4 x i32> zeroinitializer, <4 x i32>* %430, align 1, !tbaa !2454
  %353 = add i64 %60, -16
  %354 = add i64 %89, 7
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = add i64 %89, 11
  store i64 %357, i64* %PC, align 8
  %358 = load i32, i32* %63, align 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = shl nsw i64 %359, 3
  %361 = add i64 %360, %356
  %362 = add i64 %89, 16
  store i64 %362, i64* %PC, align 8
  %363 = load i64, i64* %53, align 1
  %364 = inttoptr i64 %361 to i64*
  store i64 %363, i64* %364, align 8
  %365 = load i64, i64* %RBP, align 8
  %366 = add i64 %365, -20
  %367 = load i64, i64* %PC, align 8
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = add i32 %370, 1
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = icmp eq i32 %370, -1
  %374 = icmp eq i32 %371, 0
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %13, align 1, !tbaa !2432
  %377 = and i32 %371, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377) #9
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %20, align 1, !tbaa !2446
  %382 = xor i32 %371, %370
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %25, align 1, !tbaa !2447
  %386 = zext i1 %374 to i8
  store i8 %386, i8* %28, align 1, !tbaa !2448
  %387 = lshr i32 %371, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %31, align 1, !tbaa !2449
  %389 = lshr i32 %370, 31
  %390 = xor i32 %387, %389
  %391 = add nuw nsw i32 %390, %387
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %37, align 1, !tbaa !2450
  %394 = add i64 %367, 9
  store i64 %394, i64* %PC, align 8
  store i32 %371, i32* %369, align 4
  %395 = load i64, i64* %PC, align 8
  %396 = add i64 %395, -38
  store i64 %396, i64* %PC, align 8, !tbaa !2428
  br label %block_4006fa

block_400740:                                     ; preds = %block_40074d, %block_400739
  %397 = phi i64 [ %318, %block_40074d ], [ %.pre17, %block_400739 ]
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -20
  %400 = add i64 %397, 7
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, -2000
  %404 = icmp ult i32 %402, 2000
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %13, align 1, !tbaa !2432
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406) #9
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %20, align 1, !tbaa !2446
  %411 = xor i32 %402, 16
  %412 = xor i32 %411, %403
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %25, align 1, !tbaa !2447
  %416 = icmp eq i32 %403, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %28, align 1, !tbaa !2448
  %418 = lshr i32 %403, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %31, align 1, !tbaa !2449
  %420 = lshr i32 %402, 31
  %421 = xor i32 %418, %420
  %422 = add nuw nsw i32 %421, %420
  %423 = icmp eq i32 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %37, align 1, !tbaa !2450
  %425 = icmp ne i8 %419, 0
  %426 = xor i1 %425, %423
  %.v = select i1 %426, i64 13, i64 66
  %427 = add i64 %397, %.v
  store i64 %427, i64* %PC, align 8, !tbaa !2428
  br i1 %426, label %block_40074d, label %block_400782

block_4006f3:                                     ; preds = %block_400697
  %428 = add i64 %187, 7
  store i64 %428, i64* %PC, align 8
  store i32 0, i32* %161, align 4
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %.pre15 = load i64, i64* %PC, align 8
  %430 = bitcast %union.VectorReg* %3 to <4 x i32>*
  br label %block_4006fa

block_40072c:                                     ; preds = %block_400782, %block_400725
  %431 = phi i64 [ %217, %block_400782 ], [ %.pre16, %block_400725 ]
  %432 = load i64, i64* %RBP, align 8
  %433 = add i64 %432, -24
  %434 = add i64 %431, 7
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = add i32 %436, -2000
  %438 = icmp ult i32 %436, 2000
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %13, align 1, !tbaa !2432
  %440 = and i32 %437, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440) #9
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %20, align 1, !tbaa !2446
  %445 = xor i32 %436, 16
  %446 = xor i32 %445, %437
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %25, align 1, !tbaa !2447
  %450 = icmp eq i32 %437, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %28, align 1, !tbaa !2448
  %452 = lshr i32 %437, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %31, align 1, !tbaa !2449
  %454 = lshr i32 %436, 31
  %455 = xor i32 %452, %454
  %456 = add nuw nsw i32 %455, %454
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %37, align 1, !tbaa !2450
  %459 = icmp ne i8 %453, 0
  %460 = xor i1 %459, %457
  %.v22 = select i1 %460, i64 13, i64 105
  %461 = add i64 %431, %.v22
  store i64 %461, i64* %PC, align 8, !tbaa !2428
  br i1 %460, label %block_400739, label %block_400795

block_4006e0:                                     ; preds = %block_4006ab
  %462 = add i64 %320, -20
  %463 = add i64 %349, 8
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, 1
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = icmp eq i32 %465, -1
  %469 = icmp eq i32 %466, 0
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %13, align 1, !tbaa !2432
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472) #9
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %20, align 1, !tbaa !2446
  %477 = xor i32 %466, %465
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %25, align 1, !tbaa !2447
  %481 = zext i1 %469 to i8
  store i8 %481, i8* %28, align 1, !tbaa !2448
  %482 = lshr i32 %466, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %31, align 1, !tbaa !2449
  %484 = lshr i32 %465, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %482
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %37, align 1, !tbaa !2450
  %489 = add i64 %349, 14
  store i64 %489, i64* %PC, align 8
  store i32 %466, i32* %464, align 4
  %490 = load i64, i64* %PC, align 8
  %491 = add i64 %490, -87
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  br label %block_400697
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005d0:
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
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)) to i8), i8* %9, align 1, !tbaa !2432
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)) to i32), i32 255)) #9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2446
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stdout to i64), i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2447
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2449
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stdout to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 0), label %block_4005f8, label %block_4005e1

block_4005f8:                                     ; preds = %block_4005e1, %block_4005d0
  %20 = phi i64 [ %27, %block_4005e1 ], [ %19, %block_4005d0 ]
  %21 = add i64 %20, 1
  store i64 %21, i64* %PC, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %23 = add i64 %20, 2
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %5 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  %26 = add i64 %5, 8
  store i64 %26, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4005e1:                                     ; preds = %block_4005d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64 ptrtoint (i64* @stdout to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_4005f8
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005c0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4005c0:
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
define %struct.Memory* @sub_400590__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
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
  store i8 1, i8* %5, align 1, !tbaa !2448
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2449
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2450
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2447
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
  store i8 %23, i8* %5, align 1, !tbaa !2448
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
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
  store i64 ptrtoint (void ()* @callback_sub_401200___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401190___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020a0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c10_dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400c10:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -72
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 64
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
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = load i64, i64* %RSI, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -28
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  %57 = bitcast [32 x %union.VectorReg]* %3 to double*
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %59 = bitcast i64* %53 to double*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %61 = bitcast i64* %RSP to i32**
  %.pre = load i64, i64* %PC, align 8
  %62 = bitcast [32 x %union.VectorReg]* %3 to <4 x i32>*
  br label %block_400c27

block_400d3a:                                     ; preds = %block_400d2d
  %63 = add i64 %167, -8
  %64 = add i64 %196, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RAX, align 8, !tbaa !2428
  %67 = add i64 %196, 8
  store i64 %67, i64* %PC, align 8
  %68 = load i32, i32* %170, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %RCX, align 8, !tbaa !2428
  %70 = shl nsw i64 %69, 3
  %71 = add i64 %70, %66
  %72 = add i64 %196, 12
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %167, -56
  %76 = add i64 %196, 16
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -56
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %RAX, align 8, !tbaa !2428
  %84 = add i64 %78, -48
  %85 = add i64 %80, 8
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %RCX, align 8, !tbaa !2428
  %89 = shl nsw i64 %88, 3
  %90 = add i64 %89, %83
  %91 = add i64 %80, 13
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %94 = add i64 %78, -24
  %95 = add i64 %80, 18
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -48
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RDX, align 8, !tbaa !2428
  %104 = add i64 %97, -28
  %105 = add i64 %99, 6
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %102, %107
  %109 = icmp ult i32 %102, %107
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #9
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %20, align 1, !tbaa !2446
  %116 = xor i32 %107, %102
  %117 = xor i32 %116, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %25, align 1, !tbaa !2447
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %28, align 1, !tbaa !2448
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %31, align 1, !tbaa !2449
  %125 = lshr i32 %102, 31
  %126 = lshr i32 %107, 31
  %127 = xor i32 %126, %125
  %128 = xor i32 %123, %125
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %37, align 1, !tbaa !2450
  %.v20 = select i1 %121, i64 56, i64 12
  %132 = add i64 %99, %.v20
  store i64 %132, i64* %PC, align 8, !tbaa !2428
  br i1 %121, label %block_400d94, label %block_400d68

block_400dd6.loopexit:                            ; preds = %block_400d2d
  br label %block_400dd6

block_400dd6:                                     ; preds = %block_400dd6.loopexit, %block_400c98.block_400dd6_crit_edge
  %133 = phi i64 [ %.pre15, %block_400c98.block_400dd6_crit_edge ], [ %167, %block_400dd6.loopexit ]
  %134 = phi i64 [ %397, %block_400c98.block_400dd6_crit_edge ], [ %196, %block_400dd6.loopexit ]
  %.sink5 = phi i64 [ 312, %block_400c98.block_400dd6_crit_edge ], [ 5, %block_400dd6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %389, %block_400c98.block_400dd6_crit_edge ], [ %MEMORY.1, %block_400dd6.loopexit ]
  %135 = add i64 %134, %.sink5
  %136 = add i64 %133, -28
  %137 = add i64 %135, 8
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, 1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %142 = icmp eq i32 %139, -1
  %143 = icmp eq i32 %140, 0
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %13, align 1, !tbaa !2432
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #9
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %20, align 1, !tbaa !2446
  %151 = xor i32 %140, %139
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %25, align 1, !tbaa !2447
  %155 = zext i1 %143 to i8
  store i8 %155, i8* %28, align 1, !tbaa !2448
  %156 = lshr i32 %140, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %31, align 1, !tbaa !2449
  %158 = lshr i32 %139, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %156
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %37, align 1, !tbaa !2450
  %163 = add i64 %135, 14
  store i64 %163, i64* %PC, align 8
  store i32 %140, i32* %138, align 4
  %164 = load i64, i64* %PC, align 8
  %165 = add i64 %164, -445
  store i64 %165, i64* %PC, align 8, !tbaa !2428
  br label %block_400c27

block_400d2d:                                     ; preds = %block_400d94, %block_400ced
  %166 = phi i64 [ %.pre14, %block_400ced ], [ %567, %block_400d94 ]
  %MEMORY.1 = phi %struct.Memory* [ %470, %block_400ced ], [ %535, %block_400d94 ]
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -32
  %169 = add i64 %166, 7
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, -2000
  %173 = icmp ult i32 %171, 2000
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %13, align 1, !tbaa !2432
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #9
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %20, align 1, !tbaa !2446
  %180 = xor i32 %171, 16
  %181 = xor i32 %180, %172
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %25, align 1, !tbaa !2447
  %185 = icmp eq i32 %172, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %28, align 1, !tbaa !2448
  %187 = lshr i32 %172, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %31, align 1, !tbaa !2449
  %189 = lshr i32 %171, 31
  %190 = xor i32 %187, %189
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %37, align 1, !tbaa !2450
  %194 = icmp ne i8 %188, 0
  %195 = xor i1 %194, %192
  %.v19 = select i1 %195, i64 13, i64 164
  %196 = add i64 %166, %.v19
  store i64 %196, i64* %PC, align 8, !tbaa !2428
  br i1 %195, label %block_400d3a, label %block_400dd6.loopexit

block_400c34:                                     ; preds = %block_400c27
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %709, -8
  %198 = add i64 %737, 14
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RDX, align 8, !tbaa !2428
  %201 = add i64 %737, 18
  store i64 %201, i64* %PC, align 8
  %202 = load i32, i32* %712, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RSI, align 8, !tbaa !2428
  %204 = shl nsw i64 %203, 3
  %205 = add i64 %204, %200
  %206 = add i64 %737, 22
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RDX, align 8, !tbaa !2428
  %209 = add i64 %709, -40
  %210 = add i64 %737, 26
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  store i64 %208, i64* %211, align 8
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -28
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RDI, align 8, !tbaa !2428
  %220 = icmp eq i32 %217, -1
  %221 = icmp eq i32 %218, 0
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %13, align 1, !tbaa !2432
  %224 = and i32 %218, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #9
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %20, align 1, !tbaa !2446
  %229 = xor i32 %218, %217
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %25, align 1, !tbaa !2447
  %233 = zext i1 %221 to i8
  store i8 %233, i8* %28, align 1, !tbaa !2448
  %234 = lshr i32 %218, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %31, align 1, !tbaa !2449
  %236 = lshr i32 %217, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %37, align 1, !tbaa !2450
  %241 = add i64 %212, -44
  %242 = add i64 %214, 9
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
  store i32 %218, i32* %243, align 4
  %244 = load i64, i64* %RAX, align 8
  %245 = load i64, i64* %RBP, align 8
  %246 = add i64 %245, -28
  %247 = load i64, i64* %PC, align 8
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC, align 8
  %249 = trunc i64 %244 to i32
  %250 = inttoptr i64 %246 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sub i32 %249, %251
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = icmp ult i32 %249, %251
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %13, align 1, !tbaa !2432
  %256 = and i32 %252, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #9
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %20, align 1, !tbaa !2446
  %261 = xor i32 %251, %249
  %262 = xor i32 %261, %252
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %25, align 1, !tbaa !2447
  %266 = icmp eq i32 %252, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %28, align 1, !tbaa !2448
  %268 = lshr i32 %252, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %31, align 1, !tbaa !2449
  %270 = lshr i32 %249, 31
  %271 = lshr i32 %251, 31
  %272 = xor i32 %271, %270
  %273 = xor i32 %268, %270
  %274 = add nuw nsw i32 %273, %272
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %37, align 1, !tbaa !2450
  %277 = add i64 %245, -40
  %278 = add i64 %247, 7
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RSI, align 8, !tbaa !2428
  %281 = add i64 %247, 10
  store i64 %281, i64* %PC, align 8
  %282 = load i32, i32* %250, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RDX, align 8, !tbaa !2428
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %284 = add i64 %247, -1015
  %285 = add i64 %247, 17
  %286 = load i64, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  %289 = tail call %struct.Memory* @sub_400860_idamax(%struct.State* nonnull %0, i64 %284, %struct.Memory* %MEMORY.4)
  %290 = load i64, i64* %PC, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %62, align 1, !tbaa !2454
  %291 = load i64, i64* %RAX, align 8
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -28
  %294 = add i64 %290, 6
  store i64 %294, i64* %PC, align 8
  %295 = trunc i64 %291 to i32
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, %295
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = icmp ult i32 %298, %295
  %301 = icmp ult i32 %298, %297
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %13, align 1, !tbaa !2432
  %304 = and i32 %298, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #9
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %20, align 1, !tbaa !2446
  %309 = xor i32 %297, %295
  %310 = xor i32 %309, %298
  %311 = lshr i32 %310, 4
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %25, align 1, !tbaa !2447
  %314 = icmp eq i32 %298, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %28, align 1, !tbaa !2448
  %316 = lshr i32 %298, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %31, align 1, !tbaa !2449
  %318 = lshr i32 %295, 31
  %319 = lshr i32 %297, 31
  %320 = xor i32 %316, %318
  %321 = xor i32 %316, %319
  %322 = add nuw nsw i32 %320, %321
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %37, align 1, !tbaa !2450
  %325 = add i64 %292, -48
  %326 = add i64 %290, 9
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  store i32 %298, i32* %327, align 4
  %328 = load i64, i64* %RBP, align 8
  %329 = add i64 %328, -48
  %330 = load i64, i64* %PC, align 8
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %329 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX, align 8, !tbaa !2428
  %335 = add i64 %328, -16
  %336 = add i64 %330, 7
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = add i64 %328, -28
  %340 = add i64 %330, 11
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %R8, align 8, !tbaa !2428
  %344 = shl nsw i64 %343, 2
  %345 = add i64 %344, %338
  %346 = add i64 %330, 15
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  store i32 %333, i32* %347, align 4
  %348 = load i64, i64* %RBP, align 8
  %349 = add i64 %348, -40
  %350 = load i64, i64* %PC, align 8
  %351 = add i64 %350, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %349 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RSI, align 8, !tbaa !2428
  %354 = add i64 %348, -48
  %355 = add i64 %350, 8
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %R8, align 8, !tbaa !2428
  %359 = shl nsw i64 %358, 3
  %360 = add i64 %359, %353
  %361 = add i64 %350, 14
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %54, align 1, !tbaa !2451
  store double 0.000000e+00, double* %56, align 1, !tbaa !2451
  %364 = add i64 %350, 18
  store i64 %364, i64* %PC, align 8
  %.cast = bitcast i64 %363 to double
  %365 = load double, double* %57, align 1
  %366 = fcmp uno double %.cast, %365
  br i1 %366, label %367, label %377

; <label>:367:                                    ; preds = %block_400c34
  %368 = fadd double %.cast, %365
  %369 = bitcast double %368 to i64
  %370 = and i64 %369, 9221120237041090560
  %371 = icmp eq i64 %370, 9218868437227405312
  %372 = and i64 %369, 2251799813685247
  %373 = icmp ne i64 %372, 0
  %374 = and i1 %371, %373
  br i1 %374, label %375, label %383

; <label>:375:                                    ; preds = %367
  %376 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %364, %struct.Memory* %289) #12
  %.pre11 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:377:                                    ; preds = %block_400c34
  %378 = fcmp ogt double %.cast, %365
  br i1 %378, label %383, label %379

; <label>:379:                                    ; preds = %377
  %380 = fcmp olt double %.cast, %365
  br i1 %380, label %383, label %381

; <label>:381:                                    ; preds = %379
  %382 = fcmp oeq double %.cast, %365
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %381, %379, %377, %367
  %384 = phi i8 [ 0, %377 ], [ 0, %379 ], [ 1, %381 ], [ 1, %367 ]
  %385 = phi i8 [ 0, %377 ], [ 0, %379 ], [ 0, %381 ], [ 1, %367 ]
  %386 = phi i8 [ 0, %377 ], [ 1, %379 ], [ 0, %381 ], [ 1, %367 ]
  store i8 %384, i8* %28, align 1, !tbaa !2453
  store i8 %385, i8* %20, align 1, !tbaa !2453
  store i8 %386, i8* %13, align 1, !tbaa !2453
  br label %387

; <label>:387:                                    ; preds = %383, %381
  store i8 0, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %31, align 1, !tbaa !2453
  store i8 0, i8* %25, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %387, %375
  %388 = phi i64 [ %.pre11, %375 ], [ %364, %387 ]
  %389 = phi %struct.Memory* [ %376, %375 ], [ %289, %387 ]
  %390 = add i64 %388, 17
  %391 = add i64 %388, 6
  %392 = load i8, i8* %28, align 1, !tbaa !2448
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %393, i64 %390, i64 %391
  store i64 %394, i64* %PC, align 8, !tbaa !2428
  br i1 %393, label %block_400ca3, label %block_400c98

block_400c98:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %395 = load i8, i8* %20, align 1, !tbaa !2446
  %396 = icmp ne i8 %395, 0
  %.v24 = select i1 %396, i64 11, i64 6
  %397 = add i64 %394, %.v24
  store i64 %397, i64* %PC, align 8, !tbaa !2428
  %398 = icmp eq i8 %395, 1
  br i1 %398, label %block_400ca3, label %block_400c98.block_400dd6_crit_edge

block_400c98.block_400dd6_crit_edge:              ; preds = %block_400c98
  %.pre15 = load i64, i64* %RBP, align 8
  br label %block_400dd6

block_400ced:                                     ; preds = %block_400ca3, %block_400caf
  %399 = phi i64 [ %739, %block_400ca3 ], [ %.pre13, %block_400caf ]
  %400 = phi i64 [ %773, %block_400ca3 ], [ %.pre12, %block_400caf ]
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %401 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 16) to i64*), align 16
  store i64 %401, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %402 = add i64 %399, -40
  %403 = add i64 %400, 22
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RDX, align 8, !tbaa !2428
  %406 = add i64 %399, -28
  %407 = add i64 %400, 26
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %RSI, align 8, !tbaa !2428
  %411 = shl nsw i64 %410, 3
  %412 = add i64 %411, %405
  %413 = add i64 %400, 31
  store i64 %413, i64* %PC, align 8
  %414 = bitcast i64 %401 to double
  %415 = inttoptr i64 %412 to double*
  %416 = load double, double* %415, align 8
  %417 = fdiv double %414, %416
  store double %417, double* %57, align 1, !tbaa !2451
  store i64 0, i64* %53, align 1, !tbaa !2451
  %418 = add i64 %399, -24
  %419 = add i64 %400, 36
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %418 to double*
  store double %417, double* %420, align 8
  %421 = load i64, i64* %RAX, align 8
  %422 = load i64, i64* %RBP, align 8
  %423 = add i64 %422, -44
  %424 = load i64, i64* %PC, align 8
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC, align 8
  %426 = trunc i64 %421 to i32
  %427 = inttoptr i64 %423 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = sub i32 %426, %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = icmp ult i32 %426, %428
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %13, align 1, !tbaa !2432
  %433 = and i32 %429, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #9
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %20, align 1, !tbaa !2446
  %438 = xor i32 %428, %426
  %439 = xor i32 %438, %429
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %25, align 1, !tbaa !2447
  %443 = icmp eq i32 %429, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %28, align 1, !tbaa !2448
  %445 = lshr i32 %429, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %31, align 1, !tbaa !2449
  %447 = lshr i32 %426, 31
  %448 = lshr i32 %428, 31
  %449 = xor i32 %448, %447
  %450 = xor i32 %445, %447
  %451 = add nuw nsw i32 %450, %449
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %37, align 1, !tbaa !2450
  %454 = add i64 %422, -24
  %455 = add i64 %424, 8
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %458 = add i64 %422, -40
  %459 = add i64 %424, 12
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RSI, align 8, !tbaa !2428
  %462 = add i64 %424, 15
  store i64 %462, i64* %PC, align 8
  %463 = load i32, i32* %427, align 4
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RDX, align 8, !tbaa !2428
  store i64 %430, i64* %RDI, align 8, !tbaa !2428
  %465 = add i64 %424, -801
  %466 = add i64 %424, 22
  %467 = load i64, i64* %RSP, align 8, !tbaa !2428
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %466, i64* %469, align 8
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  store i64 %465, i64* %PC, align 8, !tbaa !2428
  %470 = tail call %struct.Memory* @sub_4009f0_dscal(%struct.State* nonnull %0, i64 %465, %struct.Memory* %389)
  %471 = load i64, i64* %RBP, align 8
  %472 = add i64 %471, -44
  %473 = load i64, i64* %PC, align 8
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %472 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = add i64 %471, -32
  %479 = add i64 %473, 6
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  store i32 %476, i32* %480, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400d2d

block_400d94:                                     ; preds = %block_400d68, %block_400d3a
  %481 = phi i64 [ %.pre17, %block_400d68 ], [ %97, %block_400d3a ]
  %482 = phi i64 [ %.pre16, %block_400d68 ], [ %132, %block_400d3a ]
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %483 = add i64 %481, -44
  %484 = add i64 %482, 13
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sub i32 2000, %486
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX, align 8, !tbaa !2428
  %489 = icmp ugt i32 %486, 2000
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %13, align 1, !tbaa !2432
  %491 = and i32 %487, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #9
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %20, align 1, !tbaa !2446
  %496 = xor i32 %486, 16
  %497 = xor i32 %496, %487
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %25, align 1, !tbaa !2447
  %501 = icmp eq i32 %487, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %28, align 1, !tbaa !2448
  %503 = lshr i32 %487, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %31, align 1, !tbaa !2449
  %505 = lshr i32 %486, 31
  %506 = add nuw nsw i32 %503, %505
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %37, align 1, !tbaa !2450
  %509 = add i64 %481, -24
  %510 = add i64 %482, 18
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %513 = add i64 %481, -40
  %514 = add i64 %482, 22
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RSI, align 8, !tbaa !2428
  %517 = add i64 %482, 25
  store i64 %517, i64* %PC, align 8
  %518 = load i32, i32* %485, align 4
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RDX, align 8, !tbaa !2428
  %520 = add i64 %481, -56
  %521 = add i64 %482, 29
  store i64 %521, i64* %PC, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %R8, align 8, !tbaa !2428
  %524 = add i64 %482, 33
  store i64 %524, i64* %PC, align 8
  %525 = load i32, i32* %485, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %60, align 8, !tbaa !2428
  store i64 %488, i64* %RDI, align 8, !tbaa !2428
  %527 = load i32*, i32** %61, align 8
  %528 = add i64 %482, 42
  store i64 %528, i64* %PC, align 8
  store i32 1, i32* %527, align 4
  %529 = load i64, i64* %PC, align 8
  %530 = add i64 %529, -782
  %531 = add i64 %529, 5
  %532 = load i64, i64* %RSP, align 8, !tbaa !2428
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %RSP, align 8, !tbaa !2428
  store i64 %530, i64* %PC, align 8, !tbaa !2428
  %535 = tail call %struct.Memory* @sub_400ab0_daxpy(%struct.State* nonnull %0, i64 %530, %struct.Memory* %MEMORY.1)
  %536 = load i64, i64* %RBP, align 8
  %537 = add i64 %536, -32
  %538 = load i64, i64* %PC, align 8
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = add i32 %541, 1
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = icmp eq i32 %541, -1
  %545 = icmp eq i32 %542, 0
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %13, align 1, !tbaa !2432
  %548 = and i32 %542, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548) #9
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %20, align 1, !tbaa !2446
  %553 = xor i32 %542, %541
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %25, align 1, !tbaa !2447
  %557 = zext i1 %545 to i8
  store i8 %557, i8* %28, align 1, !tbaa !2448
  %558 = lshr i32 %542, 31
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %31, align 1, !tbaa !2449
  %560 = lshr i32 %541, 31
  %561 = xor i32 %558, %560
  %562 = add nuw nsw i32 %561, %558
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %37, align 1, !tbaa !2450
  %565 = add i64 %538, 9
  store i64 %565, i64* %PC, align 8
  store i32 %542, i32* %540, align 4
  %566 = load i64, i64* %PC, align 8
  %567 = add i64 %566, -159
  store i64 %567, i64* %PC, align 8, !tbaa !2428
  br label %block_400d2d

block_400de9:                                     ; preds = %block_400c27
  %568 = add i64 %709, -16
  %569 = add i64 %737, 4
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %RAX, align 8, !tbaa !2428
  %572 = add i64 %571, 7996
  %573 = add i64 %737, 14
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 1999, i32* %574, align 4
  %575 = load i64, i64* %RSP, align 8
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %575, 64
  store i64 %577, i64* %RSP, align 8, !tbaa !2428
  %578 = icmp ugt i64 %575, -65
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %13, align 1, !tbaa !2432
  %580 = trunc i64 %577 to i32
  %581 = and i32 %580, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581) #9
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %20, align 1, !tbaa !2446
  %586 = xor i64 %577, %575
  %587 = lshr i64 %586, 4
  %588 = trunc i64 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %25, align 1, !tbaa !2447
  %590 = icmp eq i64 %577, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %28, align 1, !tbaa !2448
  %592 = lshr i64 %577, 63
  %593 = trunc i64 %592 to i8
  store i8 %593, i8* %31, align 1, !tbaa !2449
  %594 = lshr i64 %575, 63
  %595 = xor i64 %592, %594
  %596 = add nuw nsw i64 %595, %592
  %597 = icmp eq i64 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %37, align 1, !tbaa !2450
  %599 = add i64 %576, 5
  store i64 %599, i64* %PC, align 8
  %600 = add i64 %575, 72
  %601 = inttoptr i64 %577 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RBP, align 8, !tbaa !2428
  store i64 %600, i64* %RSP, align 8, !tbaa !2428
  %603 = add i64 %576, 6
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %600 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %PC, align 8, !tbaa !2428
  %606 = add i64 %575, 80
  store i64 %606, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400d68:                                     ; preds = %block_400d3a
  %607 = add i64 %97, -56
  %608 = add i64 %132, 4
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i64*
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = add i64 %132, 8
  store i64 %611, i64* %PC, align 8
  %612 = load i32, i32* %106, align 4
  %613 = sext i32 %612 to i64
  store i64 %613, i64* %RCX, align 8, !tbaa !2428
  %614 = shl nsw i64 %613, 3
  %615 = add i64 %614, %610
  %616 = add i64 %132, 13
  store i64 %616, i64* %PC, align 8
  %617 = inttoptr i64 %615 to i64*
  %618 = load i64, i64* %617, align 8
  store i64 %618, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %619 = add i64 %132, 17
  store i64 %619, i64* %PC, align 8
  %620 = load i64, i64* %609, align 8
  store i64 %620, i64* %RAX, align 8, !tbaa !2428
  %621 = add i64 %132, 21
  store i64 %621, i64* %PC, align 8
  %622 = load i32, i32* %101, align 4
  %623 = sext i32 %622 to i64
  store i64 %623, i64* %RCX, align 8, !tbaa !2428
  %624 = shl nsw i64 %623, 3
  %625 = add i64 %624, %620
  %626 = add i64 %132, 26
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %625 to i64*
  store i64 %618, i64* %627, align 8
  %628 = load i64, i64* %RBP, align 8
  %629 = add i64 %628, -24
  %630 = load i64, i64* %PC, align 8
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %634 = add i64 %628, -56
  %635 = add i64 %630, 9
  store i64 %635, i64* %PC, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %RAX, align 8, !tbaa !2428
  %638 = add i64 %628, -28
  %639 = add i64 %630, 13
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RCX, align 8, !tbaa !2428
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %637
  %645 = add i64 %630, 18
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i64*
  store i64 %633, i64* %646, align 8
  %.pre16 = load i64, i64* %PC, align 8
  %.pre17 = load i64, i64* %RBP, align 8
  br label %block_400d94

block_400caf:                                     ; preds = %block_400ca3
  %647 = add i64 %739, -40
  %648 = add i64 %773, 4
  store i64 %648, i64* %PC, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX, align 8, !tbaa !2428
  %651 = add i64 %773, 8
  store i64 %651, i64* %PC, align 8
  %652 = load i32, i32* %742, align 4
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RCX, align 8, !tbaa !2428
  %654 = shl nsw i64 %653, 3
  %655 = add i64 %654, %650
  %656 = add i64 %773, 13
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %659 = add i64 %739, -24
  %660 = add i64 %773, 18
  store i64 %660, i64* %PC, align 8
  %661 = inttoptr i64 %659 to i64*
  store i64 %658, i64* %661, align 8
  %662 = load i64, i64* %RBP, align 8
  %663 = add i64 %662, -40
  %664 = load i64, i64* %PC, align 8
  %665 = add i64 %664, 4
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RAX, align 8, !tbaa !2428
  %668 = add i64 %662, -28
  %669 = add i64 %664, 8
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sext i32 %671 to i64
  store i64 %672, i64* %RCX, align 8, !tbaa !2428
  %673 = shl nsw i64 %672, 3
  %674 = add i64 %673, %667
  %675 = add i64 %664, 13
  store i64 %675, i64* %PC, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %678 = add i64 %664, 17
  store i64 %678, i64* %PC, align 8
  %679 = load i64, i64* %666, align 8
  store i64 %679, i64* %RAX, align 8, !tbaa !2428
  %680 = add i64 %662, -48
  %681 = add i64 %664, 21
  store i64 %681, i64* %PC, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  store i64 %684, i64* %RCX, align 8, !tbaa !2428
  %685 = shl nsw i64 %684, 3
  %686 = add i64 %685, %679
  %687 = add i64 %664, 26
  store i64 %687, i64* %PC, align 8
  %688 = inttoptr i64 %686 to i64*
  store i64 %677, i64* %688, align 8
  %689 = load i64, i64* %RBP, align 8
  %690 = add i64 %689, -24
  %691 = load i64, i64* %PC, align 8
  %692 = add i64 %691, 5
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %690 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %695 = add i64 %689, -40
  %696 = add i64 %691, 9
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = add i64 %689, -28
  %700 = add i64 %691, 13
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = sext i32 %702 to i64
  store i64 %703, i64* %RCX, align 8, !tbaa !2428
  %704 = shl nsw i64 %703, 3
  %705 = add i64 %704, %698
  %706 = add i64 %691, 18
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %705 to i64*
  store i64 %694, i64* %707, align 8
  %.pre12 = load i64, i64* %PC, align 8
  %.pre13 = load i64, i64* %RBP, align 8
  br label %block_400ced

block_400c27:                                     ; preds = %block_400dd6, %block_400c10
  %708 = phi i64 [ %.pre, %block_400c10 ], [ %165, %block_400dd6 ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400c10 ], [ %MEMORY.0, %block_400dd6 ]
  %709 = load i64, i64* %RBP, align 8
  %710 = add i64 %709, -28
  %711 = add i64 %708, 7
  store i64 %711, i64* %PC, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = add i32 %713, -1999
  %715 = icmp ult i32 %713, 1999
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %13, align 1, !tbaa !2432
  %717 = and i32 %714, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717) #9
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %20, align 1, !tbaa !2446
  %722 = xor i32 %714, %713
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %25, align 1, !tbaa !2447
  %726 = icmp eq i32 %714, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %28, align 1, !tbaa !2448
  %728 = lshr i32 %714, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %31, align 1, !tbaa !2449
  %730 = lshr i32 %713, 31
  %731 = xor i32 %728, %730
  %732 = add nuw nsw i32 %731, %730
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %37, align 1, !tbaa !2450
  %735 = icmp ne i8 %729, 0
  %736 = xor i1 %735, %733
  %.v = select i1 %736, i64 13, i64 450
  %737 = add i64 %708, %.v
  store i64 %737, i64* %PC, align 8, !tbaa !2428
  br i1 %736, label %block_400c34, label %block_400de9

block_400ca3:                                     ; preds = %block_400c98, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %738 = phi i64 [ %397, %block_400c98 ], [ %390, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %739 = load i64, i64* %RBP, align 8
  %740 = add i64 %739, -48
  %741 = add i64 %738, 3
  store i64 %741, i64* %PC, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RAX, align 8, !tbaa !2428
  %745 = add i64 %739, -28
  %746 = add i64 %738, 6
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = sub i32 %743, %748
  %750 = icmp ult i32 %743, %748
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %13, align 1, !tbaa !2432
  %752 = and i32 %749, 255
  %753 = tail call i32 @llvm.ctpop.i32(i32 %752) #9
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  store i8 %756, i8* %20, align 1, !tbaa !2446
  %757 = xor i32 %748, %743
  %758 = xor i32 %757, %749
  %759 = lshr i32 %758, 4
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  store i8 %761, i8* %25, align 1, !tbaa !2447
  %762 = icmp eq i32 %749, 0
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %28, align 1, !tbaa !2448
  %764 = lshr i32 %749, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %31, align 1, !tbaa !2449
  %766 = lshr i32 %743, 31
  %767 = lshr i32 %748, 31
  %768 = xor i32 %767, %766
  %769 = xor i32 %764, %766
  %770 = add nuw nsw i32 %769, %768
  %771 = icmp eq i32 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %37, align 1, !tbaa !2450
  %.v18 = select i1 %762, i64 74, i64 12
  %773 = add i64 %738, %.v18
  store i64 %773, i64* %PC, align 8, !tbaa !2428
  br i1 %762, label %block_400ced, label %block_400caf
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400640:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602058__bss_type* @seg_602058__bss to i64), i64 8) to i8*), align 8
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
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2448
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2449
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2450
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400649, label %block_400660

block_400660:                                     ; preds = %block_400640
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

block_400649:                                     ; preds = %block_400640
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
  %36 = tail call %struct.Memory* @sub_4005d0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602058__bss_type* @seg_602058__bss to i64), i64 8) to i8*), align 8
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400510__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
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
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400522, label %block_400520

block_400520:                                     ; preds = %block_400510
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400522

block_400522:                                     ; preds = %block_400520, %block_400510
  %27 = phi i64 [ %22, %block_400510 ], [ %.pre1, %block_400520 ]
  %28 = phi i64 [ %4, %block_400510 ], [ %.pre, %block_400520 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400510 ], [ %26, %block_400520 ]
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
  store i8 %41, i8* %7, align 1, !tbaa !2447
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2448
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2449
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2450
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
define %struct.Memory* @sub_4009f0_dscal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4009f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  store i64 %11, i64* %9, align 8, !tbaa !2428
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -12
  %15 = load i32, i32* %EDI, align 4
  %16 = add i64 %13, 6
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -16
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC, align 8
  %22 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %23 = load i64, i64* %22, align 1
  %24 = inttoptr i64 %19 to i64*
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -24
  %27 = load i64, i64* %RSI, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -28
  %33 = load i32, i32* %EDX, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -32
  %39 = load i32, i32* %ECX, align 4
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %49, align 1, !tbaa !2432
  %50 = and i32 %48, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #9
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %54, i8* %55, align 1, !tbaa !2446
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %56, align 1, !tbaa !2447
  %57 = icmp eq i32 %48, 0
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %58, i8* %59, align 1, !tbaa !2448
  %60 = lshr i32 %48, 31
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %61, i8* %62, align 1, !tbaa !2449
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %63, align 1, !tbaa !2450
  %64 = icmp ne i8 %61, 0
  %65 = or i1 %57, %64
  %.v = select i1 %65, i64 167, i64 10
  %66 = add i64 %45, %.v
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  br i1 %65, label %block_400aad, label %block_400a10

block_400a1a:                                     ; preds = %block_400a10
  %67 = add i64 %218, 3
  store i64 %67, i64* %PC, align 8
  %68 = load i32, i32* %47, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = add i64 %218, 7
  store i64 %70, i64* %PC, align 8
  %71 = load i32, i32* %195, align 4
  %72 = sext i32 %68 to i64
  %73 = sext i32 %71 to i64
  %74 = mul nsw i64 %73, %72
  %75 = trunc i64 %74 to i32
  %76 = and i64 %74, 4294967295
  store i64 %76, i64* %RAX, align 8, !tbaa !2428
  %77 = shl i64 %74, 32
  %78 = ashr exact i64 %77, 32
  %79 = icmp ne i64 %78, %74
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %49, align 1, !tbaa !2432
  %81 = and i32 %75, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #9
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %55, align 1, !tbaa !2446
  store i8 0, i8* %56, align 1, !tbaa !2447
  store i8 0, i8* %59, align 1, !tbaa !2448
  %86 = lshr i32 %75, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %62, align 1, !tbaa !2449
  store i8 %80, i8* %63, align 1, !tbaa !2450
  %88 = add i64 %43, -40
  %89 = trunc i64 %74 to i32
  %90 = add i64 %218, 10
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -36
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 0, i32* %96, align 4
  %97 = bitcast %union.VectorReg* %6 to double*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a2b

block_400a37:                                     ; preds = %block_400a2b
  %100 = add i64 %352, -16
  %101 = add i64 %388, 5
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %22, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %104 = add i64 %352, -24
  %105 = add i64 %388, 9
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RAX, align 8, !tbaa !2428
  %108 = add i64 %388, 12
  store i64 %108, i64* %PC, align 8
  %109 = load i32, i32* %355, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RCX, align 8, !tbaa !2428
  %111 = add i64 %352, -28
  %112 = add i64 %388, 15
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %109
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RCX, align 8, !tbaa !2428
  %117 = icmp ult i32 %115, %109
  %118 = icmp ult i32 %115, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %49, align 1, !tbaa !2432
  %121 = and i32 %115, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121) #9
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %55, align 1, !tbaa !2446
  %126 = xor i32 %114, %109
  %127 = xor i32 %126, %115
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %56, align 1, !tbaa !2447
  %131 = icmp eq i32 %115, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %59, align 1, !tbaa !2448
  %133 = lshr i32 %115, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %62, align 1, !tbaa !2449
  %135 = lshr i32 %109, 31
  %136 = lshr i32 %114, 31
  %137 = xor i32 %133, %135
  %138 = xor i32 %133, %136
  %139 = add nuw nsw i32 %137, %138
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %63, align 1, !tbaa !2450
  %142 = sext i32 %115 to i64
  store i64 %142, i64* %RDX, align 8, !tbaa !2428
  %143 = shl nsw i64 %142, 3
  %144 = add i64 %107, %143
  %145 = add i64 %388, 23
  store i64 %145, i64* %PC, align 8
  %146 = bitcast i64 %103 to double
  %147 = inttoptr i64 %144 to double*
  %148 = load double, double* %147, align 8
  %149 = fmul double %146, %148
  store double %149, double* %97, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %150 = add i64 %388, 28
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %144 to double*
  store double %149, double* %151, align 8
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -32
  %154 = load i64, i64* %PC, align 8
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %153 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = add i64 %152, -36
  %160 = add i64 %154, 6
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, %157
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = icmp ult i32 %163, %157
  %166 = icmp ult i32 %163, %162
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %49, align 1, !tbaa !2432
  %169 = and i32 %163, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169) #9
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %55, align 1, !tbaa !2446
  %174 = xor i32 %162, %157
  %175 = xor i32 %174, %163
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %56, align 1, !tbaa !2447
  %179 = icmp eq i32 %163, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %59, align 1, !tbaa !2448
  %181 = lshr i32 %163, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %62, align 1, !tbaa !2449
  %183 = lshr i32 %157, 31
  %184 = lshr i32 %162, 31
  %185 = xor i32 %181, %183
  %186 = xor i32 %181, %184
  %187 = add nuw nsw i32 %185, %186
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %63, align 1, !tbaa !2450
  %190 = add i64 %154, 9
  store i64 %190, i64* %PC, align 8
  store i32 %163, i32* %161, align 4
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, -49
  store i64 %192, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2b

block_400a10:                                     ; preds = %block_4009f0
  %193 = add i64 %43, -32
  %194 = add i64 %66, 4
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, -1
  %198 = icmp eq i32 %196, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %49, align 1, !tbaa !2432
  %200 = and i32 %197, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #9
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %55, align 1, !tbaa !2446
  %205 = xor i32 %197, %196
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %56, align 1, !tbaa !2447
  %209 = icmp eq i32 %197, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %59, align 1, !tbaa !2448
  %211 = lshr i32 %197, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %62, align 1, !tbaa !2449
  %213 = lshr i32 %196, 31
  %214 = xor i32 %211, %213
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %63, align 1, !tbaa !2450
  %.v12 = select i1 %209, i64 86, i64 10
  %218 = add i64 %66, %.v12
  store i64 %218, i64* %PC, align 8, !tbaa !2428
  br i1 %209, label %block_400a66, label %block_400a1a

block_400a6d:                                     ; preds = %block_400a66, %block_400a79
  %219 = phi i64 [ %.pre11, %block_400a66 ], [ %340, %block_400a79 ]
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -36
  %222 = add i64 %219, 3
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = add i64 %220, -4
  %227 = add i64 %219, 6
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sub i32 %224, %229
  %231 = icmp ult i32 %224, %229
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %49, align 1, !tbaa !2432
  %233 = and i32 %230, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233) #9
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %55, align 1, !tbaa !2446
  %238 = xor i32 %229, %224
  %239 = xor i32 %238, %230
  %240 = lshr i32 %239, 4
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %56, align 1, !tbaa !2447
  %243 = icmp eq i32 %230, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %59, align 1, !tbaa !2448
  %245 = lshr i32 %230, 31
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %62, align 1, !tbaa !2449
  %247 = lshr i32 %224, 31
  %248 = lshr i32 %229, 31
  %249 = xor i32 %248, %247
  %250 = xor i32 %245, %247
  %251 = add nuw nsw i32 %250, %249
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %63, align 1, !tbaa !2450
  %254 = icmp ne i8 %246, 0
  %255 = xor i1 %254, %252
  %.v14 = select i1 %255, i64 12, i64 54
  %256 = add i64 %219, %.v14
  store i64 %256, i64* %PC, align 8, !tbaa !2428
  br i1 %255, label %block_400a79, label %block_400aa8.loopexit

block_400a79:                                     ; preds = %block_400a6d
  %257 = add i64 %220, -16
  %258 = add i64 %256, 5
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %22, align 1, !tbaa !2451
  store double 0.000000e+00, double* %396, align 1, !tbaa !2451
  %261 = add i64 %220, -24
  %262 = add i64 %256, 9
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = add i64 %256, 12
  store i64 %265, i64* %PC, align 8
  %266 = load i32, i32* %223, align 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RCX, align 8, !tbaa !2428
  %268 = add i64 %220, -28
  %269 = add i64 %256, 15
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %266
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RCX, align 8, !tbaa !2428
  %274 = icmp ult i32 %272, %266
  %275 = icmp ult i32 %272, %271
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %49, align 1, !tbaa !2432
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278) #9
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %55, align 1, !tbaa !2446
  %283 = xor i32 %271, %266
  %284 = xor i32 %283, %272
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %56, align 1, !tbaa !2447
  %288 = icmp eq i32 %272, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %59, align 1, !tbaa !2448
  %290 = lshr i32 %272, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %62, align 1, !tbaa !2449
  %292 = lshr i32 %266, 31
  %293 = lshr i32 %271, 31
  %294 = xor i32 %290, %292
  %295 = xor i32 %290, %293
  %296 = add nuw nsw i32 %294, %295
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %63, align 1, !tbaa !2450
  %299 = sext i32 %272 to i64
  store i64 %299, i64* %RDX, align 8, !tbaa !2428
  %300 = shl nsw i64 %299, 3
  %301 = add i64 %264, %300
  %302 = add i64 %256, 23
  store i64 %302, i64* %PC, align 8
  %303 = bitcast i64 %260 to double
  %304 = inttoptr i64 %301 to double*
  %305 = load double, double* %304, align 8
  %306 = fmul double %303, %305
  store double %306, double* %394, align 1, !tbaa !2451
  store i64 0, i64* %395, align 1, !tbaa !2451
  %307 = add i64 %256, 28
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %301 to double*
  store double %306, double* %308, align 8
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -36
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = add i32 %314, 1
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX, align 8, !tbaa !2428
  %317 = icmp eq i32 %314, -1
  %318 = icmp eq i32 %315, 0
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %49, align 1, !tbaa !2432
  %321 = and i32 %315, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #9
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %55, align 1, !tbaa !2446
  %326 = xor i32 %315, %314
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %56, align 1, !tbaa !2447
  %330 = zext i1 %318 to i8
  store i8 %330, i8* %59, align 1, !tbaa !2448
  %331 = lshr i32 %315, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %62, align 1, !tbaa !2449
  %333 = lshr i32 %314, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %331
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %63, align 1, !tbaa !2450
  %338 = add i64 %311, 9
  store i64 %338, i64* %PC, align 8
  store i32 %315, i32* %313, align 4
  %339 = load i64, i64* %PC, align 8
  %340 = add i64 %339, -49
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6d

block_400aad:                                     ; preds = %block_400aa8, %block_4009f0
  %341 = phi i64 [ %390, %block_400aa8 ], [ %66, %block_4009f0 ]
  %342 = add i64 %341, 1
  store i64 %342, i64* %PC, align 8
  %343 = load i64, i64* %9, align 8, !tbaa !2428
  %344 = add i64 %343, 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RBP, align 8, !tbaa !2428
  store i64 %344, i64* %9, align 8, !tbaa !2428
  %347 = add i64 %341, 2
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %344 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  %350 = add i64 %343, 16
  store i64 %350, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400a2b:                                     ; preds = %block_400a37, %block_400a1a
  %351 = phi i64 [ %192, %block_400a37 ], [ %.pre, %block_400a1a ]
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -36
  %354 = add i64 %351, 3
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = add i64 %352, -40
  %359 = add i64 %351, 6
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sub i32 %356, %361
  %363 = icmp ult i32 %356, %361
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %49, align 1, !tbaa !2432
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #9
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %55, align 1, !tbaa !2446
  %370 = xor i32 %361, %356
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %56, align 1, !tbaa !2447
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %59, align 1, !tbaa !2448
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %62, align 1, !tbaa !2449
  %379 = lshr i32 %356, 31
  %380 = lshr i32 %361, 31
  %381 = xor i32 %380, %379
  %382 = xor i32 %377, %379
  %383 = add nuw nsw i32 %382, %381
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %63, align 1, !tbaa !2450
  %386 = icmp ne i8 %378, 0
  %387 = xor i1 %386, %384
  %.v13 = select i1 %387, i64 12, i64 54
  %388 = add i64 %351, %.v13
  store i64 %388, i64* %PC, align 8, !tbaa !2428
  br i1 %387, label %block_400a37, label %block_400aa8.loopexit19

block_400aa8.loopexit:                            ; preds = %block_400a6d
  br label %block_400aa8

block_400aa8.loopexit19:                          ; preds = %block_400a2b
  br label %block_400aa8

block_400aa8:                                     ; preds = %block_400aa8.loopexit19, %block_400aa8.loopexit
  %389 = phi i64 [ %256, %block_400aa8.loopexit ], [ %388, %block_400aa8.loopexit19 ]
  %.sink5 = phi i64 [ 10, %block_400aa8.loopexit ], [ 76, %block_400aa8.loopexit19 ]
  %390 = add i64 %.sink5, %389
  store i64 %390, i64* %PC, align 8, !tbaa !2428
  br label %block_400aad

block_400a66:                                     ; preds = %block_400a10
  %391 = add i64 %43, -36
  %392 = add i64 %218, 7
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 0, i32* %393, align 4
  %394 = bitcast %union.VectorReg* %6 to double*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %396 = bitcast i64* %395 to double*
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400a6d
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007a0_random_double(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  store i64 %9, i64* %7, align 8, !tbaa !2428
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  store i64 127773, i64* %RCX, align 8, !tbaa !2428
  %12 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  %13 = xor i64 %12, 123459876
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2446
  %22 = icmp eq i64 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1, !tbaa !2448
  %25 = lshr i64 %12, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2449
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1, !tbaa !2450
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i64 %13, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  store i64 %13, i64* %RAX, align 8, !tbaa !2428
  %30 = ashr i64 %12, 63
  store i64 %30, i64* %RDX, align 8, !tbaa !2428
  %31 = add i64 %11, 46
  store i64 %31, i64* %PC, align 8
  %32 = zext i64 %30 to i128
  %33 = shl nuw i128 %32, 64
  %34 = zext i64 %13 to i128
  %35 = or i128 %33, %34
  %36 = sdiv i128 %35, 127773
  %37 = trunc i128 %36 to i64
  %38 = and i128 %36, 18446744073709551615
  %39 = sext i64 %37 to i128
  %40 = and i128 %39, -18446744073709551616
  %41 = or i128 %40, %38
  %42 = icmp eq i128 %36, %41
  br i1 %42, label %45, label %43

; <label>:43:                                     ; preds = %block_4007a0
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %RAX, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:45:                                     ; preds = %block_4007a0
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %47 = srem i128 %35, 127773
  %48 = trunc i128 %47 to i64
  store i64 %37, i64* %46, align 8, !tbaa !2428
  store i64 %48, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 0, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  store i8 0, i8* %27, align 1, !tbaa !2449
  store i8 0, i8* %28, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %45, %43
  %49 = phi i64 [ %.pre2, %43 ], [ %31, %45 ]
  %50 = phi i64 [ %.pre1, %43 ], [ %37, %45 ]
  %51 = phi i64 [ %.pre, %43 ], [ %9, %45 ]
  %52 = phi %struct.Memory* [ %44, %43 ], [ %2, %45 ]
  %53 = add i64 %51, -8
  %54 = add i64 %49, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i64*
  store i64 %50, i64* %55, align 8
  %56 = load i64, i64* %PC, align 8
  %57 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -8
  %60 = add i64 %56, 16
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %62, 127773
  store i64 %63, i64* %RCX, align 8, !tbaa !2428
  %64 = sub i64 %57, %63
  %65 = sext i64 %64 to i128
  %66 = and i128 %65, -18446744073709551616
  %67 = zext i64 %64 to i128
  %68 = or i128 %66, %67
  %69 = mul nsw i128 %68, 16807
  %70 = trunc i128 %69 to i64
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = sext i64 %70 to i128
  %72 = icmp ne i128 %71, %69
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1, !tbaa !2432
  %74 = trunc i128 %69 to i32
  %75 = and i32 %74, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75) #9
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %24, align 1, !tbaa !2448
  %80 = lshr i64 %70, 63
  %81 = trunc i64 %80 to i8
  store i8 %81, i8* %27, align 1, !tbaa !2449
  store i8 %73, i8* %28, align 1, !tbaa !2450
  %82 = add i64 %56, 34
  store i64 %82, i64* %PC, align 8
  %83 = load i64, i64* %61, align 8
  %84 = mul i64 %83, 2836
  store i64 %84, i64* %RCX, align 8, !tbaa !2428
  %85 = sub i64 %70, %84
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  %92 = icmp eq i64 %85, 0
  %93 = zext i1 %92 to i8
  %94 = lshr i64 %85, 63
  %95 = trunc i64 %94 to i8
  store i64 %85, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  %96 = add i64 %56, 54
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 %91, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 %93, i8* %24, align 1, !tbaa !2448
  store i8 %95, i8* %27, align 1, !tbaa !2449
  store i8 0, i8* %28, align 1, !tbaa !2450
  %97 = icmp ne i8 %95, 0
  %.v = select i1 %97, i64 6, i64 28
  %98 = add i64 %96, %.v
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  br i1 %97, label %block_40080f, label %block_400825

block_40080f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %99 = add i64 %85, 2147483647
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = icmp ugt i64 %85, -2147483648
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %14, align 1, !tbaa !2432
  %102 = trunc i64 %99 to i32
  %103 = and i32 %102, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #9
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1, !tbaa !2446
  %108 = xor i64 %85, 16
  %109 = xor i64 %108, %99
  %110 = lshr i64 %109, 4
  %111 = trunc i64 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %29, align 1, !tbaa !2447
  %113 = icmp eq i64 %99, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %24, align 1, !tbaa !2448
  %115 = lshr i64 %99, 63
  %116 = trunc i64 %115 to i8
  store i8 %116, i8* %27, align 1, !tbaa !2449
  %117 = xor i64 %115, %94
  %118 = add nuw nsw i64 %117, %115
  %119 = icmp eq i64 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %28, align 1, !tbaa !2450
  %121 = add i64 %98, 22
  store i64 %121, i64* %PC, align 8
  store i64 %99, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  br label %block_400825

block_400825:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit, %block_40080f
  %122 = phi i64 [ %85, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ], [ %99, %block_40080f ]
  %123 = phi i64 [ %98, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ], [ %121, %block_40080f ]
  %124 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 8) to double*), align 8
  %125 = bitcast [32 x %union.VectorReg]* %3 to double*
  %126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %128 = bitcast i64* %127 to double*
  %129 = sitofp i64 %122 to double
  %130 = bitcast %union.VectorReg* %4 to double*
  store double %129, double* %130, align 1, !tbaa !2451
  %131 = fmul double %129, %124
  store double %131, double* %125, align 1, !tbaa !2451
  store i64 0, i64* %127, align 1, !tbaa !2451
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -16
  %134 = add i64 %123, 27
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to double*
  store double %131, double* %135, align 8
  %136 = load i64, i64* %PC, align 8
  %137 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  %138 = xor i64 %137, 123459876
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %139 = trunc i64 %138 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #9
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %21, align 1, !tbaa !2446
  %145 = icmp eq i64 %138, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %24, align 1, !tbaa !2448
  %147 = lshr i64 %137, 63
  %148 = trunc i64 %147 to i8
  store i8 %148, i8* %27, align 1, !tbaa !2449
  store i8 0, i8* %28, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i64 %138, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602040__data_type* @seg_602040__data to i64), i64 16) to i64*), align 16
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -16
  %151 = add i64 %136, 27
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %126, align 1, !tbaa !2451
  store double 0.000000e+00, double* %128, align 1, !tbaa !2451
  %154 = add i64 %136, 28
  store i64 %154, i64* %PC, align 8
  %155 = load i64, i64* %7, align 8, !tbaa !2428
  %156 = add i64 %155, 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RBP, align 8, !tbaa !2428
  store i64 %156, i64* %7, align 8, !tbaa !2428
  %159 = add i64 %136, 29
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %156 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %PC, align 8, !tbaa !2428
  %162 = add i64 %155, 16
  store i64 %162, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %52
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401200___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401200:
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
define %struct.Memory* @sub_400670_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
  %13 = tail call %struct.Memory* @sub_400600_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e00_dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400e00:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -72
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 64
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
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2448
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2449
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2450
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -16
  %44 = load i64, i64* %RSI, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -24
  %50 = load i64, i64* %RDX, align 8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -36
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 7
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %55 to i32*
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %61 = bitcast i64* %60 to double*
  %62 = bitcast i64* %RSP to i32**
  %.pre = load i64, i64* %PC, align 8
  br label %block_400e1b

block_400ed5:                                     ; preds = %block_400ee2, %block_400ece
  %63 = phi i64 [ %.pre7, %block_400ece ], [ %300, %block_400ee2 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400ece ], [ %268, %block_400ee2 ]
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -40
  %66 = add i64 %63, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, -2000
  %70 = icmp ult i32 %68, 2000
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %13, align 1, !tbaa !2432
  %72 = and i32 %69, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #9
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %20, align 1, !tbaa !2446
  %77 = xor i32 %68, 16
  %78 = xor i32 %77, %69
  %79 = lshr i32 %78, 4
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  store i8 %81, i8* %25, align 1, !tbaa !2447
  %82 = icmp eq i32 %69, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %28, align 1, !tbaa !2448
  %84 = lshr i32 %69, 31
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %31, align 1, !tbaa !2449
  %86 = lshr i32 %68, 31
  %87 = xor i32 %84, %86
  %88 = add nuw nsw i32 %87, %86
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %37, align 1, !tbaa !2450
  %91 = icmp ne i8 %85, 0
  %92 = xor i1 %91, %89
  %.v10 = select i1 %92, i64 13, i64 179
  %93 = add i64 %63, %.v10
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  br i1 %92, label %block_400ee2, label %block_400f88

block_400e1b:                                     ; preds = %block_400e80, %block_400e00
  %94 = phi i64 [ %.pre, %block_400e00 ], [ %576, %block_400e80 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400e00 ], [ %544, %block_400e80 ]
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -36
  %97 = add i64 %94, 7
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, -1999
  %101 = icmp ult i32 %99, 1999
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %13, align 1, !tbaa !2432
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #9
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %20, align 1, !tbaa !2446
  %108 = xor i32 %100, %99
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %25, align 1, !tbaa !2447
  %112 = icmp eq i32 %100, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %28, align 1, !tbaa !2448
  %114 = lshr i32 %100, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %31, align 1, !tbaa !2449
  %116 = lshr i32 %99, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %37, align 1, !tbaa !2450
  %121 = icmp ne i8 %115, 0
  %122 = xor i1 %121, %119
  %.v = select i1 %122, i64 13, i64 179
  %123 = add i64 %94, %.v
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br i1 %122, label %block_400e28, label %block_400ece

block_400ece:                                     ; preds = %block_400e1b
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %125 = add i64 %95, -40
  %126 = add i64 %123, 7
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 0, i32* %127, align 4
  %128 = bitcast %union.VectorReg* %124 to double*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400ed5

block_400ee2:                                     ; preds = %block_400ed5
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %20, align 1, !tbaa !2446
  store i8 1, i8* %28, align 1, !tbaa !2448
  store i8 0, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2447
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RDX, align 8, !tbaa !2428
  store i64 2000, i64* %RSI, align 8, !tbaa !2428
  %130 = add i64 %93, 25
  store i64 %130, i64* %PC, align 8
  %131 = load i32, i32* %67, align 4
  %132 = add i32 %131, 1
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RDI, align 8, !tbaa !2428
  %134 = lshr i32 %132, 31
  %135 = sub i32 1999, %131
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RSI, align 8, !tbaa !2428
  %137 = icmp ugt i32 %132, 2000
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %13, align 1, !tbaa !2432
  %139 = and i32 %135, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #9
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %20, align 1, !tbaa !2446
  %144 = xor i32 %132, 16
  %145 = xor i32 %144, %135
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2447
  %149 = icmp eq i32 %135, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %28, align 1, !tbaa !2448
  %151 = lshr i32 %135, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2449
  %153 = add nuw nsw i32 %151, %134
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %37, align 1, !tbaa !2450
  %156 = load i64, i64* %RBP, align 8
  %157 = add i64 %156, -36
  %158 = add i64 %93, 33
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %157 to i32*
  store i32 %135, i32* %159, align 4
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -8
  %162 = load i64, i64* %PC, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %R8, align 8, !tbaa !2428
  %166 = add i64 %160, -36
  %167 = add i64 %162, 8
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %R9, align 8, !tbaa !2428
  %171 = shl nsw i64 %170, 3
  %172 = add i64 %171, %165
  %173 = add i64 %162, 12
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %R8, align 8, !tbaa !2428
  %176 = add i64 %162, 16
  store i64 %176, i64* %PC, align 8
  %177 = load i32, i32* %168, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %R9, align 8, !tbaa !2428
  %179 = shl nsw i64 %178, 3
  %180 = add i64 %179, %175
  %181 = add i64 %162, 22
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %184 = add i64 %160, -24
  %185 = add i64 %162, 26
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %R8, align 8, !tbaa !2428
  %188 = add i64 %162, 30
  store i64 %188, i64* %PC, align 8
  %189 = load i32, i32* %168, align 4
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %R9, align 8, !tbaa !2428
  %191 = shl nsw i64 %190, 3
  %192 = add i64 %191, %187
  %193 = add i64 %162, 36
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to double*
  %195 = load double, double* %194, align 8
  %196 = bitcast i64 %183 to double
  %197 = fdiv double %195, %196
  store double %197, double* %128, align 1, !tbaa !2451
  store i64 0, i64* %129, align 1, !tbaa !2451
  %198 = add i64 %162, 46
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %192 to double*
  store double %197, double* %199, align 8
  %200 = load i64, i64* %RBP, align 8
  %201 = add i64 %200, -24
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %R8, align 8, !tbaa !2428
  %206 = add i64 %200, -36
  %207 = add i64 %202, 8
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %R9, align 8, !tbaa !2428
  %211 = shl nsw i64 %210, 3
  %212 = add i64 %211, %205
  %213 = add i64 %202, 14
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %RDX, align 8
  %217 = xor i64 %216, %215
  store i64 %217, i64* %R8, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %218 = trunc i64 %217 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #9
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %20, align 1, !tbaa !2446
  %224 = icmp eq i64 %217, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %28, align 1, !tbaa !2448
  %226 = lshr i64 %217, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2447
  store i64 %217, i64* %59, align 1, !tbaa !2428
  store i64 0, i64* %60, align 1, !tbaa !2428
  %228 = add i64 %200, -32
  %229 = add i64 %202, 32
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i64*
  store i64 %217, i64* %230, align 8
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -36
  %233 = load i64, i64* %PC, align 8
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RDI, align 8, !tbaa !2428
  %238 = add i64 %231, -32
  %239 = add i64 %233, 8
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %242 = add i64 %231, -8
  %243 = add i64 %233, 12
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RDX, align 8, !tbaa !2428
  %246 = add i64 %233, 16
  store i64 %246, i64* %PC, align 8
  %247 = load i32, i32* %235, align 4
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %R8, align 8, !tbaa !2428
  %249 = shl nsw i64 %248, 3
  %250 = add i64 %249, %245
  %251 = add i64 %233, 20
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RSI, align 8, !tbaa !2428
  %254 = add i64 %231, -24
  %255 = add i64 %233, 24
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %R8, align 8, !tbaa !2428
  %258 = load i32, i32* %EAX, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RDX, align 8, !tbaa !2428
  store i64 %259, i64* %R9, align 8, !tbaa !2428
  %260 = load i32*, i32** %62, align 8
  %261 = add i64 %233, 36
  store i64 %261, i64* %PC, align 8
  store i32 1, i32* %260, align 4
  %262 = load i64, i64* %PC, align 8
  %263 = add i64 %262, -1221
  %264 = add i64 %262, 5
  %265 = load i64, i64* %RSP, align 8, !tbaa !2428
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %RSP, align 8, !tbaa !2428
  store i64 %263, i64* %PC, align 8, !tbaa !2428
  %268 = tail call %struct.Memory* @sub_400ab0_daxpy(%struct.State* nonnull %0, i64 %263, %struct.Memory* %MEMORY.0)
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -40
  %271 = load i64, i64* %PC, align 8
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %13, align 1, !tbaa !2432
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #9
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %20, align 1, !tbaa !2446
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %25, align 1, !tbaa !2447
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %28, align 1, !tbaa !2448
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %31, align 1, !tbaa !2449
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %37, align 1, !tbaa !2450
  %298 = add i64 %271, 9
  store i64 %298, i64* %PC, align 8
  store i32 %275, i32* %273, align 4
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, -174
  store i64 %300, i64* %PC, align 8, !tbaa !2428
  br label %block_400ed5

block_400e54:                                     ; preds = %block_400e28
  %301 = add i64 %376, -24
  %302 = add i64 %411, 4
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RAX, align 8, !tbaa !2428
  %305 = add i64 %411, 8
  store i64 %305, i64* %PC, align 8
  %306 = load i32, i32* %385, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  %308 = shl nsw i64 %307, 3
  %309 = add i64 %308, %304
  %310 = add i64 %411, 13
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %313 = add i64 %411, 17
  store i64 %313, i64* %PC, align 8
  %314 = load i64, i64* %303, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %411, 21
  store i64 %315, i64* %PC, align 8
  %316 = load i32, i32* %380, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RCX, align 8, !tbaa !2428
  %318 = shl nsw i64 %317, 3
  %319 = add i64 %318, %314
  %320 = add i64 %411, 26
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  store i64 %312, i64* %321, align 8
  %322 = load i64, i64* %RBP, align 8
  %323 = add i64 %322, -32
  %324 = load i64, i64* %PC, align 8
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %323 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %328 = add i64 %322, -24
  %329 = add i64 %324, 9
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = add i64 %322, -36
  %333 = add i64 %324, 13
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RCX, align 8, !tbaa !2428
  %337 = shl nsw i64 %336, 3
  %338 = add i64 %337, %331
  %339 = add i64 %324, 18
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  store i64 %327, i64* %340, align 8
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %block_400e80

block_400e28:                                     ; preds = %block_400e1b
  %341 = add i64 %95, -16
  %342 = add i64 %123, 4
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = add i64 %123, 8
  store i64 %345, i64* %PC, align 8
  %346 = load i32, i32* %98, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RCX, align 8, !tbaa !2428
  %348 = shl nsw i64 %347, 2
  %349 = add i64 %348, %344
  %350 = add i64 %123, 11
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RDX, align 8, !tbaa !2428
  %354 = add i64 %95, -44
  %355 = add i64 %123, 14
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 %352, i32* %356, align 4
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -24
  %359 = load i64, i64* %PC, align 8
  %360 = add i64 %359, 4
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %358 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = add i64 %357, -44
  %364 = add i64 %359, 8
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  %368 = shl nsw i64 %367, 3
  %369 = add i64 %368, %362
  %370 = add i64 %359, 13
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %373 = add i64 %357, -32
  %374 = add i64 %359, 18
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i64*
  store i64 %372, i64* %375, align 8
  %376 = load i64, i64* %RBP, align 8
  %377 = add i64 %376, -44
  %378 = load i64, i64* %PC, align 8
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RDX, align 8, !tbaa !2428
  %383 = add i64 %376, -36
  %384 = add i64 %378, 6
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = sub i32 %381, %386
  %388 = icmp ult i32 %381, %386
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %13, align 1, !tbaa !2432
  %390 = and i32 %387, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #9
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %20, align 1, !tbaa !2446
  %395 = xor i32 %386, %381
  %396 = xor i32 %395, %387
  %397 = lshr i32 %396, 4
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %25, align 1, !tbaa !2447
  %400 = icmp eq i32 %387, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %28, align 1, !tbaa !2448
  %402 = lshr i32 %387, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %31, align 1, !tbaa !2449
  %404 = lshr i32 %381, 31
  %405 = lshr i32 %386, 31
  %406 = xor i32 %405, %404
  %407 = xor i32 %402, %404
  %408 = add nuw nsw i32 %407, %406
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %37, align 1, !tbaa !2450
  %.v11 = select i1 %400, i64 56, i64 12
  %411 = add i64 %378, %.v11
  store i64 %411, i64* %PC, align 8, !tbaa !2428
  br i1 %400, label %block_400e80, label %block_400e54

block_400f88:                                     ; preds = %block_400ed5
  %412 = load i64, i64* %RSP, align 8
  %413 = add i64 %412, 64
  store i64 %413, i64* %RSP, align 8, !tbaa !2428
  %414 = icmp ugt i64 %412, -65
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %13, align 1, !tbaa !2432
  %416 = trunc i64 %413 to i32
  %417 = and i32 %416, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #9
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %20, align 1, !tbaa !2446
  %422 = xor i64 %413, %412
  %423 = lshr i64 %422, 4
  %424 = trunc i64 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %25, align 1, !tbaa !2447
  %426 = icmp eq i64 %413, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %28, align 1, !tbaa !2448
  %428 = lshr i64 %413, 63
  %429 = trunc i64 %428 to i8
  store i8 %429, i8* %31, align 1, !tbaa !2449
  %430 = lshr i64 %412, 63
  %431 = xor i64 %428, %430
  %432 = add nuw nsw i64 %431, %428
  %433 = icmp eq i64 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %37, align 1, !tbaa !2450
  %435 = add i64 %93, 5
  store i64 %435, i64* %PC, align 8
  %436 = add i64 %412, 72
  %437 = inttoptr i64 %413 to i64*
  %438 = load i64, i64* %437, align 8
  store i64 %438, i64* %RBP, align 8, !tbaa !2428
  store i64 %436, i64* %RSP, align 8, !tbaa !2428
  %439 = add i64 %93, 6
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %436 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %PC, align 8, !tbaa !2428
  %442 = add i64 %412, 80
  store i64 %442, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400e80:                                     ; preds = %block_400e28, %block_400e54
  %443 = phi i64 [ %376, %block_400e28 ], [ %.pre9, %block_400e54 ]
  %444 = phi i64 [ %411, %block_400e28 ], [ %.pre8, %block_400e54 ]
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  store i64 2000, i64* %RAX, align 8, !tbaa !2428
  %445 = add i64 %443, -36
  %446 = add i64 %444, 13
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, 1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX, align 8, !tbaa !2428
  %451 = icmp eq i32 %448, -1
  %452 = icmp eq i32 %449, 0
  %453 = or i1 %451, %452
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %13, align 1, !tbaa !2432
  %455 = and i32 %449, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455) #9
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %20, align 1, !tbaa !2446
  %460 = xor i32 %449, %448
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %25, align 1, !tbaa !2447
  %464 = zext i1 %452 to i8
  store i8 %464, i8* %28, align 1, !tbaa !2448
  %465 = lshr i32 %449, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %31, align 1, !tbaa !2449
  %467 = lshr i32 %448, 31
  %468 = xor i32 %465, %467
  %469 = add nuw nsw i32 %468, %465
  %470 = icmp eq i32 %469, 2
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %37, align 1, !tbaa !2450
  %472 = add i64 %443, -48
  %473 = add i64 %444, 19
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  store i32 %449, i32* %474, align 4
  %475 = load i64, i64* %RAX, align 8
  %476 = load i64, i64* %RBP, align 8
  %477 = add i64 %476, -48
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC, align 8
  %480 = trunc i64 %475 to i32
  %481 = inttoptr i64 %477 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sub i32 %480, %482
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RAX, align 8, !tbaa !2428
  %485 = icmp ult i32 %480, %482
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %13, align 1, !tbaa !2432
  %487 = and i32 %483, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #9
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %20, align 1, !tbaa !2446
  %492 = xor i32 %482, %480
  %493 = xor i32 %492, %483
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %25, align 1, !tbaa !2447
  %497 = icmp eq i32 %483, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %28, align 1, !tbaa !2448
  %499 = lshr i32 %483, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %31, align 1, !tbaa !2449
  %501 = lshr i32 %480, 31
  %502 = lshr i32 %482, 31
  %503 = xor i32 %502, %501
  %504 = xor i32 %499, %501
  %505 = add nuw nsw i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %37, align 1, !tbaa !2450
  %508 = add i64 %476, -32
  %509 = add i64 %478, 8
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %59, align 1, !tbaa !2451
  store double 0.000000e+00, double* %61, align 1, !tbaa !2451
  %512 = add i64 %476, -8
  %513 = add i64 %478, 12
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %RSI, align 8, !tbaa !2428
  %516 = add i64 %476, -36
  %517 = add i64 %478, 16
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  store i64 %520, i64* %RDI, align 8, !tbaa !2428
  %521 = shl nsw i64 %520, 3
  %522 = add i64 %521, %515
  %523 = add i64 %478, 20
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RSI, align 8, !tbaa !2428
  %526 = add i64 %478, 23
  store i64 %526, i64* %PC, align 8
  %527 = load i32, i32* %481, align 4
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RDX, align 8, !tbaa !2428
  %529 = add i64 %476, -24
  %530 = add i64 %478, 27
  store i64 %530, i64* %PC, align 8
  %531 = inttoptr i64 %529 to i64*
  %532 = load i64, i64* %531, align 8
  store i64 %532, i64* %R8, align 8, !tbaa !2428
  %533 = add i64 %478, 31
  store i64 %533, i64* %PC, align 8
  %534 = load i32, i32* %481, align 4
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %R9, align 8, !tbaa !2428
  store i64 %484, i64* %RDI, align 8, !tbaa !2428
  %536 = load i32*, i32** %62, align 8
  %537 = add i64 %478, 40
  store i64 %537, i64* %PC, align 8
  store i32 1, i32* %536, align 4
  %538 = load i64, i64* %PC, align 8
  %539 = add i64 %538, -1035
  %540 = add i64 %538, 5
  %541 = load i64, i64* %RSP, align 8, !tbaa !2428
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %RSP, align 8, !tbaa !2428
  store i64 %539, i64* %PC, align 8, !tbaa !2428
  %544 = tail call %struct.Memory* @sub_400ab0_daxpy(%struct.State* nonnull %0, i64 %539, %struct.Memory* %MEMORY.1)
  %545 = load i64, i64* %RBP, align 8
  %546 = add i64 %545, -36
  %547 = load i64, i64* %PC, align 8
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %546 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, 1
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX, align 8, !tbaa !2428
  %553 = icmp eq i32 %550, -1
  %554 = icmp eq i32 %551, 0
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %13, align 1, !tbaa !2432
  %557 = and i32 %551, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557) #9
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %20, align 1, !tbaa !2446
  %562 = xor i32 %551, %550
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %25, align 1, !tbaa !2447
  %566 = zext i1 %554 to i8
  store i8 %566, i8* %28, align 1, !tbaa !2448
  %567 = lshr i32 %551, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %31, align 1, !tbaa !2449
  %569 = lshr i32 %550, 31
  %570 = xor i32 %567, %569
  %571 = add nuw nsw i32 %570, %567
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %37, align 1, !tbaa !2450
  %574 = add i64 %547, 9
  store i64 %574, i64* %PC, align 8
  store i32 %551, i32* %549, align 4
  %575 = load i64, i64* %PC, align 8
  %576 = add i64 %575, -174
  store i64 %576, i64* %PC, align 8, !tbaa !2428
  br label %block_400e1b
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401204__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401204:
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
  store i8 %10, i8* %11, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2448
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2449
  store i8 %19, i8* %20, align 1, !tbaa !2450
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400600_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400600:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64* @stdout to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %10 = sub i64 %8, ptrtoint (i64* @stdout to i64)
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
  br i1 %29, label %block_400638, label %block_400623

block_400638:                                     ; preds = %block_400623, %block_400600
  %34 = phi i64 [ %44, %block_400623 ], [ %33, %block_400600 ]
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC, align 8
  %36 = load i64, i64* %RSP, align 8, !tbaa !2428
  %37 = add i64 %36, 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  store i64 %37, i64* %RSP, align 8, !tbaa !2428
  %40 = add i64 %34, 2
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %43 = add i64 %36, 16
  store i64 %43, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400623:                                     ; preds = %block_400600
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400638
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401190___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401190:
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
  %63 = add i64 %38, -3227
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400510__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  store i8 %77, i8* %46, align 1, !tbaa !2448
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4011e6, label %block_4011c6

block_4011e6.loopexit:                            ; preds = %block_4011d0
  br label %block_4011e6

block_4011e6:                                     ; preds = %block_4011e6.loopexit, %block_401190
  %81 = phi i64 [ %80, %block_401190 ], [ %179, %block_4011e6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401190 ], [ %149, %block_4011e6.loopexit ]
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
  store i8 %95, i8* %45, align 1, !tbaa !2447
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2448
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2449
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2450
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

block_4011c6:                                     ; preds = %block_401190
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4011d0

block_4011d0:                                     ; preds = %block_4011d0, %block_4011c6
  %134 = phi i64 [ 0, %block_4011c6 ], [ %152, %block_4011d0 ]
  %135 = phi i64 [ %133, %block_4011c6 ], [ %179, %block_4011d0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4011c6 ], [ %149, %block_4011d0 ]
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
  store i8 %168, i8* %45, align 1, !tbaa !2447
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2448
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2449
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2450
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4011e6.loopexit, label %block_4011d0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400860_idamax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400860:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  store i64 %12, i64* %10, align 8, !tbaa !2428
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -12
  %16 = load i32, i32* %EDI, align 4
  %17 = add i64 %14, 6
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %15 to i32*
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* %RBP, align 8
  %20 = add i64 %19, -16
  %21 = load i64, i64* %RSI, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %20 to i64*
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -20
  %27 = load i32, i32* %EDX, align 4
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -24
  %33 = load i32, i32* %ECX, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -52
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 7
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -4
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, -1
  %49 = icmp eq i32 %47, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %50, i8* %51, align 1, !tbaa !2432
  %52 = and i32 %48, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #9
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1, !tbaa !2446
  %58 = xor i32 %48, %47
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = icmp eq i32 %48, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = lshr i32 %48, 31
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = lshr i32 %47, 31
  %70 = xor i32 %66, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2450
  %75 = icmp ne i8 %67, 0
  %76 = xor i1 %75, %72
  %.v = select i1 %76, i64 10, i64 22
  %77 = add i64 %44, %.v
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_400882, label %block_40088e

block_400970:                                     ; preds = %block_400945, %block_4009be
  %78 = phi i64 [ %.pre26, %block_400945 ], [ %404, %block_4009be ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400945 ], [ %308, %block_4009be ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -44
  %81 = add i64 %78, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = add i64 %79, -4
  %86 = add i64 %78, 6
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %83, %88
  %90 = icmp ult i32 %83, %88
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %51, align 1, !tbaa !2432
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #9
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %57, align 1, !tbaa !2446
  %97 = xor i32 %88, %83
  %98 = xor i32 %97, %89
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %62, align 1, !tbaa !2447
  %102 = icmp eq i32 %89, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %65, align 1, !tbaa !2448
  %104 = lshr i32 %89, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %68, align 1, !tbaa !2449
  %106 = lshr i32 %83, 31
  %107 = lshr i32 %88, 31
  %108 = xor i32 %107, %106
  %109 = xor i32 %104, %106
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %74, align 1, !tbaa !2450
  %113 = icmp ne i8 %105, 0
  %114 = xor i1 %113, %111
  %.v34 = select i1 %114, i64 12, i64 97
  %115 = add i64 %78, %.v34
  store i64 %115, i64* %PC, align 8, !tbaa !2428
  br i1 %114, label %block_40097c, label %block_4009d6.loopexit

block_4008e7:                                     ; preds = %block_4008db
  %116 = add i64 %317, -16
  %117 = add i64 %353, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = add i64 %317, -48
  %121 = add i64 %353, 7
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RCX, align 8, !tbaa !2428
  %125 = add i64 %317, -20
  %126 = add i64 %353, 10
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, %123
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RCX, align 8, !tbaa !2428
  %131 = icmp ult i32 %129, %123
  %132 = icmp ult i32 %129, %128
  %133 = or i1 %131, %132
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %51, align 1, !tbaa !2432
  %135 = and i32 %129, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #9
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %57, align 1, !tbaa !2446
  %140 = xor i32 %128, %123
  %141 = xor i32 %140, %129
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %62, align 1, !tbaa !2447
  %145 = icmp eq i32 %129, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %65, align 1, !tbaa !2448
  %147 = lshr i32 %129, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %68, align 1, !tbaa !2449
  %149 = lshr i32 %123, 31
  %150 = lshr i32 %128, 31
  %151 = xor i32 %147, %149
  %152 = xor i32 %147, %150
  %153 = add nuw nsw i32 %151, %152
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %74, align 1, !tbaa !2450
  %156 = sext i32 %129 to i64
  store i64 %156, i64* %RDX, align 8, !tbaa !2428
  %157 = shl nsw i64 %156, 3
  %158 = add i64 %119, %157
  %159 = add i64 %353, 18
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to i32*), align 16
  %163 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to i32*), align 4
  %164 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to i32*), align 8
  %165 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to i32*), align 4
  store i32 %162, i32* %428, align 1, !tbaa !2455
  store i32 %163, i32* %430, align 1, !tbaa !2455
  store i32 %164, i32* %432, align 1, !tbaa !2455
  store i32 %165, i32* %434, align 1, !tbaa !2455
  %166 = load i64, i64* %435, align 1
  %167 = and i64 %166, %161
  %168 = trunc i64 %167 to i32
  %169 = lshr i64 %167, 32
  %170 = trunc i64 %169 to i32
  store i32 %168, i32* %441, align 1, !tbaa !2454
  store i32 %170, i32* %443, align 1, !tbaa !2454
  store i32 0, i32* %444, align 1, !tbaa !2454
  store i32 0, i32* %446, align 1, !tbaa !2454
  %171 = add i64 %317, -40
  %172 = add i64 %353, 34
  store i64 %172, i64* %PC, align 8
  %173 = load i64, i64* %420, align 1
  %174 = inttoptr i64 %171 to i64*
  store i64 %173, i64* %174, align 8
  %175 = load i64, i64* %RBP, align 8
  %176 = add i64 %175, -40
  %177 = load i64, i64* %PC, align 8
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %176 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %420, align 1, !tbaa !2451
  store double 0.000000e+00, double* %422, align 1, !tbaa !2451
  %181 = add i64 %175, -32
  %182 = add i64 %177, 10
  store i64 %182, i64* %PC, align 8
  %183 = bitcast i64 %180 to double
  %184 = inttoptr i64 %181 to double*
  %185 = load double, double* %184, align 8
  %186 = fcmp uno double %183, %185
  br i1 %186, label %187, label %197

; <label>:187:                                    ; preds = %block_4008e7
  %188 = fadd double %183, %185
  %189 = bitcast double %188 to i64
  %190 = and i64 %189, 9221120237041090560
  %191 = icmp eq i64 %190, 9218868437227405312
  %192 = and i64 %189, 2251799813685247
  %193 = icmp ne i64 %192, 0
  %194 = and i1 %191, %193
  br i1 %194, label %195, label %203

; <label>:195:                                    ; preds = %187
  %196 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %182, %struct.Memory* %MEMORY.1) #12
  %.pre24 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:197:                                    ; preds = %block_4008e7
  %198 = fcmp ogt double %183, %185
  br i1 %198, label %203, label %199

; <label>:199:                                    ; preds = %197
  %200 = fcmp olt double %183, %185
  br i1 %200, label %203, label %201

; <label>:201:                                    ; preds = %199
  %202 = fcmp oeq double %183, %185
  br i1 %202, label %203, label %207

; <label>:203:                                    ; preds = %201, %199, %197, %187
  %204 = phi i8 [ 0, %197 ], [ 0, %199 ], [ 1, %201 ], [ 1, %187 ]
  %205 = phi i8 [ 0, %197 ], [ 0, %199 ], [ 0, %201 ], [ 1, %187 ]
  %206 = phi i8 [ 0, %197 ], [ 1, %199 ], [ 0, %201 ], [ 1, %187 ]
  store i8 %204, i8* %65, align 1, !tbaa !2453
  store i8 %205, i8* %57, align 1, !tbaa !2453
  store i8 %206, i8* %51, align 1, !tbaa !2453
  br label %207

; <label>:207:                                    ; preds = %203, %201
  store i8 0, i8* %74, align 1, !tbaa !2453
  store i8 0, i8* %68, align 1, !tbaa !2453
  store i8 0, i8* %62, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %207, %195
  %208 = phi i64 [ %.pre24, %195 ], [ %182, %207 ]
  %209 = phi %struct.Memory* [ %196, %195 ], [ %MEMORY.1, %207 ]
  %210 = add i64 %208, 22
  %211 = add i64 %208, 6
  %212 = load i8, i8* %51, align 1, !tbaa !2432
  %213 = load i8, i8* %65, align 1, !tbaa !2448
  %214 = or i8 %213, %212
  %215 = icmp ne i8 %214, 0
  %216 = select i1 %215, i64 %210, i64 %211
  store i64 %216, i64* %PC, align 8, !tbaa !2428
  br i1 %215, label %block_400929, label %block_400919

block_40097c:                                     ; preds = %block_400970
  %217 = add i64 %79, -16
  %218 = add i64 %115, 4
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = add i64 %115, 7
  store i64 %221, i64* %PC, align 8
  %222 = load i32, i32* %82, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX, align 8, !tbaa !2428
  %224 = add i64 %79, -20
  %225 = add i64 %115, 10
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %222
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RCX, align 8, !tbaa !2428
  %230 = icmp ult i32 %228, %222
  %231 = icmp ult i32 %228, %227
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %51, align 1, !tbaa !2432
  %234 = and i32 %228, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234) #9
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %57, align 1, !tbaa !2446
  %239 = xor i32 %227, %222
  %240 = xor i32 %239, %228
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %62, align 1, !tbaa !2447
  %244 = icmp eq i32 %228, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %65, align 1, !tbaa !2448
  %246 = lshr i32 %228, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %68, align 1, !tbaa !2449
  %248 = lshr i32 %222, 31
  %249 = lshr i32 %227, 31
  %250 = xor i32 %246, %248
  %251 = xor i32 %246, %249
  %252 = add nuw nsw i32 %250, %251
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %74, align 1, !tbaa !2450
  %255 = sext i32 %228 to i64
  store i64 %255, i64* %RDX, align 8, !tbaa !2428
  %256 = shl nsw i64 %255, 3
  %257 = add i64 %220, %256
  %258 = add i64 %115, 18
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to i32*), align 16
  %262 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to i32*), align 4
  %263 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to i32*), align 8
  %264 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to i32*), align 4
  store i32 %261, i32* %587, align 1, !tbaa !2455
  store i32 %262, i32* %589, align 1, !tbaa !2455
  store i32 %263, i32* %591, align 1, !tbaa !2455
  store i32 %264, i32* %593, align 1, !tbaa !2455
  %265 = load i64, i64* %594, align 1
  %266 = and i64 %265, %260
  %267 = trunc i64 %266 to i32
  %268 = lshr i64 %266, 32
  %269 = trunc i64 %268 to i32
  store i32 %267, i32* %600, align 1, !tbaa !2454
  store i32 %269, i32* %602, align 1, !tbaa !2454
  store i32 0, i32* %603, align 1, !tbaa !2454
  store i32 0, i32* %605, align 1, !tbaa !2454
  %270 = add i64 %79, -40
  %271 = add i64 %115, 34
  store i64 %271, i64* %PC, align 8
  %272 = load i64, i64* %579, align 1
  %273 = inttoptr i64 %270 to i64*
  store i64 %272, i64* %273, align 8
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -40
  %276 = load i64, i64* %PC, align 8
  %277 = add i64 %276, 5
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %275 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %579, align 1, !tbaa !2451
  store double 0.000000e+00, double* %581, align 1, !tbaa !2451
  %280 = add i64 %274, -32
  %281 = add i64 %276, 10
  store i64 %281, i64* %PC, align 8
  %282 = bitcast i64 %279 to double
  %283 = inttoptr i64 %280 to double*
  %284 = load double, double* %283, align 8
  %285 = fcmp uno double %282, %284
  br i1 %285, label %286, label %296

; <label>:286:                                    ; preds = %block_40097c
  %287 = fadd double %282, %284
  %288 = bitcast double %287 to i64
  %289 = and i64 %288, 9221120237041090560
  %290 = icmp eq i64 %289, 9218868437227405312
  %291 = and i64 %288, 2251799813685247
  %292 = icmp ne i64 %291, 0
  %293 = and i1 %290, %292
  br i1 %293, label %294, label %302

; <label>:294:                                    ; preds = %286
  %295 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %281, %struct.Memory* %MEMORY.0) #12
  %.pre28 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:296:                                    ; preds = %block_40097c
  %297 = fcmp ogt double %282, %284
  br i1 %297, label %302, label %298

; <label>:298:                                    ; preds = %296
  %299 = fcmp olt double %282, %284
  br i1 %299, label %302, label %300

; <label>:300:                                    ; preds = %298
  %301 = fcmp oeq double %282, %284
  br i1 %301, label %302, label %306

; <label>:302:                                    ; preds = %300, %298, %296, %286
  %303 = phi i8 [ 0, %296 ], [ 0, %298 ], [ 1, %300 ], [ 1, %286 ]
  %304 = phi i8 [ 0, %296 ], [ 0, %298 ], [ 0, %300 ], [ 1, %286 ]
  %305 = phi i8 [ 0, %296 ], [ 1, %298 ], [ 0, %300 ], [ 1, %286 ]
  store i8 %303, i8* %65, align 1, !tbaa !2453
  store i8 %304, i8* %57, align 1, !tbaa !2453
  store i8 %305, i8* %51, align 1, !tbaa !2453
  br label %306

; <label>:306:                                    ; preds = %302, %300
  store i8 0, i8* %74, align 1, !tbaa !2453
  store i8 0, i8* %68, align 1, !tbaa !2453
  store i8 0, i8* %62, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %306, %294
  %307 = phi i64 [ %.pre28, %294 ], [ %281, %306 ]
  %308 = phi %struct.Memory* [ %295, %294 ], [ %MEMORY.0, %306 ]
  %309 = add i64 %307, 22
  %310 = add i64 %307, 6
  %311 = load i8, i8* %51, align 1, !tbaa !2432
  %312 = load i8, i8* %65, align 1, !tbaa !2448
  %313 = or i8 %312, %311
  %314 = icmp ne i8 %313, 0
  %315 = select i1 %314, i64 %309, i64 %310
  store i64 %315, i64* %PC, align 8, !tbaa !2428
  br i1 %314, label %block_4009be, label %block_4009ae

block_4008db:                                     ; preds = %block_400929, %block_4008ae
  %316 = phi i64 [ %.pre, %block_4008ae ], [ %558, %block_400929 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4008ae ], [ %209, %block_400929 ]
  %317 = load i64, i64* %RBP, align 8
  %318 = add i64 %317, -44
  %319 = add i64 %316, 3
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = add i64 %317, -4
  %324 = add i64 %316, 6
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sub i32 %321, %326
  %328 = icmp ult i32 %321, %326
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %51, align 1, !tbaa !2432
  %330 = and i32 %327, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #9
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %57, align 1, !tbaa !2446
  %335 = xor i32 %326, %321
  %336 = xor i32 %335, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %62, align 1, !tbaa !2447
  %340 = icmp eq i32 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %65, align 1, !tbaa !2448
  %342 = lshr i32 %327, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %68, align 1, !tbaa !2449
  %344 = lshr i32 %321, 31
  %345 = lshr i32 %326, 31
  %346 = xor i32 %345, %344
  %347 = xor i32 %342, %344
  %348 = add nuw nsw i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %74, align 1, !tbaa !2450
  %351 = icmp ne i8 %343, 0
  %352 = xor i1 %351, %349
  %.v33 = select i1 %352, i64 12, i64 101
  %353 = add i64 %316, %.v33
  store i64 %353, i64* %PC, align 8, !tbaa !2428
  br i1 %352, label %block_4008e7, label %block_4009d6.loopexit39

block_4009d6.loopexit:                            ; preds = %block_400970
  br label %block_4009d6

block_4009d6.loopexit39:                          ; preds = %block_4008db
  br label %block_4009d6

block_4009d6:                                     ; preds = %block_4009d6.loopexit39, %block_4009d6.loopexit
  %354 = phi i64 [ %115, %block_4009d6.loopexit ], [ %353, %block_4009d6.loopexit39 ]
  %.sink10 = phi i64 [ 5, %block_4009d6.loopexit ], [ 150, %block_4009d6.loopexit39 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4009d6.loopexit ], [ %MEMORY.1, %block_4009d6.loopexit39 ]
  %355 = add i64 %354, %.sink10
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br label %block_4009db

block_4009e0:                                     ; preds = %block_400882, %block_4009db
  %356 = phi i64 [ %.pre30, %block_400882 ], [ %705, %block_4009db ]
  %.sink15 = phi i64 [ 343, %block_400882 ], [ 5, %block_4009db ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400882 ], [ %MEMORY.6, %block_4009db ]
  %357 = add i64 %356, %.sink15
  %358 = load i64, i64* %RBP, align 8
  %359 = add i64 %358, -52
  %360 = add i64 %357, 3
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = add i64 %357, 4
  store i64 %364, i64* %PC, align 8
  %365 = load i64, i64* %10, align 8, !tbaa !2428
  %366 = add i64 %365, 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RBP, align 8, !tbaa !2428
  store i64 %366, i64* %10, align 8, !tbaa !2428
  %369 = add i64 %357, 5
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %366 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %PC, align 8, !tbaa !2428
  %372 = add i64 %365, 16
  store i64 %372, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_4009be:                                     ; preds = %block_4009ae, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %373 = phi i64 [ %.pre29, %block_4009ae ], [ %309, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -44
  %376 = add i64 %373, 8
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, 1
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RAX, align 8, !tbaa !2428
  %381 = icmp eq i32 %378, -1
  %382 = icmp eq i32 %379, 0
  %383 = or i1 %381, %382
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %51, align 1, !tbaa !2432
  %385 = and i32 %379, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #9
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %57, align 1, !tbaa !2446
  %390 = xor i32 %379, %378
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %62, align 1, !tbaa !2447
  %394 = zext i1 %382 to i8
  store i8 %394, i8* %65, align 1, !tbaa !2448
  %395 = lshr i32 %379, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %68, align 1, !tbaa !2449
  %397 = lshr i32 %378, 31
  %398 = xor i32 %395, %397
  %399 = add nuw nsw i32 %398, %395
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %74, align 1, !tbaa !2450
  %402 = add i64 %373, 14
  store i64 %402, i64* %PC, align 8
  store i32 %379, i32* %377, align 4
  %403 = load i64, i64* %PC, align 8
  %404 = add i64 %403, -92
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  br label %block_400970

block_4008ae:                                     ; preds = %block_4008a4
  %405 = add i64 %42, -16
  %406 = add i64 %640, 4
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX, align 8, !tbaa !2428
  %409 = add i64 %42, -20
  %410 = add i64 %640, 8
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %415 = shl nsw i64 %413, 3
  %416 = add i64 %415, %408
  %417 = add i64 %640, 13
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %422 = bitcast i64* %421 to double*
  %423 = bitcast %union.VectorReg* %7 to i8*
  %424 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to i32*), align 16
  %425 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to i32*), align 4
  %426 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to i32*), align 8
  %427 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to i32*), align 4
  %428 = bitcast %union.VectorReg* %7 to i32*
  store i32 %424, i32* %428, align 1, !tbaa !2455
  %429 = getelementptr inbounds i8, i8* %423, i64 4
  %430 = bitcast i8* %429 to i32*
  store i32 %425, i32* %430, align 1, !tbaa !2455
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %432 = bitcast i64* %431 to i32*
  store i32 %426, i32* %432, align 1, !tbaa !2455
  %433 = getelementptr inbounds i8, i8* %423, i64 12
  %434 = bitcast i8* %433 to i32*
  store i32 %427, i32* %434, align 1, !tbaa !2455
  %435 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %436 = load i64, i64* %435, align 1
  %437 = and i64 %436, %419
  %438 = trunc i64 %437 to i32
  %439 = lshr i64 %437, 32
  %440 = trunc i64 %439 to i32
  %441 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %438, i32* %441, align 1, !tbaa !2454
  %442 = getelementptr inbounds i8, i8* %414, i64 4
  %443 = bitcast i8* %442 to i32*
  store i32 %440, i32* %443, align 1, !tbaa !2454
  %444 = bitcast i64* %421 to i32*
  store i32 0, i32* %444, align 1, !tbaa !2454
  %445 = getelementptr inbounds i8, i8* %414, i64 12
  %446 = bitcast i8* %445 to i32*
  store i32 0, i32* %446, align 1, !tbaa !2454
  %447 = add i64 %42, -32
  %448 = add i64 %640, 29
  store i64 %448, i64* %PC, align 8
  %449 = load i64, i64* %420, align 1
  %450 = inttoptr i64 %447 to i64*
  store i64 %449, i64* %450, align 8
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -24
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, 1
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RDX, align 8, !tbaa !2428
  %459 = icmp eq i32 %456, -1
  %460 = icmp eq i32 %457, 0
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %51, align 1, !tbaa !2432
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463) #9
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %57, align 1, !tbaa !2446
  %468 = xor i32 %457, %456
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %62, align 1, !tbaa !2447
  %472 = zext i1 %460 to i8
  store i8 %472, i8* %65, align 1, !tbaa !2448
  %473 = lshr i32 %457, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %68, align 1, !tbaa !2449
  %475 = lshr i32 %456, 31
  %476 = xor i32 %473, %475
  %477 = add nuw nsw i32 %476, %473
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %74, align 1, !tbaa !2450
  %480 = add i64 %451, -48
  %481 = add i64 %453, 9
  store i64 %481, i64* %PC, align 8
  %482 = inttoptr i64 %480 to i32*
  store i32 %457, i32* %482, align 4
  %483 = load i64, i64* %RBP, align 8
  %484 = add i64 %483, -44
  %485 = load i64, i64* %PC, align 8
  %486 = add i64 %485, 7
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %484 to i32*
  store i32 1, i32* %487, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4008db

block_400929:                                     ; preds = %block_400919, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %488 = phi i64 [ %.pre25, %block_400919 ], [ %210, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ]
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -24
  %491 = add i64 %488, 3
  store i64 %491, i64* %PC, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2428
  %495 = add i64 %489, -48
  %496 = add i64 %488, 6
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i32 %498, %493
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2428
  %501 = icmp ult i32 %499, %493
  %502 = icmp ult i32 %499, %498
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %51, align 1, !tbaa !2432
  %505 = and i32 %499, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505) #9
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %57, align 1, !tbaa !2446
  %510 = xor i32 %498, %493
  %511 = xor i32 %510, %499
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %62, align 1, !tbaa !2447
  %515 = icmp eq i32 %499, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %65, align 1, !tbaa !2448
  %517 = lshr i32 %499, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %68, align 1, !tbaa !2449
  %519 = lshr i32 %493, 31
  %520 = lshr i32 %498, 31
  %521 = xor i32 %517, %519
  %522 = xor i32 %517, %520
  %523 = add nuw nsw i32 %521, %522
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %74, align 1, !tbaa !2450
  %526 = add i64 %488, 9
  store i64 %526, i64* %PC, align 8
  store i32 %499, i32* %497, align 4
  %527 = load i64, i64* %RBP, align 8
  %528 = add i64 %527, -44
  %529 = load i64, i64* %PC, align 8
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC, align 8
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = add i32 %532, 1
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX, align 8, !tbaa !2428
  %535 = icmp eq i32 %532, -1
  %536 = icmp eq i32 %533, 0
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %51, align 1, !tbaa !2432
  %539 = and i32 %533, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539) #9
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %57, align 1, !tbaa !2446
  %544 = xor i32 %533, %532
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %62, align 1, !tbaa !2447
  %548 = zext i1 %536 to i8
  store i8 %548, i8* %65, align 1, !tbaa !2448
  %549 = lshr i32 %533, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %68, align 1, !tbaa !2449
  %551 = lshr i32 %532, 31
  %552 = xor i32 %549, %551
  %553 = add nuw nsw i32 %552, %549
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %74, align 1, !tbaa !2450
  %556 = add i64 %529, 9
  store i64 %556, i64* %PC, align 8
  store i32 %533, i32* %531, align 4
  %557 = load i64, i64* %PC, align 8
  %558 = add i64 %557, -96
  store i64 %558, i64* %PC, align 8, !tbaa !2428
  br label %block_4008db

block_400945:                                     ; preds = %block_4008a4
  %559 = add i64 %42, -52
  %560 = add i64 %640, 7
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i32*
  store i32 0, i32* %561, align 4
  %562 = load i64, i64* %RBP, align 8
  %563 = add i64 %562, -16
  %564 = load i64, i64* %PC, align 8
  %565 = add i64 %564, 4
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %563 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RAX, align 8, !tbaa !2428
  %568 = add i64 %562, -20
  %569 = add i64 %564, 8
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  store i64 %572, i64* %RCX, align 8, !tbaa !2428
  %573 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %574 = shl nsw i64 %572, 3
  %575 = add i64 %574, %567
  %576 = add i64 %564, 13
  store i64 %576, i64* %PC, align 8
  %577 = inttoptr i64 %575 to i64*
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %581 = bitcast i64* %580 to double*
  %582 = bitcast %union.VectorReg* %7 to i8*
  %583 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 32) to i32*), align 16
  %584 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 36) to i32*), align 4
  %585 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 40) to i32*), align 8
  %586 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401210__rodata_type* @seg_401210__rodata to i64), i64 44) to i32*), align 4
  %587 = bitcast %union.VectorReg* %7 to i32*
  store i32 %583, i32* %587, align 1, !tbaa !2455
  %588 = getelementptr inbounds i8, i8* %582, i64 4
  %589 = bitcast i8* %588 to i32*
  store i32 %584, i32* %589, align 1, !tbaa !2455
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %591 = bitcast i64* %590 to i32*
  store i32 %585, i32* %591, align 1, !tbaa !2455
  %592 = getelementptr inbounds i8, i8* %582, i64 12
  %593 = bitcast i8* %592 to i32*
  store i32 %586, i32* %593, align 1, !tbaa !2455
  %594 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %595 = load i64, i64* %594, align 1
  %596 = and i64 %595, %578
  %597 = trunc i64 %596 to i32
  %598 = lshr i64 %596, 32
  %599 = trunc i64 %598 to i32
  %600 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %597, i32* %600, align 1, !tbaa !2454
  %601 = getelementptr inbounds i8, i8* %573, i64 4
  %602 = bitcast i8* %601 to i32*
  store i32 %599, i32* %602, align 1, !tbaa !2454
  %603 = bitcast i64* %580 to i32*
  store i32 0, i32* %603, align 1, !tbaa !2454
  %604 = getelementptr inbounds i8, i8* %573, i64 12
  %605 = bitcast i8* %604 to i32*
  store i32 0, i32* %605, align 1, !tbaa !2454
  %606 = add i64 %562, -32
  %607 = add i64 %564, 29
  store i64 %607, i64* %PC, align 8
  %608 = load i64, i64* %579, align 1
  %609 = inttoptr i64 %606 to i64*
  store i64 %608, i64* %609, align 8
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -44
  %612 = load i64, i64* %PC, align 8
  %613 = add i64 %612, 7
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %611 to i32*
  store i32 1, i32* %614, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400970

block_4008a4:                                     ; preds = %block_40088e
  %615 = add i64 %42, -24
  %616 = add i64 %703, 4
  store i64 %616, i64* %PC, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, -1
  %620 = icmp eq i32 %618, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %51, align 1, !tbaa !2432
  %622 = and i32 %619, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #9
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %57, align 1, !tbaa !2446
  %627 = xor i32 %619, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %62, align 1, !tbaa !2447
  %631 = icmp eq i32 %619, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %65, align 1, !tbaa !2448
  %633 = lshr i32 %619, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %68, align 1, !tbaa !2449
  %635 = lshr i32 %618, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %74, align 1, !tbaa !2450
  %.v32 = select i1 %631, i64 161, i64 10
  %640 = add i64 %703, %.v32
  store i64 %640, i64* %PC, align 8, !tbaa !2428
  br i1 %631, label %block_400945, label %block_4008ae

block_400919:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %641 = load i64, i64* %RBP, align 8
  %642 = add i64 %641, -44
  %643 = add i64 %216, 3
  store i64 %643, i64* %PC, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = add i64 %641, -52
  %648 = add i64 %216, 6
  store i64 %648, i64* %PC, align 8
  %649 = inttoptr i64 %647 to i32*
  store i32 %645, i32* %649, align 4
  %650 = load i64, i64* %RBP, align 8
  %651 = add i64 %650, -40
  %652 = load i64, i64* %PC, align 8
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %651 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %420, align 1, !tbaa !2451
  store double 0.000000e+00, double* %422, align 1, !tbaa !2451
  %656 = add i64 %650, -32
  %657 = add i64 %652, 10
  store i64 %657, i64* %PC, align 8
  %658 = inttoptr i64 %656 to i64*
  store i64 %655, i64* %658, align 8
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400929

block_400898:                                     ; preds = %block_40088e
  %659 = add i64 %42, -52
  %660 = add i64 %703, 7
  store i64 %660, i64* %PC, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 0, i32* %661, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_4009db

block_4009ae:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %662 = load i64, i64* %RBP, align 8
  %663 = add i64 %662, -44
  %664 = add i64 %315, 3
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX, align 8, !tbaa !2428
  %668 = add i64 %662, -52
  %669 = add i64 %315, 6
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i32*
  store i32 %666, i32* %670, align 4
  %671 = load i64, i64* %RBP, align 8
  %672 = add i64 %671, -40
  %673 = load i64, i64* %PC, align 8
  %674 = add i64 %673, 5
  store i64 %674, i64* %PC, align 8
  %675 = inttoptr i64 %672 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %579, align 1, !tbaa !2451
  store double 0.000000e+00, double* %581, align 1, !tbaa !2451
  %677 = add i64 %671, -32
  %678 = add i64 %673, 10
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %677 to i64*
  store i64 %676, i64* %679, align 8
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_4009be

block_40088e:                                     ; preds = %block_400860
  %680 = add i64 %77, 4
  store i64 %680, i64* %PC, align 8
  %681 = load i32, i32* %46, align 4
  %682 = add i32 %681, -1
  %683 = icmp eq i32 %681, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %51, align 1, !tbaa !2432
  %685 = and i32 %682, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685) #9
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %57, align 1, !tbaa !2446
  %690 = xor i32 %682, %681
  %691 = lshr i32 %690, 4
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %62, align 1, !tbaa !2447
  %694 = icmp eq i32 %682, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %65, align 1, !tbaa !2448
  %696 = lshr i32 %682, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %68, align 1, !tbaa !2449
  %698 = lshr i32 %681, 31
  %699 = xor i32 %696, %698
  %700 = add nuw nsw i32 %699, %698
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %74, align 1, !tbaa !2450
  %.v31 = select i1 %694, i64 10, i64 22
  %703 = add i64 %77, %.v31
  store i64 %703, i64* %PC, align 8, !tbaa !2428
  br i1 %694, label %block_400898, label %block_4008a4

block_4009db:                                     ; preds = %block_400898, %block_4009d6
  %704 = phi i64 [ %.pre27, %block_400898 ], [ %355, %block_4009d6 ]
  %.sink5 = phi i64 [ 316, %block_400898 ], [ 5, %block_4009d6 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_400898 ], [ %MEMORY.2, %block_4009d6 ]
  %705 = add i64 %704, %.sink5
  store i64 %705, i64* %PC, align 8, !tbaa !2428
  br label %block_4009e0

block_400882:                                     ; preds = %block_400860
  %706 = add i64 %42, -52
  %707 = add i64 %77, 7
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to i32*
  store i32 -1, i32* %708, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_4009e0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ab0_daxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400ab0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %7 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  store i64 %13, i64* %11, align 8, !tbaa !2428
  %15 = load i64, i64* %PC, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  %16 = add i64 %12, 8
  %17 = add i64 %15, 6
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %16 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = add i64 %12, -12
  %22 = load i32, i32* %EDI, align 4
  %23 = add i64 %15, 9
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -16
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC, align 8
  %29 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %30 = load i64, i64* %29, align 1
  %31 = inttoptr i64 %26 to i64*
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -24
  %34 = load i64, i64* %RSI, align 8
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -28
  %40 = load i32, i32* %EDX, align 4
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 3
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -32
  %46 = load i32, i32* %ECX, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -40
  %52 = load i64, i64* %R8, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -44
  %58 = load i32, i32* %R9D, align 4
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -48
  %64 = load i32, i32* %EAX, align 4
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %67, align 4
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -4
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %74, align 1, !tbaa !2432
  %75 = and i32 %73, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75) #9
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %79, i8* %80, align 1, !tbaa !2446
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %81, align 1, !tbaa !2447
  %82 = icmp eq i32 %73, 0
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %83, i8* %84, align 1, !tbaa !2448
  %85 = lshr i32 %73, 31
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %86, i8* %87, align 1, !tbaa !2449
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %88, align 1, !tbaa !2450
  %89 = icmp ne i8 %86, 0
  %90 = or i1 %82, %89
  %.v22 = select i1 %90, i64 314, i64 10
  %91 = add i64 %70, %.v22
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_400c0e, label %block_400ade

block_400bbc:                                     ; preds = %block_400bc8, %block_400bb5
  %92 = phi i64 [ %376, %block_400bc8 ], [ %.pre16, %block_400bb5 ]
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -52
  %95 = add i64 %92, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RAX, align 8, !tbaa !2428
  %99 = add i64 %93, -4
  %100 = add i64 %92, 6
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %97, %102
  %104 = icmp ult i32 %97, %102
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %74, align 1, !tbaa !2432
  %106 = and i32 %103, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106) #9
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %80, align 1, !tbaa !2446
  %111 = xor i32 %102, %97
  %112 = xor i32 %111, %103
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %81, align 1, !tbaa !2447
  %116 = icmp eq i32 %103, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %84, align 1, !tbaa !2448
  %118 = lshr i32 %103, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %87, align 1, !tbaa !2449
  %120 = lshr i32 %97, 31
  %121 = lshr i32 %102, 31
  %122 = xor i32 %121, %120
  %123 = xor i32 %118, %120
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %88, align 1, !tbaa !2450
  %127 = icmp ne i8 %119, 0
  %128 = xor i1 %127, %125
  %.v27 = select i1 %128, i64 12, i64 72
  %129 = add i64 %92, %.v27
  store i64 %129, i64* %PC, align 8, !tbaa !2428
  br i1 %128, label %block_400bc8, label %block_400c04

block_400b36:                                     ; preds = %block_400b0f, %block_400b27
  %130 = phi i64 [ %691, %block_400b0f ], [ %.pre18, %block_400b27 ]
  %131 = phi i64 [ %675, %block_400b0f ], [ %.pre17, %block_400b27 ]
  %132 = add i64 %131, -48
  %133 = add i64 %130, 4
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  store i8 0, i8* %74, align 1, !tbaa !2432
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #9
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %80, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %141 = icmp eq i32 %135, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %84, align 1, !tbaa !2448
  %143 = lshr i32 %135, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %88, align 1, !tbaa !2450
  %145 = icmp ne i8 %144, 0
  %.v14 = select i1 %145, i64 6, i64 21
  %146 = add i64 %133, %.v14
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  br i1 %145, label %block_400b40, label %block_400b4f

block_400bb5:                                     ; preds = %block_400b05
  %147 = add i64 %693, -52
  %148 = add i64 %449, 7
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  store i32 0, i32* %149, align 4
  %150 = bitcast i64* %208 to double*
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400bbc

block_400b4f:                                     ; preds = %block_400b36, %block_400b40
  %151 = phi i64 [ %146, %block_400b36 ], [ %.pre20, %block_400b40 ]
  %152 = phi i64 [ %131, %block_400b36 ], [ %.pre19, %block_400b40 ]
  %153 = add i64 %152, -52
  %154 = add i64 %151, 7
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 0, i32* %155, align 4
  %156 = bitcast i64* %208 to double*
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400b56

block_400b56:                                     ; preds = %block_400b62, %block_400b4f
  %157 = phi i64 [ %665, %block_400b62 ], [ %.pre21, %block_400b4f ]
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -52
  %160 = add i64 %157, 3
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %158, -4
  %165 = add i64 %157, 6
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sub i32 %162, %167
  %169 = icmp ult i32 %162, %167
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %74, align 1, !tbaa !2432
  %171 = and i32 %168, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171) #9
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %80, align 1, !tbaa !2446
  %176 = xor i32 %167, %162
  %177 = xor i32 %176, %168
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %81, align 1, !tbaa !2447
  %181 = icmp eq i32 %168, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %84, align 1, !tbaa !2448
  %183 = lshr i32 %168, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %87, align 1, !tbaa !2449
  %185 = lshr i32 %162, 31
  %186 = lshr i32 %167, 31
  %187 = xor i32 %186, %185
  %188 = xor i32 %183, %185
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %88, align 1, !tbaa !2450
  %192 = icmp ne i8 %184, 0
  %193 = xor i1 %192, %190
  %.v25 = select i1 %193, i64 12, i64 90
  %194 = add i64 %157, %.v25
  store i64 %194, i64* %PC, align 8, !tbaa !2428
  br i1 %193, label %block_400b62, label %block_400c0e.sink.split.loopexit

block_400c0e.sink.split.loopexit:                 ; preds = %block_400b56
  br label %block_400c0e.sink.split

block_400c0e.sink.split:                          ; preds = %block_400c0e.sink.split.loopexit, %block_400af0, %block_400c04
  %195 = phi i64 [ %454, %block_400c04 ], [ %452, %block_400af0 ], [ %194, %block_400c0e.sink.split.loopexit ]
  %.sink5 = phi i64 [ 5, %block_400c04 ], [ 280, %block_400af0 ], [ 94, %block_400c0e.sink.split.loopexit ]
  %196 = add i64 %195, %.sink5
  store i64 %196, i64* %PC, align 8, !tbaa !2428
  br label %block_400c0e

block_400c0e:                                     ; preds = %block_400c0e.sink.split, %block_400ab0
  %197 = phi i64 [ %91, %block_400ab0 ], [ %196, %block_400c0e.sink.split ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_400ab0 ], [ %245, %block_400c0e.sink.split ]
  %198 = add i64 %197, 1
  store i64 %198, i64* %PC, align 8
  %199 = load i64, i64* %11, align 8, !tbaa !2428
  %200 = add i64 %199, 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RBP, align 8, !tbaa !2428
  store i64 %200, i64* %11, align 8, !tbaa !2428
  %203 = add i64 %197, 2
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %206 = add i64 %199, 16
  store i64 %206, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400ade:                                     ; preds = %block_400ab0
  %207 = bitcast [32 x %union.VectorReg]* %8 to double*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %209 = bitcast [32 x %union.VectorReg]* %8 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %209, align 1, !tbaa !2454
  %210 = add i64 %68, -16
  %211 = add i64 %91, 8
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %213, i64* %214, align 1, !tbaa !2451
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %216 = bitcast i64* %215 to double*
  store double 0.000000e+00, double* %216, align 1, !tbaa !2451
  %217 = add i64 %91, 12
  store i64 %217, i64* %PC, align 8
  %218 = bitcast i64 %213 to double
  %219 = load double, double* %207, align 1
  %220 = fcmp uno double %218, %219
  br i1 %220, label %221, label %231

; <label>:221:                                    ; preds = %block_400ade
  %222 = fadd double %218, %219
  %223 = bitcast double %222 to i64
  %224 = and i64 %223, 9221120237041090560
  %225 = icmp eq i64 %224, 9218868437227405312
  %226 = and i64 %223, 2251799813685247
  %227 = icmp ne i64 %226, 0
  %228 = and i1 %225, %227
  br i1 %228, label %229, label %237

; <label>:229:                                    ; preds = %221
  %230 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %217, %struct.Memory* %2) #12
  %.pre = load i64, i64* %PC, align 8
  %.pre15 = load i8, i8* %84, align 1, !tbaa !2448
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:231:                                    ; preds = %block_400ade
  %232 = fcmp ogt double %218, %219
  br i1 %232, label %237, label %233

; <label>:233:                                    ; preds = %231
  %234 = fcmp olt double %218, %219
  br i1 %234, label %237, label %235

; <label>:235:                                    ; preds = %233
  %236 = fcmp oeq double %218, %219
  br i1 %236, label %237, label %241

; <label>:237:                                    ; preds = %235, %233, %231, %221
  %238 = phi i8 [ 0, %231 ], [ 0, %233 ], [ 1, %235 ], [ 1, %221 ]
  %239 = phi i8 [ 0, %231 ], [ 0, %233 ], [ 0, %235 ], [ 1, %221 ]
  %240 = phi i8 [ 0, %231 ], [ 1, %233 ], [ 0, %235 ], [ 1, %221 ]
  store i8 %238, i8* %84, align 1, !tbaa !2453
  store i8 %239, i8* %80, align 1, !tbaa !2453
  store i8 %240, i8* %74, align 1, !tbaa !2453
  br label %241

; <label>:241:                                    ; preds = %237, %235
  %242 = phi i8 [ %238, %237 ], [ %83, %235 ]
  store i8 0, i8* %88, align 1, !tbaa !2453
  store i8 0, i8* %87, align 1, !tbaa !2453
  store i8 0, i8* %81, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %241, %229
  %243 = phi i8 [ %.pre15, %229 ], [ %242, %241 ]
  %244 = phi i64 [ %.pre, %229 ], [ %217, %241 ]
  %245 = phi %struct.Memory* [ %230, %229 ], [ %2, %241 ]
  %246 = icmp eq i8 %243, 0
  %.v23 = select i1 %246, i64 17, i64 6
  %247 = add i64 %244, %.v23
  store i64 %247, i64* %PC, align 8, !tbaa !2428
  br i1 %246, label %block_400afb, label %block_400af0

block_400bc8:                                     ; preds = %block_400bbc
  %248 = add i64 %93, -16
  %249 = add i64 %129, 5
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %29, align 1, !tbaa !2451
  store double 0.000000e+00, double* %150, align 1, !tbaa !2451
  %252 = add i64 %93, -24
  %253 = add i64 %129, 9
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = add i64 %129, 12
  store i64 %256, i64* %PC, align 8
  %257 = load i32, i32* %96, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = add i64 %93, -28
  %260 = add i64 %129, 15
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, %257
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RCX, align 8, !tbaa !2428
  %265 = icmp ult i32 %263, %257
  %266 = icmp ult i32 %263, %262
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %74, align 1, !tbaa !2432
  %269 = and i32 %263, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269) #9
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %80, align 1, !tbaa !2446
  %274 = xor i32 %262, %257
  %275 = xor i32 %274, %263
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %81, align 1, !tbaa !2447
  %279 = icmp eq i32 %263, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %84, align 1, !tbaa !2448
  %281 = lshr i32 %263, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %87, align 1, !tbaa !2449
  %283 = lshr i32 %257, 31
  %284 = lshr i32 %262, 31
  %285 = xor i32 %281, %283
  %286 = xor i32 %281, %284
  %287 = add nuw nsw i32 %285, %286
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %88, align 1, !tbaa !2450
  %290 = sext i32 %263 to i64
  store i64 %290, i64* %RDX, align 8, !tbaa !2428
  %291 = shl nsw i64 %290, 3
  %292 = add i64 %255, %291
  %293 = add i64 %129, 23
  store i64 %293, i64* %PC, align 8
  %294 = bitcast i64 %251 to double
  %295 = inttoptr i64 %292 to double*
  %296 = load double, double* %295, align 8
  %297 = fmul double %294, %296
  store double %297, double* %207, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %298 = add i64 %93, -40
  %299 = add i64 %129, 27
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RAX, align 8, !tbaa !2428
  %302 = add i64 %129, 30
  store i64 %302, i64* %PC, align 8
  %303 = load i32, i32* %96, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RCX, align 8, !tbaa !2428
  %305 = add i64 %93, -44
  %306 = add i64 %129, 33
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = add i32 %308, %303
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = icmp ult i32 %309, %303
  %312 = icmp ult i32 %309, %308
  %313 = or i1 %311, %312
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %74, align 1, !tbaa !2432
  %315 = and i32 %309, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315) #9
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %80, align 1, !tbaa !2446
  %320 = xor i32 %308, %303
  %321 = xor i32 %320, %309
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %81, align 1, !tbaa !2447
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %84, align 1, !tbaa !2448
  %327 = lshr i32 %309, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %87, align 1, !tbaa !2449
  %329 = lshr i32 %303, 31
  %330 = lshr i32 %308, 31
  %331 = xor i32 %327, %329
  %332 = xor i32 %327, %330
  %333 = add nuw nsw i32 %331, %332
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %88, align 1, !tbaa !2450
  %336 = sext i32 %309 to i64
  store i64 %336, i64* %RDX, align 8, !tbaa !2428
  %337 = shl nsw i64 %336, 3
  %338 = add i64 %301, %337
  %339 = add i64 %129, 41
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to double*
  %341 = load double, double* %340, align 8
  %342 = fadd double %297, %341
  store double %342, double* %207, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %343 = add i64 %129, 46
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %338 to double*
  store double %342, double* %344, align 8
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -52
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 3
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %346 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = add i32 %350, 1
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = icmp eq i32 %350, -1
  %354 = icmp eq i32 %351, 0
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %74, align 1, !tbaa !2432
  %357 = and i32 %351, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357) #9
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %80, align 1, !tbaa !2446
  %362 = xor i32 %351, %350
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %81, align 1, !tbaa !2447
  %366 = zext i1 %354 to i8
  store i8 %366, i8* %84, align 1, !tbaa !2448
  %367 = lshr i32 %351, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %87, align 1, !tbaa !2449
  %369 = lshr i32 %350, 31
  %370 = xor i32 %367, %369
  %371 = add nuw nsw i32 %370, %367
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %88, align 1, !tbaa !2450
  %374 = add i64 %347, 9
  store i64 %374, i64* %PC, align 8
  store i32 %351, i32* %349, align 4
  %375 = load i64, i64* %PC, align 8
  %376 = add i64 %375, -67
  store i64 %376, i64* %PC, align 8, !tbaa !2428
  br label %block_400bbc

block_400b27:                                     ; preds = %block_400b0f
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %377 = add i64 %675, -4
  %378 = add i64 %691, 8
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = sub i32 1, %380
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX, align 8, !tbaa !2428
  %383 = icmp ugt i32 %380, 1
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %74, align 1, !tbaa !2432
  %385 = and i32 %381, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #9
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %80, align 1, !tbaa !2446
  %390 = xor i32 %381, %380
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %81, align 1, !tbaa !2447
  %394 = icmp eq i32 %381, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %84, align 1, !tbaa !2448
  %396 = lshr i32 %381, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %87, align 1, !tbaa !2449
  %398 = lshr i32 %380, 31
  %399 = add nuw nsw i32 %396, %398
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %88, align 1, !tbaa !2450
  %402 = add i64 %691, 12
  store i64 %402, i64* %PC, align 8
  %403 = load i32, i32* %679, align 4
  %404 = sext i32 %381 to i64
  %405 = sext i32 %403 to i64
  %406 = mul nsw i64 %405, %404
  %407 = trunc i64 %406 to i32
  %408 = and i64 %406, 4294967295
  store i64 %408, i64* %RAX, align 8, !tbaa !2428
  %409 = shl i64 %406, 32
  %410 = ashr exact i64 %409, 32
  %411 = icmp ne i64 %410, %406
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %74, align 1, !tbaa !2432
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #9
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %80, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %418 = lshr i32 %407, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %87, align 1, !tbaa !2449
  store i8 %412, i8* %88, align 1, !tbaa !2450
  %420 = add i64 %675, -56
  %421 = trunc i64 %406 to i32
  %422 = add i64 %691, 15
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %420 to i32*
  store i32 %421, i32* %423, align 4
  %.pre17 = load i64, i64* %RBP, align 8
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400b36

block_400b05:                                     ; preds = %block_400afb
  %424 = add i64 %693, -48
  %425 = add i64 %719, 4
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i32 %427, -1
  %429 = icmp eq i32 %427, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %74, align 1, !tbaa !2432
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431) #9
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %80, align 1, !tbaa !2446
  %436 = xor i32 %428, %427
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %81, align 1, !tbaa !2447
  %440 = icmp eq i32 %428, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %84, align 1, !tbaa !2448
  %442 = lshr i32 %428, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %87, align 1, !tbaa !2449
  %444 = lshr i32 %427, 31
  %445 = xor i32 %442, %444
  %446 = add nuw nsw i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %88, align 1, !tbaa !2450
  %.v26 = select i1 %440, i64 176, i64 10
  %449 = add i64 %719, %.v26
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  br i1 %440, label %block_400bb5, label %block_400b0f

block_400af0:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %450 = load i8, i8* %80, align 1, !tbaa !2446
  %451 = icmp ne i8 %450, 0
  %.v29 = select i1 %451, i64 11, i64 6
  %452 = add i64 %247, %.v29
  store i64 %452, i64* %PC, align 8, !tbaa !2428
  %453 = icmp eq i8 %450, 1
  br i1 %453, label %block_400afb, label %block_400c0e.sink.split

block_400c04:                                     ; preds = %block_400bbc
  %454 = add i64 %129, 5
  store i64 %454, i64* %PC, align 8, !tbaa !2428
  br label %block_400c0e.sink.split

block_400b62:                                     ; preds = %block_400b56
  %455 = add i64 %158, -16
  %456 = add i64 %194, 5
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %29, align 1, !tbaa !2451
  store double 0.000000e+00, double* %156, align 1, !tbaa !2451
  %459 = add i64 %158, -24
  %460 = add i64 %194, 9
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RAX, align 8, !tbaa !2428
  %463 = add i64 %158, -56
  %464 = add i64 %194, 12
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RCX, align 8, !tbaa !2428
  %468 = add i64 %158, -28
  %469 = add i64 %194, 15
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, %466
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RCX, align 8, !tbaa !2428
  %474 = icmp ult i32 %472, %466
  %475 = icmp ult i32 %472, %471
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %74, align 1, !tbaa !2432
  %478 = and i32 %472, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478) #9
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %80, align 1, !tbaa !2446
  %483 = xor i32 %471, %466
  %484 = xor i32 %483, %472
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %81, align 1, !tbaa !2447
  %488 = icmp eq i32 %472, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %84, align 1, !tbaa !2448
  %490 = lshr i32 %472, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %87, align 1, !tbaa !2449
  %492 = lshr i32 %466, 31
  %493 = lshr i32 %471, 31
  %494 = xor i32 %490, %492
  %495 = xor i32 %490, %493
  %496 = add nuw nsw i32 %494, %495
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %88, align 1, !tbaa !2450
  %499 = sext i32 %472 to i64
  store i64 %499, i64* %RDX, align 8, !tbaa !2428
  %500 = shl nsw i64 %499, 3
  %501 = add i64 %462, %500
  %502 = add i64 %194, 23
  store i64 %502, i64* %PC, align 8
  %503 = bitcast i64 %458 to double
  %504 = inttoptr i64 %501 to double*
  %505 = load double, double* %504, align 8
  %506 = fmul double %503, %505
  store double %506, double* %207, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %507 = add i64 %158, -40
  %508 = add i64 %194, 27
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RAX, align 8, !tbaa !2428
  %511 = add i64 %158, -60
  %512 = add i64 %194, 30
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RCX, align 8, !tbaa !2428
  %516 = add i64 %158, -44
  %517 = add i64 %194, 33
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = add i32 %519, %514
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX, align 8, !tbaa !2428
  %522 = icmp ult i32 %520, %514
  %523 = icmp ult i32 %520, %519
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %74, align 1, !tbaa !2432
  %526 = and i32 %520, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #9
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %80, align 1, !tbaa !2446
  %531 = xor i32 %519, %514
  %532 = xor i32 %531, %520
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %81, align 1, !tbaa !2447
  %536 = icmp eq i32 %520, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %84, align 1, !tbaa !2448
  %538 = lshr i32 %520, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %87, align 1, !tbaa !2449
  %540 = lshr i32 %514, 31
  %541 = lshr i32 %519, 31
  %542 = xor i32 %538, %540
  %543 = xor i32 %538, %541
  %544 = add nuw nsw i32 %542, %543
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %88, align 1, !tbaa !2450
  %547 = sext i32 %520 to i64
  store i64 %547, i64* %RDX, align 8, !tbaa !2428
  %548 = shl nsw i64 %547, 3
  %549 = add i64 %510, %548
  %550 = add i64 %194, 41
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to double*
  %552 = load double, double* %551, align 8
  %553 = fadd double %506, %552
  store double %553, double* %207, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %554 = add i64 %194, 46
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %549 to double*
  store double %553, double* %555, align 8
  %556 = load i64, i64* %RBP, align 8
  %557 = add i64 %556, -32
  %558 = load i64, i64* %PC, align 8
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC, align 8
  %560 = inttoptr i64 %557 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RCX, align 8, !tbaa !2428
  %563 = add i64 %556, -56
  %564 = add i64 %558, 6
  store i64 %564, i64* %PC, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = add i32 %566, %561
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RCX, align 8, !tbaa !2428
  %569 = icmp ult i32 %567, %561
  %570 = icmp ult i32 %567, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %74, align 1, !tbaa !2432
  %573 = and i32 %567, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573) #9
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %80, align 1, !tbaa !2446
  %578 = xor i32 %566, %561
  %579 = xor i32 %578, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %81, align 1, !tbaa !2447
  %583 = icmp eq i32 %567, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %84, align 1, !tbaa !2448
  %585 = lshr i32 %567, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %87, align 1, !tbaa !2449
  %587 = lshr i32 %561, 31
  %588 = lshr i32 %566, 31
  %589 = xor i32 %585, %587
  %590 = xor i32 %585, %588
  %591 = add nuw nsw i32 %589, %590
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %88, align 1, !tbaa !2450
  %594 = add i64 %558, 9
  store i64 %594, i64* %PC, align 8
  store i32 %567, i32* %565, align 4
  %595 = load i64, i64* %RBP, align 8
  %596 = add i64 %595, -48
  %597 = load i64, i64* %PC, align 8
  %598 = add i64 %597, 3
  store i64 %598, i64* %PC, align 8
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RCX, align 8, !tbaa !2428
  %602 = add i64 %595, -60
  %603 = add i64 %597, 6
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %605, %600
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RCX, align 8, !tbaa !2428
  %608 = icmp ult i32 %606, %600
  %609 = icmp ult i32 %606, %605
  %610 = or i1 %608, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %74, align 1, !tbaa !2432
  %612 = and i32 %606, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612) #9
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %80, align 1, !tbaa !2446
  %617 = xor i32 %605, %600
  %618 = xor i32 %617, %606
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %81, align 1, !tbaa !2447
  %622 = icmp eq i32 %606, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %84, align 1, !tbaa !2448
  %624 = lshr i32 %606, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %87, align 1, !tbaa !2449
  %626 = lshr i32 %600, 31
  %627 = lshr i32 %605, 31
  %628 = xor i32 %624, %626
  %629 = xor i32 %624, %627
  %630 = add nuw nsw i32 %628, %629
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %88, align 1, !tbaa !2450
  %633 = add i64 %597, 9
  store i64 %633, i64* %PC, align 8
  store i32 %606, i32* %604, align 4
  %634 = load i64, i64* %RBP, align 8
  %635 = add i64 %634, -52
  %636 = load i64, i64* %PC, align 8
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %635 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = add i32 %639, 1
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = icmp eq i32 %639, -1
  %643 = icmp eq i32 %640, 0
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %74, align 1, !tbaa !2432
  %646 = and i32 %640, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646) #9
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %80, align 1, !tbaa !2446
  %651 = xor i32 %640, %639
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %81, align 1, !tbaa !2447
  %655 = zext i1 %643 to i8
  store i8 %655, i8* %84, align 1, !tbaa !2448
  %656 = lshr i32 %640, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %87, align 1, !tbaa !2449
  %658 = lshr i32 %639, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %656
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %88, align 1, !tbaa !2450
  %663 = add i64 %636, 9
  store i64 %663, i64* %PC, align 8
  store i32 %640, i32* %638, align 4
  %664 = load i64, i64* %PC, align 8
  %665 = add i64 %664, -85
  store i64 %665, i64* %PC, align 8, !tbaa !2428
  br label %block_400b56

block_400b0f:                                     ; preds = %block_400afb, %block_400b05
  %666 = phi i64 [ %719, %block_400afb ], [ %449, %block_400b05 ]
  %667 = add i64 %693, -56
  %668 = add i64 %666, 7
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %667 to i32*
  store i32 0, i32* %669, align 4
  %670 = load i64, i64* %RBP, align 8
  %671 = add i64 %670, -60
  %672 = load i64, i64* %PC, align 8
  %673 = add i64 %672, 7
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %671 to i32*
  store i32 0, i32* %674, align 4
  %675 = load i64, i64* %RBP, align 8
  %676 = add i64 %675, -32
  %677 = load i64, i64* %PC, align 8
  %678 = add i64 %677, 4
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %676 to i32*
  %680 = load i32, i32* %679, align 4
  store i8 0, i8* %74, align 1, !tbaa !2432
  %681 = and i32 %680, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681) #9
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %80, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  %686 = icmp eq i32 %680, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %84, align 1, !tbaa !2448
  %688 = lshr i32 %680, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %87, align 1, !tbaa !2449
  store i8 0, i8* %88, align 1, !tbaa !2450
  %690 = icmp ne i8 %689, 0
  %.v = select i1 %690, i64 6, i64 21
  %691 = add i64 %678, %.v
  store i64 %691, i64* %PC, align 8, !tbaa !2428
  br i1 %690, label %block_400b27, label %block_400b36

block_400afb:                                     ; preds = %block_400af0, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %692 = phi i64 [ %452, %block_400af0 ], [ %247, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %693 = load i64, i64* %RBP, align 8
  %694 = add i64 %693, -32
  %695 = add i64 %692, 4
  store i64 %695, i64* %PC, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = add i32 %697, -1
  %699 = icmp eq i32 %697, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %74, align 1, !tbaa !2432
  %701 = and i32 %698, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701) #9
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %80, align 1, !tbaa !2446
  %706 = xor i32 %698, %697
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %81, align 1, !tbaa !2447
  %710 = icmp eq i32 %698, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %84, align 1, !tbaa !2448
  %712 = lshr i32 %698, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %87, align 1, !tbaa !2449
  %714 = lshr i32 %697, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %88, align 1, !tbaa !2450
  %.v24 = select i1 %710, i64 10, i64 20
  %719 = add i64 %692, %.v24
  store i64 %719, i64* %PC, align 8, !tbaa !2428
  br i1 %710, label %block_400b05, label %block_400b0f

block_400b40:                                     ; preds = %block_400b36
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %720 = add i64 %131, -4
  %721 = add i64 %146, 8
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = sub i32 1, %723
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX, align 8, !tbaa !2428
  %726 = icmp ugt i32 %723, 1
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %74, align 1, !tbaa !2432
  %728 = and i32 %724, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728) #9
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %80, align 1, !tbaa !2446
  %733 = xor i32 %724, %723
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %81, align 1, !tbaa !2447
  %737 = icmp eq i32 %724, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %84, align 1, !tbaa !2448
  %739 = lshr i32 %724, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %87, align 1, !tbaa !2449
  %741 = lshr i32 %723, 31
  %742 = add nuw nsw i32 %739, %741
  %743 = icmp eq i32 %742, 2
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %88, align 1, !tbaa !2450
  %745 = add i64 %146, 12
  store i64 %745, i64* %PC, align 8
  %746 = load i32, i32* %134, align 4
  %747 = sext i32 %724 to i64
  %748 = sext i32 %746 to i64
  %749 = mul nsw i64 %748, %747
  %750 = trunc i64 %749 to i32
  %751 = and i64 %749, 4294967295
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %752 = shl i64 %749, 32
  %753 = ashr exact i64 %752, 32
  %754 = icmp ne i64 %753, %749
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %74, align 1, !tbaa !2432
  %756 = and i32 %750, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756) #9
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %80, align 1, !tbaa !2446
  store i8 0, i8* %81, align 1, !tbaa !2447
  store i8 0, i8* %84, align 1, !tbaa !2448
  %761 = lshr i32 %750, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %87, align 1, !tbaa !2449
  store i8 %755, i8* %88, align 1, !tbaa !2450
  %763 = add i64 %131, -60
  %764 = trunc i64 %749 to i32
  %765 = add i64 %146, 15
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %763 to i32*
  store i32 %764, i32* %766, align 4
  %.pre19 = load i64, i64* %RBP, align 8
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400b4f
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400670_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400670_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400670_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400640___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400640___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400640___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602098_free(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602090_fflush(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602088_malloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a8_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401200___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401200;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401200___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401200___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401190___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401190;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401190___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401190___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400f90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400f90_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @idamax() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400860;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @idamax_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400860_idamax(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @matgen() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @matgen_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400680_matgen(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401204;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401204__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dscal() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dscal_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4009f0_dscal(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dgesl() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dgesl_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400e00_dgesl(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400510__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @daxpy() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ab0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @daxpy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400ab0_daxpy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dgefa() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dgefa_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c10_dgefa(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401200___libc_csu_fini()
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
  tail call void @callback_sub_401190___libc_csu_init()
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
!2447 = !{!2433, !2430, i64 2069}
!2448 = !{!2433, !2430, i64 2071}
!2449 = !{!2433, !2430, i64 2073}
!2450 = !{!2433, !2430, i64 2077}
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
