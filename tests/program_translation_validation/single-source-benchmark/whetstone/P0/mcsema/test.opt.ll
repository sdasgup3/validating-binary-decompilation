; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4018f0__rodata_type = type <{ [72 x i8], [3 x i8], [28 x i8], [44 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602080__bss_type = type <{ [8 x i8], [8 x i8] }>
%J_type = type <{ [8 x i8] }>
%T_type = type <{ [8 x i8] }>
%T1_type = type <{ [8 x i8] }>
%L_type = type <{ [4 x i8] }>
%K_type = type <{ [4 x i8] }>
%T2_type = type <{ [16 x i8] }>
%E1_type = type <{ [40 x i8] }>
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
@stderr = external global i64, align 128
@seg_4018f0__rodata = internal constant %seg_4018f0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00@5^\BAI\0C\02\E0?\8FSt$\97\FF\DF?\00\00\00\00\00\00\F0\BF\00\00\00\00\00\00\F0?\00\00\00\00\00\00\E0?\00\00\00\00\00\00\08@\00\00\00\00\00\00\E8?", [3 x i8] c"-c\00", [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400840_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400810___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@J = local_unnamed_addr global %J_type zeroinitializer
@T = local_unnamed_addr global %T_type zeroinitializer
@T1 = local_unnamed_addr global %T1_type zeroinitializer
@L = local_unnamed_addr global %L_type zeroinitializer
@K = local_unnamed_addr global %K_type zeroinitializer
@T2 = local_unnamed_addr global %T2_type zeroinitializer
@E1 = global %E1_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400840_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400810___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4018e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401870___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @PA_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @P3_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @POUT_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @P0_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @sqrt(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @cos(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @sin(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @atan(double) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 !dbg !1261 {
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
define void @__remill_intrinsics() local_unnamed_addr #4 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @log(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @time(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exp(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @atol(i64) #6

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401800_P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401800:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
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
  %10 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  %12 = shl nsw i64 %11, 3
  %13 = add i64 %12, ptrtoint (%E1_type* @E1 to i64)
  %14 = add i64 %9, 20
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %16, i64* %17, align 1, !tbaa !2432
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %19 = bitcast i64* %18 to double*
  store double 0.000000e+00, double* %19, align 1, !tbaa !2432
  %20 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  %23 = add i64 %22, ptrtoint (%E1_type* @E1 to i64)
  %24 = add i64 %9, 37
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %23 to i64*
  store i64 %16, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %RAX, align 8, !tbaa !2428
  %29 = shl nsw i64 %28, 3
  %30 = add i64 %29, ptrtoint (%E1_type* @E1 to i64)
  %31 = add i64 %26, 17
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %17, align 1, !tbaa !2432
  store double 0.000000e+00, double* %19, align 1, !tbaa !2432
  %34 = add i64 %26, 34
  store i64 %34, i64* %PC, align 8
  store i64 %33, i64* %15, align 8
  %35 = load i64, i64* %PC, align 8
  %36 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %RAX, align 8, !tbaa !2428
  %38 = shl nsw i64 %37, 3
  %39 = add i64 %38, ptrtoint (%E1_type* @E1 to i64)
  %40 = add i64 %35, 17
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %17, align 1, !tbaa !2432
  store double 0.000000e+00, double* %19, align 1, !tbaa !2432
  store i64 %28, i64* %RAX, align 8, !tbaa !2428
  %43 = add i64 %35, 34
  store i64 %43, i64* %PC, align 8
  store i64 %42, i64* %32, align 8
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %PC, align 8
  %46 = load i64, i64* %5, align 8, !tbaa !2428
  %47 = add i64 %46, 8
  %48 = inttoptr i64 %46 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RBP, align 8, !tbaa !2428
  store i64 %47, i64* %5, align 8, !tbaa !2428
  %50 = add i64 %44, 2
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %PC, align 8, !tbaa !2428
  %53 = add i64 %46, 16
  store i64 %53, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400790__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400790:
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
define %struct.Memory* @sub_400688__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400688:
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
  store i8 0, i8* %5, align 1, !tbaa !2434
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #10
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2448
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2449
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2450
  store i8 0, i8* %10, align 1, !tbaa !2451
  store i8 0, i8* %7, align 1, !tbaa !2452
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_40069a, label %block_400698

block_400698:                                     ; preds = %block_400688
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40069a

block_40069a:                                     ; preds = %block_400698, %block_400688
  %27 = phi i64 [ %22, %block_400688 ], [ %.pre1, %block_400698 ]
  %28 = phi i64 [ %4, %block_400688 ], [ %.pre, %block_400698 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400688 ], [ %26, %block_400698 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2434
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2448
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2452
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2449
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2450
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2451
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
define %struct.Memory* @sub_4015e0_POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4015e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  %10 = add i64 %6, -72
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 64
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2434
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2448
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2452
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2449
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 103), i64* %RAX, align 8, !tbaa !2428
  %38 = add i64 %6, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %9, 21
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
  %55 = add i64 %54, -32
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 5
  store i64 %57, i64* %PC, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %59 = load i64, i64* %58, align 1
  %60 = inttoptr i64 %55 to i64*
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -40
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 5
  store i64 %64, i64* %PC, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %66 = load i64, i64* %65, align 1
  %67 = inttoptr i64 %62 to i64*
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -48
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %73 = load i64, i64* %72, align 1
  %74 = inttoptr i64 %69 to i64*
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -56
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC, align 8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %80 = load i64, i64* %79, align 1
  %81 = inttoptr i64 %76 to i64*
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RSI, align 8, !tbaa !2428
  %88 = add i64 %82, -16
  %89 = add i64 %84, 8
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RDX, align 8, !tbaa !2428
  %92 = add i64 %82, -24
  %93 = add i64 %84, 12
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RCX, align 8, !tbaa !2428
  %96 = add i64 %82, -32
  %97 = add i64 %84, 17
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %58, align 1, !tbaa !2432
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %101 = bitcast i64* %100 to double*
  store double 0.000000e+00, double* %101, align 1, !tbaa !2432
  %102 = add i64 %82, -40
  %103 = add i64 %84, 22
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %65, align 1, !tbaa !2432
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %107 = bitcast i64* %106 to double*
  store double 0.000000e+00, double* %107, align 1, !tbaa !2432
  %108 = add i64 %82, -48
  %109 = add i64 %84, 27
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %72, align 1, !tbaa !2432
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %113 = bitcast i64* %112 to double*
  store double 0.000000e+00, double* %113, align 1, !tbaa !2432
  %114 = add i64 %82, -56
  %115 = add i64 %84, 32
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %79, align 1, !tbaa !2432
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %119 = bitcast i64* %118 to double*
  store double 0.000000e+00, double* %119, align 1, !tbaa !2432
  %120 = load i64, i64* %RAX, align 8
  store i64 %120, i64* %RDI, align 8, !tbaa !2428
  store i8 4, i8* %AL, align 1, !tbaa !2453
  %121 = add i64 %84, -3890
  %122 = add i64 %84, 42
  %123 = load i64, i64* %RSP, align 8, !tbaa !2428
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %RSP, align 8, !tbaa !2428
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  %126 = tail call fastcc %struct.Memory* @ext_4006e0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -60
  %129 = load i32, i32* %EAX, align 4
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %132, align 4
  %133 = load i64, i64* %RSP, align 8
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %133, 64
  store i64 %135, i64* %RSP, align 8, !tbaa !2428
  %136 = icmp ugt i64 %133, -65
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %13, align 1, !tbaa !2434
  %138 = trunc i64 %135 to i32
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #10
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %20, align 1, !tbaa !2448
  %144 = xor i64 %135, %133
  %145 = lshr i64 %144, 4
  %146 = trunc i64 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %25, align 1, !tbaa !2452
  %148 = icmp eq i64 %135, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %28, align 1, !tbaa !2449
  %150 = lshr i64 %135, 63
  %151 = trunc i64 %150 to i8
  store i8 %151, i8* %31, align 1, !tbaa !2450
  %152 = lshr i64 %133, 63
  %153 = xor i64 %150, %152
  %154 = add nuw nsw i64 %153, %150
  %155 = icmp eq i64 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %37, align 1, !tbaa !2451
  %157 = add i64 %134, 5
  store i64 %157, i64* %PC, align 8
  %158 = add i64 %133, 72
  %159 = inttoptr i64 %135 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %RBP, align 8, !tbaa !2428
  store i64 %158, i64* %RSP, align 8, !tbaa !2428
  %161 = add i64 %134, 6
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %158 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  %164 = add i64 %133, 80
  store i64 %164, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %126
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400810___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400810:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2434
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2448
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2452
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2449
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2451
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400819, label %block_400830

block_400830:                                     ; preds = %block_400810
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

block_400819:                                     ; preds = %block_400810
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
  %36 = tail call %struct.Memory* @sub_4007a0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
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
define %struct.Memory* @sub_401650_PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401650:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2428
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 11
  store i64 %16, i64* %PC, align 8
  store i32 0, i32* bitcast (%J_type* @J to i32*), align 8
  %17 = bitcast %union.VectorReg* %3 to double*
  %18 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to double*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  br label %block_401663

block_401776:                                     ; preds = %block_401663
  %27 = add i64 %231, 1
  store i64 %27, i64* %PC, align 8
  %28 = load i64, i64* %6, align 8, !tbaa !2428
  %29 = add i64 %28, 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %RBP, align 8, !tbaa !2428
  store i64 %29, i64* %6, align 8, !tbaa !2428
  %32 = add i64 %231, 2
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %28, 16
  store i64 %35, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401663:                                     ; preds = %block_401771, %block_401650
  %36 = phi i64 [ %232, %block_401771 ], [ %16, %block_401650 ]
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -8
  %39 = add i64 %36, 14
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RCX, align 8, !tbaa !2428
  %42 = add i64 %41, 8
  %43 = add i64 %36, 19
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 1, !tbaa !2432
  store double 0.000000e+00, double* %20, align 1, !tbaa !2432
  %46 = add i64 %36, 23
  store i64 %46, i64* %PC, align 8
  %47 = load i64, i64* %40, align 8
  store i64 %47, i64* %RCX, align 8, !tbaa !2428
  %48 = add i64 %47, 16
  %49 = add i64 %36, 28
  store i64 %49, i64* %PC, align 8
  %50 = bitcast i64 %45 to double
  %51 = inttoptr i64 %48 to double*
  %52 = load double, double* %51, align 8
  %53 = fadd double %50, %52
  store double %53, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %54 = add i64 %36, 32
  store i64 %54, i64* %PC, align 8
  %55 = load i64, i64* %40, align 8
  store i64 %55, i64* %RCX, align 8, !tbaa !2428
  %56 = add i64 %55, 24
  %57 = add i64 %36, 37
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to double*
  %59 = load double, double* %58, align 8
  %60 = fadd double %53, %59
  store double %60, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %61 = add i64 %36, 41
  store i64 %61, i64* %PC, align 8
  %62 = load i64, i64* %40, align 8
  store i64 %62, i64* %RCX, align 8, !tbaa !2428
  %63 = add i64 %62, 32
  %64 = add i64 %36, 46
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to double*
  %66 = load double, double* %65, align 8
  %67 = fsub double %60, %66
  %68 = load double, double* bitcast (%T_type* @T to double*), align 8
  %69 = fmul double %67, %68
  store double %69, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %70 = add i64 %36, 59
  store i64 %70, i64* %PC, align 8
  %71 = load i64, i64* %40, align 8
  store i64 %71, i64* %RCX, align 8, !tbaa !2428
  %72 = add i64 %71, 8
  %73 = add i64 %36, 64
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to double*
  store double %69, double* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -8
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RCX, align 8, !tbaa !2428
  %81 = add i64 %80, 8
  %82 = add i64 %77, 9
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %18, align 1, !tbaa !2432
  store double 0.000000e+00, double* %20, align 1, !tbaa !2432
  %85 = add i64 %77, 13
  store i64 %85, i64* %PC, align 8
  %86 = load i64, i64* %79, align 8
  store i64 %86, i64* %RCX, align 8, !tbaa !2428
  %87 = add i64 %86, 16
  %88 = add i64 %77, 18
  store i64 %88, i64* %PC, align 8
  %89 = bitcast i64 %84 to double
  %90 = inttoptr i64 %87 to double*
  %91 = load double, double* %90, align 8
  %92 = fadd double %89, %91
  store double %92, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %93 = add i64 %77, 22
  store i64 %93, i64* %PC, align 8
  %94 = load i64, i64* %79, align 8
  store i64 %94, i64* %RCX, align 8, !tbaa !2428
  %95 = add i64 %94, 24
  %96 = add i64 %77, 27
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to double*
  %98 = load double, double* %97, align 8
  %99 = fsub double %92, %98
  store double %99, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %100 = add i64 %77, 31
  store i64 %100, i64* %PC, align 8
  %101 = load i64, i64* %79, align 8
  store i64 %101, i64* %RCX, align 8, !tbaa !2428
  %102 = add i64 %101, 32
  %103 = add i64 %77, 36
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to double*
  %105 = load double, double* %104, align 8
  %106 = fadd double %99, %105
  %107 = load double, double* bitcast (%T_type* @T to double*), align 8
  %108 = fmul double %106, %107
  store double %108, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %109 = add i64 %77, 49
  store i64 %109, i64* %PC, align 8
  %110 = load i64, i64* %79, align 8
  store i64 %110, i64* %RCX, align 8, !tbaa !2428
  %111 = add i64 %110, 16
  %112 = add i64 %77, 54
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to double*
  store double %108, double* %113, align 8
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -8
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RCX, align 8, !tbaa !2428
  %120 = add i64 %119, 8
  %121 = add i64 %116, 9
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %18, align 1, !tbaa !2432
  store double 0.000000e+00, double* %20, align 1, !tbaa !2432
  %124 = add i64 %116, 13
  store i64 %124, i64* %PC, align 8
  %125 = load i64, i64* %118, align 8
  store i64 %125, i64* %RCX, align 8, !tbaa !2428
  %126 = add i64 %125, 16
  %127 = add i64 %116, 18
  store i64 %127, i64* %PC, align 8
  %128 = bitcast i64 %123 to double
  %129 = inttoptr i64 %126 to double*
  %130 = load double, double* %129, align 8
  %131 = fsub double %128, %130
  store double %131, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %132 = add i64 %116, 22
  store i64 %132, i64* %PC, align 8
  %133 = load i64, i64* %118, align 8
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = add i64 %133, 24
  %135 = add i64 %116, 27
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to double*
  %137 = load double, double* %136, align 8
  %138 = fadd double %131, %137
  store double %138, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %139 = add i64 %116, 31
  store i64 %139, i64* %PC, align 8
  %140 = load i64, i64* %118, align 8
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = add i64 %140, 32
  %142 = add i64 %116, 36
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to double*
  %144 = load double, double* %143, align 8
  %145 = fadd double %138, %144
  %146 = load double, double* bitcast (%T_type* @T to double*), align 8
  %147 = fmul double %145, %146
  store double %147, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %148 = add i64 %116, 49
  store i64 %148, i64* %PC, align 8
  %149 = load i64, i64* %118, align 8
  store i64 %149, i64* %RCX, align 8, !tbaa !2428
  %150 = add i64 %149, 24
  %151 = add i64 %116, 54
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to double*
  store double %147, double* %152, align 8
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -8
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RCX, align 8, !tbaa !2428
  %159 = add i64 %158, 8
  %160 = add i64 %155, 9
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %RAX, align 8
  %164 = xor i64 %163, %162
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %21, align 1, !tbaa !2434
  %165 = trunc i64 %164 to i32
  %166 = and i32 %165, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #10
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %22, align 1, !tbaa !2448
  %171 = icmp eq i64 %164, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %23, align 1, !tbaa !2449
  %173 = lshr i64 %164, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %24, align 1, !tbaa !2450
  store i8 0, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %26, align 1, !tbaa !2452
  store i64 %164, i64* %18, align 1, !tbaa !2428
  store i64 0, i64* %19, align 1, !tbaa !2428
  %175 = add i64 %155, 26
  store i64 %175, i64* %PC, align 8
  %176 = load i64, i64* %157, align 8
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = add i64 %176, 16
  %178 = add i64 %155, 31
  store i64 %178, i64* %PC, align 8
  %179 = bitcast i64 %164 to double
  %180 = inttoptr i64 %177 to double*
  %181 = load double, double* %180, align 8
  %182 = fadd double %179, %181
  store double %182, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %183 = add i64 %155, 35
  store i64 %183, i64* %PC, align 8
  %184 = load i64, i64* %157, align 8
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = add i64 %184, 24
  %186 = add i64 %155, 40
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to double*
  %188 = load double, double* %187, align 8
  %189 = fadd double %182, %188
  store double %189, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %190 = add i64 %155, 44
  store i64 %190, i64* %PC, align 8
  %191 = load i64, i64* %157, align 8
  store i64 %191, i64* %RAX, align 8, !tbaa !2428
  %192 = add i64 %191, 32
  %193 = add i64 %155, 49
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to double*
  %195 = load double, double* %194, align 8
  %196 = fadd double %189, %195
  %197 = load double, double* bitcast (%T2_type* @T2 to double*), align 8
  %198 = fdiv double %196, %197
  store double %198, double* %17, align 1, !tbaa !2432
  store i64 0, i64* %19, align 1, !tbaa !2432
  %199 = add i64 %155, 62
  store i64 %199, i64* %PC, align 8
  %200 = load i64, i64* %157, align 8
  store i64 %200, i64* %RAX, align 8, !tbaa !2428
  %201 = add i64 %200, 32
  %202 = add i64 %155, 67
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to double*
  store double %198, double* %203, align 8
  %204 = load i64, i64* %PC, align 8
  %205 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %206 = add i32 %205, 1
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RDX, align 8, !tbaa !2428
  %208 = lshr i32 %206, 31
  store i32 %206, i32* bitcast (%J_type* @J to i32*), align 8
  %209 = add i32 %205, -5
  %210 = icmp ult i32 %206, 6
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %21, align 1, !tbaa !2434
  %212 = and i32 %209, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #10
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %22, align 1, !tbaa !2448
  %217 = xor i32 %209, %206
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %26, align 1, !tbaa !2452
  %221 = icmp eq i32 %209, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %23, align 1, !tbaa !2449
  %223 = lshr i32 %209, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %24, align 1, !tbaa !2450
  %225 = xor i32 %223, %208
  %226 = add nuw nsw i32 %225, %208
  %227 = icmp eq i32 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %25, align 1, !tbaa !2451
  %229 = icmp ne i8 %224, 0
  %230 = xor i1 %229, %227
  %.v = select i1 %230, i64 31, i64 36
  %231 = add i64 %204, %.v
  store i64 %231, i64* %PC, align 8, !tbaa !2428
  br i1 %230, label %block_401771, label %block_401776

block_401771:                                     ; preds = %block_401663
  %232 = add i64 %231, -270
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br label %block_401663
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4007a0:
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
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i8), i8* %9, align 1, !tbaa !2434
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #10
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2448
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stderr to i64), i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2452
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2449
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2450
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2451
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_4007c8, label %block_4007b1

block_4007b1:                                     ; preds = %block_4007a0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2434
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 1, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2451
  store i8 0, i8* %15, align 1, !tbaa !2452
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_4007c8

block_4007c8:                                     ; preds = %block_4007b1, %block_4007a0
  %21 = phi i64 [ %20, %block_4007b1 ], [ %19, %block_4007a0 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %5 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %27 = add i64 %5, 8
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4018e4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4018e4:
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
  store i8 %22, i8* %5, align 1, !tbaa !2434
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2448
  store i8 %10, i8* %11, align 1, !tbaa !2452
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2449
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2450
  store i8 %19, i8* %20, align 1, !tbaa !2451
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
define %struct.Memory* @sub_401870___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_401870:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
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
  %63 = add i64 %38, -4611
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400688__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2434
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2448
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2449
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2450
  store i8 0, i8* %48, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2452
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4018c6, label %block_4018a6

block_4018c6.loopexit:                            ; preds = %block_4018b0
  br label %block_4018c6

block_4018c6:                                     ; preds = %block_4018c6.loopexit, %block_401870
  %81 = phi i64 [ %80, %block_401870 ], [ %179, %block_4018c6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401870 ], [ %149, %block_4018c6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2434
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2448
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2452
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2449
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2450
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2451
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

block_4018a6:                                     ; preds = %block_401870
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2434
  store i8 1, i8* %44, align 1, !tbaa !2448
  store i8 1, i8* %46, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  store i8 0, i8* %48, align 1, !tbaa !2451
  store i8 0, i8* %45, align 1, !tbaa !2452
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4018b0

block_4018b0:                                     ; preds = %block_4018b0, %block_4018a6
  %134 = phi i64 [ 0, %block_4018a6 ], [ %152, %block_4018b0 ]
  %135 = phi i64 [ %133, %block_4018a6 ], [ %179, %block_4018b0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4018a6 ], [ %149, %block_4018b0 ]
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
  store i8 %157, i8* %43, align 1, !tbaa !2434
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2448
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2452
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2449
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2450
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2451
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4018c6.loopexit, label %block_4018b0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4007d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %10 = sub i64 %8, ptrtoint (i64* @stderr to i64)
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
  br i1 %29, label %block_400808, label %block_4007f3

block_4007f3:                                     ; preds = %block_4007d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2434
  store i8 1, i8* %12, align 1, !tbaa !2448
  store i8 1, i8* %14, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i8 0, i8* %16, align 1, !tbaa !2451
  store i8 0, i8* %13, align 1, !tbaa !2452
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400808

block_400808:                                     ; preds = %block_4007f3, %block_4007d0
  %35 = phi i64 [ %34, %block_4007f3 ], [ %33, %block_4007d0 ]
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
define %struct.Memory* @sub_400760__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400760:
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
  store i8 0, i8* %3, align 1, !tbaa !2434
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2448
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2449
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2450
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2451
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2452
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
  store i8 0, i8* %3, align 1, !tbaa !2434
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2448
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2449
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2451
  store i8 0, i8* %8, align 1, !tbaa !2452
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
  store i64 ptrtoint (void ()* @callback_sub_4018e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401870___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602178___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400840_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400840:
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
  %13 = tail call %struct.Memory* @sub_4007d0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401780_P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401780:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %12 = add i64 %8, -16
  %13 = add i64 %11, 8
  store i64 %13, i64* %PC, align 8
  %14 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %15 = load i64, i64* %14, align 1
  %16 = inttoptr i64 %12 to i64*
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC, align 8
  %21 = bitcast %union.VectorReg* %4 to double*
  %22 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  %23 = load i64, i64* %22, align 1
  %24 = inttoptr i64 %18 to i64*
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -24
  %27 = load i64, i64* %RDI, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -8
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %32 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = bitcast [32 x %union.VectorReg]* %3 to double*
  store i64 %36, i64* %14, align 1, !tbaa !2432
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %39 = bitcast i64* %38 to double*
  store double 0.000000e+00, double* %39, align 1, !tbaa !2432
  %40 = add i64 %31, -32
  %41 = add i64 %33, 10
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  store i64 %36, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 5
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %43, -40
  %50 = add i64 %45, 10
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %PC, align 8
  %53 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
  store i64 %53, i64* %14, align 1, !tbaa !2432
  store double 0.000000e+00, double* %39, align 1, !tbaa !2432
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -32
  %56 = add i64 %52, 14
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %22, align 1, !tbaa !2432
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast i64* %59 to double*
  store double 0.000000e+00, double* %60, align 1, !tbaa !2432
  %61 = add i64 %54, -40
  %62 = add i64 %52, 19
  store i64 %62, i64* %PC, align 8
  %63 = bitcast i64 %58 to double
  %64 = inttoptr i64 %61 to double*
  %65 = load double, double* %64, align 8
  %66 = fadd double %63, %65
  store double %66, double* %21, align 1, !tbaa !2432
  store i64 0, i64* %59, align 1, !tbaa !2432
  %67 = bitcast i64 %53 to double
  %68 = fmul double %67, %66
  %69 = add i64 %52, 28
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %55 to double*
  store double %68, double* %70, align 8
  %71 = load i64, i64* %PC, align 8
  %72 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
  store i64 %72, i64* %14, align 1, !tbaa !2432
  store double 0.000000e+00, double* %39, align 1, !tbaa !2432
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -32
  %75 = add i64 %71, 14
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %22, align 1, !tbaa !2432
  store double 0.000000e+00, double* %60, align 1, !tbaa !2432
  %78 = add i64 %73, -40
  %79 = add i64 %71, 19
  store i64 %79, i64* %PC, align 8
  %80 = bitcast i64 %77 to double
  %81 = inttoptr i64 %78 to double*
  %82 = load double, double* %81, align 8
  %83 = fadd double %80, %82
  store double %83, double* %21, align 1, !tbaa !2432
  store i64 0, i64* %59, align 1, !tbaa !2432
  %84 = bitcast i64 %72 to double
  %85 = fmul double %84, %83
  store double %85, double* %37, align 1, !tbaa !2432
  store i64 0, i64* %38, align 1, !tbaa !2432
  %86 = add i64 %71, 28
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %78 to double*
  store double %85, double* %87, align 8
  %88 = load i64, i64* %RBP, align 8
  %89 = add i64 %88, -32
  %90 = load i64, i64* %PC, align 8
  %91 = add i64 %90, 5
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %14, align 1, !tbaa !2432
  store double 0.000000e+00, double* %39, align 1, !tbaa !2432
  %94 = add i64 %88, -40
  %95 = add i64 %90, 10
  store i64 %95, i64* %PC, align 8
  %96 = bitcast i64 %93 to double
  %97 = inttoptr i64 %94 to double*
  %98 = load double, double* %97, align 8
  %99 = fadd double %96, %98
  %100 = load double, double* bitcast (%T2_type* @T2 to double*), align 8
  %101 = fdiv double %99, %100
  store double %101, double* %37, align 1, !tbaa !2432
  store i64 0, i64* %38, align 1, !tbaa !2432
  %102 = add i64 %88, -24
  %103 = add i64 %90, 23
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RDI, align 8, !tbaa !2428
  %106 = add i64 %90, 27
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to double*
  store double %101, double* %107, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %PC, align 8
  %110 = load i64, i64* %7, align 8, !tbaa !2428
  %111 = add i64 %110, 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %7, align 8, !tbaa !2428
  %114 = add i64 %108, 2
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %111 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %PC, align 8, !tbaa !2428
  %117 = add i64 %110, 16
  store i64 %117, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4018e0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4018e0:
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
define %struct.Memory* @sub_400850_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400850:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %9, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -328
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 320
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2434
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = xor i64 %12, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2452
  %31 = icmp eq i64 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = lshr i64 %15, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2450
  %37 = lshr i64 %12, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2451
  %43 = add i64 %11, -12
  %44 = add i64 %14, 17
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %EDI, align 4
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RSI, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -184
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 11
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i64*
  store i64 100000, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -208
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 10
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 0, i32* %67, align 4
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -172
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 10
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 1, i32* %72, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400888

block_400e62:                                     ; preds = %block_400e50
  %73 = add i64 %754, 4
  store i64 %73, i64* %PC, align 8
  %74 = load i64, i64* %976, align 8
  store i64 %74, i64* %RDI, align 8, !tbaa !2428
  %75 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %RSI, align 8, !tbaa !2428
  store i64 %76, i64* %RDX, align 8, !tbaa !2428
  %77 = add i64 %969, -112
  %78 = add i64 %754, 25
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %81 = add i64 %969, -120
  %82 = add i64 %754, 30
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %85 = add i64 %969, -128
  %86 = add i64 %754, 35
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %89 = add i64 %969, -136
  %90 = add i64 %754, 43
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %93 = add i64 %754, 1918
  %94 = add i64 %754, 48
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %93, %struct.Memory* %MEMORY.15)
  %.pre419 = load i64, i64* %PC, align 8
  %.pre420 = load i64, i64* %RBP, align 8
  br label %block_400e92

block_400bda:                                     ; preds = %block_400bcc
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %99 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
  %100 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
  %101 = fadd double %99, %100
  %102 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
  %103 = fadd double %101, %102
  %104 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
  %105 = fsub double %103, %104
  %106 = load double, double* bitcast (%T_type* @T to double*), align 8
  %107 = fmul double %105, %106
  store double %107, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
  %108 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
  %109 = fadd double %107, %108
  %110 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
  %111 = fsub double %109, %110
  %112 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
  %113 = fadd double %111, %112
  %114 = load double, double* bitcast (%T_type* @T to double*), align 8
  %115 = fmul double %113, %114
  store double %115, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
  %116 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
  %117 = fsub double %116, %115
  %118 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
  %119 = fadd double %117, %118
  %120 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
  %121 = fadd double %119, %120
  %122 = load double, double* bitcast (%T_type* @T to double*), align 8
  %123 = fmul double %121, %122
  store double %123, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
  %124 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  %125 = load i64, i64* %RAX, align 8
  %126 = xor i64 %125, %124
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2434
  %127 = trunc i64 %126 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #10
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %25, align 1, !tbaa !2448
  %133 = icmp eq i64 %126, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %33, align 1, !tbaa !2449
  %135 = lshr i64 %126, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  store i8 0, i8* %30, align 1, !tbaa !2452
  %.cast308 = bitcast i64 %126 to double
  %137 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
  %138 = fadd double %.cast308, %137
  %139 = fadd double %138, %123
  %140 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
  %141 = fadd double %139, %140
  %142 = load double, double* bitcast (%T_type* @T to double*), align 8
  %143 = fmul double %141, %142
  store double %143, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  store double %143, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -24
  %146 = add i64 %370, 243
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = icmp eq i64 %148, -1
  %151 = icmp eq i64 %149, 0
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %18, align 1, !tbaa !2434
  %154 = trunc i64 %149 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #10
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %25, align 1, !tbaa !2448
  %160 = xor i64 %149, %148
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %30, align 1, !tbaa !2452
  %164 = zext i1 %151 to i8
  store i8 %164, i8* %33, align 1, !tbaa !2449
  %165 = lshr i64 %149, 63
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %36, align 1, !tbaa !2450
  %167 = lshr i64 %148, 63
  %168 = xor i64 %165, %167
  %169 = add nuw nsw i64 %168, %165
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %42, align 1, !tbaa !2451
  %172 = add i64 %370, 251
  store i64 %172, i64* %PC, align 8
  store i64 %149, i64* %147, align 8
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, -265
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br label %block_400bcc

block_400d69:                                     ; preds = %block_400d57
  %175 = add i64 %404, 4
  store i64 %175, i64* %PC, align 8
  %176 = load i64, i64* %2672, align 8
  store i64 %176, i64* %RDI, align 8, !tbaa !2428
  %177 = add i64 %2665, -40
  %178 = add i64 %404, 8
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RSI, align 8, !tbaa !2428
  %181 = add i64 %404, 12
  store i64 %181, i64* %PC, align 8
  %182 = load i64, i64* %179, align 8
  store i64 %182, i64* %RDX, align 8, !tbaa !2428
  %183 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %183, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %184 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %184, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %185 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  store i64 %185, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %186 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
  store i64 %186, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %187 = add i64 %404, 2167
  %188 = add i64 %404, 53
  %189 = load i64, i64* %RSP, align 8, !tbaa !2428
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %RSP, align 8, !tbaa !2428
  store i64 %187, i64* %PC, align 8, !tbaa !2428
  %192 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %187, %struct.Memory* %MEMORY.13)
  %.pre416 = load i64, i64* %PC, align 8
  %.pre417 = load i64, i64* %RBP, align 8
  br label %block_400d9e

block_400de8:                                     ; preds = %block_400dcd, %block_400ddd
  %193 = phi i32 [ 0, %block_400dcd ], [ 1, %block_400ddd ]
  %194 = phi i64 [ %542, %block_400dcd ], [ %1601, %block_400ddd ]
  store i8 0, i8* %18, align 1, !tbaa !2434
  %195 = tail call i32 @llvm.ctpop.i32(i32 %193) #10
  %196 = trunc i32 %195 to i8
  %197 = xor i8 %196, 1
  store i8 %197, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  %198 = icmp eq i32 %193, 0
  %199 = trunc i32 %193 to i8
  %200 = xor i8 %199, 1
  store i8 %200, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  %.v474 = select i1 %198, i64 30, i64 14
  %201 = add i64 %194, %.v474
  %202 = add i64 %201, 11
  store i64 %202, i64* %PC, align 8
  br i1 %198, label %block_400e06, label %block_400df6

block_400976:                                     ; preds = %block_401590.block_400976_crit_edge, %block_400971
  %203 = phi i32 [ %2707, %block_400971 ], [ %1825, %block_401590.block_400976_crit_edge ]
  %204 = phi i64 [ %2708, %block_400971 ], [ %.pre406, %block_401590.block_400976_crit_edge ]
  %.sink = phi i64 [ %1495, %block_400971 ], [ %1824, %block_401590.block_400976_crit_edge ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.28, %block_400971 ], [ %1799, %block_401590.block_400976_crit_edge ]
  %205 = zext i32 %203 to i64
  %206 = xor i64 %205, %204
  %207 = trunc i64 %206 to i32
  %208 = and i64 %206, 4294967295
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2434
  %209 = and i32 %207, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #10
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %25, align 1, !tbaa !2448
  %214 = icmp eq i32 %207, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %33, align 1, !tbaa !2449
  %216 = lshr i32 %207, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  store i8 0, i8* %30, align 1, !tbaa !2452
  %218 = and i64 %206, 4294967295
  store i64 %218, i64* %RDI, align 8, !tbaa !2428
  %219 = add i64 %.sink, -598
  %220 = add i64 %.sink, 9
  %221 = load i64, i64* %RSP, align 8, !tbaa !2428
  %222 = add i64 %221, -8
  %223 = inttoptr i64 %222 to i64*
  store i64 %220, i64* %223, align 8
  store i64 %222, i64* %RSP, align 8, !tbaa !2428
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  %224 = tail call fastcc %struct.Memory* @ext_400720_time(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %225 = load i64, i64* %PC, align 8
  %226 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 8) to i64*), align 8
  store i64 %226, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %227 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 16) to i64*), align 16
  store i64 %227, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %228 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 24) to i64*), align 8
  store i64 %228, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %229 = load i64, i64* %RBP, align 8
  %230 = add i64 %229, -192
  %231 = load i64, i64* %RAX, align 8
  %232 = add i64 %225, 31
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %230 to i64*
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %PC, align 8
  %235 = load i64, i64* %1506, align 1
  store i64 %235, i64* bitcast (%T_type* @T to i64*), align 8
  %236 = load i64, i64* %1502, align 1
  store i64 %236, i64* bitcast (%T1_type* @T1 to i64*), align 8
  %237 = load i64, i64* %1498, align 1
  store i64 %237, i64* bitcast (%T2_type* @T2 to i64*), align 8
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -184
  %240 = add i64 %234, 34
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = add i64 %238, -168
  %244 = add i64 %234, 41
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i64*
  store i64 %242, i64* %245, align 8
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -172
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 10
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %247 to i32*
  store i32 1, i32* %250, align 4
  %251 = load i64, i64* %RBP, align 8
  %252 = add i64 %251, -176
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 10
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %252 to i32*
  store i32 1, i32* %255, align 4
  %.pre407 = load i64, i64* %PC, align 8
  %.pre408 = load i64, i64* %RBP, align 8
  br label %block_4009db

block_4013ec:                                     ; preds = %block_40139d, %block_4013af
  %256 = phi i64 [ %756, %block_40139d ], [ %.pre432, %block_4013af ]
  %257 = phi i64 [ %294, %block_40139d ], [ %.pre431, %block_4013af ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.24, %block_40139d ], [ %1666, %block_4013af ]
  store i32 2, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 3, i32* bitcast (%K_type* @K to i32*), align 8
  %258 = add i64 %256, -24
  %259 = add i64 %257, 30
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i64*
  store i64 1, i64* %260, align 8
  %.pre433 = load i64, i64* %PC, align 8
  br label %block_40140a

block_40139d:                                     ; preds = %block_401379
  %261 = add i64 %756, -176
  %262 = add i64 %792, 6
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  %266 = add i64 %756, -172
  %267 = add i64 %792, 12
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sub i32 %264, %269
  %271 = icmp ult i32 %264, %269
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %18, align 1, !tbaa !2434
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #10
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %25, align 1, !tbaa !2448
  %278 = xor i32 %269, %264
  %279 = xor i32 %278, %270
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %30, align 1, !tbaa !2452
  %283 = icmp eq i32 %270, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %33, align 1, !tbaa !2449
  %285 = lshr i32 %270, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %36, align 1, !tbaa !2450
  %287 = lshr i32 %264, 31
  %288 = lshr i32 %269, 31
  %289 = xor i32 %288, %287
  %290 = xor i32 %285, %287
  %291 = add nuw nsw i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %42, align 1, !tbaa !2451
  %.v467 = select i1 %283, i64 18, i64 79
  %294 = add i64 %792, %.v467
  store i64 %294, i64* %PC, align 8, !tbaa !2428
  br i1 %283, label %block_4013af, label %block_4013ec

block_4014de:                                     ; preds = %block_4014c6, %block_4014ec
  %295 = phi i64 [ %.pre436, %block_4014c6 ], [ %469, %block_4014ec ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.22, %block_4014c6 ], [ %424, %block_4014ec ]
  %296 = load i64, i64* %RBP, align 8
  %297 = add i64 %296, -24
  %298 = add i64 %295, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = add i64 %296, -104
  %302 = add i64 %295, 8
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  %305 = sub i64 %300, %304
  %306 = icmp ult i64 %300, %304
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %18, align 1, !tbaa !2434
  %308 = trunc i64 %305 to i32
  %309 = and i32 %308, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309) #10
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %25, align 1, !tbaa !2448
  %314 = xor i64 %304, %300
  %315 = xor i64 %314, %305
  %316 = lshr i64 %315, 4
  %317 = trunc i64 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %30, align 1, !tbaa !2452
  %319 = icmp eq i64 %305, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %33, align 1, !tbaa !2449
  %321 = lshr i64 %305, 63
  %322 = trunc i64 %321 to i8
  store i8 %322, i8* %36, align 1, !tbaa !2450
  %323 = lshr i64 %300, 63
  %324 = lshr i64 %304, 63
  %325 = xor i64 %324, %323
  %326 = xor i64 %321, %323
  %327 = add nuw nsw i64 %326, %325
  %328 = icmp eq i64 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %42, align 1, !tbaa !2451
  %330 = icmp ne i8 %322, 0
  %331 = xor i1 %330, %328
  %.demorgan450 = or i1 %319, %331
  %.v470 = select i1 %.demorgan450, i64 14, i64 71
  %332 = add i64 %295, %.v470
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan450, label %block_4014ec, label %block_401525

block_400ddd:                                     ; preds = %block_400dbf
  store i32 3, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400de8

block_400bcc:                                     ; preds = %block_400b90, %block_400bda
  %333 = phi i64 [ %.pre412, %block_400b90 ], [ %174, %block_400bda ]
  %334 = load i64, i64* %RBP, align 8
  %335 = add i64 %334, -24
  %336 = add i64 %333, 4
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = add i64 %334, -40
  %340 = add i64 %333, 8
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  %343 = sub i64 %338, %342
  %344 = icmp ult i64 %338, %342
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %18, align 1, !tbaa !2434
  %346 = trunc i64 %343 to i32
  %347 = and i32 %346, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347) #10
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %25, align 1, !tbaa !2448
  %352 = xor i64 %342, %338
  %353 = xor i64 %352, %343
  %354 = lshr i64 %353, 4
  %355 = trunc i64 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %30, align 1, !tbaa !2452
  %357 = icmp eq i64 %343, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %33, align 1, !tbaa !2449
  %359 = lshr i64 %343, 63
  %360 = trunc i64 %359 to i8
  store i8 %360, i8* %36, align 1, !tbaa !2450
  %361 = lshr i64 %338, 63
  %362 = lshr i64 %342, 63
  %363 = xor i64 %362, %361
  %364 = xor i64 %359, %361
  %365 = add nuw nsw i64 %364, %363
  %366 = icmp eq i64 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %42, align 1, !tbaa !2451
  %368 = icmp ne i8 %360, 0
  %369 = xor i1 %368, %366
  %.demorgan442 = or i1 %357, %369
  %.v454 = select i1 %.demorgan442, i64 14, i64 270
  %370 = add i64 %333, %.v454
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan442, label %block_400bda, label %block_400cda

block_400d57:                                     ; preds = %block_400d29
  %371 = add i64 %2665, -176
  %372 = add i64 %2701, 6
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = add i64 %2665, -172
  %377 = add i64 %2701, 12
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = sub i32 %374, %379
  %381 = icmp ult i32 %374, %379
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %18, align 1, !tbaa !2434
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383) #10
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %25, align 1, !tbaa !2448
  %388 = xor i32 %379, %374
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %30, align 1, !tbaa !2452
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %33, align 1, !tbaa !2449
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %36, align 1, !tbaa !2450
  %397 = lshr i32 %374, 31
  %398 = lshr i32 %379, 31
  %399 = xor i32 %398, %397
  %400 = xor i32 %395, %397
  %401 = add nuw nsw i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %42, align 1, !tbaa !2451
  %.v457 = select i1 %393, i64 18, i64 71
  %404 = add i64 %2701, %.v457
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  br i1 %393, label %block_400d69, label %block_400d9e

block_4014ec:                                     ; preds = %block_4014de
  %405 = add i64 %296, -144
  %406 = add i64 %332, 8
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %409 = add i64 %332, -3580
  %410 = add i64 %332, 13
  %411 = load i64, i64* %RSP, align 8, !tbaa !2428
  %412 = add i64 %411, -8
  %413 = inttoptr i64 %412 to i64*
  store i64 %410, i64* %413, align 8
  store i64 %412, i64* %RSP, align 8, !tbaa !2428
  store i64 %409, i64* %PC, align 8, !tbaa !2428
  %414 = tail call fastcc %struct.Memory* @ext_602168_log(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %415 = load i64, i64* %PC, align 8
  %416 = load double, double* %1497, align 1
  %417 = load double, double* bitcast (%T1_type* @T1 to double*), align 8
  %418 = fdiv double %416, %417
  store double %418, double* %1497, align 1, !tbaa !2432
  %419 = add i64 %415, -3641
  %420 = add i64 %415, 14
  %421 = load i64, i64* %RSP, align 8, !tbaa !2428
  %422 = add i64 %421, -8
  %423 = inttoptr i64 %422 to i64*
  store i64 %420, i64* %423, align 8
  store i64 %422, i64* %RSP, align 8, !tbaa !2428
  store i64 %419, i64* %PC, align 8, !tbaa !2428
  %424 = tail call fastcc %struct.Memory* @ext_4006c0_exp(%struct.State* nonnull %0, %struct.Memory* %414)
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, -3511
  %427 = add i64 %425, 5
  %428 = load i64, i64* %RSP, align 8, !tbaa !2428
  %429 = add i64 %428, -8
  %430 = inttoptr i64 %429 to i64*
  store i64 %427, i64* %430, align 8
  store i64 %429, i64* %RSP, align 8, !tbaa !2428
  store i64 %426, i64* %PC, align 8, !tbaa !2428
  %431 = load double, double* %1497, align 8, !alias.scope !2454, !noalias !2457
  %432 = load i64, i64* %430, align 8
  store i64 %428, i64* %RSP, align 8, !alias.scope !2454, !noalias !2457
  %433 = tail call double @sqrt(double %431)
  call void @llvm.memset.p0i8.i64(i8* %1543, i8 0, i64 24, i32 8, i1 false)
  store double %433, double* %1497, align 8, !alias.scope !2454, !noalias !2457
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -144
  %436 = add i64 %432, 8
  store i64 %436, i64* %PC, align 8
  %437 = inttoptr i64 %435 to double*
  store double %433, double* %437, align 8
  %438 = load i64, i64* %RBP, align 8
  %439 = add i64 %438, -24
  %440 = load i64, i64* %PC, align 8
  %441 = add i64 %440, 4
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %439 to i64*
  %443 = load i64, i64* %442, align 8
  %444 = add i64 %443, 1
  store i64 %444, i64* %RAX, align 8, !tbaa !2428
  %445 = icmp eq i64 %443, -1
  %446 = icmp eq i64 %444, 0
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %18, align 1, !tbaa !2434
  %449 = trunc i64 %444 to i32
  %450 = and i32 %449, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450) #10
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %25, align 1, !tbaa !2448
  %455 = xor i64 %444, %443
  %456 = lshr i64 %455, 4
  %457 = trunc i64 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %30, align 1, !tbaa !2452
  %459 = zext i1 %446 to i8
  store i8 %459, i8* %33, align 1, !tbaa !2449
  %460 = lshr i64 %444, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %36, align 1, !tbaa !2450
  %462 = lshr i64 %443, 63
  %463 = xor i64 %460, %462
  %464 = add nuw nsw i64 %463, %460
  %465 = icmp eq i64 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %42, align 1, !tbaa !2451
  %467 = add i64 %440, 12
  store i64 %467, i64* %PC, align 8
  store i64 %444, i64* %442, align 8
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, -66
  store i64 %469, i64* %PC, align 8, !tbaa !2428
  br label %block_4014de

block_4012d2:                                     ; preds = %block_401297
  %470 = add i64 %560, -176
  %471 = add i64 %596, 6
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RAX, align 8, !tbaa !2428
  %475 = add i64 %560, -172
  %476 = add i64 %596, 12
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = sub i32 %473, %478
  %480 = icmp ult i32 %473, %478
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %18, align 1, !tbaa !2434
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #10
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %25, align 1, !tbaa !2448
  %487 = xor i32 %478, %473
  %488 = xor i32 %487, %479
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %30, align 1, !tbaa !2452
  %492 = icmp eq i32 %479, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %33, align 1, !tbaa !2449
  %494 = lshr i32 %479, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %36, align 1, !tbaa !2450
  %496 = lshr i32 %473, 31
  %497 = lshr i32 %478, 31
  %498 = xor i32 %497, %496
  %499 = xor i32 %494, %496
  %500 = add nuw nsw i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %42, align 1, !tbaa !2451
  %.v465 = select i1 %492, i64 18, i64 75
  %503 = add i64 %596, %.v465
  store i64 %503, i64* %PC, align 8, !tbaa !2428
  br i1 %492, label %block_4012e4, label %block_40131d

block_4015d0:                                     ; preds = %block_40092d, %block_4015c9
  %504 = phi i64 [ %.pre439, %block_4015c9 ], [ %2081, %block_40092d ]
  %MEMORY.5 = phi %struct.Memory* [ %1799, %block_4015c9 ], [ %2068, %block_40092d ]
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -4
  %507 = add i64 %504, 3
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = zext i32 %509 to i64
  store i64 %510, i64* %RAX, align 8, !tbaa !2428
  %511 = load i64, i64* %RSP, align 8
  %512 = add i64 %511, 320
  store i64 %512, i64* %RSP, align 8, !tbaa !2428
  %513 = icmp ugt i64 %511, -321
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %18, align 1, !tbaa !2434
  %515 = trunc i64 %512 to i32
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516) #10
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %25, align 1, !tbaa !2448
  %521 = xor i64 %512, %511
  %522 = lshr i64 %521, 4
  %523 = trunc i64 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %30, align 1, !tbaa !2452
  %525 = icmp eq i64 %512, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %33, align 1, !tbaa !2449
  %527 = lshr i64 %512, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %36, align 1, !tbaa !2450
  %529 = lshr i64 %511, 63
  %530 = xor i64 %527, %529
  %531 = add nuw nsw i64 %530, %527
  %532 = icmp eq i64 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %42, align 1, !tbaa !2451
  %534 = add i64 %504, 11
  store i64 %534, i64* %PC, align 8
  %535 = add i64 %511, 328
  %536 = inttoptr i64 %512 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RBP, align 8, !tbaa !2428
  store i64 %535, i64* %RSP, align 8, !tbaa !2428
  %538 = add i64 %504, 12
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %535 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %PC, align 8, !tbaa !2428
  %541 = add i64 %511, 336
  store i64 %541, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.5

block_400dcd:                                     ; preds = %block_400dbf
  store i32 2, i32* bitcast (%J_type* @J to i32*), align 8
  %542 = add i64 %1600, 27
  store i64 %542, i64* %PC, align 8, !tbaa !2428
  br label %block_400de8

block_400fd0:                                     ; preds = %block_400fbe
  %543 = add i64 %910, 4
  store i64 %543, i64* %PC, align 8
  %544 = load i64, i64* %2032, align 8
  store i64 %544, i64* %RDI, align 8, !tbaa !2428
  %545 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %546 = sext i32 %545 to i64
  store i64 %546, i64* %RSI, align 8, !tbaa !2428
  %547 = sext i32 %2023 to i64
  store i64 %547, i64* %RDX, align 8, !tbaa !2428
  %548 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %548, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %549 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %549, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %550 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  store i64 %550, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %551 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
  store i64 %551, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %552 = add i64 %910, 1552
  %553 = add i64 %910, 61
  %554 = load i64, i64* %RSP, align 8, !tbaa !2428
  %555 = add i64 %554, -8
  %556 = inttoptr i64 %555 to i64*
  store i64 %553, i64* %556, align 8
  store i64 %555, i64* %RSP, align 8, !tbaa !2428
  store i64 %552, i64* %PC, align 8, !tbaa !2428
  %557 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %552, %struct.Memory* %MEMORY.16)
  %.pre422 = load i64, i64* %PC, align 8
  %.pre423 = load i64, i64* %RBP, align 8
  br label %block_40100d

block_400df6:                                     ; preds = %block_400de8
  store i32 0, i32* bitcast (%J_type* @J to i32*), align 8
  %558 = add i64 %201, 27
  store i64 %558, i64* %PC, align 8, !tbaa !2428
  br label %block_400e11

block_401297:                                     ; preds = %block_40126f, %block_4012a5
  %559 = phi i64 [ %.pre427, %block_40126f ], [ %1080, %block_4012a5 ]
  %560 = load i64, i64* %RBP, align 8
  %561 = add i64 %560, -24
  %562 = add i64 %559, 4
  store i64 %562, i64* %PC, align 8
  %563 = inttoptr i64 %561 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RAX, align 8, !tbaa !2428
  %565 = add i64 %560, -80
  %566 = add i64 %559, 8
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  %569 = sub i64 %564, %568
  %570 = icmp ult i64 %564, %568
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %18, align 1, !tbaa !2434
  %572 = trunc i64 %569 to i32
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573) #10
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %25, align 1, !tbaa !2448
  %578 = xor i64 %568, %564
  %579 = xor i64 %578, %569
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %30, align 1, !tbaa !2452
  %583 = icmp eq i64 %569, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %33, align 1, !tbaa !2449
  %585 = lshr i64 %569, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %36, align 1, !tbaa !2450
  %587 = lshr i64 %564, 63
  %588 = lshr i64 %568, 63
  %589 = xor i64 %588, %587
  %590 = xor i64 %585, %587
  %591 = add nuw nsw i64 %590, %589
  %592 = icmp eq i64 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %42, align 1, !tbaa !2451
  %594 = icmp ne i8 %586, 0
  %595 = xor i1 %594, %592
  %.demorgan447 = or i1 %583, %595
  %.v464 = select i1 %.demorgan447, i64 14, i64 59
  %596 = add i64 %559, %.v464
  store i64 %596, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan447, label %block_4012a5, label %block_4012d2

block_401537:                                     ; preds = %block_401525
  %597 = add i64 %1577, 4
  store i64 %597, i64* %PC, align 8
  %598 = load i64, i64* %303, align 8
  store i64 %598, i64* %RDI, align 8, !tbaa !2428
  %599 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %RSI, align 8, !tbaa !2428
  %601 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RDX, align 8, !tbaa !2428
  %603 = add i64 %296, -144
  %604 = add i64 %1577, 28
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %607 = add i64 %1577, 36
  store i64 %607, i64* %PC, align 8
  %608 = load i64, i64* %605, align 8
  store i64 %608, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %609 = add i64 %1577, 44
  store i64 %609, i64* %PC, align 8
  %610 = load i64, i64* %605, align 8
  store i64 %610, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %611 = add i64 %1577, 52
  store i64 %611, i64* %PC, align 8
  %612 = load i64, i64* %605, align 8
  store i64 %612, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %613 = add i64 %1577, 169
  %614 = add i64 %1577, 57
  %615 = load i64, i64* %RSP, align 8, !tbaa !2428
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %617, align 8
  store i64 %616, i64* %RSP, align 8, !tbaa !2428
  store i64 %613, i64* %PC, align 8, !tbaa !2428
  %618 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %613, %struct.Memory* %MEMORY.3)
  %.pre437 = load i64, i64* %RBP, align 8
  %.pre438 = load i64, i64* %PC, align 8
  br label %block_401570

block_400ec9:                                     ; preds = %block_400ebb
  %619 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %620 = sub i32 %2023, %619
  %621 = sext i32 %619 to i64
  %622 = sext i32 %620 to i64
  %623 = mul nsw i64 %622, %621
  %624 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
  %625 = sub i32 %624, %2023
  %626 = shl i64 %623, 32
  %627 = ashr exact i64 %626, 32
  %628 = sext i32 %625 to i64
  %629 = mul nsw i64 %628, %627
  %630 = trunc i64 %629 to i32
  store i32 %630, i32* bitcast (%J_type* @J to i32*), align 8
  %631 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %632 = mul i32 %631, %630
  store i32 %632, i32* bitcast (%K_type* @K to i32*), align 8
  %633 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
  %634 = sub i32 %633, %632
  %635 = add i32 %630, %632
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RCX, align 8, !tbaa !2428
  %637 = mul i32 %635, %634
  store i32 %637, i32* bitcast (%L_type* @L to i32*), align 8
  %638 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %639 = add i32 %638, %630
  %640 = add i32 %637, %639
  %641 = sitofp i32 %640 to double
  %642 = add i32 %637, -1
  %643 = sext i32 %642 to i64
  %644 = shl nsw i64 %643, 3
  %645 = add i64 %644, ptrtoint (%E1_type* @E1 to i64)
  %646 = add i64 %2061, 179
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to double*
  store double %641, double* %647, align 8
  %648 = load i64, i64* %PC, align 8
  %649 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %650 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %651 = sext i32 %649 to i64
  %652 = sext i32 %650 to i64
  %653 = mul nsw i64 %652, %651
  %654 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
  %655 = shl i64 %653, 32
  %656 = ashr exact i64 %655, 32
  %657 = sext i32 %654 to i64
  %658 = mul nsw i64 %657, %656
  %659 = trunc i64 %658 to i32
  %660 = sitofp i32 %659 to double
  store double %660, double* %1497, align 1, !tbaa !2432
  %661 = add i32 %650, -1
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RAX, align 8, !tbaa !2428
  %663 = icmp eq i32 %650, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %18, align 1, !tbaa !2434
  %665 = and i32 %661, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665) #10
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %25, align 1, !tbaa !2448
  %670 = xor i32 %661, %650
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %30, align 1, !tbaa !2452
  %674 = icmp eq i32 %661, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %33, align 1, !tbaa !2449
  %676 = lshr i32 %661, 31
  %677 = trunc i32 %676 to i8
  store i8 %677, i8* %36, align 1, !tbaa !2450
  %678 = lshr i32 %650, 31
  %679 = xor i32 %676, %678
  %680 = add nuw nsw i32 %679, %678
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %42, align 1, !tbaa !2451
  %683 = sext i32 %661 to i64
  store i64 %683, i64* %RDX, align 8, !tbaa !2428
  %684 = shl nsw i64 %683, 3
  %685 = add i64 %684, ptrtoint (%E1_type* @E1 to i64)
  %686 = add i64 %648, 49
  store i64 %686, i64* %PC, align 8
  %687 = inttoptr i64 %685 to double*
  store double %660, double* %687, align 8
  %688 = load i64, i64* %RBP, align 8
  %689 = add i64 %688, -24
  %690 = load i64, i64* %PC, align 8
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %689 to i64*
  %693 = load i64, i64* %692, align 8
  %694 = add i64 %693, 1
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = icmp eq i64 %693, -1
  %696 = icmp eq i64 %694, 0
  %697 = or i1 %695, %696
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %18, align 1, !tbaa !2434
  %699 = trunc i64 %694 to i32
  %700 = and i32 %699, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700) #10
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %25, align 1, !tbaa !2448
  %705 = xor i64 %694, %693
  %706 = lshr i64 %705, 4
  %707 = trunc i64 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %30, align 1, !tbaa !2452
  %709 = zext i1 %696 to i8
  store i8 %709, i8* %33, align 1, !tbaa !2449
  %710 = lshr i64 %694, 63
  %711 = trunc i64 %710 to i8
  store i8 %711, i8* %36, align 1, !tbaa !2450
  %712 = lshr i64 %693, 63
  %713 = xor i64 %710, %712
  %714 = add nuw nsw i64 %713, %710
  %715 = icmp eq i64 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %42, align 1, !tbaa !2451
  %717 = add i64 %690, 12
  store i64 %717, i64* %PC, align 8
  store i64 %694, i64* %692, align 8
  %718 = load i64, i64* %PC, align 8
  %719 = add i64 %718, -254
  store i64 %719, i64* %PC, align 8, !tbaa !2428
  br label %block_400ebb

block_40158b:                                     ; preds = %block_401570
  %720 = add i64 %1958, -2992
  store i64 %720, i64* %PC, align 8, !tbaa !2428
  br label %block_4009db

block_400e50:                                     ; preds = %block_400db1
  %721 = add i64 %969, -176
  %722 = add i64 %1005, 6
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX, align 8, !tbaa !2428
  %726 = add i64 %969, -172
  %727 = add i64 %1005, 12
  store i64 %727, i64* %PC, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sub i32 %724, %729
  %731 = icmp ult i32 %724, %729
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %18, align 1, !tbaa !2434
  %733 = and i32 %730, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733) #10
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %25, align 1, !tbaa !2448
  %738 = xor i32 %729, %724
  %739 = xor i32 %738, %730
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %30, align 1, !tbaa !2452
  %743 = icmp eq i32 %730, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %33, align 1, !tbaa !2449
  %745 = lshr i32 %730, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %36, align 1, !tbaa !2450
  %747 = lshr i32 %724, 31
  %748 = lshr i32 %729, 31
  %749 = xor i32 %748, %747
  %750 = xor i32 %745, %747
  %751 = add nuw nsw i32 %750, %749
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %42, align 1, !tbaa !2451
  %.v459 = select i1 %743, i64 18, i64 66
  %754 = add i64 %1005, %.v459
  store i64 %754, i64* %PC, align 8, !tbaa !2428
  br i1 %743, label %block_400e62, label %block_400e92

block_401379:                                     ; preds = %block_401387, %block_40131d
  %755 = phi i64 [ %2777, %block_401387 ], [ %.pre430, %block_40131d ]
  %756 = load i64, i64* %RBP, align 8
  %757 = add i64 %756, -24
  %758 = add i64 %755, 4
  store i64 %758, i64* %PC, align 8
  %759 = inttoptr i64 %757 to i64*
  %760 = load i64, i64* %759, align 8
  store i64 %760, i64* %RAX, align 8, !tbaa !2428
  %761 = add i64 %756, -88
  %762 = add i64 %755, 8
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  %765 = sub i64 %760, %764
  %766 = icmp ult i64 %760, %764
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %18, align 1, !tbaa !2434
  %768 = trunc i64 %765 to i32
  %769 = and i32 %768, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769) #10
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %25, align 1, !tbaa !2448
  %774 = xor i64 %764, %760
  %775 = xor i64 %774, %765
  %776 = lshr i64 %775, 4
  %777 = trunc i64 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %30, align 1, !tbaa !2452
  %779 = icmp eq i64 %765, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %33, align 1, !tbaa !2449
  %781 = lshr i64 %765, 63
  %782 = trunc i64 %781 to i8
  store i8 %782, i8* %36, align 1, !tbaa !2450
  %783 = lshr i64 %760, 63
  %784 = lshr i64 %764, 63
  %785 = xor i64 %784, %783
  %786 = xor i64 %781, %783
  %787 = add nuw nsw i64 %786, %785
  %788 = icmp eq i64 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %42, align 1, !tbaa !2451
  %790 = icmp ne i8 %782, 0
  %791 = xor i1 %790, %788
  %.demorgan448 = or i1 %779, %791
  %.v466 = select i1 %.demorgan448, i64 14, i64 36
  %792 = add i64 %755, %.v466
  store i64 %792, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan448, label %block_401387, label %block_40139d

block_400e3a:                                     ; preds = %block_400e1f, %block_400e2f
  %793 = phi i64 [ %1611, %block_400e1f ], [ %1894, %block_400e2f ]
  %794 = add i64 %793, 9
  store i64 %794, i64* %PC, align 8
  %795 = load i64, i64* %972, align 8
  %796 = add i64 %795, 1
  store i64 %796, i64* %RAX, align 8, !tbaa !2428
  %797 = icmp eq i64 %795, -1
  %798 = icmp eq i64 %796, 0
  %799 = or i1 %797, %798
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %18, align 1, !tbaa !2434
  %801 = trunc i64 %796 to i32
  %802 = and i32 %801, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802) #10
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %25, align 1, !tbaa !2448
  %807 = xor i64 %796, %795
  %808 = lshr i64 %807, 4
  %809 = trunc i64 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %30, align 1, !tbaa !2452
  %811 = zext i1 %798 to i8
  store i8 %811, i8* %33, align 1, !tbaa !2449
  %812 = lshr i64 %796, 63
  %813 = trunc i64 %812 to i8
  store i8 %813, i8* %36, align 1, !tbaa !2450
  %814 = lshr i64 %795, 63
  %815 = xor i64 %812, %814
  %816 = add nuw nsw i64 %815, %812
  %817 = icmp eq i64 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %42, align 1, !tbaa !2451
  %819 = add i64 %793, 17
  store i64 %819, i64* %PC, align 8
  store i64 %796, i64* %972, align 8
  %820 = load i64, i64* %PC, align 8
  %821 = add i64 %820, -154
  store i64 %821, i64* %PC, align 8, !tbaa !2428
  br label %block_400db1

block_400d37:                                     ; preds = %block_400d29
  store i64 ptrtoint (%E1_type* @E1 to i64), i64* %RDI, align 8, !tbaa !2428
  %822 = add i64 %2701, 2329
  %823 = add i64 %2701, 15
  %824 = load i64, i64* %RSP, align 8, !tbaa !2428
  %825 = add i64 %824, -8
  %826 = inttoptr i64 %825 to i64*
  store i64 %823, i64* %826, align 8
  store i64 %825, i64* %RSP, align 8, !tbaa !2428
  store i64 %822, i64* %PC, align 8, !tbaa !2428
  %827 = tail call %struct.Memory* @sub_401650_PA(%struct.State* nonnull %0, i64 %822, %struct.Memory* %MEMORY.13)
  %828 = load i64, i64* %RBP, align 8
  %829 = add i64 %828, -24
  %830 = load i64, i64* %PC, align 8
  %831 = add i64 %830, 4
  store i64 %831, i64* %PC, align 8
  %832 = inttoptr i64 %829 to i64*
  %833 = load i64, i64* %832, align 8
  %834 = add i64 %833, 1
  store i64 %834, i64* %RAX, align 8, !tbaa !2428
  %835 = icmp eq i64 %833, -1
  %836 = icmp eq i64 %834, 0
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %18, align 1, !tbaa !2434
  %839 = trunc i64 %834 to i32
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840) #10
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %25, align 1, !tbaa !2448
  %845 = xor i64 %834, %833
  %846 = lshr i64 %845, 4
  %847 = trunc i64 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %30, align 1, !tbaa !2452
  %849 = zext i1 %836 to i8
  store i8 %849, i8* %33, align 1, !tbaa !2449
  %850 = lshr i64 %834, 63
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %36, align 1, !tbaa !2450
  %852 = lshr i64 %833, 63
  %853 = xor i64 %850, %852
  %854 = add nuw nsw i64 %853, %850
  %855 = icmp eq i64 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %42, align 1, !tbaa !2451
  %857 = add i64 %830, 12
  store i64 %857, i64* %PC, align 8
  store i64 %834, i64* %832, align 8
  %858 = load i64, i64* %PC, align 8
  %859 = add i64 %858, -41
  store i64 %859, i64* %PC, align 8, !tbaa !2428
  br label %block_400d29

block_40100d:                                     ; preds = %block_400fbe, %block_400fd0
  %860 = phi i64 [ %2025, %block_400fbe ], [ %.pre423, %block_400fd0 ]
  %861 = phi i64 [ %910, %block_400fbe ], [ %.pre422, %block_400fd0 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.16, %block_400fbe ], [ %557, %block_400fd0 ]
  %862 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 48) to i64*), align 16
  store i64 %862, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %863 = add i64 %860, -144
  %864 = add i64 %861, 16
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i64*
  store i64 %862, i64* %865, align 8
  %866 = load i64, i64* %RBP, align 8
  %867 = add i64 %866, -152
  %868 = load i64, i64* %PC, align 8
  %869 = add i64 %868, 8
  store i64 %869, i64* %PC, align 8
  %870 = load i64, i64* %1498, align 1
  %871 = inttoptr i64 %867 to i64*
  store i64 %870, i64* %871, align 8
  %872 = load i64, i64* %RBP, align 8
  %873 = add i64 %872, -24
  %874 = load i64, i64* %PC, align 8
  %875 = add i64 %874, 8
  store i64 %875, i64* %PC, align 8
  %876 = inttoptr i64 %873 to i64*
  store i64 1, i64* %876, align 8
  %.pre424 = load i64, i64* %PC, align 8
  br label %block_40102d

block_400fbe:                                     ; preds = %block_400ebb
  %877 = add i64 %2025, -176
  %878 = add i64 %2061, 6
  store i64 %878, i64* %PC, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX, align 8, !tbaa !2428
  %882 = add i64 %2025, -172
  %883 = add i64 %2061, 12
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = sub i32 %880, %885
  %887 = icmp ult i32 %880, %885
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %18, align 1, !tbaa !2434
  %889 = and i32 %886, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889) #10
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %25, align 1, !tbaa !2448
  %894 = xor i32 %885, %880
  %895 = xor i32 %894, %886
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %30, align 1, !tbaa !2452
  %899 = icmp eq i32 %886, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %33, align 1, !tbaa !2449
  %901 = lshr i32 %886, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %36, align 1, !tbaa !2450
  %903 = lshr i32 %880, 31
  %904 = lshr i32 %885, 31
  %905 = xor i32 %904, %903
  %906 = xor i32 %901, %903
  %907 = add nuw nsw i32 %906, %905
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %42, align 1, !tbaa !2451
  %.v461 = select i1 %899, i64 18, i64 79
  %910 = add i64 %2061, %.v461
  store i64 %910, i64* %PC, align 8, !tbaa !2428
  br i1 %899, label %block_400fd0, label %block_40100d

block_401236:                                     ; preds = %block_401224
  %911 = add i64 %1650, 4
  store i64 %911, i64* %PC, align 8
  %912 = load i64, i64* %1131, align 8
  store i64 %912, i64* %RDI, align 8, !tbaa !2428
  %913 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RSI, align 8, !tbaa !2428
  %915 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %916 = sext i32 %915 to i64
  store i64 %916, i64* %RDX, align 8, !tbaa !2428
  %917 = add i64 %1124, -144
  %918 = add i64 %1650, 28
  store i64 %918, i64* %PC, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %921 = add i64 %1650, 36
  store i64 %921, i64* %PC, align 8
  %922 = load i64, i64* %919, align 8
  store i64 %922, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %923 = add i64 %1124, -152
  %924 = add i64 %1650, 44
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %927 = add i64 %1650, 52
  store i64 %927, i64* %PC, align 8
  %928 = load i64, i64* %925, align 8
  store i64 %928, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %929 = add i64 %1650, 938
  %930 = add i64 %1650, 57
  %931 = load i64, i64* %RSP, align 8, !tbaa !2428
  %932 = add i64 %931, -8
  %933 = inttoptr i64 %932 to i64*
  store i64 %930, i64* %933, align 8
  store i64 %932, i64* %RSP, align 8, !tbaa !2428
  store i64 %929, i64* %PC, align 8, !tbaa !2428
  %934 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %929, %struct.Memory* %MEMORY.9)
  %.pre425 = load i64, i64* %PC, align 8
  %.pre426 = load i64, i64* %RBP, align 8
  br label %block_40126f

block_40095d:                                     ; preds = %block_40090d, %block_4008e0
  %935 = phi i64 [ %2141, %block_40090d ], [ %.pre441, %block_4008e0 ]
  %.sink9 = phi i64 [ 5, %block_40090d ], [ 115, %block_4008e0 ]
  %MEMORY.10 = phi %struct.Memory* [ %2133, %block_40090d ], [ %1741, %block_4008e0 ]
  %936 = add i64 %935, %.sink9
  %937 = load i64, i64* %RBP, align 8
  %938 = add i64 %937, -172
  %939 = add i64 %936, 6
  store i64 %939, i64* %PC, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = add i32 %941, 1
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = icmp eq i32 %941, -1
  %945 = icmp eq i32 %942, 0
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %18, align 1, !tbaa !2434
  %948 = and i32 %942, 255
  %949 = tail call i32 @llvm.ctpop.i32(i32 %948) #10
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  store i8 %952, i8* %25, align 1, !tbaa !2448
  %953 = xor i32 %942, %941
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %30, align 1, !tbaa !2452
  %957 = zext i1 %945 to i8
  store i8 %957, i8* %33, align 1, !tbaa !2449
  %958 = lshr i32 %942, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %36, align 1, !tbaa !2450
  %960 = lshr i32 %941, 31
  %961 = xor i32 %958, %960
  %962 = add nuw nsw i32 %961, %958
  %963 = icmp eq i32 %962, 2
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %42, align 1, !tbaa !2451
  %965 = add i64 %936, 15
  store i64 %965, i64* %PC, align 8
  store i32 %942, i32* %940, align 4
  %966 = load i64, i64* %PC, align 8
  %967 = add i64 %966, -228
  store i64 %967, i64* %PC, align 8, !tbaa !2428
  br label %block_400888

block_400db1:                                     ; preds = %block_400d9e, %block_400e3a
  %968 = phi i64 [ %.pre418, %block_400d9e ], [ %821, %block_400e3a ]
  %969 = load i64, i64* %RBP, align 8
  %970 = add i64 %969, -24
  %971 = add i64 %968, 4
  store i64 %971, i64* %PC, align 8
  %972 = inttoptr i64 %970 to i64*
  %973 = load i64, i64* %972, align 8
  store i64 %973, i64* %RAX, align 8, !tbaa !2428
  %974 = add i64 %969, -56
  %975 = add i64 %968, 8
  store i64 %975, i64* %PC, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  %978 = sub i64 %973, %977
  %979 = icmp ult i64 %973, %977
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %18, align 1, !tbaa !2434
  %981 = trunc i64 %978 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982) #10
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %25, align 1, !tbaa !2448
  %987 = xor i64 %977, %973
  %988 = xor i64 %987, %978
  %989 = lshr i64 %988, 4
  %990 = trunc i64 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %30, align 1, !tbaa !2452
  %992 = icmp eq i64 %978, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %33, align 1, !tbaa !2449
  %994 = lshr i64 %978, 63
  %995 = trunc i64 %994 to i8
  store i8 %995, i8* %36, align 1, !tbaa !2450
  %996 = lshr i64 %973, 63
  %997 = lshr i64 %977, 63
  %998 = xor i64 %997, %996
  %999 = xor i64 %994, %996
  %1000 = add nuw nsw i64 %999, %998
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %42, align 1, !tbaa !2451
  %1003 = icmp ne i8 %995, 0
  %1004 = xor i1 %1003, %1001
  %.demorgan444 = or i1 %992, %1004
  %.v458 = select i1 %.demorgan444, i64 14, i64 159
  %1005 = add i64 %968, %.v458
  store i64 %1005, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan444, label %block_400dbf, label %block_400e50

block_400b68:                                     ; preds = %block_400b56
  %1006 = add i64 %2022, 4
  store i64 %1006, i64* %PC, align 8
  %1007 = load i64, i64* %2600, align 8
  store i64 %1007, i64* %RDI, align 8, !tbaa !2428
  %1008 = add i64 %2022, 8
  store i64 %1008, i64* %PC, align 8
  %1009 = load i64, i64* %2600, align 8
  store i64 %1009, i64* %RSI, align 8, !tbaa !2428
  %1010 = add i64 %2022, 12
  store i64 %1010, i64* %PC, align 8
  %1011 = load i64, i64* %2600, align 8
  store i64 %1011, i64* %RDX, align 8, !tbaa !2428
  %1012 = add i64 %2593, -112
  %1013 = add i64 %2022, 17
  store i64 %1013, i64* %PC, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1016 = add i64 %2593, -120
  %1017 = add i64 %2022, 22
  store i64 %1017, i64* %PC, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1020 = add i64 %2593, -128
  %1021 = add i64 %2022, 27
  store i64 %1021, i64* %PC, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1024 = add i64 %2593, -136
  %1025 = add i64 %2022, 35
  store i64 %1025, i64* %PC, align 8
  %1026 = inttoptr i64 %1024 to i64*
  %1027 = load i64, i64* %1026, align 8
  store i64 %1027, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1028 = add i64 %2022, 2680
  %1029 = add i64 %2022, 40
  %1030 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1031 = add i64 %1030, -8
  %1032 = inttoptr i64 %1031 to i64*
  store i64 %1029, i64* %1032, align 8
  store i64 %1031, i64* %RSP, align 8, !tbaa !2428
  store i64 %1028, i64* %PC, align 8, !tbaa !2428
  %1033 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %1028, %struct.Memory* %MEMORY.23)
  %.pre410 = load i64, i64* %PC, align 8
  %.pre411 = load i64, i64* %RBP, align 8
  br label %block_400b90

block_400e2f:                                     ; preds = %block_400e11
  store i32 0, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400e3a

block_4012a5:                                     ; preds = %block_401297
  %1034 = add i64 %560, -160
  store i64 %1034, i64* %RDI, align 8, !tbaa !2428
  %1035 = add i64 %560, -144
  %1036 = add i64 %596, 15
  store i64 %1036, i64* %PC, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1039 = add i64 %560, -152
  %1040 = add i64 %596, 23
  store i64 %1040, i64* %PC, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  store i64 %1042, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1043 = add i64 %596, 1243
  %1044 = add i64 %596, 28
  %1045 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1046 = add i64 %1045, -8
  %1047 = inttoptr i64 %1046 to i64*
  store i64 %1044, i64* %1047, align 8
  store i64 %1046, i64* %RSP, align 8, !tbaa !2428
  store i64 %1043, i64* %PC, align 8, !tbaa !2428
  %1048 = tail call %struct.Memory* @sub_401780_P3(%struct.State* nonnull %0, i64 %1043, %struct.Memory* %MEMORY.20)
  %1049 = load i64, i64* %RBP, align 8
  %1050 = add i64 %1049, -24
  %1051 = load i64, i64* %PC, align 8
  %1052 = add i64 %1051, 4
  store i64 %1052, i64* %PC, align 8
  %1053 = inttoptr i64 %1050 to i64*
  %1054 = load i64, i64* %1053, align 8
  %1055 = add i64 %1054, 1
  store i64 %1055, i64* %RAX, align 8, !tbaa !2428
  %1056 = icmp eq i64 %1054, -1
  %1057 = icmp eq i64 %1055, 0
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %18, align 1, !tbaa !2434
  %1060 = trunc i64 %1055 to i32
  %1061 = and i32 %1060, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061) #10
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %25, align 1, !tbaa !2448
  %1066 = xor i64 %1055, %1054
  %1067 = lshr i64 %1066, 4
  %1068 = trunc i64 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %30, align 1, !tbaa !2452
  %1070 = zext i1 %1057 to i8
  store i8 %1070, i8* %33, align 1, !tbaa !2449
  %1071 = lshr i64 %1055, 63
  %1072 = trunc i64 %1071 to i8
  store i8 %1072, i8* %36, align 1, !tbaa !2450
  %1073 = lshr i64 %1054, 63
  %1074 = xor i64 %1071, %1073
  %1075 = add nuw nsw i64 %1074, %1071
  %1076 = icmp eq i64 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %42, align 1, !tbaa !2451
  %1078 = add i64 %1051, 12
  store i64 %1078, i64* %PC, align 8
  store i64 %1055, i64* %1053, align 8
  %1079 = load i64, i64* %PC, align 8
  %1080 = add i64 %1079, -54
  store i64 %1080, i64* %PC, align 8, !tbaa !2428
  br label %block_401297

block_4008c5:                                     ; preds = %block_400897
  %1081 = add i64 %.pre440, -16
  %1082 = add i64 %1753, 4
  store i64 %1082, i64* %PC, align 8
  %1083 = inttoptr i64 %1081 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RAX, align 8, !tbaa !2428
  %1085 = add i64 %.pre440, -172
  %1086 = add i64 %1753, 11
  store i64 %1086, i64* %PC, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RCX, align 8, !tbaa !2428
  %1090 = shl nsw i64 %1089, 3
  %1091 = add i64 %1090, %1084
  %1092 = add i64 %1753, 15
  store i64 %1092, i64* %PC, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = add i64 %1753, 18
  store i64 %1095, i64* %PC, align 8
  %1096 = inttoptr i64 %1094 to i8*
  %1097 = load i8, i8* %1096, align 1
  %1098 = sext i8 %1097 to i64
  %1099 = and i64 %1098, 4294967295
  store i64 %1099, i64* %RDX, align 8, !tbaa !2428
  %1100 = sext i8 %1097 to i32
  %1101 = add nsw i32 %1100, -99
  %1102 = icmp ult i8 %1097, 99
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %18, align 1, !tbaa !2434
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104) #10
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %25, align 1, !tbaa !2448
  %1109 = xor i32 %1101, %1100
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %30, align 1, !tbaa !2452
  %1113 = icmp eq i32 %1101, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %33, align 1, !tbaa !2449
  %1115 = lshr i32 %1101, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %36, align 1, !tbaa !2450
  %1117 = lshr i32 %1100, 31
  %1118 = xor i32 %1115, %1117
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %42, align 1, !tbaa !2451
  %.v477 = select i1 %1113, i64 27, i64 42
  %1122 = add i64 %1753, %.v477
  store i64 %1122, i64* %PC, align 8, !tbaa !2428
  br i1 %1113, label %block_4008e0, label %block_4008ef

block_40102d:                                     ; preds = %block_40103b, %block_40100d
  %1123 = phi i64 [ %1490, %block_40103b ], [ %.pre424, %block_40100d ]
  %1124 = load i64, i64* %RBP, align 8
  %1125 = add i64 %1124, -24
  %1126 = add i64 %1123, 4
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RAX, align 8, !tbaa !2428
  %1129 = add i64 %1124, -72
  %1130 = add i64 %1123, 8
  store i64 %1130, i64* %PC, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  %1133 = sub i64 %1128, %1132
  %1134 = icmp ult i64 %1128, %1132
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %18, align 1, !tbaa !2434
  %1136 = trunc i64 %1133 to i32
  %1137 = and i32 %1136, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137) #10
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %25, align 1, !tbaa !2448
  %1142 = xor i64 %1132, %1128
  %1143 = xor i64 %1142, %1133
  %1144 = lshr i64 %1143, 4
  %1145 = trunc i64 %1144 to i8
  %1146 = and i8 %1145, 1
  store i8 %1146, i8* %30, align 1, !tbaa !2452
  %1147 = icmp eq i64 %1133, 0
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %33, align 1, !tbaa !2449
  %1149 = lshr i64 %1133, 63
  %1150 = trunc i64 %1149 to i8
  store i8 %1150, i8* %36, align 1, !tbaa !2450
  %1151 = lshr i64 %1128, 63
  %1152 = lshr i64 %1132, 63
  %1153 = xor i64 %1152, %1151
  %1154 = xor i64 %1149, %1151
  %1155 = add nuw nsw i64 %1154, %1153
  %1156 = icmp eq i64 %1155, 2
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %42, align 1, !tbaa !2451
  %1158 = icmp ne i8 %1150, 0
  %1159 = xor i1 %1158, %1156
  %.demorgan446 = or i1 %1147, %1159
  %.v462 = select i1 %.demorgan446, i64 14, i64 503
  %1160 = add i64 %1123, %.v462
  store i64 %1160, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan446, label %block_40103b, label %block_401224

block_40103b:                                     ; preds = %block_40102d
  %1161 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %1161, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1162 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
  store i64 %1162, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1163 = load i64, i64* bitcast (%T2_type* @T2 to i64*), align 8
  store i64 %1163, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1164 = add i64 %1124, -144
  %1165 = add i64 %1160, 34
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1168 = add i64 %1124, -224
  %1169 = add i64 %1160, 42
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1168 to i64*
  store i64 %1161, i64* %1170, align 8
  %1171 = load i64, i64* %PC, align 8
  %1172 = load <2 x i32>, <2 x i32>* %1512, align 1
  %1173 = load <2 x i32>, <2 x i32>* %1513, align 1
  %1174 = extractelement <2 x i32> %1172, i32 0
  store i32 %1174, i32* %1514, align 1, !tbaa !2459
  %1175 = extractelement <2 x i32> %1172, i32 1
  store i32 %1175, i32* %1516, align 1, !tbaa !2459
  %1176 = extractelement <2 x i32> %1173, i32 0
  store i32 %1176, i32* %1517, align 1, !tbaa !2459
  %1177 = extractelement <2 x i32> %1173, i32 1
  store i32 %1177, i32* %1519, align 1, !tbaa !2459
  %1178 = load i64, i64* %RBP, align 8
  %1179 = add i64 %1178, -232
  %1180 = add i64 %1171, 11
  store i64 %1180, i64* %PC, align 8
  %1181 = load i64, i64* %1506, align 1
  %1182 = inttoptr i64 %1179 to i64*
  store i64 %1181, i64* %1182, align 8
  %1183 = load i64, i64* %RBP, align 8
  %1184 = add i64 %1183, -240
  %1185 = load i64, i64* %PC, align 8
  %1186 = add i64 %1185, 8
  store i64 %1186, i64* %PC, align 8
  %1187 = load i64, i64* %1502, align 1
  %1188 = inttoptr i64 %1184 to i64*
  store i64 %1187, i64* %1188, align 8
  %1189 = load i64, i64* %PC, align 8
  %1190 = add i64 %1189, -2360
  %1191 = add i64 %1189, 5
  %1192 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1191, i64* %1194, align 8
  store i64 %1193, i64* %RSP, align 8, !tbaa !2428
  store i64 %1190, i64* %PC, align 8, !tbaa !2428
  %1195 = load double, double* %1497, align 8, !alias.scope !2461, !noalias !2464
  %1196 = load i64, i64* %1194, align 8
  store i64 %1192, i64* %RSP, align 8, !alias.scope !2461, !noalias !2464
  %1197 = tail call double @sin(double %1195)
  call void @llvm.memset.p0i8.i64(i8* %1523, i8 0, i64 24, i32 8, i1 false)
  store double %1197, double* %1497, align 8, !alias.scope !2461, !noalias !2464
  %1198 = load i64, i64* %RBP, align 8
  %1199 = add i64 %1198, -232
  %1200 = add i64 %1196, 8
  store i64 %1200, i64* %PC, align 8
  %1201 = inttoptr i64 %1199 to double*
  %1202 = load double, double* %1201, align 8
  %1203 = fmul double %1202, %1197
  store double %1203, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1204 = add i64 %1198, -144
  %1205 = add i64 %1196, 20
  store i64 %1205, i64* %PC, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1208 = add i64 %1198, -248
  %1209 = add i64 %1196, 28
  store i64 %1209, i64* %PC, align 8
  %1210 = inttoptr i64 %1208 to double*
  store double %1203, double* %1210, align 8
  %1211 = load i64, i64* %PC, align 8
  %1212 = add i64 %1211, -2457
  %1213 = add i64 %1211, 5
  %1214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1215 = add i64 %1214, -8
  %1216 = inttoptr i64 %1215 to i64*
  store i64 %1213, i64* %1216, align 8
  store i64 %1215, i64* %RSP, align 8, !tbaa !2428
  store i64 %1212, i64* %PC, align 8, !tbaa !2428
  %1217 = load double, double* %1497, align 8, !alias.scope !2466, !noalias !2469
  %1218 = load i64, i64* %1216, align 8
  store i64 %1214, i64* %RSP, align 8, !alias.scope !2466, !noalias !2469
  %1219 = tail call double @cos(double %1217)
  call void @llvm.memset.p0i8.i64(i8* %1525, i8 0, i64 24, i32 8, i1 false)
  store double %1219, double* %1497, align 8, !alias.scope !2466, !noalias !2469
  %1220 = load i64, i64* %RBP, align 8
  %1221 = add i64 %1220, -248
  %1222 = add i64 %1218, 8
  store i64 %1222, i64* %PC, align 8
  %1223 = inttoptr i64 %1221 to double*
  %1224 = load double, double* %1223, align 8
  %1225 = fmul double %1224, %1219
  store double %1225, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1226 = add i64 %1220, -144
  %1227 = add i64 %1218, 20
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1230 = add i64 %1220, -152
  %1231 = add i64 %1218, 28
  store i64 %1231, i64* %PC, align 8
  %1232 = bitcast i64 %1229 to double
  %1233 = inttoptr i64 %1230 to double*
  %1234 = load double, double* %1233, align 8
  %1235 = fadd double %1232, %1234
  store double %1235, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %1236 = add i64 %1220, -256
  %1237 = add i64 %1218, 36
  store i64 %1237, i64* %PC, align 8
  %1238 = inttoptr i64 %1236 to double*
  store double %1225, double* %1238, align 8
  %1239 = load i64, i64* %PC, align 8
  %1240 = add i64 %1239, -2498
  %1241 = add i64 %1239, 5
  %1242 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1243 = add i64 %1242, -8
  %1244 = inttoptr i64 %1243 to i64*
  store i64 %1241, i64* %1244, align 8
  store i64 %1243, i64* %RSP, align 8, !tbaa !2428
  store i64 %1240, i64* %PC, align 8, !tbaa !2428
  %1245 = load double, double* %1497, align 8, !alias.scope !2471, !noalias !2474
  %1246 = load i64, i64* %1244, align 8
  store i64 %1242, i64* %RSP, align 8, !alias.scope !2471, !noalias !2474
  %1247 = tail call double @cos(double %1245)
  call void @llvm.memset.p0i8.i64(i8* %1527, i8 0, i64 24, i32 8, i1 false)
  store double %1247, double* %1497, align 8, !alias.scope !2471, !noalias !2474
  %1248 = load i64, i64* %RBP, align 8
  %1249 = add i64 %1248, -144
  %1250 = add i64 %1246, 8
  store i64 %1250, i64* %PC, align 8
  %1251 = inttoptr i64 %1249 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1253 = add i64 %1248, -152
  %1254 = add i64 %1246, 16
  store i64 %1254, i64* %PC, align 8
  %1255 = bitcast i64 %1252 to double
  %1256 = inttoptr i64 %1253 to double*
  %1257 = load double, double* %1256, align 8
  %1258 = fsub double %1255, %1257
  store double %1258, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1259 = add i64 %1248, -264
  %1260 = add i64 %1246, 24
  store i64 %1260, i64* %PC, align 8
  %1261 = inttoptr i64 %1259 to double*
  store double %1247, double* %1261, align 8
  %1262 = load i64, i64* %PC, align 8
  %1263 = load <2 x i32>, <2 x i32>* %1520, align 1
  %1264 = load <2 x i32>, <2 x i32>* %1521, align 1
  %1265 = extractelement <2 x i32> %1263, i32 0
  store i32 %1265, i32* %1514, align 1, !tbaa !2459
  %1266 = extractelement <2 x i32> %1263, i32 1
  store i32 %1266, i32* %1516, align 1, !tbaa !2459
  %1267 = extractelement <2 x i32> %1264, i32 0
  store i32 %1267, i32* %1517, align 1, !tbaa !2459
  %1268 = extractelement <2 x i32> %1264, i32 1
  store i32 %1268, i32* %1519, align 1, !tbaa !2459
  %1269 = add i64 %1262, -2527
  %1270 = add i64 %1262, 8
  %1271 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1272 = add i64 %1271, -8
  %1273 = inttoptr i64 %1272 to i64*
  store i64 %1270, i64* %1273, align 8
  store i64 %1272, i64* %RSP, align 8, !tbaa !2428
  store i64 %1269, i64* %PC, align 8, !tbaa !2428
  %1274 = load double, double* %1497, align 8, !alias.scope !2476, !noalias !2479
  %1275 = load i64, i64* %1273, align 8
  store i64 %1271, i64* %RSP, align 8, !alias.scope !2476, !noalias !2479
  %1276 = tail call double @cos(double %1274)
  call void @llvm.memset.p0i8.i64(i8* %1529, i8 0, i64 24, i32 8, i1 false)
  store double %1276, double* %1497, align 8, !alias.scope !2476, !noalias !2479
  %1277 = load i64, i64* %RBP, align 8
  %1278 = add i64 %1277, -264
  %1279 = add i64 %1275, 8
  store i64 %1279, i64* %PC, align 8
  %1280 = inttoptr i64 %1278 to double*
  %1281 = load double, double* %1280, align 8
  %1282 = fadd double %1281, %1276
  store double %1282, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1283 = add i64 %1277, -224
  %1284 = add i64 %1275, 20
  store i64 %1284, i64* %PC, align 8
  %1285 = inttoptr i64 %1283 to i64*
  %1286 = load i64, i64* %1285, align 8
  store i64 %1286, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %.cast328 = bitcast i64 %1286 to double
  %1287 = fsub double %1282, %.cast328
  store double %1287, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1288 = add i64 %1277, -256
  %1289 = add i64 %1275, 32
  store i64 %1289, i64* %PC, align 8
  %1290 = inttoptr i64 %1288 to double*
  %1291 = load double, double* %1290, align 8
  %1292 = fdiv double %1291, %1287
  store double %1292, double* %1505, align 1, !tbaa !2432
  store i64 0, i64* %1507, align 1, !tbaa !2432
  %.cast330 = bitcast double %1292 to <2 x i32>
  %1293 = extractelement <2 x i32> %.cast330, i32 0
  store i32 %1293, i32* %1514, align 1, !tbaa !2459
  %1294 = extractelement <2 x i32> %.cast330, i32 1
  store i32 %1294, i32* %1516, align 1, !tbaa !2459
  store i32 0, i32* %1517, align 1, !tbaa !2459
  store i32 0, i32* %1519, align 1, !tbaa !2459
  %1295 = add i64 %1275, -2583
  %1296 = add i64 %1275, 44
  store i64 %1296, i64* %1273, align 8
  store i64 %1272, i64* %RSP, align 8, !tbaa !2428
  store i64 %1295, i64* %PC, align 8, !tbaa !2428
  %1297 = load double, double* %1497, align 8, !alias.scope !2481, !noalias !2484
  %1298 = load i64, i64* %1273, align 8
  store i64 %1271, i64* %RSP, align 8, !alias.scope !2481, !noalias !2484
  %1299 = tail call double @atan(double %1297)
  call void @llvm.memset.p0i8.i64(i8* %1531, i8 0, i64 24, i32 8, i1 false)
  store double %1299, double* %1497, align 8, !alias.scope !2481, !noalias !2484
  %1300 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %1300, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1301 = load i64, i64* %RBP, align 8
  %1302 = add i64 %1301, -240
  %1303 = add i64 %1298, 16
  store i64 %1303, i64* %PC, align 8
  %1304 = inttoptr i64 %1302 to double*
  %1305 = load double, double* %1304, align 8
  %1306 = fmul double %1305, %1299
  %1307 = add i64 %1301, -144
  %1308 = add i64 %1298, 28
  store i64 %1308, i64* %PC, align 8
  %1309 = inttoptr i64 %1307 to double*
  store double %1306, double* %1309, align 8
  %1310 = load i64, i64* %PC, align 8
  %1311 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
  store i64 %1311, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1312 = load i64, i64* bitcast (%T2_type* @T2 to i64*), align 8
  store i64 %1312, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1313 = load i64, i64* %RBP, align 8
  %1314 = add i64 %1313, -152
  %1315 = add i64 %1310, 26
  store i64 %1315, i64* %PC, align 8
  %1316 = inttoptr i64 %1314 to i64*
  %1317 = load i64, i64* %1316, align 8
  store i64 %1317, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1318 = add i64 %1313, -272
  %1319 = add i64 %1310, 34
  store i64 %1319, i64* %PC, align 8
  %1320 = inttoptr i64 %1318 to i64*
  store i64 %1311, i64* %1320, align 8
  %1321 = load i64, i64* %PC, align 8
  %1322 = load <2 x i32>, <2 x i32>* %1512, align 1
  %1323 = load <2 x i32>, <2 x i32>* %1513, align 1
  %1324 = extractelement <2 x i32> %1322, i32 0
  store i32 %1324, i32* %1514, align 1, !tbaa !2459
  %1325 = extractelement <2 x i32> %1322, i32 1
  store i32 %1325, i32* %1516, align 1, !tbaa !2459
  %1326 = extractelement <2 x i32> %1323, i32 0
  store i32 %1326, i32* %1517, align 1, !tbaa !2459
  %1327 = extractelement <2 x i32> %1323, i32 1
  store i32 %1327, i32* %1519, align 1, !tbaa !2459
  %1328 = load i64, i64* %RBP, align 8
  %1329 = add i64 %1328, -280
  %1330 = add i64 %1321, 11
  store i64 %1330, i64* %PC, align 8
  %1331 = load i64, i64* %1502, align 1
  %1332 = inttoptr i64 %1329 to i64*
  store i64 %1331, i64* %1332, align 8
  %1333 = load i64, i64* %RBP, align 8
  %1334 = add i64 %1333, -288
  %1335 = load i64, i64* %PC, align 8
  %1336 = add i64 %1335, 8
  store i64 %1336, i64* %PC, align 8
  %1337 = load i64, i64* %1506, align 1
  %1338 = inttoptr i64 %1334 to i64*
  store i64 %1337, i64* %1338, align 8
  %1339 = load i64, i64* %PC, align 8
  %1340 = add i64 %1339, -2596
  %1341 = add i64 %1339, 5
  %1342 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1343 = add i64 %1342, -8
  %1344 = inttoptr i64 %1343 to i64*
  store i64 %1341, i64* %1344, align 8
  store i64 %1343, i64* %RSP, align 8, !tbaa !2428
  store i64 %1340, i64* %PC, align 8, !tbaa !2428
  %1345 = load double, double* %1497, align 8, !alias.scope !2486, !noalias !2489
  %1346 = load i64, i64* %1344, align 8
  store i64 %1342, i64* %RSP, align 8, !alias.scope !2486, !noalias !2489
  %1347 = tail call double @sin(double %1345)
  call void @llvm.memset.p0i8.i64(i8* %1533, i8 0, i64 24, i32 8, i1 false)
  store double %1347, double* %1497, align 8, !alias.scope !2486, !noalias !2489
  %1348 = load i64, i64* %RBP, align 8
  %1349 = add i64 %1348, -288
  %1350 = add i64 %1346, 8
  store i64 %1350, i64* %PC, align 8
  %1351 = inttoptr i64 %1349 to double*
  %1352 = load double, double* %1351, align 8
  %1353 = fmul double %1352, %1347
  store double %1353, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1354 = add i64 %1348, -152
  %1355 = add i64 %1346, 20
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1358 = add i64 %1348, -296
  %1359 = add i64 %1346, 28
  store i64 %1359, i64* %PC, align 8
  %1360 = inttoptr i64 %1358 to double*
  store double %1353, double* %1360, align 8
  %1361 = load i64, i64* %PC, align 8
  %1362 = add i64 %1361, -2693
  %1363 = add i64 %1361, 5
  %1364 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1365 = add i64 %1364, -8
  %1366 = inttoptr i64 %1365 to i64*
  store i64 %1363, i64* %1366, align 8
  store i64 %1365, i64* %RSP, align 8, !tbaa !2428
  store i64 %1362, i64* %PC, align 8, !tbaa !2428
  %1367 = load double, double* %1497, align 8, !alias.scope !2491, !noalias !2494
  %1368 = load i64, i64* %1366, align 8
  store i64 %1364, i64* %RSP, align 8, !alias.scope !2491, !noalias !2494
  %1369 = tail call double @cos(double %1367)
  call void @llvm.memset.p0i8.i64(i8* %1535, i8 0, i64 24, i32 8, i1 false)
  store double %1369, double* %1497, align 8, !alias.scope !2491, !noalias !2494
  %1370 = load i64, i64* %RBP, align 8
  %1371 = add i64 %1370, -296
  %1372 = add i64 %1368, 8
  store i64 %1372, i64* %PC, align 8
  %1373 = inttoptr i64 %1371 to double*
  %1374 = load double, double* %1373, align 8
  %1375 = fmul double %1374, %1369
  store double %1375, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1376 = add i64 %1370, -144
  %1377 = add i64 %1368, 20
  store i64 %1377, i64* %PC, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1380 = add i64 %1370, -152
  %1381 = add i64 %1368, 28
  store i64 %1381, i64* %PC, align 8
  %1382 = bitcast i64 %1379 to double
  %1383 = inttoptr i64 %1380 to double*
  %1384 = load double, double* %1383, align 8
  %1385 = fadd double %1382, %1384
  store double %1385, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %1386 = add i64 %1370, -304
  %1387 = add i64 %1368, 36
  store i64 %1387, i64* %PC, align 8
  %1388 = inttoptr i64 %1386 to double*
  store double %1375, double* %1388, align 8
  %1389 = load i64, i64* %PC, align 8
  %1390 = add i64 %1389, -2734
  %1391 = add i64 %1389, 5
  %1392 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1393 = add i64 %1392, -8
  %1394 = inttoptr i64 %1393 to i64*
  store i64 %1391, i64* %1394, align 8
  store i64 %1393, i64* %RSP, align 8, !tbaa !2428
  store i64 %1390, i64* %PC, align 8, !tbaa !2428
  %1395 = load double, double* %1497, align 8, !alias.scope !2496, !noalias !2499
  %1396 = load i64, i64* %1394, align 8
  store i64 %1392, i64* %RSP, align 8, !alias.scope !2496, !noalias !2499
  %1397 = tail call double @cos(double %1395)
  call void @llvm.memset.p0i8.i64(i8* %1537, i8 0, i64 24, i32 8, i1 false)
  store double %1397, double* %1497, align 8, !alias.scope !2496, !noalias !2499
  %1398 = load i64, i64* %RBP, align 8
  %1399 = add i64 %1398, -144
  %1400 = add i64 %1396, 8
  store i64 %1400, i64* %PC, align 8
  %1401 = inttoptr i64 %1399 to i64*
  %1402 = load i64, i64* %1401, align 8
  store i64 %1402, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1403 = add i64 %1398, -152
  %1404 = add i64 %1396, 16
  store i64 %1404, i64* %PC, align 8
  %1405 = bitcast i64 %1402 to double
  %1406 = inttoptr i64 %1403 to double*
  %1407 = load double, double* %1406, align 8
  %1408 = fsub double %1405, %1407
  store double %1408, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1409 = add i64 %1398, -312
  %1410 = add i64 %1396, 24
  store i64 %1410, i64* %PC, align 8
  %1411 = inttoptr i64 %1409 to double*
  store double %1397, double* %1411, align 8
  %1412 = load i64, i64* %PC, align 8
  %1413 = load <2 x i32>, <2 x i32>* %1520, align 1
  %1414 = load <2 x i32>, <2 x i32>* %1521, align 1
  %1415 = extractelement <2 x i32> %1413, i32 0
  store i32 %1415, i32* %1514, align 1, !tbaa !2459
  %1416 = extractelement <2 x i32> %1413, i32 1
  store i32 %1416, i32* %1516, align 1, !tbaa !2459
  %1417 = extractelement <2 x i32> %1414, i32 0
  store i32 %1417, i32* %1517, align 1, !tbaa !2459
  %1418 = extractelement <2 x i32> %1414, i32 1
  store i32 %1418, i32* %1519, align 1, !tbaa !2459
  %1419 = add i64 %1412, -2763
  %1420 = add i64 %1412, 8
  %1421 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1420, i64* %1423, align 8
  store i64 %1422, i64* %RSP, align 8, !tbaa !2428
  store i64 %1419, i64* %PC, align 8, !tbaa !2428
  %1424 = load double, double* %1497, align 8, !alias.scope !2501, !noalias !2504
  %1425 = load i64, i64* %1423, align 8
  store i64 %1421, i64* %RSP, align 8, !alias.scope !2501, !noalias !2504
  %1426 = tail call double @cos(double %1424)
  call void @llvm.memset.p0i8.i64(i8* %1539, i8 0, i64 24, i32 8, i1 false)
  store double %1426, double* %1497, align 8, !alias.scope !2501, !noalias !2504
  %1427 = load i64, i64* %RBP, align 8
  %1428 = add i64 %1427, -312
  %1429 = add i64 %1425, 8
  store i64 %1429, i64* %PC, align 8
  %1430 = inttoptr i64 %1428 to double*
  %1431 = load double, double* %1430, align 8
  %1432 = fadd double %1431, %1426
  store double %1432, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1433 = add i64 %1427, -280
  %1434 = add i64 %1425, 20
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i64*
  %1436 = load i64, i64* %1435, align 8
  store i64 %1436, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %.cast355 = bitcast i64 %1436 to double
  %1437 = fsub double %1432, %.cast355
  store double %1437, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1438 = add i64 %1427, -304
  %1439 = add i64 %1425, 32
  store i64 %1439, i64* %PC, align 8
  %1440 = inttoptr i64 %1438 to double*
  %1441 = load double, double* %1440, align 8
  %1442 = fdiv double %1441, %1437
  store double %1442, double* %1505, align 1, !tbaa !2432
  store i64 0, i64* %1507, align 1, !tbaa !2432
  %.cast357 = bitcast double %1442 to <2 x i32>
  %1443 = extractelement <2 x i32> %.cast357, i32 0
  store i32 %1443, i32* %1514, align 1, !tbaa !2459
  %1444 = extractelement <2 x i32> %.cast357, i32 1
  store i32 %1444, i32* %1516, align 1, !tbaa !2459
  store i32 0, i32* %1517, align 1, !tbaa !2459
  store i32 0, i32* %1519, align 1, !tbaa !2459
  %1445 = add i64 %1425, -2819
  %1446 = add i64 %1425, 44
  store i64 %1446, i64* %1423, align 8
  store i64 %1422, i64* %RSP, align 8, !tbaa !2428
  store i64 %1445, i64* %PC, align 8, !tbaa !2428
  %1447 = load double, double* %1497, align 8, !alias.scope !2506, !noalias !2509
  %1448 = load i64, i64* %1423, align 8
  store i64 %1421, i64* %RSP, align 8, !alias.scope !2506, !noalias !2509
  %1449 = tail call double @atan(double %1447)
  call void @llvm.memset.p0i8.i64(i8* %1541, i8 0, i64 24, i32 8, i1 false)
  store double %1449, double* %1497, align 8, !alias.scope !2506, !noalias !2509
  %1450 = load i64, i64* %RBP, align 8
  %1451 = add i64 %1450, -272
  %1452 = add i64 %1448, 8
  store i64 %1452, i64* %PC, align 8
  %1453 = inttoptr i64 %1451 to double*
  %1454 = load double, double* %1453, align 8
  %1455 = fmul double %1454, %1449
  store double %1455, double* %1501, align 1, !tbaa !2432
  store i64 0, i64* %1503, align 1, !tbaa !2432
  %1456 = add i64 %1450, -152
  %1457 = add i64 %1448, 20
  store i64 %1457, i64* %PC, align 8
  %1458 = inttoptr i64 %1456 to double*
  store double %1455, double* %1458, align 8
  %1459 = load i64, i64* %RBP, align 8
  %1460 = add i64 %1459, -24
  %1461 = load i64, i64* %PC, align 8
  %1462 = add i64 %1461, 4
  store i64 %1462, i64* %PC, align 8
  %1463 = inttoptr i64 %1460 to i64*
  %1464 = load i64, i64* %1463, align 8
  %1465 = add i64 %1464, 1
  store i64 %1465, i64* %RAX, align 8, !tbaa !2428
  %1466 = icmp eq i64 %1464, -1
  %1467 = icmp eq i64 %1465, 0
  %1468 = or i1 %1466, %1467
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %18, align 1, !tbaa !2434
  %1470 = trunc i64 %1465 to i32
  %1471 = and i32 %1470, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471) #10
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %25, align 1, !tbaa !2448
  %1476 = xor i64 %1465, %1464
  %1477 = lshr i64 %1476, 4
  %1478 = trunc i64 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %30, align 1, !tbaa !2452
  %1480 = zext i1 %1467 to i8
  store i8 %1480, i8* %33, align 1, !tbaa !2449
  %1481 = lshr i64 %1465, 63
  %1482 = trunc i64 %1481 to i8
  store i8 %1482, i8* %36, align 1, !tbaa !2450
  %1483 = lshr i64 %1464, 63
  %1484 = xor i64 %1481, %1483
  %1485 = add nuw nsw i64 %1484, %1481
  %1486 = icmp eq i64 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %42, align 1, !tbaa !2451
  %1488 = add i64 %1461, 12
  store i64 %1488, i64* %PC, align 8
  store i64 %1465, i64* %1463, align 8
  %1489 = load i64, i64* %PC, align 8
  %1490 = add i64 %1489, -498
  store i64 %1490, i64* %PC, align 8, !tbaa !2428
  br label %block_40102d

block_4015c9:                                     ; preds = %block_401590
  %1491 = load i64, i64* %RBP, align 8
  %1492 = add i64 %1491, -4
  %1493 = add i64 %1822, 7
  store i64 %1493, i64* %PC, align 8
  %1494 = inttoptr i64 %1492 to i32*
  store i32 0, i32* %1494, align 4
  %.pre439 = load i64, i64* %PC, align 8
  br label %block_4015d0

block_400971:                                     ; preds = %block_400888
  %1495 = add i64 %2739, 5
  %1496 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %1497 = bitcast [32 x %union.VectorReg]* %5 to double*
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1500 = bitcast i64* %1499 to double*
  %1501 = bitcast %union.VectorReg* %6 to double*
  %1502 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1504 = bitcast i64* %1503 to double*
  %1505 = bitcast %union.VectorReg* %7 to double*
  %1506 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1508 = bitcast i64* %1507 to double*
  %1509 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1511 = bitcast i64* %1510 to double*
  %1512 = bitcast %union.VectorReg* %8 to <2 x i32>*
  %1513 = bitcast i64* %1510 to <2 x i32>*
  %1514 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %1515 = getelementptr inbounds i8, i8* %1496, i64 4
  %1516 = bitcast i8* %1515 to i32*
  %1517 = bitcast i64* %1499 to i32*
  %1518 = getelementptr inbounds i8, i8* %1496, i64 12
  %1519 = bitcast i8* %1518 to i32*
  %1520 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1521 = bitcast i64* %1503 to <2 x i32>*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1523 = bitcast i64* %1522 to i8*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1525 = bitcast i64* %1524 to i8*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1527 = bitcast i64* %1526 to i8*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1529 = bitcast i64* %1528 to i8*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1531 = bitcast i64* %1530 to i8*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1533 = bitcast i64* %1532 to i8*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1535 = bitcast i64* %1534 to i8*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1537 = bitcast i64* %1536 to i8*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1539 = bitcast i64* %1538 to i8*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1541 = bitcast i64* %1540 to i8*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1543 = bitcast i64* %1542 to i8*
  br label %block_400976

block_401525:                                     ; preds = %block_4014de
  %1544 = add i64 %296, -176
  %1545 = add i64 %332, 6
  store i64 %1545, i64* %PC, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX, align 8, !tbaa !2428
  %1549 = add i64 %296, -172
  %1550 = add i64 %332, 12
  store i64 %1550, i64* %PC, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sub i32 %1547, %1552
  %1554 = icmp ult i32 %1547, %1552
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %18, align 1, !tbaa !2434
  %1556 = and i32 %1553, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556) #10
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %25, align 1, !tbaa !2448
  %1561 = xor i32 %1552, %1547
  %1562 = xor i32 %1561, %1553
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %30, align 1, !tbaa !2452
  %1566 = icmp eq i32 %1553, 0
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %33, align 1, !tbaa !2449
  %1568 = lshr i32 %1553, 31
  %1569 = trunc i32 %1568 to i8
  store i8 %1569, i8* %36, align 1, !tbaa !2450
  %1570 = lshr i32 %1547, 31
  %1571 = lshr i32 %1552, 31
  %1572 = xor i32 %1571, %1570
  %1573 = xor i32 %1568, %1570
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %42, align 1, !tbaa !2451
  %.v471 = select i1 %1566, i64 18, i64 75
  %1577 = add i64 %332, %.v471
  store i64 %1577, i64* %PC, align 8, !tbaa !2428
  br i1 %1566, label %block_401537, label %block_401570

block_400dbf:                                     ; preds = %block_400db1
  %1578 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %1579 = add i32 %1578, -1
  %1580 = icmp eq i32 %1578, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %18, align 1, !tbaa !2434
  %1582 = and i32 %1579, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582) #10
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %25, align 1, !tbaa !2448
  %1587 = xor i32 %1579, %1578
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %30, align 1, !tbaa !2452
  %1591 = icmp eq i32 %1579, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %33, align 1, !tbaa !2449
  %1593 = lshr i32 %1579, 31
  %1594 = trunc i32 %1593 to i8
  store i8 %1594, i8* %36, align 1, !tbaa !2450
  %1595 = lshr i32 %1578, 31
  %1596 = xor i32 %1593, %1595
  %1597 = add nuw nsw i32 %1596, %1595
  %1598 = icmp eq i32 %1597, 2
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %42, align 1, !tbaa !2451
  %.v473 = select i1 %1591, i64 14, i64 30
  %1600 = add i64 %1005, %.v473
  %1601 = add i64 %1600, 11
  store i64 %1601, i64* %PC, align 8
  br i1 %1591, label %block_400dcd, label %block_400ddd

block_400d21:                                     ; preds = %block_400cda, %block_400cec
  %1602 = phi i64 [ %2663, %block_400cda ], [ %.pre414, %block_400cec ]
  %1603 = phi i64 [ %334, %block_400cda ], [ %.pre413, %block_400cec ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.19, %block_400cda ], [ %1843, %block_400cec ]
  %1604 = add i64 %1603, -24
  %1605 = add i64 %1602, 8
  store i64 %1605, i64* %PC, align 8
  %1606 = inttoptr i64 %1604 to i64*
  store i64 1, i64* %1606, align 8
  %.pre415 = load i64, i64* %PC, align 8
  br label %block_400d29

block_4008e0:                                     ; preds = %block_400897, %block_4008c5
  %1607 = phi i64 [ %1122, %block_4008c5 ], [ %1753, %block_400897 ]
  %1608 = add i64 %.pre440, -208
  %1609 = add i64 %1607, 10
  store i64 %1609, i64* %PC, align 8
  %1610 = inttoptr i64 %1608 to i32*
  store i32 1, i32* %1610, align 4
  %.pre441 = load i64, i64* %PC, align 8
  br label %block_40095d

block_400e1f:                                     ; preds = %block_400e11
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  %1611 = add i64 %1893, 27
  store i64 %1611, i64* %PC, align 8, !tbaa !2428
  br label %block_400e3a

block_400d9e:                                     ; preds = %block_400d57, %block_400d69
  %1612 = phi i64 [ %2665, %block_400d57 ], [ %.pre417, %block_400d69 ]
  %1613 = phi i64 [ %404, %block_400d57 ], [ %.pre416, %block_400d69 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.13, %block_400d57 ], [ %192, %block_400d69 ]
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  %1614 = add i64 %1612, -24
  %1615 = add i64 %1613, 19
  store i64 %1615, i64* %PC, align 8
  %1616 = inttoptr i64 %1614 to i64*
  store i64 1, i64* %1616, align 8
  %.pre418 = load i64, i64* %PC, align 8
  br label %block_400db1

block_401224:                                     ; preds = %block_40102d
  %1617 = add i64 %1124, -176
  %1618 = add i64 %1160, 6
  store i64 %1618, i64* %PC, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RAX, align 8, !tbaa !2428
  %1622 = add i64 %1124, -172
  %1623 = add i64 %1160, 12
  store i64 %1623, i64* %PC, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = sub i32 %1620, %1625
  %1627 = icmp ult i32 %1620, %1625
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %18, align 1, !tbaa !2434
  %1629 = and i32 %1626, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629) #10
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %25, align 1, !tbaa !2448
  %1634 = xor i32 %1625, %1620
  %1635 = xor i32 %1634, %1626
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %30, align 1, !tbaa !2452
  %1639 = icmp eq i32 %1626, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %33, align 1, !tbaa !2449
  %1641 = lshr i32 %1626, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %36, align 1, !tbaa !2450
  %1643 = lshr i32 %1620, 31
  %1644 = lshr i32 %1625, 31
  %1645 = xor i32 %1644, %1643
  %1646 = xor i32 %1641, %1643
  %1647 = add nuw nsw i32 %1646, %1645
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %42, align 1, !tbaa !2451
  %.v463 = select i1 %1639, i64 18, i64 75
  %1650 = add i64 %1160, %.v463
  store i64 %1650, i64* %PC, align 8, !tbaa !2428
  br i1 %1639, label %block_401236, label %block_40126f

block_4013af:                                     ; preds = %block_40139d
  %1651 = add i64 %294, 4
  store i64 %1651, i64* %PC, align 8
  %1652 = load i64, i64* %763, align 8
  store i64 %1652, i64* %RDI, align 8, !tbaa !2428
  %1653 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %1654 = sext i32 %1653 to i64
  store i64 %1654, i64* %RSI, align 8, !tbaa !2428
  %1655 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %1656 = sext i32 %1655 to i64
  store i64 %1656, i64* %RDX, align 8, !tbaa !2428
  %1657 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %1657, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1658 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %1658, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1659 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  store i64 %1659, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1660 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
  store i64 %1660, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1661 = add i64 %294, 561
  %1662 = add i64 %294, 61
  %1663 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1662, i64* %1665, align 8
  store i64 %1664, i64* %RSP, align 8, !tbaa !2428
  store i64 %1661, i64* %PC, align 8, !tbaa !2428
  %1666 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %1661, %struct.Memory* %MEMORY.24)
  %.pre431 = load i64, i64* %PC, align 8
  %.pre432 = load i64, i64* %RBP, align 8
  br label %block_4013ec

block_401418:                                     ; preds = %block_40140a
  %1667 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %1668 = zext i32 %1667 to i64
  %1669 = add i32 %2553, %1667
  %1670 = icmp ult i32 %1669, %2553
  %1671 = lshr i32 %1669, 31
  %1672 = lshr i32 %1667, 31
  %1673 = lshr i32 %2553, 31
  %1674 = xor i32 %1671, %1672
  %1675 = xor i32 %1671, %1673
  %1676 = add nuw nsw i32 %1674, %1675
  %1677 = icmp eq i32 %1676, 2
  %1678 = zext i1 %1677 to i8
  %1679 = xor i32 %2553, %1669
  store i32 %2553, i32* bitcast (%J_type* @J to i32*), align 8
  store i64 %1668, i64* %RAX, align 8, !tbaa !2428
  %1680 = zext i1 %1670 to i8
  store i8 %1680, i8* %18, align 1, !tbaa !2434
  %1681 = and i32 %1667, 255
  %1682 = tail call i32 @llvm.ctpop.i32(i32 %1681) #10
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  store i8 %1685, i8* %25, align 1, !tbaa !2448
  %1686 = xor i32 %1679, %1667
  %1687 = lshr i32 %1686, 4
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  store i8 %1689, i8* %30, align 1, !tbaa !2452
  %1690 = icmp eq i32 %1667, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %33, align 1, !tbaa !2449
  %1692 = trunc i32 %1672 to i8
  store i8 %1692, i8* %36, align 1, !tbaa !2450
  store i8 %1678, i8* %42, align 1, !tbaa !2451
  store i32 %1667, i32* bitcast (%K_type* @K to i32*), align 8
  %1693 = load i64, i64* %RBP, align 8
  %1694 = add i64 %1693, -24
  %1695 = add i64 %2591, 95
  store i64 %1695, i64* %PC, align 8
  %1696 = inttoptr i64 %1694 to i64*
  %1697 = load i64, i64* %1696, align 8
  %1698 = add i64 %1697, 1
  store i64 %1698, i64* %RAX, align 8, !tbaa !2428
  %1699 = icmp eq i64 %1697, -1
  %1700 = icmp eq i64 %1698, 0
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %18, align 1, !tbaa !2434
  %1703 = trunc i64 %1698 to i32
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704) #10
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %25, align 1, !tbaa !2448
  %1709 = xor i64 %1698, %1697
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %30, align 1, !tbaa !2452
  %1713 = zext i1 %1700 to i8
  store i8 %1713, i8* %33, align 1, !tbaa !2449
  %1714 = lshr i64 %1698, 63
  %1715 = trunc i64 %1714 to i8
  store i8 %1715, i8* %36, align 1, !tbaa !2450
  %1716 = lshr i64 %1697, 63
  %1717 = xor i64 %1714, %1716
  %1718 = add nuw nsw i64 %1717, %1714
  %1719 = icmp eq i64 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %42, align 1, !tbaa !2451
  %1721 = add i64 %2591, 103
  store i64 %1721, i64* %PC, align 8
  store i64 %1698, i64* %1696, align 8
  %1722 = load i64, i64* %PC, align 8
  %1723 = add i64 %1722, -117
  store i64 %1723, i64* %PC, align 8, !tbaa !2428
  br label %block_40140a

block_400897:                                     ; preds = %block_400888
  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %1724 = add i64 %2703, -16
  %1725 = add i64 %2739, 21
  store i64 %1725, i64* %PC, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RCX, align 8, !tbaa !2428
  %1728 = add i64 %2739, 28
  store i64 %1728, i64* %PC, align 8
  %1729 = load i32, i32* %2706, align 4
  %1730 = sext i32 %1729 to i64
  store i64 %1730, i64* %RDI, align 8, !tbaa !2428
  %1731 = shl nsw i64 %1730, 3
  %1732 = add i64 %1731, %1727
  %1733 = add i64 %2739, 32
  store i64 %1733, i64* %PC, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RDI, align 8, !tbaa !2428
  %1736 = add i64 %2739, -487
  %1737 = add i64 %2739, 37
  %1738 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1739 = add i64 %1738, -8
  %1740 = inttoptr i64 %1739 to i64*
  store i64 %1737, i64* %1740, align 8
  store i64 %1739, i64* %RSP, align 8, !tbaa !2428
  store i64 %1736, i64* %PC, align 8, !tbaa !2428
  %1741 = tail call fastcc %struct.Memory* @ext_6020e8_strncmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.28)
  %1742 = load i32, i32* %EAX, align 4
  %1743 = load i64, i64* %PC, align 8
  store i8 0, i8* %18, align 1, !tbaa !2434
  %1744 = and i32 %1742, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744) #10
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  %1749 = icmp eq i32 %1742, 0
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %33, align 1, !tbaa !2449
  %1751 = lshr i32 %1742, 31
  %1752 = trunc i32 %1751 to i8
  store i8 %1752, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  %.v476 = select i1 %1749, i64 36, i64 9
  %1753 = add i64 %1743, %.v476
  store i64 %1753, i64* %PC, align 8, !tbaa !2428
  %.pre440 = load i64, i64* %RBP, align 8
  br i1 %1749, label %block_4008e0, label %block_4008c5

block_401496:                                     ; preds = %block_401484
  %1754 = add i64 %2811, 4
  store i64 %1754, i64* %PC, align 8
  %1755 = load i64, i64* %2562, align 8
  store i64 %1755, i64* %RDI, align 8, !tbaa !2428
  %1756 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %1757 = sext i32 %1756 to i64
  store i64 %1757, i64* %RSI, align 8, !tbaa !2428
  %1758 = sext i32 %2553 to i64
  store i64 %1758, i64* %RDX, align 8, !tbaa !2428
  %1759 = add i64 %2555, -112
  %1760 = add i64 %2811, 25
  store i64 %1760, i64* %PC, align 8
  %1761 = inttoptr i64 %1759 to i64*
  %1762 = load i64, i64* %1761, align 8
  store i64 %1762, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1763 = add i64 %2555, -120
  %1764 = add i64 %2811, 30
  store i64 %1764, i64* %PC, align 8
  %1765 = inttoptr i64 %1763 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1767 = add i64 %2555, -128
  %1768 = add i64 %2811, 35
  store i64 %1768, i64* %PC, align 8
  %1769 = inttoptr i64 %1767 to i64*
  %1770 = load i64, i64* %1769, align 8
  store i64 %1770, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1771 = add i64 %2555, -136
  %1772 = add i64 %2811, 43
  store i64 %1772, i64* %PC, align 8
  %1773 = inttoptr i64 %1771 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1775 = add i64 %2811, 330
  %1776 = add i64 %2811, 48
  %1777 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1778 = add i64 %1777, -8
  %1779 = inttoptr i64 %1778 to i64*
  store i64 %1776, i64* %1779, align 8
  store i64 %1778, i64* %RSP, align 8, !tbaa !2428
  store i64 %1775, i64* %PC, align 8, !tbaa !2428
  %1780 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %1775, %struct.Memory* %MEMORY.2)
  %.pre434 = load i64, i64* %PC, align 8
  %.pre435 = load i64, i64* %RBP, align 8
  br label %block_4014c6

block_401590:                                     ; preds = %block_401570
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2434
  store i8 1, i8* %25, align 1, !tbaa !2448
  store i8 1, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  %1781 = add i64 %1958, -3696
  %1782 = add i64 %1958, 9
  %1783 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1784 = add i64 %1783, -8
  %1785 = inttoptr i64 %1784 to i64*
  store i64 %1782, i64* %1785, align 8
  store i64 %1784, i64* %RSP, align 8, !tbaa !2428
  store i64 %1781, i64* %PC, align 8, !tbaa !2428
  %1786 = tail call fastcc %struct.Memory* @ext_400720_time(%struct.State* nonnull %0, %struct.Memory* %MEMORY.18)
  %1787 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 101), i64* %RDI, align 8, !tbaa !2428
  %1788 = load i64, i64* %RBP, align 8
  %1789 = add i64 %1788, -200
  %1790 = load i64, i64* %RAX, align 8
  %1791 = add i64 %1787, 17
  store i64 %1791, i64* %PC, align 8
  %1792 = inttoptr i64 %1789 to i64*
  store i64 %1790, i64* %1792, align 8
  %1793 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1794 = add i64 %1793, -3786
  %1795 = add i64 %1793, 7
  %1796 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1797 = add i64 %1796, -8
  %1798 = inttoptr i64 %1797 to i64*
  store i64 %1795, i64* %1798, align 8
  store i64 %1797, i64* %RSP, align 8, !tbaa !2428
  store i64 %1794, i64* %PC, align 8, !tbaa !2428
  %1799 = tail call fastcc %struct.Memory* @ext_4006e0_printf(%struct.State* nonnull %0, %struct.Memory* %1786)
  %1800 = load i64, i64* %RBP, align 8
  %1801 = add i64 %1800, -208
  %1802 = load i64, i64* %PC, align 8
  %1803 = add i64 %1802, 7
  store i64 %1803, i64* %PC, align 8
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804, align 4
  store i8 0, i8* %18, align 1, !tbaa !2434
  %1806 = and i32 %1805, 255
  %1807 = tail call i32 @llvm.ctpop.i32(i32 %1806) #10
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  %1810 = xor i8 %1809, 1
  store i8 %1810, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  %1811 = icmp eq i32 %1805, 0
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %33, align 1, !tbaa !2449
  %1813 = lshr i32 %1805, 31
  %1814 = trunc i32 %1813 to i8
  store i8 %1814, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  %1815 = add i64 %1800, -316
  %1816 = load i32, i32* %EAX, align 4
  %1817 = add i64 %1802, 13
  store i64 %1817, i64* %PC, align 8
  %1818 = inttoptr i64 %1815 to i32*
  store i32 %1816, i32* %1818, align 4
  %1819 = load i64, i64* %PC, align 8
  %1820 = load i8, i8* %33, align 1, !tbaa !2449
  %1821 = icmp ne i8 %1820, 0
  %.v522 = select i1 %1821, i64 11, i64 6
  %1822 = add i64 %1819, %.v522
  store i64 %1822, i64* %PC, align 8, !tbaa !2428
  %1823 = icmp eq i8 %1820, 1
  br i1 %1823, label %block_4015c9, label %block_401590.block_400976_crit_edge

block_401590.block_400976_crit_edge:              ; preds = %block_401590
  %1824 = add i64 %1822, -3150
  %.pre406 = load i64, i64* %RAX, align 8
  %1825 = trunc i64 %.pre406 to i32
  br label %block_400976

block_400cec:                                     ; preds = %block_400cda
  %1826 = add i64 %2663, 4
  store i64 %1826, i64* %PC, align 8
  %1827 = load i64, i64* %341, align 8
  store i64 %1827, i64* %RDI, align 8, !tbaa !2428
  %1828 = add i64 %334, -48
  %1829 = add i64 %2663, 8
  store i64 %1829, i64* %PC, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RSI, align 8, !tbaa !2428
  %1832 = add i64 %2663, 12
  store i64 %1832, i64* %PC, align 8
  %1833 = load i64, i64* %341, align 8
  store i64 %1833, i64* %RDX, align 8, !tbaa !2428
  %1834 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %1834, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1835 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %1835, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1836 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  store i64 %1836, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1837 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
  store i64 %1837, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1838 = add i64 %2663, 2292
  %1839 = add i64 %2663, 53
  %1840 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1841 = add i64 %1840, -8
  %1842 = inttoptr i64 %1841 to i64*
  store i64 %1839, i64* %1842, align 8
  store i64 %1841, i64* %RSP, align 8, !tbaa !2428
  store i64 %1838, i64* %PC, align 8, !tbaa !2428
  %1843 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %1838, %struct.Memory* %MEMORY.19)
  %.pre413 = load i64, i64* %RBP, align 8
  %.pre414 = load i64, i64* %PC, align 8
  br label %block_400d21

block_4012e4:                                     ; preds = %block_4012d2
  %1844 = add i64 %503, 4
  store i64 %1844, i64* %PC, align 8
  %1845 = load i64, i64* %567, align 8
  store i64 %1845, i64* %RDI, align 8, !tbaa !2428
  %1846 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
  %1847 = sext i32 %1846 to i64
  store i64 %1847, i64* %RSI, align 8, !tbaa !2428
  %1848 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
  %1849 = sext i32 %1848 to i64
  store i64 %1849, i64* %RDX, align 8, !tbaa !2428
  %1850 = add i64 %560, -144
  %1851 = add i64 %503, 28
  store i64 %1851, i64* %PC, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1854 = add i64 %560, -152
  %1855 = add i64 %503, 36
  store i64 %1855, i64* %PC, align 8
  %1856 = inttoptr i64 %1854 to i64*
  %1857 = load i64, i64* %1856, align 8
  store i64 %1857, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %1858 = add i64 %560, -160
  %1859 = add i64 %503, 44
  store i64 %1859, i64* %PC, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  %1862 = add i64 %503, 52
  store i64 %1862, i64* %PC, align 8
  %1863 = load i64, i64* %1860, align 8
  store i64 %1863, i64* %1509, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1511, align 1, !tbaa !2432
  %1864 = add i64 %503, 764
  %1865 = add i64 %503, 57
  %1866 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1867 = add i64 %1866, -8
  %1868 = inttoptr i64 %1867 to i64*
  store i64 %1865, i64* %1868, align 8
  store i64 %1867, i64* %RSP, align 8, !tbaa !2428
  store i64 %1864, i64* %PC, align 8, !tbaa !2428
  %1869 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* nonnull %0, i64 %1864, %struct.Memory* %MEMORY.20)
  %.pre428 = load i64, i64* %PC, align 8
  %.pre429 = load i64, i64* %RBP, align 8
  br label %block_40131d

block_400e92:                                     ; preds = %block_400e50, %block_400e62
  %1870 = phi i64 [ %969, %block_400e50 ], [ %.pre420, %block_400e62 ]
  %1871 = phi i64 [ %754, %block_400e50 ], [ %.pre419, %block_400e62 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.15, %block_400e50 ], [ %98, %block_400e62 ]
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 2, i32* bitcast (%K_type* @K to i32*), align 8
  store i32 3, i32* bitcast (%L_type* @L to i32*), align 8
  %1872 = add i64 %1870, -24
  %1873 = add i64 %1871, 41
  store i64 %1873, i64* %PC, align 8
  %1874 = inttoptr i64 %1872 to i64*
  store i64 1, i64* %1874, align 8
  %.pre421 = load i64, i64* %PC, align 8
  br label %block_400ebb

block_400e11:                                     ; preds = %block_400e06, %block_400df6
  %1875 = phi i32 [ 1, %block_400e06 ], [ 0, %block_400df6 ]
  %1876 = phi i64 [ %202, %block_400e06 ], [ %558, %block_400df6 ]
  %1877 = add nsw i32 %1875, -1
  %1878 = trunc i32 %1875 to i8
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %18, align 1, !tbaa !2434
  %1880 = and i32 %1877, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880) #10
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %25, align 1, !tbaa !2448
  %1885 = lshr i32 %1877, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %30, align 1, !tbaa !2452
  %1888 = icmp eq i32 %1877, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %33, align 1, !tbaa !2449
  %1890 = lshr i32 %1877, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  %1892 = icmp ne i8 %1891, 0
  %.v475 = select i1 %1892, i64 14, i64 30
  %1893 = add i64 %1876, %.v475
  %1894 = add i64 %1893, 11
  store i64 %1894, i64* %PC, align 8
  br i1 %1892, label %block_400e1f, label %block_400e2f

block_401570:                                     ; preds = %block_401525, %block_401537
  %1895 = phi i64 [ %1577, %block_401525 ], [ %.pre438, %block_401537 ]
  %1896 = phi i64 [ %296, %block_401525 ], [ %.pre437, %block_401537 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.3, %block_401525 ], [ %618, %block_401537 ]
  %1897 = add i64 %1896, -176
  %1898 = add i64 %1895, 6
  store i64 %1898, i64* %PC, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = add i32 %1900, 1
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RAX, align 8, !tbaa !2428
  %1903 = icmp eq i32 %1900, -1
  %1904 = icmp eq i32 %1901, 0
  %1905 = or i1 %1903, %1904
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %18, align 1, !tbaa !2434
  %1907 = and i32 %1901, 255
  %1908 = tail call i32 @llvm.ctpop.i32(i32 %1907) #10
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  store i8 %1911, i8* %25, align 1, !tbaa !2448
  %1912 = xor i32 %1901, %1900
  %1913 = lshr i32 %1912, 4
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  store i8 %1915, i8* %30, align 1, !tbaa !2452
  %1916 = zext i1 %1904 to i8
  store i8 %1916, i8* %33, align 1, !tbaa !2449
  %1917 = lshr i32 %1901, 31
  %1918 = trunc i32 %1917 to i8
  store i8 %1918, i8* %36, align 1, !tbaa !2450
  %1919 = lshr i32 %1900, 31
  %1920 = xor i32 %1917, %1919
  %1921 = add nuw nsw i32 %1920, %1917
  %1922 = icmp eq i32 %1921, 2
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %42, align 1, !tbaa !2451
  %1924 = add i64 %1895, 15
  store i64 %1924, i64* %PC, align 8
  store i32 %1901, i32* %1899, align 4
  %1925 = load i32, i32* %EAX, align 4
  %1926 = load i64, i64* %RBP, align 8
  %1927 = add i64 %1926, -172
  %1928 = load i64, i64* %PC, align 8
  %1929 = add i64 %1928, 6
  store i64 %1929, i64* %PC, align 8
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sub i32 %1925, %1931
  %1933 = icmp ult i32 %1925, %1931
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %18, align 1, !tbaa !2434
  %1935 = and i32 %1932, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935) #10
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %25, align 1, !tbaa !2448
  %1940 = xor i32 %1931, %1925
  %1941 = xor i32 %1940, %1932
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %30, align 1, !tbaa !2452
  %1945 = icmp eq i32 %1932, 0
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %33, align 1, !tbaa !2449
  %1947 = lshr i32 %1932, 31
  %1948 = trunc i32 %1947 to i8
  store i8 %1948, i8* %36, align 1, !tbaa !2450
  %1949 = lshr i32 %1925, 31
  %1950 = lshr i32 %1931, 31
  %1951 = xor i32 %1950, %1949
  %1952 = xor i32 %1947, %1949
  %1953 = add nuw nsw i32 %1952, %1951
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %42, align 1, !tbaa !2451
  %1956 = icmp ne i8 %1948, 0
  %1957 = xor i1 %1956, %1954
  %.demorgan451 = or i1 %1945, %1957
  %.v472 = select i1 %.demorgan451, i64 12, i64 17
  %1958 = add i64 %1928, %.v472
  store i64 %1958, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan451, label %block_40158b, label %block_401590

block_400b90:                                     ; preds = %block_400b56, %block_400b68
  %1959 = phi i64 [ %2593, %block_400b56 ], [ %.pre411, %block_400b68 ]
  %1960 = phi i64 [ %2022, %block_400b56 ], [ %.pre410, %block_400b68 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.23, %block_400b56 ], [ %1033, %block_400b68 ]
  %1961 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 32) to i64*), align 16
  store i64 %1961, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1962 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %1962, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  store i64 %1962, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %1961, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %1961, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  store i64 %1961, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
  %1963 = add i64 %1959, -24
  %1964 = add i64 %1960, 60
  store i64 %1964, i64* %PC, align 8
  %1965 = inttoptr i64 %1963 to i64*
  store i64 1, i64* %1965, align 8
  %.pre412 = load i64, i64* %PC, align 8
  br label %block_400bcc

block_40126f:                                     ; preds = %block_401224, %block_401236
  %1966 = phi i64 [ %1124, %block_401224 ], [ %.pre426, %block_401236 ]
  %1967 = phi i64 [ %1650, %block_401224 ], [ %.pre425, %block_401236 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.9, %block_401224 ], [ %934, %block_401236 ]
  %1968 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %1968, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %1969 = add i64 %1966, -144
  %1970 = add i64 %1967, 16
  store i64 %1970, i64* %PC, align 8
  %1971 = inttoptr i64 %1969 to i64*
  store i64 %1968, i64* %1971, align 8
  %1972 = load i64, i64* %RBP, align 8
  %1973 = add i64 %1972, -152
  %1974 = load i64, i64* %PC, align 8
  %1975 = add i64 %1974, 8
  store i64 %1975, i64* %PC, align 8
  %1976 = load i64, i64* %1498, align 1
  %1977 = inttoptr i64 %1973 to i64*
  store i64 %1976, i64* %1977, align 8
  %1978 = load i64, i64* %RBP, align 8
  %1979 = add i64 %1978, -160
  %1980 = load i64, i64* %PC, align 8
  %1981 = add i64 %1980, 8
  store i64 %1981, i64* %PC, align 8
  %1982 = load i64, i64* %1498, align 1
  %1983 = inttoptr i64 %1979 to i64*
  store i64 %1982, i64* %1983, align 8
  %1984 = load i64, i64* %RBP, align 8
  %1985 = add i64 %1984, -24
  %1986 = load i64, i64* %PC, align 8
  %1987 = add i64 %1986, 8
  store i64 %1987, i64* %PC, align 8
  %1988 = inttoptr i64 %1985 to i64*
  store i64 1, i64* %1988, align 8
  %.pre427 = load i64, i64* %PC, align 8
  br label %block_401297

block_400b56:                                     ; preds = %block_400a89
  %1989 = add i64 %2593, -176
  %1990 = add i64 %2629, 6
  store i64 %1990, i64* %PC, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RAX, align 8, !tbaa !2428
  %1994 = add i64 %2593, -172
  %1995 = add i64 %2629, 12
  store i64 %1995, i64* %PC, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = sub i32 %1992, %1997
  %1999 = icmp ult i32 %1992, %1997
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %18, align 1, !tbaa !2434
  %2001 = and i32 %1998, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001) #10
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %25, align 1, !tbaa !2448
  %2006 = xor i32 %1997, %1992
  %2007 = xor i32 %2006, %1998
  %2008 = lshr i32 %2007, 4
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  store i8 %2010, i8* %30, align 1, !tbaa !2452
  %2011 = icmp eq i32 %1998, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %33, align 1, !tbaa !2449
  %2013 = lshr i32 %1998, 31
  %2014 = trunc i32 %2013 to i8
  store i8 %2014, i8* %36, align 1, !tbaa !2450
  %2015 = lshr i32 %1992, 31
  %2016 = lshr i32 %1997, 31
  %2017 = xor i32 %2016, %2015
  %2018 = xor i32 %2013, %2015
  %2019 = add nuw nsw i32 %2018, %2017
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %42, align 1, !tbaa !2451
  %.v453 = select i1 %2011, i64 18, i64 58
  %2022 = add i64 %2629, %.v453
  store i64 %2022, i64* %PC, align 8, !tbaa !2428
  br i1 %2011, label %block_400b68, label %block_400b90

block_400ebb:                                     ; preds = %block_400e92, %block_400ec9
  %2023 = phi i32 [ 2, %block_400e92 ], [ %650, %block_400ec9 ]
  %2024 = phi i64 [ %.pre421, %block_400e92 ], [ %719, %block_400ec9 ]
  %2025 = load i64, i64* %RBP, align 8
  %2026 = add i64 %2025, -24
  %2027 = add i64 %2024, 4
  store i64 %2027, i64* %PC, align 8
  %2028 = inttoptr i64 %2026 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i64 %2029, i64* %RAX, align 8, !tbaa !2428
  %2030 = add i64 %2025, -64
  %2031 = add i64 %2024, 8
  store i64 %2031, i64* %PC, align 8
  %2032 = inttoptr i64 %2030 to i64*
  %2033 = load i64, i64* %2032, align 8
  %2034 = sub i64 %2029, %2033
  %2035 = icmp ult i64 %2029, %2033
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %18, align 1, !tbaa !2434
  %2037 = trunc i64 %2034 to i32
  %2038 = and i32 %2037, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038) #10
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %25, align 1, !tbaa !2448
  %2043 = xor i64 %2033, %2029
  %2044 = xor i64 %2043, %2034
  %2045 = lshr i64 %2044, 4
  %2046 = trunc i64 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %30, align 1, !tbaa !2452
  %2048 = icmp eq i64 %2034, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %33, align 1, !tbaa !2449
  %2050 = lshr i64 %2034, 63
  %2051 = trunc i64 %2050 to i8
  store i8 %2051, i8* %36, align 1, !tbaa !2450
  %2052 = lshr i64 %2029, 63
  %2053 = lshr i64 %2033, 63
  %2054 = xor i64 %2053, %2052
  %2055 = xor i64 %2050, %2052
  %2056 = add nuw nsw i64 %2055, %2054
  %2057 = icmp eq i64 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %42, align 1, !tbaa !2451
  %2059 = icmp ne i8 %2051, 0
  %2060 = xor i1 %2059, %2057
  %.demorgan445 = or i1 %2048, %2060
  %.v460 = select i1 %.demorgan445, i64 14, i64 259
  %2061 = add i64 %2024, %.v460
  store i64 %2061, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan445, label %block_400ec9, label %block_400fbe

block_40092d:                                     ; preds = %block_4008ef
  store i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 75), i64* %RSI, align 8, !tbaa !2428
  %2062 = load i64, i64* @stderr, align 128
  store i64 %2062, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %2063 = add i64 %2112, -541
  %2064 = add i64 %2112, 25
  %2065 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2066 = add i64 %2065, -8
  %2067 = inttoptr i64 %2066 to i64*
  store i64 %2064, i64* %2067, align 8
  store i64 %2066, i64* %RSP, align 8, !tbaa !2428
  store i64 %2063, i64* %PC, align 8, !tbaa !2428
  %2068 = tail call fastcc %struct.Memory* @ext_400710_fprintf(%struct.State* nonnull %0, %struct.Memory* %2097)
  %2069 = load i64, i64* %RBP, align 8
  %2070 = add i64 %2069, -4
  %2071 = load i64, i64* %PC, align 8
  %2072 = add i64 %2071, 7
  store i64 %2072, i64* %PC, align 8
  %2073 = inttoptr i64 %2070 to i32*
  store i32 1, i32* %2073, align 4
  %2074 = load i64, i64* %RBP, align 8
  %2075 = add i64 %2074, -212
  %2076 = load i32, i32* %EAX, align 4
  %2077 = load i64, i64* %PC, align 8
  %2078 = add i64 %2077, 6
  store i64 %2078, i64* %PC, align 8
  %2079 = inttoptr i64 %2075 to i32*
  store i32 %2076, i32* %2079, align 4
  %2080 = load i64, i64* %PC, align 8
  %2081 = add i64 %2080, 3197
  store i64 %2081, i64* %PC, align 8, !tbaa !2428
  br label %block_4015d0

block_4008ef:                                     ; preds = %block_4008c5
  %2082 = add i64 %1122, 4
  store i64 %2082, i64* %PC, align 8
  %2083 = load i64, i64* %1083, align 8
  store i64 %2083, i64* %RAX, align 8, !tbaa !2428
  %2084 = add i64 %1122, 11
  store i64 %2084, i64* %PC, align 8
  %2085 = load i32, i32* %1087, align 4
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RCX, align 8, !tbaa !2428
  %2087 = shl nsw i64 %2086, 3
  %2088 = add i64 %2087, %2083
  %2089 = add i64 %1122, 15
  store i64 %2089, i64* %PC, align 8
  %2090 = inttoptr i64 %2088 to i64*
  %2091 = load i64, i64* %2090, align 8
  store i64 %2091, i64* %RDI, align 8, !tbaa !2428
  %2092 = add i64 %1122, -447
  %2093 = add i64 %1122, 20
  %2094 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2095 = add i64 %2094, -8
  %2096 = inttoptr i64 %2095 to i64*
  store i64 %2093, i64* %2096, align 8
  store i64 %2095, i64* %RSP, align 8, !tbaa !2428
  store i64 %2092, i64* %PC, align 8, !tbaa !2428
  %2097 = tail call fastcc %struct.Memory* @ext_602190_atol(%struct.State* nonnull %0, %struct.Memory* %1741)
  %2098 = load i64, i64* %RAX, align 8
  %2099 = load i64, i64* %PC, align 8
  store i8 0, i8* %18, align 1, !tbaa !2434
  %2100 = trunc i64 %2098 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101) #10
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  %2106 = icmp eq i64 %2098, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %33, align 1, !tbaa !2449
  %2108 = lshr i64 %2098, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  %2110 = icmp ne i8 %2109, 0
  %2111 = or i1 %2106, %2110
  %.v478 = select i1 %2111, i64 42, i64 10
  %2112 = add i64 %2099, %.v478
  store i64 %2112, i64* %PC, align 8, !tbaa !2428
  br i1 %2111, label %block_40092d, label %block_40090d

block_40090d:                                     ; preds = %block_4008ef
  %2113 = load i64, i64* %RBP, align 8
  %2114 = add i64 %2113, -16
  %2115 = add i64 %2112, 4
  store i64 %2115, i64* %PC, align 8
  %2116 = inttoptr i64 %2114 to i64*
  %2117 = load i64, i64* %2116, align 8
  store i64 %2117, i64* %RAX, align 8, !tbaa !2428
  %2118 = add i64 %2113, -172
  %2119 = add i64 %2112, 11
  store i64 %2119, i64* %PC, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RCX, align 8, !tbaa !2428
  %2123 = shl nsw i64 %2122, 3
  %2124 = add i64 %2123, %2117
  %2125 = add i64 %2112, 15
  store i64 %2125, i64* %PC, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RDI, align 8, !tbaa !2428
  %2128 = add i64 %2112, -477
  %2129 = add i64 %2112, 20
  %2130 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2131 = add i64 %2130, -8
  %2132 = inttoptr i64 %2131 to i64*
  store i64 %2129, i64* %2132, align 8
  store i64 %2131, i64* %RSP, align 8, !tbaa !2428
  store i64 %2128, i64* %PC, align 8, !tbaa !2428
  %2133 = tail call fastcc %struct.Memory* @ext_602190_atol(%struct.State* nonnull %0, %struct.Memory* %2097)
  %2134 = load i64, i64* %RBP, align 8
  %2135 = add i64 %2134, -184
  %2136 = load i64, i64* %RAX, align 8
  %2137 = load i64, i64* %PC, align 8
  %2138 = add i64 %2137, 7
  store i64 %2138, i64* %PC, align 8
  %2139 = inttoptr i64 %2135 to i64*
  store i64 %2136, i64* %2139, align 8
  %2140 = load i64, i64* %PC, align 8
  %2141 = add i64 %2140, 48
  store i64 %2141, i64* %PC, align 8, !tbaa !2428
  br label %block_40095d

block_4014c6:                                     ; preds = %block_401484, %block_401496
  %2142 = phi i64 [ %2555, %block_401484 ], [ %.pre435, %block_401496 ]
  %2143 = phi i64 [ %2811, %block_401484 ], [ %.pre434, %block_401496 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.2, %block_401484 ], [ %1780, %block_401496 ]
  %2144 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 64) to i64*), align 16
  store i64 %2144, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2145 = add i64 %2142, -144
  %2146 = add i64 %2143, 16
  store i64 %2146, i64* %PC, align 8
  %2147 = inttoptr i64 %2145 to i64*
  store i64 %2144, i64* %2147, align 8
  %2148 = load i64, i64* %RBP, align 8
  %2149 = add i64 %2148, -24
  %2150 = load i64, i64* %PC, align 8
  %2151 = add i64 %2150, 8
  store i64 %2151, i64* %PC, align 8
  %2152 = inttoptr i64 %2149 to i64*
  store i64 1, i64* %2152, align 8
  %.pre436 = load i64, i64* %PC, align 8
  br label %block_4014de

block_400a97:                                     ; preds = %block_400a89
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %2153 = add i64 %2593, -112
  %2154 = add i64 %2629, 15
  store i64 %2154, i64* %PC, align 8
  %2155 = inttoptr i64 %2153 to i64*
  %2156 = load i64, i64* %2155, align 8
  store i64 %2156, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2157 = add i64 %2593, -120
  %2158 = add i64 %2629, 20
  store i64 %2158, i64* %PC, align 8
  %2159 = bitcast i64 %2156 to double
  %2160 = inttoptr i64 %2157 to double*
  %2161 = load double, double* %2160, align 8
  %2162 = fadd double %2159, %2161
  store double %2162, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2163 = add i64 %2593, -128
  %2164 = add i64 %2629, 25
  store i64 %2164, i64* %PC, align 8
  %2165 = inttoptr i64 %2163 to double*
  %2166 = load double, double* %2165, align 8
  %2167 = fadd double %2162, %2166
  store double %2167, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2168 = add i64 %2593, -136
  %2169 = add i64 %2629, 33
  store i64 %2169, i64* %PC, align 8
  %2170 = inttoptr i64 %2168 to double*
  %2171 = load double, double* %2170, align 8
  %2172 = fsub double %2167, %2171
  %2173 = load double, double* bitcast (%T_type* @T to double*), align 8
  %2174 = fmul double %2172, %2173
  store double %2174, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2175 = add i64 %2629, 47
  store i64 %2175, i64* %PC, align 8
  %2176 = inttoptr i64 %2153 to double*
  store double %2174, double* %2176, align 8
  %2177 = load i64, i64* %RBP, align 8
  %2178 = add i64 %2177, -112
  %2179 = load i64, i64* %PC, align 8
  %2180 = add i64 %2179, 5
  store i64 %2180, i64* %PC, align 8
  %2181 = inttoptr i64 %2178 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2183 = add i64 %2177, -120
  %2184 = add i64 %2179, 10
  store i64 %2184, i64* %PC, align 8
  %2185 = bitcast i64 %2182 to double
  %2186 = inttoptr i64 %2183 to double*
  %2187 = load double, double* %2186, align 8
  %2188 = fadd double %2185, %2187
  store double %2188, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2189 = add i64 %2177, -128
  %2190 = add i64 %2179, 15
  store i64 %2190, i64* %PC, align 8
  %2191 = inttoptr i64 %2189 to double*
  %2192 = load double, double* %2191, align 8
  %2193 = fsub double %2188, %2192
  store double %2193, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2194 = add i64 %2177, -136
  %2195 = add i64 %2179, 23
  store i64 %2195, i64* %PC, align 8
  %2196 = inttoptr i64 %2194 to double*
  %2197 = load double, double* %2196, align 8
  %2198 = fadd double %2193, %2197
  %2199 = load double, double* bitcast (%T_type* @T to double*), align 8
  %2200 = fmul double %2198, %2199
  store double %2200, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2201 = add i64 %2179, 37
  store i64 %2201, i64* %PC, align 8
  %2202 = inttoptr i64 %2183 to double*
  store double %2200, double* %2202, align 8
  %2203 = load i64, i64* %RBP, align 8
  %2204 = add i64 %2203, -112
  %2205 = load i64, i64* %PC, align 8
  %2206 = add i64 %2205, 5
  store i64 %2206, i64* %PC, align 8
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2209 = add i64 %2203, -120
  %2210 = add i64 %2205, 10
  store i64 %2210, i64* %PC, align 8
  %2211 = bitcast i64 %2208 to double
  %2212 = inttoptr i64 %2209 to double*
  %2213 = load double, double* %2212, align 8
  %2214 = fsub double %2211, %2213
  store double %2214, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2215 = add i64 %2203, -128
  %2216 = add i64 %2205, 15
  store i64 %2216, i64* %PC, align 8
  %2217 = inttoptr i64 %2215 to double*
  %2218 = load double, double* %2217, align 8
  %2219 = fadd double %2214, %2218
  store double %2219, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2220 = add i64 %2203, -136
  %2221 = add i64 %2205, 23
  store i64 %2221, i64* %PC, align 8
  %2222 = inttoptr i64 %2220 to double*
  %2223 = load double, double* %2222, align 8
  %2224 = fadd double %2219, %2223
  %2225 = load double, double* bitcast (%T_type* @T to double*), align 8
  %2226 = fmul double %2224, %2225
  store double %2226, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2227 = add i64 %2205, 37
  store i64 %2227, i64* %PC, align 8
  %2228 = inttoptr i64 %2215 to double*
  store double %2226, double* %2228, align 8
  %2229 = load i64, i64* %RBP, align 8
  %2230 = add i64 %2229, -112
  %2231 = load i64, i64* %PC, align 8
  %2232 = add i64 %2231, 5
  store i64 %2232, i64* %PC, align 8
  %2233 = inttoptr i64 %2230 to i64*
  %2234 = load i64, i64* %2233, align 8
  %2235 = load i64, i64* %RAX, align 8
  %2236 = xor i64 %2235, %2234
  store i64 %2236, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2434
  %2237 = trunc i64 %2236 to i32
  %2238 = and i32 %2237, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238) #10
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %25, align 1, !tbaa !2448
  %2243 = icmp eq i64 %2236, 0
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %33, align 1, !tbaa !2449
  %2245 = lshr i64 %2236, 63
  %2246 = trunc i64 %2245 to i8
  store i8 %2246, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %42, align 1, !tbaa !2451
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i64 %2236, i64* %1498, align 1, !tbaa !2428
  store i64 0, i64* %1499, align 1, !tbaa !2428
  %2247 = add i64 %2229, -120
  %2248 = add i64 %2231, 23
  store i64 %2248, i64* %PC, align 8
  %.cast = bitcast i64 %2236 to double
  %2249 = inttoptr i64 %2247 to double*
  %2250 = load double, double* %2249, align 8
  %2251 = fadd double %.cast, %2250
  store double %2251, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2252 = add i64 %2229, -128
  %2253 = add i64 %2231, 28
  store i64 %2253, i64* %PC, align 8
  %2254 = inttoptr i64 %2252 to double*
  %2255 = load double, double* %2254, align 8
  %2256 = fadd double %2251, %2255
  store double %2256, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2257 = add i64 %2229, -136
  %2258 = add i64 %2231, 36
  store i64 %2258, i64* %PC, align 8
  %2259 = inttoptr i64 %2257 to double*
  %2260 = load double, double* %2259, align 8
  %2261 = fadd double %2256, %2260
  %2262 = load double, double* bitcast (%T_type* @T to double*), align 8
  %2263 = fmul double %2261, %2262
  store double %2263, double* %1497, align 1, !tbaa !2432
  store i64 0, i64* %1499, align 1, !tbaa !2432
  %2264 = add i64 %2231, 53
  store i64 %2264, i64* %PC, align 8
  %2265 = inttoptr i64 %2257 to double*
  store double %2263, double* %2265, align 8
  %2266 = load i64, i64* %RBP, align 8
  %2267 = add i64 %2266, -24
  %2268 = load i64, i64* %PC, align 8
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %PC, align 8
  %2270 = inttoptr i64 %2267 to i64*
  %2271 = load i64, i64* %2270, align 8
  %2272 = add i64 %2271, 1
  store i64 %2272, i64* %RAX, align 8, !tbaa !2428
  %2273 = icmp eq i64 %2271, -1
  %2274 = icmp eq i64 %2272, 0
  %2275 = or i1 %2273, %2274
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %18, align 1, !tbaa !2434
  %2277 = trunc i64 %2272 to i32
  %2278 = and i32 %2277, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278) #10
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %25, align 1, !tbaa !2448
  %2283 = xor i64 %2272, %2271
  %2284 = lshr i64 %2283, 4
  %2285 = trunc i64 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %30, align 1, !tbaa !2452
  %2287 = zext i1 %2274 to i8
  store i8 %2287, i8* %33, align 1, !tbaa !2449
  %2288 = lshr i64 %2272, 63
  %2289 = trunc i64 %2288 to i8
  store i8 %2289, i8* %36, align 1, !tbaa !2450
  %2290 = lshr i64 %2271, 63
  %2291 = xor i64 %2288, %2290
  %2292 = add nuw nsw i64 %2291, %2288
  %2293 = icmp eq i64 %2292, 2
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %42, align 1, !tbaa !2451
  %2295 = add i64 %2268, 12
  store i64 %2295, i64* %PC, align 8
  store i64 %2272, i64* %2270, align 8
  %2296 = load i64, i64* %PC, align 8
  %2297 = add i64 %2296, -200
  store i64 %2297, i64* %PC, align 8, !tbaa !2428
  br label %block_400a89

block_4009db:                                     ; preds = %block_40158b, %block_400976
  %2298 = phi i64 [ %.pre408, %block_400976 ], [ %1926, %block_40158b ]
  %2299 = phi i64 [ %.pre407, %block_400976 ], [ %720, %block_40158b ]
  %MEMORY.23 = phi %struct.Memory* [ %224, %block_400976 ], [ %MEMORY.18, %block_40158b ]
  %2300 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 32) to i64*), align 16
  store i64 %2300, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2301 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %2301, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %2302 = add i64 %2298, -32
  %2303 = add i64 %2299, 24
  store i64 %2303, i64* %PC, align 8
  %2304 = inttoptr i64 %2302 to i64*
  store i64 0, i64* %2304, align 8
  %2305 = load i64, i64* %RBP, align 8
  %2306 = add i64 %2305, -168
  %2307 = load i64, i64* %PC, align 8
  %2308 = add i64 %2307, 8
  store i64 %2308, i64* %PC, align 8
  %2309 = inttoptr i64 %2306 to i64*
  %2310 = load i64, i64* %2309, align 8
  %2311 = sext i64 %2310 to i128
  %2312 = and i128 %2311, -18446744073709551616
  %2313 = zext i64 %2310 to i128
  %2314 = or i128 %2312, %2313
  %2315 = mul nsw i128 %2314, 12
  %2316 = trunc i128 %2315 to i64
  store i64 %2316, i64* %RAX, align 8, !tbaa !2428
  %2317 = sext i64 %2316 to i128
  %2318 = icmp ne i128 %2317, %2315
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %18, align 1, !tbaa !2434
  %2320 = trunc i128 %2315 to i32
  %2321 = and i32 %2320, 252
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321) #10
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2326 = lshr i64 %2316, 63
  %2327 = trunc i64 %2326 to i8
  store i8 %2327, i8* %36, align 1, !tbaa !2450
  store i8 %2319, i8* %42, align 1, !tbaa !2451
  %2328 = add i64 %2305, -40
  %2329 = add i64 %2307, 12
  store i64 %2329, i64* %PC, align 8
  %2330 = inttoptr i64 %2328 to i64*
  store i64 %2316, i64* %2330, align 8
  %2331 = load i64, i64* %RBP, align 8
  %2332 = add i64 %2331, -168
  %2333 = load i64, i64* %PC, align 8
  %2334 = add i64 %2333, 8
  store i64 %2334, i64* %PC, align 8
  %2335 = inttoptr i64 %2332 to i64*
  %2336 = load i64, i64* %2335, align 8
  %2337 = sext i64 %2336 to i128
  %2338 = and i128 %2337, -18446744073709551616
  %2339 = zext i64 %2336 to i128
  %2340 = or i128 %2338, %2339
  %2341 = mul nsw i128 %2340, 14
  %2342 = trunc i128 %2341 to i64
  store i64 %2342, i64* %RAX, align 8, !tbaa !2428
  %2343 = sext i64 %2342 to i128
  %2344 = icmp ne i128 %2343, %2341
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %18, align 1, !tbaa !2434
  %2346 = trunc i128 %2341 to i32
  %2347 = and i32 %2346, 254
  %2348 = tail call i32 @llvm.ctpop.i32(i32 %2347) #10
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  store i8 %2351, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2352 = lshr i64 %2342, 63
  %2353 = trunc i64 %2352 to i8
  store i8 %2353, i8* %36, align 1, !tbaa !2450
  store i8 %2345, i8* %42, align 1, !tbaa !2451
  %2354 = add i64 %2331, -48
  %2355 = add i64 %2333, 12
  store i64 %2355, i64* %PC, align 8
  %2356 = inttoptr i64 %2354 to i64*
  store i64 %2342, i64* %2356, align 8
  %2357 = load i64, i64* %RBP, align 8
  %2358 = add i64 %2357, -168
  %2359 = load i64, i64* %PC, align 8
  %2360 = add i64 %2359, 11
  store i64 %2360, i64* %PC, align 8
  %2361 = inttoptr i64 %2358 to i64*
  %2362 = load i64, i64* %2361, align 8
  %2363 = sext i64 %2362 to i128
  %2364 = and i128 %2363, -18446744073709551616
  %2365 = zext i64 %2362 to i128
  %2366 = or i128 %2364, %2365
  %2367 = mul nsw i128 %2366, 345
  %2368 = trunc i128 %2367 to i64
  store i64 %2368, i64* %RAX, align 8, !tbaa !2428
  %2369 = sext i64 %2368 to i128
  %2370 = icmp ne i128 %2369, %2367
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %18, align 1, !tbaa !2434
  %2372 = trunc i128 %2367 to i32
  %2373 = and i32 %2372, 255
  %2374 = tail call i32 @llvm.ctpop.i32(i32 %2373) #10
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  store i8 %2377, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2378 = lshr i64 %2368, 63
  %2379 = trunc i64 %2378 to i8
  store i8 %2379, i8* %36, align 1, !tbaa !2450
  store i8 %2371, i8* %42, align 1, !tbaa !2451
  %2380 = add i64 %2357, -56
  %2381 = add i64 %2359, 15
  store i64 %2381, i64* %PC, align 8
  %2382 = inttoptr i64 %2380 to i64*
  store i64 %2368, i64* %2382, align 8
  %2383 = load i64, i64* %RBP, align 8
  %2384 = add i64 %2383, -168
  %2385 = load i64, i64* %PC, align 8
  %2386 = add i64 %2385, 11
  store i64 %2386, i64* %PC, align 8
  %2387 = inttoptr i64 %2384 to i64*
  %2388 = load i64, i64* %2387, align 8
  %2389 = sext i64 %2388 to i128
  %2390 = and i128 %2389, -18446744073709551616
  %2391 = zext i64 %2388 to i128
  %2392 = or i128 %2390, %2391
  %2393 = mul nsw i128 %2392, 210
  %2394 = trunc i128 %2393 to i64
  store i64 %2394, i64* %RAX, align 8, !tbaa !2428
  %2395 = sext i64 %2394 to i128
  %2396 = icmp ne i128 %2395, %2393
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %18, align 1, !tbaa !2434
  %2398 = trunc i128 %2393 to i32
  %2399 = and i32 %2398, 254
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399) #10
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2404 = lshr i64 %2394, 63
  %2405 = trunc i64 %2404 to i8
  store i8 %2405, i8* %36, align 1, !tbaa !2450
  store i8 %2397, i8* %42, align 1, !tbaa !2451
  %2406 = add i64 %2383, -64
  %2407 = add i64 %2385, 15
  store i64 %2407, i64* %PC, align 8
  %2408 = inttoptr i64 %2406 to i64*
  store i64 %2394, i64* %2408, align 8
  %2409 = load i64, i64* %RBP, align 8
  %2410 = add i64 %2409, -168
  %2411 = load i64, i64* %PC, align 8
  %2412 = add i64 %2411, 7
  store i64 %2412, i64* %PC, align 8
  %2413 = inttoptr i64 %2410 to i64*
  %2414 = load i64, i64* %2413, align 8
  %2415 = shl i64 %2414, 5
  store i64 %2415, i64* %RAX, align 8, !tbaa !2428
  %2416 = lshr i64 %2414, 59
  %2417 = trunc i64 %2416 to i8
  %2418 = and i8 %2417, 1
  store i8 %2418, i8* %18, align 1, !tbaa !2453
  %2419 = trunc i64 %2415 to i32
  %2420 = and i32 %2419, 224
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420) #10
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %25, align 1, !tbaa !2453
  store i8 0, i8* %30, align 1, !tbaa !2453
  %2425 = icmp eq i64 %2415, 0
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %33, align 1, !tbaa !2453
  %2427 = lshr i64 %2414, 58
  %2428 = trunc i64 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %36, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  %2430 = add i64 %2409, -72
  %2431 = add i64 %2411, 15
  store i64 %2431, i64* %PC, align 8
  %2432 = inttoptr i64 %2430 to i64*
  store i64 %2415, i64* %2432, align 8
  %2433 = load i64, i64* %RBP, align 8
  %2434 = add i64 %2433, -168
  %2435 = load i64, i64* %PC, align 8
  %2436 = add i64 %2435, 11
  store i64 %2436, i64* %PC, align 8
  %2437 = inttoptr i64 %2434 to i64*
  %2438 = load i64, i64* %2437, align 8
  %2439 = sext i64 %2438 to i128
  %2440 = and i128 %2439, -18446744073709551616
  %2441 = zext i64 %2438 to i128
  %2442 = or i128 %2440, %2441
  %2443 = mul nsw i128 %2442, 899
  %2444 = trunc i128 %2443 to i64
  store i64 %2444, i64* %RAX, align 8, !tbaa !2428
  %2445 = sext i64 %2444 to i128
  %2446 = icmp ne i128 %2445, %2443
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %18, align 1, !tbaa !2434
  %2448 = trunc i128 %2443 to i32
  %2449 = and i32 %2448, 255
  %2450 = tail call i32 @llvm.ctpop.i32(i32 %2449) #10
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  store i8 %2453, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2454 = lshr i64 %2444, 63
  %2455 = trunc i64 %2454 to i8
  store i8 %2455, i8* %36, align 1, !tbaa !2450
  store i8 %2447, i8* %42, align 1, !tbaa !2451
  %2456 = add i64 %2433, -80
  %2457 = add i64 %2435, 15
  store i64 %2457, i64* %PC, align 8
  %2458 = inttoptr i64 %2456 to i64*
  store i64 %2444, i64* %2458, align 8
  %2459 = load i64, i64* %RBP, align 8
  %2460 = add i64 %2459, -168
  %2461 = load i64, i64* %PC, align 8
  %2462 = add i64 %2461, 11
  store i64 %2462, i64* %PC, align 8
  %2463 = inttoptr i64 %2460 to i64*
  %2464 = load i64, i64* %2463, align 8
  %2465 = sext i64 %2464 to i128
  %2466 = and i128 %2465, -18446744073709551616
  %2467 = zext i64 %2464 to i128
  %2468 = or i128 %2466, %2467
  %2469 = mul nsw i128 %2468, 616
  %2470 = trunc i128 %2469 to i64
  store i64 %2470, i64* %RAX, align 8, !tbaa !2428
  %2471 = sext i64 %2470 to i128
  %2472 = icmp ne i128 %2471, %2469
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %18, align 1, !tbaa !2434
  %2474 = trunc i128 %2469 to i32
  %2475 = and i32 %2474, 248
  %2476 = tail call i32 @llvm.ctpop.i32(i32 %2475) #10
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  store i8 %2479, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2480 = lshr i64 %2470, 63
  %2481 = trunc i64 %2480 to i8
  store i8 %2481, i8* %36, align 1, !tbaa !2450
  store i8 %2473, i8* %42, align 1, !tbaa !2451
  %2482 = add i64 %2459, -88
  %2483 = add i64 %2461, 15
  store i64 %2483, i64* %PC, align 8
  %2484 = inttoptr i64 %2482 to i64*
  store i64 %2470, i64* %2484, align 8
  %2485 = load i64, i64* %RBP, align 8
  %2486 = add i64 %2485, -96
  %2487 = load i64, i64* %PC, align 8
  %2488 = add i64 %2487, 8
  store i64 %2488, i64* %PC, align 8
  %2489 = inttoptr i64 %2486 to i64*
  store i64 0, i64* %2489, align 8
  %2490 = load i64, i64* %RBP, align 8
  %2491 = add i64 %2490, -168
  %2492 = load i64, i64* %PC, align 8
  %2493 = add i64 %2492, 8
  store i64 %2493, i64* %PC, align 8
  %2494 = inttoptr i64 %2491 to i64*
  %2495 = load i64, i64* %2494, align 8
  %2496 = sext i64 %2495 to i128
  %2497 = and i128 %2496, -18446744073709551616
  %2498 = zext i64 %2495 to i128
  %2499 = or i128 %2497, %2498
  %2500 = mul nsw i128 %2499, 93
  %2501 = trunc i128 %2500 to i64
  store i64 %2501, i64* %RAX, align 8, !tbaa !2428
  %2502 = sext i64 %2501 to i128
  %2503 = icmp ne i128 %2502, %2500
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %18, align 1, !tbaa !2434
  %2505 = trunc i128 %2500 to i32
  %2506 = and i32 %2505, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506) #10
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %30, align 1, !tbaa !2452
  store i8 0, i8* %33, align 1, !tbaa !2449
  %2511 = lshr i64 %2501, 63
  %2512 = trunc i64 %2511 to i8
  store i8 %2512, i8* %36, align 1, !tbaa !2450
  store i8 %2504, i8* %42, align 1, !tbaa !2451
  %2513 = add i64 %2490, -104
  %2514 = add i64 %2492, 12
  store i64 %2514, i64* %PC, align 8
  %2515 = inttoptr i64 %2513 to i64*
  store i64 %2501, i64* %2515, align 8
  %2516 = load i64, i64* %RBP, align 8
  %2517 = add i64 %2516, -112
  %2518 = load i64, i64* %PC, align 8
  %2519 = add i64 %2518, 5
  store i64 %2519, i64* %PC, align 8
  %2520 = load i64, i64* %1502, align 1
  %2521 = inttoptr i64 %2517 to i64*
  store i64 %2520, i64* %2521, align 8
  %2522 = load i64, i64* %RBP, align 8
  %2523 = add i64 %2522, -120
  %2524 = load i64, i64* %PC, align 8
  %2525 = add i64 %2524, 5
  store i64 %2525, i64* %PC, align 8
  %2526 = load i64, i64* %1498, align 1
  %2527 = inttoptr i64 %2523 to i64*
  store i64 %2526, i64* %2527, align 8
  %2528 = load i64, i64* %RBP, align 8
  %2529 = add i64 %2528, -128
  %2530 = load i64, i64* %PC, align 8
  %2531 = add i64 %2530, 5
  store i64 %2531, i64* %PC, align 8
  %2532 = load i64, i64* %1498, align 1
  %2533 = inttoptr i64 %2529 to i64*
  store i64 %2532, i64* %2533, align 8
  %2534 = load i64, i64* %RBP, align 8
  %2535 = add i64 %2534, -136
  %2536 = load i64, i64* %PC, align 8
  %2537 = add i64 %2536, 8
  store i64 %2537, i64* %PC, align 8
  %2538 = load i64, i64* %1498, align 1
  %2539 = inttoptr i64 %2535 to i64*
  store i64 %2538, i64* %2539, align 8
  %2540 = load i64, i64* %RBP, align 8
  %2541 = add i64 %2540, -24
  %2542 = load i64, i64* %PC, align 8
  %2543 = add i64 %2542, 8
  store i64 %2543, i64* %PC, align 8
  %2544 = inttoptr i64 %2541 to i64*
  store i64 1, i64* %2544, align 8
  %.pre409 = load i64, i64* %PC, align 8
  br label %block_400a89

block_40131d:                                     ; preds = %block_4012d2, %block_4012e4
  %2545 = phi i64 [ %560, %block_4012d2 ], [ %.pre429, %block_4012e4 ]
  %2546 = phi i64 [ %503, %block_4012d2 ], [ %.pre428, %block_4012e4 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.20, %block_4012d2 ], [ %1869, %block_4012e4 ]
  %2547 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 56) to i64*), align 8
  store i64 %2547, i64* %1498, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1500, align 1, !tbaa !2432
  %2548 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 8) to i64*), align 8
  store i64 %2548, i64* %1502, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1504, align 1, !tbaa !2432
  %2549 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4018f0__rodata_type* @seg_4018f0__rodata to i64), i64 40) to i64*), align 8
  store i64 %2549, i64* %1506, align 1, !tbaa !2432
  store double 0.000000e+00, double* %1508, align 1, !tbaa !2432
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 2, i32* bitcast (%K_type* @K to i32*), align 8
  store i32 3, i32* bitcast (%L_type* @L to i32*), align 8
  store i64 %2549, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
  store i64 %2548, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
  store i64 %2547, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
  %2550 = add i64 %2545, -24
  %2551 = add i64 %2546, 92
  store i64 %2551, i64* %PC, align 8
  %2552 = inttoptr i64 %2550 to i64*
  store i64 1, i64* %2552, align 8
  %.pre430 = load i64, i64* %PC, align 8
  br label %block_401379

block_40140a:                                     ; preds = %block_401418, %block_4013ec
  %2553 = phi i32 [ %1667, %block_401418 ], [ 3, %block_4013ec ]
  %2554 = phi i64 [ %1723, %block_401418 ], [ %.pre433, %block_4013ec ]
  %2555 = load i64, i64* %RBP, align 8
  %2556 = add i64 %2555, -24
  %2557 = add i64 %2554, 4
  store i64 %2557, i64* %PC, align 8
  %2558 = inttoptr i64 %2556 to i64*
  %2559 = load i64, i64* %2558, align 8
  store i64 %2559, i64* %RAX, align 8, !tbaa !2428
  %2560 = add i64 %2555, -96
  %2561 = add i64 %2554, 8
  store i64 %2561, i64* %PC, align 8
  %2562 = inttoptr i64 %2560 to i64*
  %2563 = load i64, i64* %2562, align 8
  %2564 = sub i64 %2559, %2563
  %2565 = icmp ult i64 %2559, %2563
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %18, align 1, !tbaa !2434
  %2567 = trunc i64 %2564 to i32
  %2568 = and i32 %2567, 255
  %2569 = tail call i32 @llvm.ctpop.i32(i32 %2568) #10
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  store i8 %2572, i8* %25, align 1, !tbaa !2448
  %2573 = xor i64 %2563, %2559
  %2574 = xor i64 %2573, %2564
  %2575 = lshr i64 %2574, 4
  %2576 = trunc i64 %2575 to i8
  %2577 = and i8 %2576, 1
  store i8 %2577, i8* %30, align 1, !tbaa !2452
  %2578 = icmp eq i64 %2564, 0
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %33, align 1, !tbaa !2449
  %2580 = lshr i64 %2564, 63
  %2581 = trunc i64 %2580 to i8
  store i8 %2581, i8* %36, align 1, !tbaa !2450
  %2582 = lshr i64 %2559, 63
  %2583 = lshr i64 %2563, 63
  %2584 = xor i64 %2583, %2582
  %2585 = xor i64 %2580, %2582
  %2586 = add nuw nsw i64 %2585, %2584
  %2587 = icmp eq i64 %2586, 2
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %42, align 1, !tbaa !2451
  %2589 = icmp ne i8 %2581, 0
  %2590 = xor i1 %2589, %2587
  %.demorgan449 = or i1 %2578, %2590
  %.v468 = select i1 %.demorgan449, i64 14, i64 122
  %2591 = add i64 %2554, %.v468
  store i64 %2591, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan449, label %block_401418, label %block_401484

block_400a89:                                     ; preds = %block_4009db, %block_400a97
  %2592 = phi i64 [ %.pre409, %block_4009db ], [ %2297, %block_400a97 ]
  %2593 = load i64, i64* %RBP, align 8
  %2594 = add i64 %2593, -24
  %2595 = add i64 %2592, 4
  store i64 %2595, i64* %PC, align 8
  %2596 = inttoptr i64 %2594 to i64*
  %2597 = load i64, i64* %2596, align 8
  store i64 %2597, i64* %RAX, align 8, !tbaa !2428
  %2598 = add i64 %2593, -32
  %2599 = add i64 %2592, 8
  store i64 %2599, i64* %PC, align 8
  %2600 = inttoptr i64 %2598 to i64*
  %2601 = load i64, i64* %2600, align 8
  %2602 = sub i64 %2597, %2601
  %2603 = icmp ult i64 %2597, %2601
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %18, align 1, !tbaa !2434
  %2605 = trunc i64 %2602 to i32
  %2606 = and i32 %2605, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606) #10
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %25, align 1, !tbaa !2448
  %2611 = xor i64 %2601, %2597
  %2612 = xor i64 %2611, %2602
  %2613 = lshr i64 %2612, 4
  %2614 = trunc i64 %2613 to i8
  %2615 = and i8 %2614, 1
  store i8 %2615, i8* %30, align 1, !tbaa !2452
  %2616 = icmp eq i64 %2602, 0
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %33, align 1, !tbaa !2449
  %2618 = lshr i64 %2602, 63
  %2619 = trunc i64 %2618 to i8
  store i8 %2619, i8* %36, align 1, !tbaa !2450
  %2620 = lshr i64 %2597, 63
  %2621 = lshr i64 %2601, 63
  %2622 = xor i64 %2621, %2620
  %2623 = xor i64 %2618, %2620
  %2624 = add nuw nsw i64 %2623, %2622
  %2625 = icmp eq i64 %2624, 2
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %42, align 1, !tbaa !2451
  %2627 = icmp ne i8 %2619, 0
  %2628 = xor i1 %2627, %2625
  %.demorgan = or i1 %2616, %2628
  %.v452 = select i1 %.demorgan, i64 14, i64 205
  %2629 = add i64 %2592, %.v452
  store i64 %2629, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400a97, label %block_400b56

block_400cda:                                     ; preds = %block_400bcc
  %2630 = add i64 %334, -176
  %2631 = add i64 %370, 6
  store i64 %2631, i64* %PC, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX, align 8, !tbaa !2428
  %2635 = add i64 %334, -172
  %2636 = add i64 %370, 12
  store i64 %2636, i64* %PC, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = sub i32 %2633, %2638
  %2640 = icmp ult i32 %2633, %2638
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %18, align 1, !tbaa !2434
  %2642 = and i32 %2639, 255
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642) #10
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %25, align 1, !tbaa !2448
  %2647 = xor i32 %2638, %2633
  %2648 = xor i32 %2647, %2639
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  store i8 %2651, i8* %30, align 1, !tbaa !2452
  %2652 = icmp eq i32 %2639, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %33, align 1, !tbaa !2449
  %2654 = lshr i32 %2639, 31
  %2655 = trunc i32 %2654 to i8
  store i8 %2655, i8* %36, align 1, !tbaa !2450
  %2656 = lshr i32 %2633, 31
  %2657 = lshr i32 %2638, 31
  %2658 = xor i32 %2657, %2656
  %2659 = xor i32 %2654, %2656
  %2660 = add nuw nsw i32 %2659, %2658
  %2661 = icmp eq i32 %2660, 2
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %42, align 1, !tbaa !2451
  %.v455 = select i1 %2652, i64 18, i64 71
  %2663 = add i64 %370, %.v455
  store i64 %2663, i64* %PC, align 8, !tbaa !2428
  br i1 %2652, label %block_400cec, label %block_400d21

block_400d29:                                     ; preds = %block_400d21, %block_400d37
  %2664 = phi i64 [ %.pre415, %block_400d21 ], [ %859, %block_400d37 ]
  %2665 = load i64, i64* %RBP, align 8
  %2666 = add i64 %2665, -24
  %2667 = add i64 %2664, 4
  store i64 %2667, i64* %PC, align 8
  %2668 = inttoptr i64 %2666 to i64*
  %2669 = load i64, i64* %2668, align 8
  store i64 %2669, i64* %RAX, align 8, !tbaa !2428
  %2670 = add i64 %2665, -48
  %2671 = add i64 %2664, 8
  store i64 %2671, i64* %PC, align 8
  %2672 = inttoptr i64 %2670 to i64*
  %2673 = load i64, i64* %2672, align 8
  %2674 = sub i64 %2669, %2673
  %2675 = icmp ult i64 %2669, %2673
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %18, align 1, !tbaa !2434
  %2677 = trunc i64 %2674 to i32
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678) #10
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %25, align 1, !tbaa !2448
  %2683 = xor i64 %2673, %2669
  %2684 = xor i64 %2683, %2674
  %2685 = lshr i64 %2684, 4
  %2686 = trunc i64 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %30, align 1, !tbaa !2452
  %2688 = icmp eq i64 %2674, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %33, align 1, !tbaa !2449
  %2690 = lshr i64 %2674, 63
  %2691 = trunc i64 %2690 to i8
  store i8 %2691, i8* %36, align 1, !tbaa !2450
  %2692 = lshr i64 %2669, 63
  %2693 = lshr i64 %2673, 63
  %2694 = xor i64 %2693, %2692
  %2695 = xor i64 %2690, %2692
  %2696 = add nuw nsw i64 %2695, %2694
  %2697 = icmp eq i64 %2696, 2
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %42, align 1, !tbaa !2451
  %2699 = icmp ne i8 %2691, 0
  %2700 = xor i1 %2699, %2697
  %.demorgan443 = or i1 %2688, %2700
  %.v456 = select i1 %.demorgan443, i64 14, i64 46
  %2701 = add i64 %2664, %.v456
  store i64 %2701, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan443, label %block_400d37, label %block_400d57

block_400888:                                     ; preds = %block_40095d, %block_400850
  %2702 = phi i64 [ %.pre, %block_400850 ], [ %967, %block_40095d ]
  %MEMORY.28 = phi %struct.Memory* [ %2, %block_400850 ], [ %MEMORY.10, %block_40095d ]
  %2703 = load i64, i64* %RBP, align 8
  %2704 = add i64 %2703, -172
  %2705 = add i64 %2702, 6
  store i64 %2705, i64* %PC, align 8
  %2706 = inttoptr i64 %2704 to i32*
  %2707 = load i32, i32* %2706, align 4
  %2708 = zext i32 %2707 to i64
  store i64 %2708, i64* %RAX, align 8, !tbaa !2428
  %2709 = add i64 %2703, -8
  %2710 = add i64 %2702, 9
  store i64 %2710, i64* %PC, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = sub i32 %2707, %2712
  %2714 = icmp ult i32 %2707, %2712
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %18, align 1, !tbaa !2434
  %2716 = and i32 %2713, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716) #10
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %25, align 1, !tbaa !2448
  %2721 = xor i32 %2712, %2707
  %2722 = xor i32 %2721, %2713
  %2723 = lshr i32 %2722, 4
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  store i8 %2725, i8* %30, align 1, !tbaa !2452
  %2726 = icmp eq i32 %2713, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %33, align 1, !tbaa !2449
  %2728 = lshr i32 %2713, 31
  %2729 = trunc i32 %2728 to i8
  store i8 %2729, i8* %36, align 1, !tbaa !2450
  %2730 = lshr i32 %2707, 31
  %2731 = lshr i32 %2712, 31
  %2732 = xor i32 %2731, %2730
  %2733 = xor i32 %2728, %2730
  %2734 = add nuw nsw i32 %2733, %2732
  %2735 = icmp eq i32 %2734, 2
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %42, align 1, !tbaa !2451
  %2737 = icmp ne i8 %2729, 0
  %2738 = xor i1 %2737, %2735
  %.v = select i1 %2738, i64 15, i64 233
  %2739 = add i64 %2702, %.v
  store i64 %2739, i64* %PC, align 8, !tbaa !2428
  br i1 %2738, label %block_400897, label %block_400971

block_401387:                                     ; preds = %block_401379
  %2740 = add i64 %792, 1145
  %2741 = add i64 %792, 5
  %2742 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2743 = add i64 %2742, -8
  %2744 = inttoptr i64 %2743 to i64*
  store i64 %2741, i64* %2744, align 8
  store i64 %2743, i64* %RSP, align 8, !tbaa !2428
  store i64 %2740, i64* %PC, align 8, !tbaa !2428
  %2745 = tail call %struct.Memory* @sub_401800_P0(%struct.State* nonnull %0, i64 %2740, %struct.Memory* %MEMORY.24)
  %2746 = load i64, i64* %RBP, align 8
  %2747 = add i64 %2746, -24
  %2748 = load i64, i64* %PC, align 8
  %2749 = add i64 %2748, 4
  store i64 %2749, i64* %PC, align 8
  %2750 = inttoptr i64 %2747 to i64*
  %2751 = load i64, i64* %2750, align 8
  %2752 = add i64 %2751, 1
  store i64 %2752, i64* %RAX, align 8, !tbaa !2428
  %2753 = icmp eq i64 %2751, -1
  %2754 = icmp eq i64 %2752, 0
  %2755 = or i1 %2753, %2754
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %18, align 1, !tbaa !2434
  %2757 = trunc i64 %2752 to i32
  %2758 = and i32 %2757, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758) #10
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %25, align 1, !tbaa !2448
  %2763 = xor i64 %2752, %2751
  %2764 = lshr i64 %2763, 4
  %2765 = trunc i64 %2764 to i8
  %2766 = and i8 %2765, 1
  store i8 %2766, i8* %30, align 1, !tbaa !2452
  %2767 = zext i1 %2754 to i8
  store i8 %2767, i8* %33, align 1, !tbaa !2449
  %2768 = lshr i64 %2752, 63
  %2769 = trunc i64 %2768 to i8
  store i8 %2769, i8* %36, align 1, !tbaa !2450
  %2770 = lshr i64 %2751, 63
  %2771 = xor i64 %2768, %2770
  %2772 = add nuw nsw i64 %2771, %2768
  %2773 = icmp eq i64 %2772, 2
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %42, align 1, !tbaa !2451
  %2775 = add i64 %2748, 12
  store i64 %2775, i64* %PC, align 8
  store i64 %2752, i64* %2750, align 8
  %2776 = load i64, i64* %PC, align 8
  %2777 = add i64 %2776, -31
  store i64 %2777, i64* %PC, align 8, !tbaa !2428
  br label %block_401379

block_400e06:                                     ; preds = %block_400de8
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400e11

block_401484:                                     ; preds = %block_40140a
  %2778 = add i64 %2555, -176
  %2779 = add i64 %2591, 6
  store i64 %2779, i64* %PC, align 8
  %2780 = inttoptr i64 %2778 to i32*
  %2781 = load i32, i32* %2780, align 4
  %2782 = zext i32 %2781 to i64
  store i64 %2782, i64* %RAX, align 8, !tbaa !2428
  %2783 = add i64 %2555, -172
  %2784 = add i64 %2591, 12
  store i64 %2784, i64* %PC, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = sub i32 %2781, %2786
  %2788 = icmp ult i32 %2781, %2786
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %18, align 1, !tbaa !2434
  %2790 = and i32 %2787, 255
  %2791 = tail call i32 @llvm.ctpop.i32(i32 %2790) #10
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  store i8 %2794, i8* %25, align 1, !tbaa !2448
  %2795 = xor i32 %2786, %2781
  %2796 = xor i32 %2795, %2787
  %2797 = lshr i32 %2796, 4
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  store i8 %2799, i8* %30, align 1, !tbaa !2452
  %2800 = icmp eq i32 %2787, 0
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %33, align 1, !tbaa !2449
  %2802 = lshr i32 %2787, 31
  %2803 = trunc i32 %2802 to i8
  store i8 %2803, i8* %36, align 1, !tbaa !2450
  %2804 = lshr i32 %2781, 31
  %2805 = lshr i32 %2786, 31
  %2806 = xor i32 %2805, %2804
  %2807 = xor i32 %2802, %2804
  %2808 = add nuw nsw i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %42, align 1, !tbaa !2451
  %.v469 = select i1 %2800, i64 18, i64 66
  %2811 = add i64 %2591, %.v469
  store i64 %2811, i64* %PC, align 8, !tbaa !2428
  br i1 %2800, label %block_401496, label %block_4014c6
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400840_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400840;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400840_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400840_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400810___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400810___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400810___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4006e0_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4018e0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4018e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4018e0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4018e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401870___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401870___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401870___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602178___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400720_time(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602168_log(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4006c0_exp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_602140_sqrt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #13 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to double*
  %6 = load double, double* %5, align 8
  %7 = load i64, i64* %RSP, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %PC, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %RSP, align 8
  %11 = tail call double @sqrt(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_602138_sin(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #13 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to double*
  %6 = load double, double* %5, align 8
  %7 = load i64, i64* %RSP, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %PC, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %RSP, align 8
  %11 = tail call double @sin(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_400700_cos(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #13 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to double*
  %6 = load double, double* %5, align 8
  %7 = load i64, i64* %RSP, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %PC, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %RSP, align 8
  %11 = tail call double @cos(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6020f8_atan(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #13 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to double*
  %6 = load double, double* %5, align 8
  %7 = load i64, i64* %RSP, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %PC, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %RSP, align 8
  %11 = tail call double @atan(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8_strncmp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400710_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602190_atol(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400688;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400688__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4018e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4018e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @PA() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @PA_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401650_PA(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @P3() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @P3_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401780_P3(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @POUT() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @POUT_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015e0_POUT(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @P0() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401800;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @P0_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401800_P0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #10 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401870___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_4018e0___libc_csu_fini()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #14

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { norecurse nounwind }
attributes #13 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { argmemonly nounwind }

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
!2432 = !{!2433, !2433, i64 0}
!2433 = !{!"double", !2430, i64 0}
!2434 = !{!2435, !2430, i64 2065}
!2435 = !{!"_ZTS5State", !2430, i64 16, !2436, i64 2064, !2430, i64 2080, !2437, i64 2088, !2439, i64 2112, !2441, i64 2208, !2442, i64 2480, !2443, i64 2608, !2444, i64 2736, !2430, i64 2760, !2430, i64 2768, !2445, i64 3280}
!2436 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2437 = !{!"_ZTS8Segments", !2438, i64 0, !2430, i64 2, !2438, i64 4, !2430, i64 6, !2438, i64 8, !2430, i64 10, !2438, i64 12, !2430, i64 14, !2438, i64 16, !2430, i64 18, !2438, i64 20, !2430, i64 22}
!2438 = !{!"short", !2430, i64 0}
!2439 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88}
!2440 = !{!"_ZTS3Reg", !2430, i64 0}
!2441 = !{!"_ZTS3GPR", !2429, i64 0, !2440, i64 8, !2429, i64 16, !2440, i64 24, !2429, i64 32, !2440, i64 40, !2429, i64 48, !2440, i64 56, !2429, i64 64, !2440, i64 72, !2429, i64 80, !2440, i64 88, !2429, i64 96, !2440, i64 104, !2429, i64 112, !2440, i64 120, !2429, i64 128, !2440, i64 136, !2429, i64 144, !2440, i64 152, !2429, i64 160, !2440, i64 168, !2429, i64 176, !2440, i64 184, !2429, i64 192, !2440, i64 200, !2429, i64 208, !2440, i64 216, !2429, i64 224, !2440, i64 232, !2429, i64 240, !2440, i64 248, !2429, i64 256, !2440, i64 264}
!2442 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2443 = !{!"_ZTS3MMX", !2430, i64 0}
!2444 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2445 = !{!"_ZTS13SegmentCaches", !2446, i64 0, !2446, i64 16, !2446, i64 32, !2446, i64 48, !2446, i64 64, !2446, i64 80}
!2446 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2447, i64 8, !2447, i64 12}
!2447 = !{!"int", !2430, i64 0}
!2448 = !{!2435, !2430, i64 2067}
!2449 = !{!2435, !2430, i64 2071}
!2450 = !{!2435, !2430, i64 2073}
!2451 = !{!2435, !2430, i64 2077}
!2452 = !{!2435, !2430, i64 2069}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"ext_602140_sqrt: argument 0"}
!2456 = distinct !{!2456, !"ext_602140_sqrt"}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2456, !"ext_602140_sqrt: argument 1"}
!2459 = !{!2460, !2460, i64 0}
!2460 = !{!"float", !2430, i64 0}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2463, !"ext_602138_sin: argument 0"}
!2463 = distinct !{!2463, !"ext_602138_sin"}
!2464 = !{!2465}
!2465 = distinct !{!2465, !2463, !"ext_602138_sin: argument 1"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2468, !"ext_400700_cos: argument 0"}
!2468 = distinct !{!2468, !"ext_400700_cos"}
!2469 = !{!2470}
!2470 = distinct !{!2470, !2468, !"ext_400700_cos: argument 1"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2473, !"ext_400700_cos: argument 0"}
!2473 = distinct !{!2473, !"ext_400700_cos"}
!2474 = !{!2475}
!2475 = distinct !{!2475, !2473, !"ext_400700_cos: argument 1"}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2478, !"ext_400700_cos: argument 0"}
!2478 = distinct !{!2478, !"ext_400700_cos"}
!2479 = !{!2480}
!2480 = distinct !{!2480, !2478, !"ext_400700_cos: argument 1"}
!2481 = !{!2482}
!2482 = distinct !{!2482, !2483, !"ext_6020f8_atan: argument 0"}
!2483 = distinct !{!2483, !"ext_6020f8_atan"}
!2484 = !{!2485}
!2485 = distinct !{!2485, !2483, !"ext_6020f8_atan: argument 1"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2488, !"ext_602138_sin: argument 0"}
!2488 = distinct !{!2488, !"ext_602138_sin"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2488, !"ext_602138_sin: argument 1"}
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"ext_400700_cos: argument 0"}
!2493 = distinct !{!2493, !"ext_400700_cos"}
!2494 = !{!2495}
!2495 = distinct !{!2495, !2493, !"ext_400700_cos: argument 1"}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"ext_400700_cos: argument 0"}
!2498 = distinct !{!2498, !"ext_400700_cos"}
!2499 = !{!2500}
!2500 = distinct !{!2500, !2498, !"ext_400700_cos: argument 1"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"ext_400700_cos: argument 0"}
!2503 = distinct !{!2503, !"ext_400700_cos"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"ext_400700_cos: argument 1"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"ext_6020f8_atan: argument 0"}
!2508 = distinct !{!2508, !"ext_6020f8_atan"}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2508, !"ext_6020f8_atan: argument 1"}
