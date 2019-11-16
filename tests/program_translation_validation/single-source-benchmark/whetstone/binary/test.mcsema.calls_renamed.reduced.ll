; ModuleID = '/tmp/tmp6_1lg7fc-target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401900__rodata_type = type <{ [72 x i8], [3 x i8], [28 x i8], [44 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
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
@seg_401900__rodata = internal constant %seg_401900__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00@5^\BAI\0C\02\E0?\8FSt$\97\FF\DF?\00\00\00\00\00\00\F0\BF\00\00\00\00\00\00\F0?\00\00\00\00\00\00\E0?\00\00\00\00\00\00\08@\00\00\00\00\00\00\E8?", [3 x i8] c"-c\00", [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400850_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400820___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400850_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400820___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4018f0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401880___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @PA_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @P0_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @POUT_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @P3_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_401660_PA_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400698__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401810_P0_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401790_P3_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @log(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @time(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @atol(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exp(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64) #6

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4007a0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4007a0:
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401790_P3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401790:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4015f0_POUT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4015f0:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #14
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
  store i8 %24, i8* %25, align 1, !tbaa !2449
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2451
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2452
  store i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 103), i64* %RAX, align 8, !tbaa !2428
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
  %126 = tail call fastcc %struct.Memory* @ext_4006f0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #14
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %20, align 1, !tbaa !2448
  %144 = xor i64 %135, %133
  %145 = lshr i64 %144, 4
  %146 = trunc i64 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %25, align 1, !tbaa !2449
  %148 = icmp eq i64 %135, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %28, align 1, !tbaa !2450
  %150 = lshr i64 %135, 63
  %151 = trunc i64 %150 to i8
  store i8 %151, i8* %31, align 1, !tbaa !2451
  %152 = lshr i64 %133, 63
  %153 = xor i64 %150, %152
  %154 = add nuw nsw i64 %153, %150
  %155 = icmp eq i64 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %37, align 1, !tbaa !2452
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

; Function Attrs: noinline
define %struct.Memory* @sub_400820___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #9 {
block_400820:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2434
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2448
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2449
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2450
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2452
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400829, label %block_400840

block_400840:                                     ; preds = %block_400820
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

block_400829:                                     ; preds = %block_400820
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
  %36 = tail call %struct.Memory* @sub_4007b0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
block_4007b0:
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
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #14
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2448
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stderr to i64), i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2449
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2451
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2452
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_4007d8, label %block_4007c1

block_4007d8:                                     ; preds = %block_4007c1, %block_4007b0
  %20 = phi i64 [ %27, %block_4007c1 ], [ %19, %block_4007b0 ]
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

block_4007c1:                                     ; preds = %block_4007b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2434
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 1, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %17, align 1, !tbaa !2451
  store i8 0, i8* %18, align 1, !tbaa !2452
  store i8 0, i8* %15, align 1, !tbaa !2449
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_4007d8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4018f4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4018f4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #14
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2448
  store i8 %10, i8* %11, align 1, !tbaa !2449
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2450
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2451
  store i8 %19, i8* %20, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400698__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400698:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #14
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2448
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2450
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2451
  store i8 0, i8* %10, align 1, !tbaa !2452
  store i8 0, i8* %7, align 1, !tbaa !2449
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4006aa, label %block_4006a8

block_4006a8:                                     ; preds = %block_400698
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4006aa

block_4006aa:                                     ; preds = %block_4006a8, %block_400698
  %27 = phi i64 [ %22, %block_400698 ], [ %.pre1, %block_4006a8 ]
  %28 = phi i64 [ %4, %block_400698 ], [ %.pre, %block_4006a8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400698 ], [ %26, %block_4006a8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2434
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #14
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2448
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2449
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2450
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2451
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2452
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
define %struct.Memory* @sub_401660_PA(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401660:
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
  br label %block_401673

block_401786:                                     ; preds = %block_401673
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

block_401673:                                     ; preds = %block_401781, %block_401660
  %36 = phi i64 [ %232, %block_401781 ], [ %16, %block_401660 ]
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
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #14
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %22, align 1, !tbaa !2448
  %171 = icmp eq i64 %164, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %23, align 1, !tbaa !2450
  %173 = lshr i64 %164, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %24, align 1, !tbaa !2451
  store i8 0, i8* %25, align 1, !tbaa !2452
  store i8 0, i8* %26, align 1, !tbaa !2449
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
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #14
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %22, align 1, !tbaa !2448
  %217 = xor i32 %209, %206
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %26, align 1, !tbaa !2449
  %221 = icmp eq i32 %209, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %23, align 1, !tbaa !2450
  %223 = lshr i32 %209, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %24, align 1, !tbaa !2451
  %225 = xor i32 %223, %208
  %226 = add nuw nsw i32 %225, %208
  %227 = icmp eq i32 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %25, align 1, !tbaa !2452
  %229 = icmp ne i8 %224, 0
  %230 = xor i1 %229, %227
  %.v = select i1 %230, i64 31, i64 36
  %231 = add i64 %204, %.v
  store i64 %231, i64* %PC, align 8, !tbaa !2428
  br i1 %230, label %block_401781, label %block_401786

block_401781:                                     ; preds = %block_401673
  %232 = add i64 %231, -270
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br label %block_401673
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401810_P0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401810:
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

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
block_4007e0:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #14
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
  br i1 %29, label %block_400818, label %block_400803

block_400818:                                     ; preds = %block_400803, %block_4007e0
  %34 = phi i64 [ %44, %block_400803 ], [ %33, %block_4007e0 ]
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

block_400803:                                     ; preds = %block_4007e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2434
  store i8 1, i8* %12, align 1, !tbaa !2448
  store i8 1, i8* %14, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2451
  store i8 0, i8* %16, align 1, !tbaa !2452
  store i8 0, i8* %13, align 1, !tbaa !2449
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400818
}

; Function Attrs: noinline
define %struct.Memory* @sub_401880___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
block_401880:
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
  store i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #14
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
  %67 = tail call %struct.Memory* @sub_400698__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2434
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #14
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2448
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2450
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2452
  store i8 0, i8* %45, align 1, !tbaa !2449
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4018d6, label %block_4018b6

block_4018d6.loopexit:                            ; preds = %block_4018c0
  br label %block_4018d6

block_4018d6:                                     ; preds = %block_4018d6.loopexit, %block_401880
  %81 = phi i64 [ %80, %block_401880 ], [ %179, %block_4018d6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401880 ], [ %149, %block_4018d6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2434
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #14
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2448
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2449
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2450
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2451
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2452
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

block_4018b6:                                     ; preds = %block_401880
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2434
  store i8 1, i8* %44, align 1, !tbaa !2448
  store i8 1, i8* %46, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %48, align 1, !tbaa !2452
  store i8 0, i8* %45, align 1, !tbaa !2449
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4018c0

block_4018c0:                                     ; preds = %block_4018c0, %block_4018b6
  %134 = phi i64 [ 0, %block_4018b6 ], [ %152, %block_4018c0 ]
  %135 = phi i64 [ %133, %block_4018b6 ], [ %179, %block_4018c0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4018b6 ], [ %149, %block_4018c0 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #14
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2448
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2449
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2450
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2451
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2452
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4018d6.loopexit, label %block_4018c0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400860_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
block_400860:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%AL = bitcast %union.anon* %var_2_3 to i8*
%EAX = bitcast %union.anon* %var_2_3 to i32*
%var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI.i = bitcast %union.anon* %var_2_42 to i32*
; %EDI = bitcast %union.anon* %var_2_4 to i32*
%RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
%RDI = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
%var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
%var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
%var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP.i, align 8
; %var_2_9 = load i64, i64* %RBP, align 8
; Matched:%var_2_5:  %var_2_5 = add i64 %1, 1
; %var_2_10 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_3, align 8
; store i64 %var_2_10, i64* %PC, align 8
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %var_2_6, align 8
; %var_2_11 = load i64, i64* %RSP, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_12 = add i64 %var_2_11, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_13 = inttoptr i64 %var_2_12 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_9, align 8
; store i64 %var_2_9, i64* %var_2_13, align 8
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %var_2_3, align 8
; %var_2_14 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP.i, align 8
; store i64 %var_2_12, i64* %RBP, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -328
; %var_2_15 = add i64 %var_2_11, -328
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_6, align 8
; store i64 %var_2_15, i64* %RSP, align 8
; Matched:%var_2_12:  %var_2_12 = icmp ult i64 %var_2_8, 320
; %var_2_16 = icmp ult i64 %var_2_12, 320
; Matched:%var_2_13:  %var_2_13 = zext i1 %var_2_12 to i8
; %var_2_17 = zext i1 %var_2_16 to i8
%var_2_18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_13, i8* %var_2_14, align 1
; store i8 %var_2_17, i8* %var_2_18, align 1
; Matched:%var_2_15:  %var_2_15 = trunc i64 %var_2_11 to i32
; %var_2_19 = trunc i64 %var_2_15 to i32
; Matched:%var_2_16:  %var_2_16 = and i32 %var_2_15, 255
; %var_2_20 = and i32 %var_2_19, 255
; Matched:%var_2_17:  %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; %var_2_21 = tail call i32 @llvm.ctpop.i32(i32 %var_2_20) #14
; Matched:%var_2_18:  %var_2_18 = trunc i32 %var_2_17 to i8
; %var_2_22 = trunc i32 %var_2_21 to i8
; Matched:%var_2_19:  %var_2_19 = and i8 %var_2_18, 1
; %var_2_23 = and i8 %var_2_22, 1
; Matched:%var_2_20:  %var_2_20 = xor i8 %var_2_19, 1
; %var_2_24 = xor i8 %var_2_23, 1
%var_2_25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1
; store i8 %var_2_24, i8* %var_2_25, align 1
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_8, %var_2_11
; %var_2_26 = xor i64 %var_2_12, %var_2_15
; Matched:%var_2_23:  %var_2_23 = lshr i64 %var_2_22, 4
; %var_2_27 = lshr i64 %var_2_26, 4
; Matched:%var_2_24:  %var_2_24 = trunc i64 %var_2_23 to i8
; %var_2_28 = trunc i64 %var_2_27 to i8
; Matched:%var_2_25:  %var_2_25 = and i8 %var_2_24, 1
; %var_2_29 = and i8 %var_2_28, 1
%var_2_30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1
; store i8 %var_2_29, i8* %var_2_30, align 1
; Matched:%var_2_27:  %var_2_27 = icmp eq i64 %var_2_11, 0
; %var_2_31 = icmp eq i64 %var_2_15, 0
; Matched:%var_2_28:  %var_2_28 = zext i1 %var_2_27 to i8
; %var_2_32 = zext i1 %var_2_31 to i8
%var_2_33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1
; store i8 %var_2_32, i8* %var_2_33, align 1
; Matched:%var_2_30:  %var_2_30 = lshr i64 %var_2_11, 63
; %var_2_34 = lshr i64 %var_2_15, 63
; Matched:%var_2_31:  %var_2_31 = trunc i64 %var_2_30 to i8
; %var_2_35 = trunc i64 %var_2_34 to i8
%var_2_36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1
; store i8 %var_2_35, i8* %var_2_36, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_8, 63
; %var_2_37 = lshr i64 %var_2_12, 63
; Matched:%var_2_34:  %var_2_34 = xor i64 %var_2_30, %var_2_33
; %var_2_38 = xor i64 %var_2_34, %var_2_37
; Matched:%var_2_35:  %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; %var_2_39 = add nuw nsw i64 %var_2_38, %var_2_37
; Matched:%var_2_36:  %var_2_36 = icmp eq i64 %var_2_35, 2
; %var_2_40 = icmp eq i64 %var_2_39, 2
; Matched:%var_2_37:  %var_2_37 = zext i1 %var_2_36 to i8
; %var_2_41 = zext i1 %var_2_40 to i8
%var_2_42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1
; store i8 %var_2_41, i8* %var_2_42, align 1
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_7, -12
; %var_2_43 = add i64 %var_2_11, -12
; Matched:%var_2_2727:  %var_2_2727 = add i64 %var_2_2723, 17
; %var_2_44 = add i64 %var_2_14, 17
; Matched:\<badref\>:  store i64 %var_2_2727, i64* %var_2_3, align 8
; store i64 %var_2_44, i64* %PC, align 8
; Matched:%var_2_41:  %var_2_41 = inttoptr i64 %var_2_39 to i32*
; %var_2_45 = inttoptr i64 %var_2_43 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_41, align 4
; store i32 0, i32* %var_2_45, align 4
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RBP.i, align 8
; %var_2_46 = load i64, i64* %RBP, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_43, -8
; %var_2_47 = add i64 %var_2_46, -8
; Matched:%var_2_45:  %var_2_45 = load i32, i32* %EDI.i, align 4
; %var_2_48 = load i32, i32* %EDI, align 4
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %var_2_3, align 8
; %var_2_49 = load i64, i64* %PC, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, 3
; %var_2_50 = add i64 %var_2_49, 3
; Matched:\<badref\>:  store i64 %var_2_47, i64* %var_2_3, align 8
; store i64 %var_2_50, i64* %PC, align 8
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_44 to i32*
; %var_2_51 = inttoptr i64 %var_2_47 to i32*
; Matched:\<badref\>:  store i32 %var_2_45, i32* %var_2_48, align 4
; store i32 %var_2_48, i32* %var_2_51, align 4
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %RBP.i, align 8
; %var_2_52 = load i64, i64* %RBP, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -16
; %var_2_53 = add i64 %var_2_52, -16
; Matched:%var_2_51:  %var_2_51 = load i64, i64* %RSI.i1110, align 8
; %var_2_54 = load i64, i64* %RSI, align 8
%var_2_55 = load i64, i64* %PC, align 8
; Matched:%var_2_1925:  %var_2_1925 = add i64 %var_2_1924, 4
; %var_2_56 = add i64 %var_2_55, 4
; Matched:\<badref\>:  store i64 %var_2_1925, i64* %var_2_3, align 8
; store i64 %var_2_56, i64* %PC, align 8
; Matched:%var_2_54:  %var_2_54 = inttoptr i64 %var_2_50 to i64*
; %var_2_57 = inttoptr i64 %var_2_53 to i64*
; Matched:\<badref\>:  store i64 %var_2_51, i64* %var_2_54, align 8
; store i64 %var_2_54, i64* %var_2_57, align 8
%var_2_58 = load i64, i64* %RBP, align 8
%var_2_59 = add i64 %var_2_58, -184
%var_2_60 = load i64, i64* %PC, align 8
; Matched:%var_2_1644:  %var_2_1644 = add i64 %var_2_1635, 11
; %var_2_61 = add i64 %var_2_60, 11
; Matched:\<badref\>:  store i64 %var_2_536, i64* %var_2_3, align 8
; store i64 %var_2_61, i64* %PC, align 8
%var_2_62 = inttoptr i64 %var_2_59 to i64*
store i64 100000, i64* %var_2_62, align 8
%var_2_63 = load i64, i64* %RBP, align 8
; Matched:%var_2_182:  %var_2_182 = add i64 %.pre129, -208
; %var_2_64 = add i64 %var_2_63, -208
%var_2_65 = load i64, i64* %PC, align 8
; Matched:%var_2_390:  %var_2_390 = add i64 %var_2_389, 10
; %var_2_66 = add i64 %var_2_65, 10
; Matched:\<badref\>:  store i64 %var_2_714, i64* %var_2_3, align 8
; store i64 %var_2_66, i64* %PC, align 8
; Matched:%var_2_64:  %var_2_64 = inttoptr i64 %var_2_61 to i32*
; %var_2_67 = inttoptr i64 %var_2_64 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_64, align 4
; store i32 0, i32* %var_2_67, align 4
%var_2_68 = load i64, i64* %RBP, align 8
%var_2_69 = add i64 %var_2_68, -172
%var_2_70 = load i64, i64* %PC, align 8
; Matched:%var_2_740:  %var_2_740 = add i64 %var_2_735, 10
; %var_2_71 = add i64 %var_2_70, 10
; Matched:\<badref\>:  store i64 %var_2_68, i64* %var_2_3, align 8
; store i64 %var_2_71, i64* %PC, align 8
%var_2_72 = inttoptr i64 %var_2_69 to i32*
store i32 1, i32* %var_2_72, align 4
; Matched:  %.pre = load i64, i64* %var_2_3, align 8
; %.pre = load i64, i64* %PC, align 8
  br label %block_400898

block_400bea:                                     ; preds = %block_400bdc
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
%var_2_73 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
%var_2_74 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
%var_2_75 = fadd double %var_2_73, %var_2_74
%var_2_76 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
%var_2_77 = fadd double %var_2_75, %var_2_76
%var_2_78 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
%var_2_79 = fsub double %var_2_77, %var_2_78
%var_2_80 = load double, double* bitcast (%T_type* @T to double*), align 8
%var_2_81 = fmul double %var_2_79, %var_2_80
store double %var_2_81, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
%var_2_82 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
%var_2_83 = fadd double %var_2_81, %var_2_82
%var_2_84 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
%var_2_85 = fsub double %var_2_83, %var_2_84
%var_2_86 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
%var_2_87 = fadd double %var_2_85, %var_2_86
%var_2_88 = load double, double* bitcast (%T_type* @T to double*), align 8
%var_2_89 = fmul double %var_2_87, %var_2_88
; Matched:\<badref\>:  store double %var_2_952, double* bitcast (%G_0x6020d0_type* @G_0x6020d0 to double*), align 8
; store double %var_2_89, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
%var_2_90 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to double*), align 8
%var_2_91 = fsub double %var_2_90, %var_2_89
%var_2_92 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
%var_2_93 = fadd double %var_2_91, %var_2_92
%var_2_94 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
%var_2_95 = fadd double %var_2_93, %var_2_94
%var_2_96 = load double, double* bitcast (%T_type* @T to double*), align 8
%var_2_97 = fmul double %var_2_95, %var_2_96
store double %var_2_97, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to double*), align 8
%var_2_98 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
%var_2_99 = load i64, i64* %RAX, align 8
%var_2_100 = xor i64 %var_2_99, %var_2_98
; Matched:\<badref\>:  store i64 %var_2_766, i64* %RCX.i1209, align 8
; store i64 %var_2_100, i64* %RCX, align 8
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_767:  %var_2_767 = trunc i64 %var_2_766 to i32
; %var_2_101 = trunc i64 %var_2_100 to i32
; Matched:%var_2_768:  %var_2_768 = and i32 %var_2_767, 255
; %var_2_102 = and i32 %var_2_101, 255
; Matched:%var_2_769:  %var_2_769 = tail call i32 @llvm.ctpop.i32(i32 %var_2_768)
; %var_2_103 = tail call i32 @llvm.ctpop.i32(i32 %var_2_102) #14
; Matched:%var_2_770:  %var_2_770 = trunc i32 %var_2_769 to i8
; %var_2_104 = trunc i32 %var_2_103 to i8
; Matched:%var_2_771:  %var_2_771 = and i8 %var_2_770, 1
; %var_2_105 = and i8 %var_2_104, 1
; Matched:%var_2_772:  %var_2_772 = xor i8 %var_2_771, 1
; %var_2_106 = xor i8 %var_2_105, 1
; Matched:\<badref\>:  store i8 %var_2_772, i8* %var_2_21, align 1
; store i8 %var_2_106, i8* %var_2_25, align 1
; Matched:%var_2_773:  %var_2_773 = icmp eq i64 %var_2_766, 0
; %var_2_107 = icmp eq i64 %var_2_100, 0
; Matched:%var_2_774:  %var_2_774 = zext i1 %var_2_773 to i8
; %var_2_108 = zext i1 %var_2_107 to i8
; Matched:\<badref\>:  store i8 %var_2_774, i8* %var_2_29, align 1
; store i8 %var_2_108, i8* %var_2_33, align 1
; Matched:%var_2_775:  %var_2_775 = lshr i64 %var_2_766, 63
; %var_2_109 = lshr i64 %var_2_100, 63
; Matched:%var_2_776:  %var_2_776 = trunc i64 %var_2_775 to i8
; %var_2_110 = trunc i64 %var_2_109 to i8
; Matched:\<badref\>:  store i8 %var_2_776, i8* %var_2_32, align 1
; store i8 %var_2_110, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
store i8 0, i8* %var_2_30, align 1
%.cast308 = bitcast i64 %var_2_100 to double
%var_2_111 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to double*), align 16
%var_2_112 = fadd double %.cast308, %var_2_111
%var_2_113 = fadd double %var_2_112, %var_2_97
%var_2_114 = load double, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
%var_2_115 = fadd double %var_2_113, %var_2_114
%var_2_116 = load double, double* bitcast (%T_type* @T to double*), align 8
%var_2_117 = fmul double %var_2_115, %var_2_116
store double %var_2_117, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
store double %var_2_117, double* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to double*), align 16
%var_2_118 = load i64, i64* %RBP, align 8
%var_2_119 = add i64 %var_2_118, -24
; Matched:%var_2_977:  %var_2_977 = add i64 %var_2_939, 243
; %var_2_120 = add i64 %var_2_652, 243
; Matched:\<badref\>:  store i64 %var_2_977, i64* %var_2_3, align 8
; store i64 %var_2_120, i64* %PC, align 8
%var_2_121 = inttoptr i64 %var_2_119 to i64*
; Matched:%var_2_801:  %var_2_801 = load i64, i64* %var_2_800, align 8
; %var_2_122 = load i64, i64* %var_2_121, align 8
; Matched:%var_2_1928:  %var_2_1928 = add i64 %var_2_1927, 1
; %var_2_123 = add i64 %var_2_122, 1
; Matched:\<badref\>:  store i64 %var_2_1928, i64* %RAX.i1199, align 8
; store i64 %var_2_123, i64* %RAX, align 8
; Matched:%var_2_803:  %var_2_803 = icmp eq i64 %var_2_801, -1
; %var_2_124 = icmp eq i64 %var_2_122, -1
; Matched:%var_2_2097:  %var_2_2097 = icmp eq i64 %var_2_2095, 0
; %var_2_125 = icmp eq i64 %var_2_123, 0
; Matched:%var_2_1114:  %var_2_1114 = or i1 %var_2_1112, %var_2_1113
; %var_2_126 = or i1 %var_2_124, %var_2_125
; Matched:%var_2_2099:  %var_2_2099 = zext i1 %var_2_2098 to i8
; %var_2_127 = zext i1 %var_2_126 to i8
; Matched:\<badref\>:  store i8 %var_2_2099, i8* %var_2_14, align 1
; store i8 %var_2_127, i8* %var_2_18, align 1
; Matched:%var_2_1116:  %var_2_1116 = trunc i64 %var_2_1111 to i32
; %var_2_128 = trunc i64 %var_2_123 to i32
; Matched:%var_2_1117:  %var_2_1117 = and i32 %var_2_1116, 255
; %var_2_129 = and i32 %var_2_128, 255
; Matched:%var_2_1294:  %var_2_1294 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1293)
; %var_2_130 = tail call i32 @llvm.ctpop.i32(i32 %var_2_129) #14
; Matched:%var_2_1498:  %var_2_1498 = trunc i32 %var_2_1497 to i8
; %var_2_131 = trunc i32 %var_2_130 to i8
; Matched:%var_2_1296:  %var_2_1296 = and i8 %var_2_1295, 1
; %var_2_132 = and i8 %var_2_131, 1
; Matched:%var_2_1121:  %var_2_1121 = xor i8 %var_2_1120, 1
; %var_2_133 = xor i8 %var_2_132, 1
; Matched:\<badref\>:  store i8 %var_2_1121, i8* %var_2_21, align 1
; store i8 %var_2_133, i8* %var_2_25, align 1
; Matched:%var_2_2106:  %var_2_2106 = xor i64 %var_2_2095, %var_2_2094
; %var_2_134 = xor i64 %var_2_123, %var_2_122
; Matched:%var_2_2107:  %var_2_2107 = lshr i64 %var_2_2106, 4
; %var_2_135 = lshr i64 %var_2_134, 4
; Matched:%var_2_1124:  %var_2_1124 = trunc i64 %var_2_1123 to i8
; %var_2_136 = trunc i64 %var_2_135 to i8
; Matched:%var_2_1125:  %var_2_1125 = and i8 %var_2_1124, 1
; %var_2_137 = and i8 %var_2_136, 1
; Matched:\<badref\>:  store i8 %var_2_1125, i8* %var_2_26, align 1
; store i8 %var_2_137, i8* %var_2_30, align 1
; Matched:%var_2_1126:  %var_2_1126 = zext i1 %var_2_1113 to i8
; %var_2_138 = zext i1 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_1126, i8* %var_2_29, align 1
; store i8 %var_2_138, i8* %var_2_33, align 1
; Matched:%var_2_2111:  %var_2_2111 = lshr i64 %var_2_2095, 63
; %var_2_139 = lshr i64 %var_2_123, 63
; Matched:%var_2_2112:  %var_2_2112 = trunc i64 %var_2_2111 to i8
; %var_2_140 = trunc i64 %var_2_139 to i8
; Matched:\<badref\>:  store i8 %var_2_2112, i8* %var_2_32, align 1
; store i8 %var_2_140, i8* %var_2_36, align 1
; Matched:%var_2_2113:  %var_2_2113 = lshr i64 %var_2_2094, 63
; %var_2_141 = lshr i64 %var_2_122, 63
; Matched:%var_2_821:  %var_2_821 = xor i64 %var_2_818, %var_2_820
; %var_2_142 = xor i64 %var_2_139, %var_2_141
; Matched:%var_2_1948:  %var_2_1948 = add nuw nsw i64 %var_2_1947, %var_2_1944
; %var_2_143 = add nuw nsw i64 %var_2_142, %var_2_139
; Matched:%var_2_1949:  %var_2_1949 = icmp eq i64 %var_2_1948, 2
; %var_2_144 = icmp eq i64 %var_2_143, 2
; Matched:%var_2_824:  %var_2_824 = zext i1 %var_2_823 to i8
; %var_2_145 = zext i1 %var_2_144 to i8
; Matched:\<badref\>:  store i8 %var_2_824, i8* %var_2_38, align 1
; store i8 %var_2_145, i8* %var_2_42, align 1
; Matched:%var_2_1003:  %var_2_1003 = add i64 %var_2_939, 251
; %var_2_146 = add i64 %var_2_652, 251
; Matched:\<badref\>:  store i64 %var_2_1003, i64* %var_2_3, align 8
; store i64 %var_2_146, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_1928, i64* %var_2_1926, align 8
; store i64 %var_2_123, i64* %var_2_121, align 8
%var_2_147 = load i64, i64* %PC, align 8
%var_2_148 = add i64 %var_2_147, -265
; Matched:\<badref\>:  store i64 %var_2_1005, i64* %var_2_3, align 8
; store i64 %var_2_148, i64* %PC, align 8
  br label %block_400bdc

block_400d79:                                     ; preds = %block_400d67
; Matched:%var_2_1171:  %var_2_1171 = add i64 %var_2_1170, 4
; %var_2_149 = add i64 %var_2_614, 4
; Matched:\<badref\>:  store i64 %var_2_1171, i64* %var_2_3, align 8
; store i64 %var_2_149, i64* %PC, align 8
; Matched:%var_2_1172:  %var_2_1172 = load i64, i64* %var_2_1070, align 8
; %var_2_150 = load i64, i64* %var_2_1765, align 8
; Matched:\<badref\>:  store i64 %var_2_1172, i64* %RDI.i1206, align 8
; store i64 %var_2_150, i64* %RDI, align 8
; Matched:%var_2_1173:  %var_2_1173 = add i64 %var_2_1063, -40
; %var_2_151 = add i64 %var_2_1758, -40
; Matched:%var_2_1174:  %var_2_1174 = add i64 %var_2_1170, 8
; %var_2_152 = add i64 %var_2_614, 8
; Matched:\<badref\>:  store i64 %var_2_1174, i64* %var_2_3, align 8
; store i64 %var_2_152, i64* %PC, align 8
; Matched:%var_2_1175:  %var_2_1175 = inttoptr i64 %var_2_1173 to i64*
; %var_2_153 = inttoptr i64 %var_2_151 to i64*
; Matched:%var_2_1176:  %var_2_1176 = load i64, i64* %var_2_1175, align 8
; %var_2_154 = load i64, i64* %var_2_153, align 8
; Matched:\<badref\>:  store i64 %var_2_1176, i64* %RSI.i1110, align 8
; store i64 %var_2_154, i64* %RSI, align 8
; Matched:%var_2_1177:  %var_2_1177 = add i64 %var_2_1170, 12
; %var_2_155 = add i64 %var_2_614, 12
; Matched:\<badref\>:  store i64 %var_2_1177, i64* %var_2_3, align 8
; store i64 %var_2_155, i64* %PC, align 8
; Matched:%var_2_1178:  %var_2_1178 = load i64, i64* %var_2_1175, align 8
; %var_2_156 = load i64, i64* %var_2_153, align 8
; Matched:\<badref\>:  store i64 %var_2_1047, i64* %RDX.i596, align 8
; store i64 %var_2_156, i64* %RDX, align 8
%var_2_157 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_157, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_158 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_158, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_159 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
store i64 %var_2_159, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_160 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
store i64 %var_2_160, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_161 = add i64 %var_2_614, 2167
; Matched:%var_2_1184:  %var_2_1184 = add i64 %var_2_1170, 53
; %var_2_162 = add i64 %var_2_614, 53
%var_2_163 = load i64, i64* %RSP, align 8
%var_2_164 = add i64 %var_2_163, -8
; Matched:%var_2_1187:  %var_2_1187 = inttoptr i64 %var_2_1186 to i64*
; %var_2_165 = inttoptr i64 %var_2_164 to i64*
; Matched:\<badref\>:  store i64 %var_2_1184, i64* %var_2_1187, align 8
; store i64 %var_2_162, i64* %var_2_165, align 8
; Matched:\<badref\>:  store i64 %var_2_1103, i64* %var_2_6, align 8
; store i64 %var_2_164, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1183, i64* %var_2_3, align 8
; store i64 %var_2_161, i64* %PC, align 8
%var_2_166 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_161, %struct.Memory* %MEMORY.10)
; Matched:  %.pre105 = load i64, i64* %var_2_3, align 8
; %.pre416 = load i64, i64* %PC, align 8
  %.pre417 = load i64, i64* %RBP, align 8
  br label %block_400dae

block_400df8:                                     ; preds = %block_400ddd, %block_400ded
%var_2_167 = phi i32 [ 0, %block_400ddd ], [ 1, %block_400ded ]
%var_2_168 = phi i64 [ %var_2_580, %block_400ddd ], [ %var_2_1256, %block_400ded ]
store i8 0, i8* %var_2_18, align 1
%var_2_169 = tail call i32 @llvm.ctpop.i32(i32 %var_2_167) #14
%var_2_170 = trunc i32 %var_2_169 to i8
%var_2_171 = xor i8 %var_2_170, 1
store i8 %var_2_171, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
%var_2_172 = icmp eq i32 %var_2_167, 0
%var_2_173 = trunc i32 %var_2_167 to i8
%var_2_174 = xor i8 %var_2_173, 1
store i8 %var_2_174, i8* %var_2_33, align 1
store i8 0, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
%.v474 = select i1 %var_2_172, i64 30, i64 14
%var_2_175 = add i64 %var_2_168, %.v474
%var_2_176 = add i64 %var_2_175, 11
store i64 %var_2_176, i64* %PC, align 8
br i1 %var_2_172, label %block_400e16, label %block_400e06

block_40096d:                                     ; preds = %block_40091d, %block_4008f0
%var_2_177 = phi i64 [ %var_2_1683, %block_40091d ], [ %.pre441, %block_4008f0 ]
  %.sink9 = phi i64 [ 5, %block_40091d ], [ 115, %block_4008f0 ]
%MEMORY.1 = phi %struct.Memory* [ %var_2_1675, %block_40091d ], [ %var_2_927, %block_4008f0 ]
%var_2_178 = add i64 %var_2_177, %.sink9
; Matched:%var_2_267:  %var_2_267 = load i64, i64* %RBP.i, align 8
; %var_2_179 = load i64, i64* %RBP, align 8
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, -172
; %var_2_180 = add i64 %var_2_179, -172
%var_2_181 = add i64 %var_2_178, 6
store i64 %var_2_181, i64* %PC, align 8
; Matched:%var_2_270:  %var_2_270 = inttoptr i64 %var_2_268 to i32*
; %var_2_182 = inttoptr i64 %var_2_180 to i32*
; Matched:%var_2_271:  %var_2_271 = load i32, i32* %var_2_270, align 4
; %var_2_183 = load i32, i32* %var_2_182, align 4
; Matched:%var_2_272:  %var_2_272 = add i32 %var_2_271, 1
; %var_2_184 = add i32 %var_2_183, 1
; Matched:%var_2_273:  %var_2_273 = zext i32 %var_2_272 to i64
; %var_2_185 = zext i32 %var_2_184 to i64
; Matched:\<badref\>:  store i64 %var_2_273, i64* %RAX.i1199, align 8
; store i64 %var_2_185, i64* %RAX, align 8
; Matched:%var_2_274:  %var_2_274 = icmp eq i32 %var_2_271, -1
; %var_2_186 = icmp eq i32 %var_2_183, -1
; Matched:%var_2_275:  %var_2_275 = icmp eq i32 %var_2_272, 0
; %var_2_187 = icmp eq i32 %var_2_184, 0
; Matched:%var_2_276:  %var_2_276 = or i1 %var_2_274, %var_2_275
; %var_2_188 = or i1 %var_2_186, %var_2_187
; Matched:%var_2_277:  %var_2_277 = zext i1 %var_2_276 to i8
; %var_2_189 = zext i1 %var_2_188 to i8
; Matched:\<badref\>:  store i8 %var_2_277, i8* %var_2_14, align 1
; store i8 %var_2_189, i8* %var_2_18, align 1
; Matched:%var_2_278:  %var_2_278 = and i32 %var_2_272, 255
; %var_2_190 = and i32 %var_2_184, 255
; Matched:%var_2_279:  %var_2_279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_278)
; %var_2_191 = tail call i32 @llvm.ctpop.i32(i32 %var_2_190) #14
; Matched:%var_2_280:  %var_2_280 = trunc i32 %var_2_279 to i8
; %var_2_192 = trunc i32 %var_2_191 to i8
; Matched:%var_2_281:  %var_2_281 = and i8 %var_2_280, 1
; %var_2_193 = and i8 %var_2_192, 1
; Matched:%var_2_282:  %var_2_282 = xor i8 %var_2_281, 1
; %var_2_194 = xor i8 %var_2_193, 1
; Matched:\<badref\>:  store i8 %var_2_282, i8* %var_2_21, align 1
; store i8 %var_2_194, i8* %var_2_25, align 1
; Matched:%var_2_283:  %var_2_283 = xor i32 %var_2_272, %var_2_271
; %var_2_195 = xor i32 %var_2_184, %var_2_183
; Matched:%var_2_284:  %var_2_284 = lshr i32 %var_2_283, 4
; %var_2_196 = lshr i32 %var_2_195, 4
; Matched:%var_2_285:  %var_2_285 = trunc i32 %var_2_284 to i8
; %var_2_197 = trunc i32 %var_2_196 to i8
; Matched:%var_2_286:  %var_2_286 = and i8 %var_2_285, 1
; %var_2_198 = and i8 %var_2_197, 1
; Matched:\<badref\>:  store i8 %var_2_286, i8* %var_2_26, align 1
; store i8 %var_2_198, i8* %var_2_30, align 1
; Matched:%var_2_287:  %var_2_287 = zext i1 %var_2_275 to i8
; %var_2_199 = zext i1 %var_2_187 to i8
; Matched:\<badref\>:  store i8 %var_2_287, i8* %var_2_29, align 1
; store i8 %var_2_199, i8* %var_2_33, align 1
; Matched:%var_2_288:  %var_2_288 = lshr i32 %var_2_272, 31
; %var_2_200 = lshr i32 %var_2_184, 31
; Matched:%var_2_289:  %var_2_289 = trunc i32 %var_2_288 to i8
; %var_2_201 = trunc i32 %var_2_200 to i8
; Matched:\<badref\>:  store i8 %var_2_289, i8* %var_2_32, align 1
; store i8 %var_2_201, i8* %var_2_36, align 1
; Matched:%var_2_290:  %var_2_290 = lshr i32 %var_2_271, 31
; %var_2_202 = lshr i32 %var_2_183, 31
; Matched:%var_2_291:  %var_2_291 = xor i32 %var_2_288, %var_2_290
; %var_2_203 = xor i32 %var_2_200, %var_2_202
; Matched:%var_2_292:  %var_2_292 = add nuw nsw i32 %var_2_291, %var_2_288
; %var_2_204 = add nuw nsw i32 %var_2_203, %var_2_200
; Matched:%var_2_293:  %var_2_293 = icmp eq i32 %var_2_292, 2
; %var_2_205 = icmp eq i32 %var_2_204, 2
; Matched:%var_2_294:  %var_2_294 = zext i1 %var_2_293 to i8
; %var_2_206 = zext i1 %var_2_205 to i8
; Matched:\<badref\>:  store i8 %var_2_294, i8* %var_2_38, align 1
; store i8 %var_2_206, i8* %var_2_42, align 1
%var_2_207 = add i64 %var_2_178, 15
store i64 %var_2_207, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_272, i32* %var_2_270, align 4
; store i32 %var_2_184, i32* %var_2_182, align 4
; Matched:%var_2_296:  %var_2_296 = load i64, i64* %var_2_3, align 8
; %var_2_208 = load i64, i64* %PC, align 8
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_296, -228
; %var_2_209 = add i64 %var_2_208, -228
; Matched:\<badref\>:  store i64 %var_2_297, i64* %var_2_3, align 8
; store i64 %var_2_209, i64* %PC, align 8
  br label %block_400898

block_4015e0:                                     ; preds = %block_4015d9, %block_40093d
; Matched:%var_2_2766:  %var_2_2766 = phi i64 [ %.pre128, %block_.L_4015d9 ], [ %var_2_266, %block_.L_40093d ]
; %var_2_210 = phi i64 [ %.pre439, %block_4015d9 ], [ %var_2_1055, %block_40093d ]
%MEMORY.2 = phi %struct.Memory* [ %var_2_699, %block_4015d9 ], [ %var_2_1042, %block_40093d ]
; Matched:%var_2_2767:  %var_2_2767 = load i64, i64* %RBP.i, align 8
; %var_2_211 = load i64, i64* %RBP, align 8
; Matched:%var_2_2768:  %var_2_2768 = add i64 %var_2_2767, -4
; %var_2_212 = add i64 %var_2_211, -4
; Matched:%var_2_2769:  %var_2_2769 = add i64 %var_2_2766, 3
; %var_2_213 = add i64 %var_2_210, 3
; Matched:\<badref\>:  store i64 %var_2_2769, i64* %var_2_3, align 8
; store i64 %var_2_213, i64* %PC, align 8
; Matched:%var_2_2770:  %var_2_2770 = inttoptr i64 %var_2_2768 to i32*
; %var_2_214 = inttoptr i64 %var_2_212 to i32*
; Matched:%var_2_2771:  %var_2_2771 = load i32, i32* %var_2_2770, align 4
; %var_2_215 = load i32, i32* %var_2_214, align 4
; Matched:%var_2_2772:  %var_2_2772 = zext i32 %var_2_2771 to i64
; %var_2_216 = zext i32 %var_2_215 to i64
; Matched:\<badref\>:  store i64 %var_2_2772, i64* %RAX.i1199, align 8
; store i64 %var_2_216, i64* %RAX, align 8
; Matched:%var_2_2773:  %var_2_2773 = load i64, i64* %var_2_6, align 8
; %var_2_217 = load i64, i64* %RSP, align 8
; Matched:%var_2_2774:  %var_2_2774 = add i64 %var_2_2773, 320
; %var_2_218 = add i64 %var_2_217, 320
; Matched:\<badref\>:  store i64 %var_2_2774, i64* %var_2_6, align 8
; store i64 %var_2_218, i64* %RSP, align 8
; Matched:%var_2_2775:  %var_2_2775 = icmp ugt i64 %var_2_2773, -321
; %var_2_219 = icmp ugt i64 %var_2_217, -321
; Matched:%var_2_2776:  %var_2_2776 = zext i1 %var_2_2775 to i8
; %var_2_220 = zext i1 %var_2_219 to i8
; Matched:\<badref\>:  store i8 %var_2_2776, i8* %var_2_14, align 1
; store i8 %var_2_220, i8* %var_2_18, align 1
; Matched:%var_2_2777:  %var_2_2777 = trunc i64 %var_2_2774 to i32
; %var_2_221 = trunc i64 %var_2_218 to i32
; Matched:%var_2_2778:  %var_2_2778 = and i32 %var_2_2777, 255
; %var_2_222 = and i32 %var_2_221, 255
; Matched:%var_2_2779:  %var_2_2779 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2778)
; %var_2_223 = tail call i32 @llvm.ctpop.i32(i32 %var_2_222) #14
; Matched:%var_2_2780:  %var_2_2780 = trunc i32 %var_2_2779 to i8
; %var_2_224 = trunc i32 %var_2_223 to i8
; Matched:%var_2_2781:  %var_2_2781 = and i8 %var_2_2780, 1
; %var_2_225 = and i8 %var_2_224, 1
; Matched:%var_2_2782:  %var_2_2782 = xor i8 %var_2_2781, 1
; %var_2_226 = xor i8 %var_2_225, 1
; Matched:\<badref\>:  store i8 %var_2_2782, i8* %var_2_21, align 1
; store i8 %var_2_226, i8* %var_2_25, align 1
; Matched:%var_2_2783:  %var_2_2783 = xor i64 %var_2_2774, %var_2_2773
; %var_2_227 = xor i64 %var_2_218, %var_2_217
; Matched:%var_2_2784:  %var_2_2784 = lshr i64 %var_2_2783, 4
; %var_2_228 = lshr i64 %var_2_227, 4
; Matched:%var_2_2785:  %var_2_2785 = trunc i64 %var_2_2784 to i8
; %var_2_229 = trunc i64 %var_2_228 to i8
; Matched:%var_2_2786:  %var_2_2786 = and i8 %var_2_2785, 1
; %var_2_230 = and i8 %var_2_229, 1
; Matched:\<badref\>:  store i8 %var_2_2786, i8* %var_2_26, align 1
; store i8 %var_2_230, i8* %var_2_30, align 1
; Matched:%var_2_2787:  %var_2_2787 = icmp eq i64 %var_2_2774, 0
; %var_2_231 = icmp eq i64 %var_2_218, 0
; Matched:%var_2_2788:  %var_2_2788 = zext i1 %var_2_2787 to i8
; %var_2_232 = zext i1 %var_2_231 to i8
; Matched:\<badref\>:  store i8 %var_2_2788, i8* %var_2_29, align 1
; store i8 %var_2_232, i8* %var_2_33, align 1
; Matched:%var_2_2789:  %var_2_2789 = lshr i64 %var_2_2774, 63
; %var_2_233 = lshr i64 %var_2_218, 63
; Matched:%var_2_2790:  %var_2_2790 = trunc i64 %var_2_2789 to i8
; %var_2_234 = trunc i64 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_2790, i8* %var_2_32, align 1
; store i8 %var_2_234, i8* %var_2_36, align 1
; Matched:%var_2_2791:  %var_2_2791 = lshr i64 %var_2_2773, 63
; %var_2_235 = lshr i64 %var_2_217, 63
; Matched:%var_2_2792:  %var_2_2792 = xor i64 %var_2_2789, %var_2_2791
; %var_2_236 = xor i64 %var_2_233, %var_2_235
; Matched:%var_2_2793:  %var_2_2793 = add nuw nsw i64 %var_2_2792, %var_2_2789
; %var_2_237 = add nuw nsw i64 %var_2_236, %var_2_233
; Matched:%var_2_2794:  %var_2_2794 = icmp eq i64 %var_2_2793, 2
; %var_2_238 = icmp eq i64 %var_2_237, 2
; Matched:%var_2_2795:  %var_2_2795 = zext i1 %var_2_2794 to i8
; %var_2_239 = zext i1 %var_2_238 to i8
; Matched:\<badref\>:  store i8 %var_2_2795, i8* %var_2_38, align 1
; store i8 %var_2_239, i8* %var_2_42, align 1
; Matched:%var_2_2796:  %var_2_2796 = add i64 %var_2_2766, 11
; %var_2_240 = add i64 %var_2_210, 11
; Matched:\<badref\>:  store i64 %var_2_2796, i64* %var_2_3, align 8
; store i64 %var_2_240, i64* %PC, align 8
; Matched:%var_2_2797:  %var_2_2797 = add i64 %var_2_2773, 328
; %var_2_241 = add i64 %var_2_217, 328
; Matched:%var_2_2798:  %var_2_2798 = inttoptr i64 %var_2_2774 to i64*
; %var_2_242 = inttoptr i64 %var_2_218 to i64*
; Matched:%var_2_2799:  %var_2_2799 = load i64, i64* %var_2_2798, align 8
; %var_2_243 = load i64, i64* %var_2_242, align 8
; Matched:\<badref\>:  store i64 %var_2_2799, i64* %RBP.i, align 8
; store i64 %var_2_243, i64* %RBP, align 8
; Matched:\<badref\>:  store i64 %var_2_2797, i64* %var_2_6, align 8
; store i64 %var_2_241, i64* %RSP, align 8
; Matched:%var_2_2800:  %var_2_2800 = add i64 %var_2_2766, 12
; %var_2_244 = add i64 %var_2_210, 12
; Matched:\<badref\>:  store i64 %var_2_2800, i64* %var_2_3, align 8
; store i64 %var_2_244, i64* %PC, align 8
; Matched:%var_2_2801:  %var_2_2801 = inttoptr i64 %var_2_2797 to i64*
; %var_2_245 = inttoptr i64 %var_2_241 to i64*
; Matched:%var_2_2802:  %var_2_2802 = load i64, i64* %var_2_2801, align 8
; %var_2_246 = load i64, i64* %var_2_245, align 8
; Matched:\<badref\>:  store i64 %var_2_2802, i64* %var_2_3, align 8
; store i64 %var_2_246, i64* %PC, align 8
; Matched:%var_2_2803:  %var_2_2803 = add i64 %var_2_2773, 336
; %var_2_247 = add i64 %var_2_217, 336
; Matched:\<badref\>:  store i64 %var_2_2803, i64* %var_2_6, align 8
; store i64 %var_2_247, i64* %RSP, align 8
  ret %struct.Memory* %MEMORY.2

block_400e72:                                     ; preds = %block_400e60
; Matched:%var_2_1347:  %var_2_1347 = add i64 %var_2_1346, 4
; %var_2_248 = add i64 %var_2_579, 4
; Matched:\<badref\>:  store i64 %var_2_1347, i64* %var_2_3, align 8
; store i64 %var_2_248, i64* %PC, align 8
; Matched:%var_2_1348:  %var_2_1348 = load i64, i64* %var_2_1202, align 8
; %var_2_249 = load i64, i64* %var_2_880, align 8
; Matched:\<badref\>:  store i64 %var_2_1348, i64* %RDI.i1206, align 8
; store i64 %var_2_249, i64* %RDI, align 8
%var_2_250 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_251 = sext i32 %var_2_250 to i64
store i64 %var_2_251, i64* %RSI, align 8
store i64 %var_2_251, i64* %RDX, align 8
%var_2_252 = add i64 %var_2_873, -112
; Matched:%var_2_1351:  %var_2_1351 = add i64 %var_2_1346, 25
; %var_2_253 = add i64 %var_2_579, 25
; Matched:\<badref\>:  store i64 %var_2_1351, i64* %var_2_3, align 8
; store i64 %var_2_253, i64* %PC, align 8
%var_2_254 = inttoptr i64 %var_2_252 to i64*
%var_2_255 = load i64, i64* %var_2_254, align 8
; Matched:\<badref\>:  store i64 %var_2_738, i64* %var_2_302, align 1
; store i64 %var_2_255, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_1354:  %var_2_1354 = add i64 %var_2_1195, -120
; %var_2_256 = add i64 %var_2_873, -120
; Matched:%var_2_1355:  %var_2_1355 = add i64 %var_2_1346, 30
; %var_2_257 = add i64 %var_2_579, 30
; Matched:\<badref\>:  store i64 %var_2_1355, i64* %var_2_3, align 8
; store i64 %var_2_257, i64* %PC, align 8
; Matched:%var_2_874:  %var_2_874 = inttoptr i64 %var_2_872 to i64*
; %var_2_258 = inttoptr i64 %var_2_256 to i64*
; Matched:%var_2_875:  %var_2_875 = load i64, i64* %var_2_874, align 8
; %var_2_259 = load i64, i64* %var_2_258, align 8
; Matched:\<badref\>:  store i64 %var_2_1357, i64* %var_2_307, align 1
; store i64 %var_2_259, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_2468:  %var_2_2468 = add i64 %var_2_2329, -128
; %var_2_260 = add i64 %var_2_873, -128
; Matched:%var_2_1359:  %var_2_1359 = add i64 %var_2_1346, 35
; %var_2_261 = add i64 %var_2_579, 35
; Matched:\<badref\>:  store i64 %var_2_1359, i64* %var_2_3, align 8
; store i64 %var_2_261, i64* %PC, align 8
; Matched:%var_2_878:  %var_2_878 = inttoptr i64 %var_2_876 to i64*
; %var_2_262 = inttoptr i64 %var_2_260 to i64*
; Matched:%var_2_879:  %var_2_879 = load i64, i64* %var_2_878, align 8
; %var_2_263 = load i64, i64* %var_2_262, align 8
; Matched:\<badref\>:  store i64 %var_2_879, i64* %var_2_312, align 1
; store i64 %var_2_263, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_264 = add i64 %var_2_873, -136
; Matched:%var_2_1363:  %var_2_1363 = add i64 %var_2_1346, 43
; %var_2_265 = add i64 %var_2_579, 43
; Matched:\<badref\>:  store i64 %var_2_1363, i64* %var_2_3, align 8
; store i64 %var_2_265, i64* %PC, align 8
%var_2_266 = inttoptr i64 %var_2_264 to i64*
%var_2_267 = load i64, i64* %var_2_266, align 8
store i64 %var_2_267, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_268 = add i64 %var_2_579, 1918
; Matched:%var_2_1367:  %var_2_1367 = add i64 %var_2_1346, 48
; %var_2_269 = add i64 %var_2_579, 48
%var_2_270 = load i64, i64* %RSP, align 8
%var_2_271 = add i64 %var_2_270, -8
; Matched:%var_2_1370:  %var_2_1370 = inttoptr i64 %var_2_1369 to i64*
; %var_2_272 = inttoptr i64 %var_2_271 to i64*
; Matched:\<badref\>:  store i64 %var_2_1367, i64* %var_2_1370, align 8
; store i64 %var_2_269, i64* %var_2_272, align 8
; Matched:\<badref\>:  store i64 %var_2_2557, i64* %var_2_6, align 8
; store i64 %var_2_271, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1366, i64* %var_2_3, align 8
; store i64 %var_2_268, i64* %PC, align 8
%var_2_273 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_268, %struct.Memory* %MEMORY.12)
; Matched:  %.pre108 = load i64, i64* %var_2_3, align 8
; %.pre419 = load i64, i64* %PC, align 8
  %.pre420 = load i64, i64* %RBP, align 8
  br label %block_400ea2

block_4014ee:                                     ; preds = %block_4014d6, %block_4014fc
%var_2_274 = phi i64 [ %.pre436, %block_4014d6 ], [ %var_2_477, %block_4014fc ]
%MEMORY.3 = phi %struct.Memory* [ %MEMORY.13, %block_4014d6 ], [ %var_2_432, %block_4014fc ]
%var_2_275 = load i64, i64* %RBP, align 8
%var_2_276 = add i64 %var_2_275, -24
; Matched:%var_2_2498:  %var_2_2498 = add i64 %var_2_2495, 4
; %var_2_277 = add i64 %var_2_274, 4
; Matched:\<badref\>:  store i64 %var_2_2498, i64* %var_2_3, align 8
; store i64 %var_2_277, i64* %PC, align 8
%var_2_278 = inttoptr i64 %var_2_276 to i64*
%var_2_279 = load i64, i64* %var_2_278, align 8
; Matched:\<badref\>:  store i64 %var_2_1199, i64* %RAX.i1199, align 8
; store i64 %var_2_279, i64* %RAX, align 8
%var_2_280 = add i64 %var_2_275, -104
; Matched:%var_2_2502:  %var_2_2502 = add i64 %var_2_2495, 8
; %var_2_281 = add i64 %var_2_274, 8
; Matched:\<badref\>:  store i64 %var_2_2502, i64* %var_2_3, align 8
; store i64 %var_2_281, i64* %PC, align 8
%var_2_282 = inttoptr i64 %var_2_280 to i64*
%var_2_283 = load i64, i64* %var_2_282, align 8
%var_2_284 = sub i64 %var_2_279, %var_2_283
; Matched:%var_2_2506:  %var_2_2506 = icmp ult i64 %var_2_2500, %var_2_2504
; %var_2_285 = icmp ult i64 %var_2_279, %var_2_283
; Matched:%var_2_2507:  %var_2_2507 = zext i1 %var_2_2506 to i8
; %var_2_286 = zext i1 %var_2_285 to i8
; Matched:\<badref\>:  store i8 %var_2_2507, i8* %var_2_14, align 1
; store i8 %var_2_286, i8* %var_2_18, align 1
; Matched:%var_2_2508:  %var_2_2508 = trunc i64 %var_2_2505 to i32
; %var_2_287 = trunc i64 %var_2_284 to i32
; Matched:%var_2_2509:  %var_2_2509 = and i32 %var_2_2508, 255
; %var_2_288 = and i32 %var_2_287, 255
; Matched:%var_2_2510:  %var_2_2510 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2509)
; %var_2_289 = tail call i32 @llvm.ctpop.i32(i32 %var_2_288) #14
; Matched:%var_2_2511:  %var_2_2511 = trunc i32 %var_2_2510 to i8
; %var_2_290 = trunc i32 %var_2_289 to i8
; Matched:%var_2_2512:  %var_2_2512 = and i8 %var_2_2511, 1
; %var_2_291 = and i8 %var_2_290, 1
; Matched:%var_2_2513:  %var_2_2513 = xor i8 %var_2_2512, 1
; %var_2_292 = xor i8 %var_2_291, 1
; Matched:\<badref\>:  store i8 %var_2_2513, i8* %var_2_21, align 1
; store i8 %var_2_292, i8* %var_2_25, align 1
; Matched:%var_2_2514:  %var_2_2514 = xor i64 %var_2_2504, %var_2_2500
; %var_2_293 = xor i64 %var_2_283, %var_2_279
; Matched:%var_2_2515:  %var_2_2515 = xor i64 %var_2_2514, %var_2_2505
; %var_2_294 = xor i64 %var_2_293, %var_2_284
; Matched:%var_2_2516:  %var_2_2516 = lshr i64 %var_2_2515, 4
; %var_2_295 = lshr i64 %var_2_294, 4
; Matched:%var_2_2517:  %var_2_2517 = trunc i64 %var_2_2516 to i8
; %var_2_296 = trunc i64 %var_2_295 to i8
; Matched:%var_2_2518:  %var_2_2518 = and i8 %var_2_2517, 1
; %var_2_297 = and i8 %var_2_296, 1
; Matched:\<badref\>:  store i8 %var_2_2518, i8* %var_2_26, align 1
; store i8 %var_2_297, i8* %var_2_30, align 1
%var_2_298 = icmp eq i64 %var_2_284, 0
; Matched:%var_2_2520:  %var_2_2520 = zext i1 %var_2_2519 to i8
; %var_2_299 = zext i1 %var_2_298 to i8
; Matched:\<badref\>:  store i8 %var_2_2520, i8* %var_2_29, align 1
; store i8 %var_2_299, i8* %var_2_33, align 1
%var_2_300 = lshr i64 %var_2_284, 63
%var_2_301 = trunc i64 %var_2_300 to i8
; Matched:\<badref\>:  store i8 %var_2_2522, i8* %var_2_32, align 1
; store i8 %var_2_301, i8* %var_2_36, align 1
%var_2_302 = lshr i64 %var_2_279, 63
%var_2_303 = lshr i64 %var_2_283, 63
%var_2_304 = xor i64 %var_2_303, %var_2_302
%var_2_305 = xor i64 %var_2_300, %var_2_302
%var_2_306 = add nuw nsw i64 %var_2_305, %var_2_304
%var_2_307 = icmp eq i64 %var_2_306, 2
; Matched:%var_2_2529:  %var_2_2529 = zext i1 %var_2_2528 to i8
; %var_2_308 = zext i1 %var_2_307 to i8
; Matched:\<badref\>:  store i8 %var_2_2529, i8* %var_2_38, align 1
; store i8 %var_2_308, i8* %var_2_42, align 1
%var_2_309 = icmp ne i8 %var_2_301, 0
%var_2_310 = xor i1 %var_2_309, %var_2_307
%.demorgan450 = or i1 %var_2_298, %var_2_310
  %.v470 = select i1 %.demorgan450, i64 14, i64 71
%var_2_311 = add i64 %var_2_274, %.v470
; Matched:\<badref\>:  store i64 %var_2_2532, i64* %var_2_3, align 8
; store i64 %var_2_311, i64* %PC, align 8
  br i1 %.demorgan450, label %block_4014fc, label %block_401535

block_400ded:                                     ; preds = %block_400dcf
  store i32 3, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400df8

block_400ed9:                                     ; preds = %block_400ecb
%var_2_312 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_313 = sub i32 %var_2_997, %var_2_312
%var_2_314 = sext i32 %var_2_312 to i64
%var_2_315 = sext i32 %var_2_313 to i64
%var_2_316 = mul nsw i64 %var_2_315, %var_2_314
%var_2_317 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
%var_2_318 = sub i32 %var_2_317, %var_2_997
%var_2_319 = shl i64 %var_2_316, 32
%var_2_320 = ashr exact i64 %var_2_319, 32
%var_2_321 = sext i32 %var_2_318 to i64
%var_2_322 = mul nsw i64 %var_2_321, %var_2_320
%var_2_323 = trunc i64 %var_2_322 to i32
store i32 %var_2_323, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_324 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_325 = mul i32 %var_2_324, %var_2_323
store i32 %var_2_325, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_326 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
%var_2_327 = sub i32 %var_2_326, %var_2_325
%var_2_328 = add i32 %var_2_323, %var_2_325
%var_2_329 = zext i32 %var_2_328 to i64
store i64 %var_2_329, i64* %RCX, align 8
%var_2_330 = mul i32 %var_2_328, %var_2_327
store i32 %var_2_330, i32* bitcast (%L_type* @L to i32*), align 8
%var_2_331 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_332 = add i32 %var_2_331, %var_2_323
%var_2_333 = add i32 %var_2_330, %var_2_332
%var_2_334 = sitofp i32 %var_2_333 to double
%var_2_335 = add i32 %var_2_330, -1
%var_2_336 = sext i32 %var_2_335 to i64
%var_2_337 = shl nsw i64 %var_2_336, 3
%var_2_338 = add i64 %var_2_337, ptrtoint (%E1_type* @E1 to i64)
; Matched:%var_2_1442:  %var_2_1442 = add i64 %var_2_1414, 179
; %var_2_339 = add i64 %var_2_1035, 179
; Matched:\<badref\>:  store i64 %var_2_1442, i64* %var_2_3, align 8
; store i64 %var_2_339, i64* %PC, align 8
%var_2_340 = inttoptr i64 %var_2_338 to double*
store double %var_2_334, double* %var_2_340, align 8
; Matched:%var_2_1444:  %var_2_1444 = load i64, i64* %var_2_3, align 8
; %var_2_341 = load i64, i64* %PC, align 8
%var_2_342 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_343 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_344 = sext i32 %var_2_342 to i64
%var_2_345 = sext i32 %var_2_343 to i64
%var_2_346 = mul nsw i64 %var_2_345, %var_2_344
%var_2_347 = load i32, i32* bitcast (%L_type* @L to i32*), align 8
%var_2_348 = shl i64 %var_2_346, 32
%var_2_349 = ashr exact i64 %var_2_348, 32
%var_2_350 = sext i32 %var_2_347 to i64
%var_2_351 = mul nsw i64 %var_2_350, %var_2_349
%var_2_352 = trunc i64 %var_2_351 to i32
%var_2_353 = sitofp i32 %var_2_352 to double
; Matched:\<badref\>:  store double %var_2_1456, double* %var_2_301, align 1
; store double %var_2_353, double* %var_2_2694, align 1
%var_2_354 = add i32 %var_2_343, -1
; Matched:%var_2_1458:  %var_2_1458 = zext i32 %var_2_1457 to i64
; %var_2_355 = zext i32 %var_2_354 to i64
; Matched:\<badref\>:  store i64 %var_2_1458, i64* %RAX.i1199, align 8
; store i64 %var_2_355, i64* %RAX, align 8
%var_2_356 = icmp eq i32 %var_2_343, 0
%var_2_357 = zext i1 %var_2_356 to i8
store i8 %var_2_357, i8* %var_2_18, align 1
; Matched:%var_2_1461:  %var_2_1461 = and i32 %var_2_1457, 255
; %var_2_358 = and i32 %var_2_354, 255
; Matched:%var_2_1462:  %var_2_1462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1461)
; %var_2_359 = tail call i32 @llvm.ctpop.i32(i32 %var_2_358) #14
; Matched:%var_2_1463:  %var_2_1463 = trunc i32 %var_2_1462 to i8
; %var_2_360 = trunc i32 %var_2_359 to i8
; Matched:%var_2_1464:  %var_2_1464 = and i8 %var_2_1463, 1
; %var_2_361 = and i8 %var_2_360, 1
; Matched:%var_2_1465:  %var_2_1465 = xor i8 %var_2_1464, 1
; %var_2_362 = xor i8 %var_2_361, 1
; Matched:\<badref\>:  store i8 %var_2_1465, i8* %var_2_21, align 1
; store i8 %var_2_362, i8* %var_2_25, align 1
; Matched:%var_2_1466:  %var_2_1466 = xor i32 %var_2_1457, %var_2_1446
; %var_2_363 = xor i32 %var_2_354, %var_2_343
; Matched:%var_2_1467:  %var_2_1467 = lshr i32 %var_2_1466, 4
; %var_2_364 = lshr i32 %var_2_363, 4
; Matched:%var_2_1468:  %var_2_1468 = trunc i32 %var_2_1467 to i8
; %var_2_365 = trunc i32 %var_2_364 to i8
; Matched:%var_2_1469:  %var_2_1469 = and i8 %var_2_1468, 1
; %var_2_366 = and i8 %var_2_365, 1
; Matched:\<badref\>:  store i8 %var_2_1469, i8* %var_2_26, align 1
; store i8 %var_2_366, i8* %var_2_30, align 1
; Matched:%var_2_1470:  %var_2_1470 = icmp eq i32 %var_2_1457, 0
; %var_2_367 = icmp eq i32 %var_2_354, 0
; Matched:%var_2_1471:  %var_2_1471 = zext i1 %var_2_1470 to i8
; %var_2_368 = zext i1 %var_2_367 to i8
; Matched:\<badref\>:  store i8 %var_2_1471, i8* %var_2_29, align 1
; store i8 %var_2_368, i8* %var_2_33, align 1
; Matched:%var_2_1472:  %var_2_1472 = lshr i32 %var_2_1457, 31
; %var_2_369 = lshr i32 %var_2_354, 31
; Matched:%var_2_1473:  %var_2_1473 = trunc i32 %var_2_1472 to i8
; %var_2_370 = trunc i32 %var_2_369 to i8
; Matched:\<badref\>:  store i8 %var_2_1473, i8* %var_2_32, align 1
; store i8 %var_2_370, i8* %var_2_36, align 1
; Matched:%var_2_1474:  %var_2_1474 = lshr i32 %var_2_1446, 31
; %var_2_371 = lshr i32 %var_2_343, 31
; Matched:%var_2_1475:  %var_2_1475 = xor i32 %var_2_1472, %var_2_1474
; %var_2_372 = xor i32 %var_2_369, %var_2_371
; Matched:%var_2_1476:  %var_2_1476 = add nuw nsw i32 %var_2_1475, %var_2_1474
; %var_2_373 = add nuw nsw i32 %var_2_372, %var_2_371
; Matched:%var_2_1477:  %var_2_1477 = icmp eq i32 %var_2_1476, 2
; %var_2_374 = icmp eq i32 %var_2_373, 2
; Matched:%var_2_1478:  %var_2_1478 = zext i1 %var_2_1477 to i8
; %var_2_375 = zext i1 %var_2_374 to i8
; Matched:\<badref\>:  store i8 %var_2_1478, i8* %var_2_38, align 1
; store i8 %var_2_375, i8* %var_2_42, align 1
%var_2_376 = sext i32 %var_2_354 to i64
; Matched:\<badref\>:  store i64 %var_2_1479, i64* %RDX.i596, align 8
; store i64 %var_2_376, i64* %RDX, align 8
%var_2_377 = shl nsw i64 %var_2_376, 3
%var_2_378 = add i64 %var_2_377, ptrtoint (%E1_type* @E1 to i64)
; Matched:%var_2_1482:  %var_2_1482 = add i64 %var_2_1444, 49
; %var_2_379 = add i64 %var_2_341, 49
; Matched:\<badref\>:  store i64 %var_2_1482, i64* %var_2_3, align 8
; store i64 %var_2_379, i64* %PC, align 8
%var_2_380 = inttoptr i64 %var_2_378 to double*
store double %var_2_353, double* %var_2_380, align 8
%var_2_381 = load i64, i64* %RBP, align 8
%var_2_382 = add i64 %var_2_381, -24
%var_2_383 = load i64, i64* %PC, align 8
; Matched:%var_2_799:  %var_2_799 = add i64 %var_2_798, 4
; %var_2_384 = add i64 %var_2_383, 4
; Matched:\<badref\>:  store i64 %var_2_799, i64* %var_2_3, align 8
; store i64 %var_2_384, i64* %PC, align 8
%var_2_385 = inttoptr i64 %var_2_382 to i64*
; Matched:%var_2_2245:  %var_2_2245 = load i64, i64* %var_2_2244, align 8
; %var_2_386 = load i64, i64* %var_2_385, align 8
; Matched:%var_2_2246:  %var_2_2246 = add i64 %var_2_2245, 1
; %var_2_387 = add i64 %var_2_386, 1
; Matched:\<badref\>:  store i64 %var_2_2246, i64* %RAX.i1199, align 8
; store i64 %var_2_387, i64* %RAX, align 8
; Matched:%var_2_2247:  %var_2_2247 = icmp eq i64 %var_2_2245, -1
; %var_2_388 = icmp eq i64 %var_2_386, -1
; Matched:%var_2_2398:  %var_2_2398 = icmp eq i64 %var_2_2396, 0
; %var_2_389 = icmp eq i64 %var_2_387, 0
; Matched:%var_2_1931:  %var_2_1931 = or i1 %var_2_1929, %var_2_1930
; %var_2_390 = or i1 %var_2_388, %var_2_389
; Matched:%var_2_2400:  %var_2_2400 = zext i1 %var_2_2399 to i8
; %var_2_391 = zext i1 %var_2_390 to i8
; Matched:\<badref\>:  store i8 %var_2_2400, i8* %var_2_14, align 1
; store i8 %var_2_391, i8* %var_2_18, align 1
; Matched:%var_2_2401:  %var_2_2401 = trunc i64 %var_2_2396 to i32
; %var_2_392 = trunc i64 %var_2_387 to i32
; Matched:%var_2_1934:  %var_2_1934 = and i32 %var_2_1933, 255
; %var_2_393 = and i32 %var_2_392, 255
; Matched:%var_2_809:  %var_2_809 = tail call i32 @llvm.ctpop.i32(i32 %var_2_808)
; %var_2_394 = tail call i32 @llvm.ctpop.i32(i32 %var_2_393) #14
; Matched:%var_2_810:  %var_2_810 = trunc i32 %var_2_809 to i8
; %var_2_395 = trunc i32 %var_2_394 to i8
; Matched:%var_2_811:  %var_2_811 = and i8 %var_2_810, 1
; %var_2_396 = and i8 %var_2_395, 1
; Matched:%var_2_1938:  %var_2_1938 = xor i8 %var_2_1937, 1
; %var_2_397 = xor i8 %var_2_396, 1
; Matched:\<badref\>:  store i8 %var_2_1938, i8* %var_2_21, align 1
; store i8 %var_2_397, i8* %var_2_25, align 1
; Matched:%var_2_2407:  %var_2_2407 = xor i64 %var_2_2396, %var_2_2395
; %var_2_398 = xor i64 %var_2_387, %var_2_386
; Matched:%var_2_2408:  %var_2_2408 = lshr i64 %var_2_2407, 4
; %var_2_399 = lshr i64 %var_2_398, 4
; Matched:%var_2_1941:  %var_2_1941 = trunc i64 %var_2_1940 to i8
; %var_2_400 = trunc i64 %var_2_399 to i8
; Matched:%var_2_1942:  %var_2_1942 = and i8 %var_2_1941, 1
; %var_2_401 = and i8 %var_2_400, 1
; Matched:\<badref\>:  store i8 %var_2_2410, i8* %var_2_26, align 1
; store i8 %var_2_401, i8* %var_2_30, align 1
; Matched:%var_2_1943:  %var_2_1943 = zext i1 %var_2_1930 to i8
; %var_2_402 = zext i1 %var_2_389 to i8
; Matched:\<badref\>:  store i8 %var_2_1943, i8* %var_2_29, align 1
; store i8 %var_2_402, i8* %var_2_33, align 1
; Matched:%var_2_2412:  %var_2_2412 = lshr i64 %var_2_2396, 63
; %var_2_403 = lshr i64 %var_2_387, 63
; Matched:%var_2_2413:  %var_2_2413 = trunc i64 %var_2_2412 to i8
; %var_2_404 = trunc i64 %var_2_403 to i8
; Matched:\<badref\>:  store i8 %var_2_2413, i8* %var_2_32, align 1
; store i8 %var_2_404, i8* %var_2_36, align 1
; Matched:%var_2_2414:  %var_2_2414 = lshr i64 %var_2_2395, 63
; %var_2_405 = lshr i64 %var_2_386, 63
; Matched:%var_2_2265:  %var_2_2265 = xor i64 %var_2_2262, %var_2_2264
; %var_2_406 = xor i64 %var_2_403, %var_2_405
; Matched:%var_2_2591:  %var_2_2591 = add nuw nsw i64 %var_2_2590, %var_2_2587
; %var_2_407 = add nuw nsw i64 %var_2_406, %var_2_403
; Matched:%var_2_2592:  %var_2_2592 = icmp eq i64 %var_2_2591, 2
; %var_2_408 = icmp eq i64 %var_2_407, 2
; Matched:%var_2_2268:  %var_2_2268 = zext i1 %var_2_2267 to i8
; %var_2_409 = zext i1 %var_2_408 to i8
; Matched:\<badref\>:  store i8 %var_2_2418, i8* %var_2_38, align 1
; store i8 %var_2_409, i8* %var_2_42, align 1
; Matched:%var_2_1951:  %var_2_1951 = add i64 %var_2_1924, 12
; %var_2_410 = add i64 %var_2_383, 12
; Matched:\<badref\>:  store i64 %var_2_429, i64* %var_2_3, align 8
; store i64 %var_2_410, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_2246, i64* %var_2_2244, align 8
; store i64 %var_2_387, i64* %var_2_385, align 8
%var_2_411 = load i64, i64* %PC, align 8
%var_2_412 = add i64 %var_2_411, -254
; Matched:\<badref\>:  store i64 %var_2_1515, i64* %var_2_3, align 8
; store i64 %var_2_412, i64* %PC, align 8
  br label %block_400ecb

block_4014fc:                                     ; preds = %block_4014ee
%var_2_413 = add i64 %var_2_275, -144
; Matched:%var_2_2534:  %var_2_2534 = add i64 %var_2_2532, 8
; %var_2_414 = add i64 %var_2_311, 8
; Matched:\<badref\>:  store i64 %var_2_2534, i64* %var_2_3, align 8
; store i64 %var_2_414, i64* %PC, align 8
%var_2_415 = inttoptr i64 %var_2_413 to i64*
%var_2_416 = load i64, i64* %var_2_415, align 8
; Matched:\<badref\>:  store i64 %var_2_2640, i64* %var_2_302, align 1
; store i64 %var_2_416, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2537:  %var_2_2537 = add i64 %var_2_2532, -3580
; %var_2_417 = add i64 %var_2_311, -3580
; Matched:%var_2_2538:  %var_2_2538 = add i64 %var_2_2532, 13
; %var_2_418 = add i64 %var_2_311, 13
%var_2_419 = load i64, i64* %RSP, align 8
%var_2_420 = add i64 %var_2_419, -8
; Matched:%var_2_2541:  %var_2_2541 = inttoptr i64 %var_2_2540 to i64*
; %var_2_421 = inttoptr i64 %var_2_420 to i64*
; Matched:\<badref\>:  store i64 %var_2_2538, i64* %var_2_2541, align 8
; store i64 %var_2_418, i64* %var_2_421, align 8
; Matched:\<badref\>:  store i64 %var_2_1758, i64* %var_2_6, align 8
; store i64 %var_2_420, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2537, i64* %var_2_3, align 8
; store i64 %var_2_417, i64* %PC, align 8
%var_2_422 = tail call fastcc %struct.Memory* @ext_602168_log(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
; Matched:%var_2_2543:  %var_2_2543 = load i64, i64* %var_2_3, align 8
; %var_2_423 = load i64, i64* %PC, align 8
; Matched:%var_2_2544:  %var_2_2544 = load double, double* %var_2_301, align 1
; %var_2_424 = load double, double* %var_2_2694, align 1
%var_2_425 = load double, double* bitcast (%T1_type* @T1 to double*), align 8
; Matched:%var_2_2546:  %var_2_2546 = fdiv double %var_2_2544, %var_2_2545
; %var_2_426 = fdiv double %var_2_424, %var_2_425
; Matched:\<badref\>:  store double %var_2_2546, double* %var_2_301, align 1
; store double %var_2_426, double* %var_2_2694, align 1
; Matched:%var_2_2547:  %var_2_2547 = add i64 %var_2_2543, -3641
; %var_2_427 = add i64 %var_2_423, -3641
; Matched:%var_2_2548:  %var_2_2548 = add i64 %var_2_2543, 14
; %var_2_428 = add i64 %var_2_423, 14
%var_2_429 = load i64, i64* %RSP, align 8
%var_2_430 = add i64 %var_2_429, -8
; Matched:%var_2_2551:  %var_2_2551 = inttoptr i64 %var_2_2550 to i64*
; %var_2_431 = inttoptr i64 %var_2_430 to i64*
; Matched:\<badref\>:  store i64 %var_2_2548, i64* %var_2_2551, align 8
; store i64 %var_2_428, i64* %var_2_431, align 8
; Matched:\<badref\>:  store i64 %var_2_1856, i64* %var_2_6, align 8
; store i64 %var_2_430, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2547, i64* %var_2_3, align 8
; store i64 %var_2_427, i64* %PC, align 8
%var_2_432 = tail call fastcc %struct.Memory* @ext_6020f0_exp(%struct.State* nonnull %0, %struct.Memory* %var_2_422)
; Matched:%var_2_1804:  %var_2_1804 = load i64, i64* %var_2_3, align 8
; %var_2_433 = load i64, i64* %PC, align 8
; Matched:%var_2_2554:  %var_2_2554 = add i64 %var_2_2553, -3511
; %var_2_434 = add i64 %var_2_433, -3511
; Matched:%var_2_1703:  %var_2_1703 = add i64 %var_2_1701, 5
; %var_2_435 = add i64 %var_2_433, 5
%var_2_436 = load i64, i64* %RSP, align 8
%var_2_437 = add i64 %var_2_436, -8
%var_2_438 = inttoptr i64 %var_2_437 to i64*
; Matched:\<badref\>:  store i64 %var_2_1854, i64* %var_2_1857, align 8
; store i64 %var_2_435, i64* %var_2_438, align 8
; Matched:\<badref\>:  store i64 %var_2_2550, i64* %var_2_6, align 8
; store i64 %var_2_437, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2554, i64* %var_2_3, align 8
; store i64 %var_2_434, i64* %PC, align 8
%var_2_439 = load double, double* %var_2_2694, align 8, !alias.scope !2454, !noalias !2457
%var_2_440 = load i64, i64* %var_2_438, align 8
store i64 %var_2_436, i64* %RSP, align 8, !alias.scope !2454, !noalias !2457
%var_2_441 = tail call double @sqrt(double %var_2_439)
call void @llvm.memset.p0i8.i64(i8* %var_2_2740, i8 0, i64 24, i32 8, i1 false)
store double %var_2_441, double* %var_2_2694, align 8, !alias.scope !2454, !noalias !2457
%var_2_442 = load i64, i64* %RBP, align 8
%var_2_443 = add i64 %var_2_442, -144
%var_2_444 = add i64 %var_2_440, 8
store i64 %var_2_444, i64* %PC, align 8
%var_2_445 = inttoptr i64 %var_2_443 to double*
store double %var_2_441, double* %var_2_445, align 8
%var_2_446 = load i64, i64* %RBP, align 8
%var_2_447 = add i64 %var_2_446, -24
%var_2_448 = load i64, i64* %PC, align 8
; Matched:%var_2_2092:  %var_2_2092 = add i64 %var_2_2091, 4
; %var_2_449 = add i64 %var_2_448, 4
; Matched:\<badref\>:  store i64 %var_2_2092, i64* %var_2_3, align 8
; store i64 %var_2_449, i64* %PC, align 8
%var_2_450 = inttoptr i64 %var_2_447 to i64*
; Matched:%var_2_2395:  %var_2_2395 = load i64, i64* %var_2_2394, align 8
; %var_2_451 = load i64, i64* %var_2_450, align 8
; Matched:%var_2_2396:  %var_2_2396 = add i64 %var_2_2395, 1
; %var_2_452 = add i64 %var_2_451, 1
; Matched:\<badref\>:  store i64 %var_2_2396, i64* %RAX.i1199, align 8
; store i64 %var_2_452, i64* %RAX, align 8
; Matched:%var_2_2397:  %var_2_2397 = icmp eq i64 %var_2_2395, -1
; %var_2_453 = icmp eq i64 %var_2_451, -1
; Matched:%var_2_1930:  %var_2_1930 = icmp eq i64 %var_2_1928, 0
; %var_2_454 = icmp eq i64 %var_2_452, 0
; Matched:%var_2_805:  %var_2_805 = or i1 %var_2_803, %var_2_804
; %var_2_455 = or i1 %var_2_453, %var_2_454
; Matched:%var_2_1932:  %var_2_1932 = zext i1 %var_2_1931 to i8
; %var_2_456 = zext i1 %var_2_455 to i8
; Matched:\<badref\>:  store i8 %var_2_1932, i8* %var_2_14, align 1
; store i8 %var_2_456, i8* %var_2_18, align 1
; Matched:%var_2_1933:  %var_2_1933 = trunc i64 %var_2_1928 to i32
; %var_2_457 = trunc i64 %var_2_452 to i32
; Matched:%var_2_808:  %var_2_808 = and i32 %var_2_807, 255
; %var_2_458 = and i32 %var_2_457, 255
; Matched:%var_2_2102:  %var_2_2102 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2101)
; %var_2_459 = tail call i32 @llvm.ctpop.i32(i32 %var_2_458) #14
; Matched:%var_2_2103:  %var_2_2103 = trunc i32 %var_2_2102 to i8
; %var_2_460 = trunc i32 %var_2_459 to i8
; Matched:%var_2_2104:  %var_2_2104 = and i8 %var_2_2103, 1
; %var_2_461 = and i8 %var_2_460, 1
; Matched:%var_2_812:  %var_2_812 = xor i8 %var_2_811, 1
; %var_2_462 = xor i8 %var_2_461, 1
; Matched:\<badref\>:  store i8 %var_2_812, i8* %var_2_21, align 1
; store i8 %var_2_462, i8* %var_2_25, align 1
; Matched:%var_2_1939:  %var_2_1939 = xor i64 %var_2_1928, %var_2_1927
; %var_2_463 = xor i64 %var_2_452, %var_2_451
; Matched:%var_2_1940:  %var_2_1940 = lshr i64 %var_2_1939, 4
; %var_2_464 = lshr i64 %var_2_463, 4
; Matched:%var_2_815:  %var_2_815 = trunc i64 %var_2_814 to i8
; %var_2_465 = trunc i64 %var_2_464 to i8
; Matched:%var_2_816:  %var_2_816 = and i8 %var_2_815, 1
; %var_2_466 = and i8 %var_2_465, 1
; Matched:\<badref\>:  store i8 %var_2_1942, i8* %var_2_26, align 1
; store i8 %var_2_466, i8* %var_2_30, align 1
; Matched:%var_2_817:  %var_2_817 = zext i1 %var_2_804 to i8
; %var_2_467 = zext i1 %var_2_454 to i8
; Matched:\<badref\>:  store i8 %var_2_817, i8* %var_2_29, align 1
; store i8 %var_2_467, i8* %var_2_33, align 1
; Matched:%var_2_1944:  %var_2_1944 = lshr i64 %var_2_1928, 63
; %var_2_468 = lshr i64 %var_2_452, 63
; Matched:%var_2_1945:  %var_2_1945 = trunc i64 %var_2_1944 to i8
; %var_2_469 = trunc i64 %var_2_468 to i8
; Matched:\<badref\>:  store i8 %var_2_1945, i8* %var_2_32, align 1
; store i8 %var_2_469, i8* %var_2_36, align 1
; Matched:%var_2_1946:  %var_2_1946 = lshr i64 %var_2_1927, 63
; %var_2_470 = lshr i64 %var_2_451, 63
; Matched:%var_2_2415:  %var_2_2415 = xor i64 %var_2_2412, %var_2_2414
; %var_2_471 = xor i64 %var_2_468, %var_2_470
; Matched:%var_2_2266:  %var_2_2266 = add nuw nsw i64 %var_2_2265, %var_2_2262
; %var_2_472 = add nuw nsw i64 %var_2_471, %var_2_468
; Matched:%var_2_2267:  %var_2_2267 = icmp eq i64 %var_2_2266, 2
; %var_2_473 = icmp eq i64 %var_2_472, 2
; Matched:%var_2_2418:  %var_2_2418 = zext i1 %var_2_2417 to i8
; %var_2_474 = zext i1 %var_2_473 to i8
; Matched:\<badref\>:  store i8 %var_2_1512, i8* %var_2_38, align 1
; store i8 %var_2_474, i8* %var_2_42, align 1
; Matched:%var_2_825:  %var_2_825 = add i64 %var_2_798, 12
; %var_2_475 = add i64 %var_2_448, 12
; Matched:\<badref\>:  store i64 %var_2_1951, i64* %var_2_3, align 8
; store i64 %var_2_475, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_2396, i64* %var_2_2394, align 8
; store i64 %var_2_452, i64* %var_2_450, align 8
%var_2_476 = load i64, i64* %PC, align 8
%var_2_477 = add i64 %var_2_476, -66
; Matched:\<badref\>:  store i64 %var_2_2596, i64* %var_2_3, align 8
; store i64 %var_2_477, i64* %PC, align 8
  br label %block_4014ee

block_401535:                                     ; preds = %block_4014ee
%var_2_478 = add i64 %var_2_275, -176
; Matched:%var_2_2598:  %var_2_2598 = add i64 %var_2_2532, 6
; %var_2_479 = add i64 %var_2_311, 6
; Matched:\<badref\>:  store i64 %var_2_2598, i64* %var_2_3, align 8
; store i64 %var_2_479, i64* %PC, align 8
%var_2_480 = inttoptr i64 %var_2_478 to i32*
%var_2_481 = load i32, i32* %var_2_480, align 4
; Matched:%var_2_832:  %var_2_832 = zext i32 %var_2_831 to i64
; %var_2_482 = zext i32 %var_2_481 to i64
; Matched:\<badref\>:  store i64 %var_2_832, i64* %RAX.i1199, align 8
; store i64 %var_2_482, i64* %RAX, align 8
%var_2_483 = add i64 %var_2_275, -172
; Matched:%var_2_2603:  %var_2_2603 = add i64 %var_2_2532, 12
; %var_2_484 = add i64 %var_2_311, 12
; Matched:\<badref\>:  store i64 %var_2_2603, i64* %var_2_3, align 8
; store i64 %var_2_484, i64* %PC, align 8
%var_2_485 = inttoptr i64 %var_2_483 to i32*
%var_2_486 = load i32, i32* %var_2_485, align 4
%var_2_487 = sub i32 %var_2_481, %var_2_486
; Matched:%var_2_1964:  %var_2_1964 = icmp ult i32 %var_2_1957, %var_2_1962
; %var_2_488 = icmp ult i32 %var_2_481, %var_2_486
; Matched:%var_2_1965:  %var_2_1965 = zext i1 %var_2_1964 to i8
; %var_2_489 = zext i1 %var_2_488 to i8
; Matched:\<badref\>:  store i8 %var_2_2433, i8* %var_2_14, align 1
; store i8 %var_2_489, i8* %var_2_18, align 1
; Matched:%var_2_1966:  %var_2_1966 = and i32 %var_2_1963, 255
; %var_2_490 = and i32 %var_2_487, 255
; Matched:%var_2_1967:  %var_2_1967 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1966)
; %var_2_491 = tail call i32 @llvm.ctpop.i32(i32 %var_2_490) #14
; Matched:%var_2_2286:  %var_2_2286 = trunc i32 %var_2_2285 to i8
; %var_2_492 = trunc i32 %var_2_491 to i8
; Matched:%var_2_2287:  %var_2_2287 = and i8 %var_2_2286, 1
; %var_2_493 = and i8 %var_2_492, 1
; Matched:%var_2_2288:  %var_2_2288 = xor i8 %var_2_2287, 1
; %var_2_494 = xor i8 %var_2_493, 1
; Matched:\<badref\>:  store i8 %var_2_2288, i8* %var_2_21, align 1
; store i8 %var_2_494, i8* %var_2_25, align 1
; Matched:%var_2_2289:  %var_2_2289 = xor i32 %var_2_2280, %var_2_2275
; %var_2_495 = xor i32 %var_2_486, %var_2_481
; Matched:%var_2_1972:  %var_2_1972 = xor i32 %var_2_1971, %var_2_1963
; %var_2_496 = xor i32 %var_2_495, %var_2_487
; Matched:%var_2_2441:  %var_2_2441 = lshr i32 %var_2_2440, 4
; %var_2_497 = lshr i32 %var_2_496, 4
; Matched:%var_2_2292:  %var_2_2292 = trunc i32 %var_2_2291 to i8
; %var_2_498 = trunc i32 %var_2_497 to i8
; Matched:%var_2_1537:  %var_2_1537 = and i8 %var_2_1536, 1
; %var_2_499 = and i8 %var_2_498, 1
; Matched:\<badref\>:  store i8 %var_2_2293, i8* %var_2_26, align 1
; store i8 %var_2_499, i8* %var_2_30, align 1
%var_2_500 = icmp eq i32 %var_2_487, 0
; Matched:%var_2_2620:  %var_2_2620 = zext i1 %var_2_2619 to i8
; %var_2_501 = zext i1 %var_2_500 to i8
; Matched:\<badref\>:  store i8 %var_2_2295, i8* %var_2_29, align 1
; store i8 %var_2_501, i8* %var_2_33, align 1
; Matched:%var_2_2446:  %var_2_2446 = lshr i32 %var_2_2431, 31
; %var_2_502 = lshr i32 %var_2_487, 31
; Matched:%var_2_2447:  %var_2_2447 = trunc i32 %var_2_2446 to i8
; %var_2_503 = trunc i32 %var_2_502 to i8
; Matched:\<badref\>:  store i8 %var_2_2447, i8* %var_2_32, align 1
; store i8 %var_2_503, i8* %var_2_36, align 1
; Matched:%var_2_2448:  %var_2_2448 = lshr i32 %var_2_2425, 31
; %var_2_504 = lshr i32 %var_2_481, 31
; Matched:%var_2_1981:  %var_2_1981 = lshr i32 %var_2_1962, 31
; %var_2_505 = lshr i32 %var_2_486, 31
; Matched:%var_2_1982:  %var_2_1982 = xor i32 %var_2_1981, %var_2_1980
; %var_2_506 = xor i32 %var_2_505, %var_2_504
; Matched:%var_2_857:  %var_2_857 = xor i32 %var_2_852, %var_2_854
; %var_2_507 = xor i32 %var_2_502, %var_2_504
; Matched:%var_2_858:  %var_2_858 = add nuw nsw i32 %var_2_857, %var_2_856
; %var_2_508 = add nuw nsw i32 %var_2_507, %var_2_506
; Matched:%var_2_1985:  %var_2_1985 = icmp eq i32 %var_2_1984, 2
; %var_2_509 = icmp eq i32 %var_2_508, 2
; Matched:%var_2_1986:  %var_2_1986 = zext i1 %var_2_1985 to i8
; %var_2_510 = zext i1 %var_2_509 to i8
; Matched:\<badref\>:  store i8 %var_2_1986, i8* %var_2_38, align 1
; store i8 %var_2_510, i8* %var_2_42, align 1
%.v471 = select i1 %var_2_500, i64 18, i64 75
%var_2_511 = add i64 %var_2_311, %.v471
; Matched:\<badref\>:  store i64 %var_2_2630, i64* %var_2_3, align 8
; store i64 %var_2_511, i64* %PC, align 8
br i1 %var_2_500, label %block_401547, label %block_401580

block_4012e2:                                     ; preds = %block_4012a7
%var_2_512 = add i64 %var_2_1566, -176
; Matched:%var_2_2122:  %var_2_2122 = add i64 %var_2_2074, 6
; %var_2_513 = add i64 %var_2_1602, 6
; Matched:\<badref\>:  store i64 %var_2_2122, i64* %var_2_3, align 8
; store i64 %var_2_513, i64* %PC, align 8
%var_2_514 = inttoptr i64 %var_2_512 to i32*
%var_2_515 = load i32, i32* %var_2_514, align 4
; Matched:%var_2_2276:  %var_2_2276 = zext i32 %var_2_2275 to i64
; %var_2_516 = zext i32 %var_2_515 to i64
; Matched:\<badref\>:  store i64 %var_2_2426, i64* %RAX.i1199, align 8
; store i64 %var_2_516, i64* %RAX, align 8
%var_2_517 = add i64 %var_2_1566, -172
; Matched:%var_2_2127:  %var_2_2127 = add i64 %var_2_2074, 12
; %var_2_518 = add i64 %var_2_1602, 12
; Matched:\<badref\>:  store i64 %var_2_2127, i64* %var_2_3, align 8
; store i64 %var_2_518, i64* %PC, align 8
%var_2_519 = inttoptr i64 %var_2_517 to i32*
%var_2_520 = load i32, i32* %var_2_519, align 4
%var_2_521 = sub i32 %var_2_515, %var_2_520
; Matched:%var_2_2607:  %var_2_2607 = icmp ult i32 %var_2_2600, %var_2_2605
; %var_2_522 = icmp ult i32 %var_2_515, %var_2_520
; Matched:%var_2_2283:  %var_2_2283 = zext i1 %var_2_2282 to i8
; %var_2_523 = zext i1 %var_2_522 to i8
; Matched:\<badref\>:  store i8 %var_2_1017, i8* %var_2_14, align 1
; store i8 %var_2_523, i8* %var_2_18, align 1
; Matched:%var_2_2609:  %var_2_2609 = and i32 %var_2_2606, 255
; %var_2_524 = and i32 %var_2_521, 255
; Matched:%var_2_1019:  %var_2_1019 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1018)
; %var_2_525 = tail call i32 @llvm.ctpop.i32(i32 %var_2_524) #14
; Matched:%var_2_1327:  %var_2_1327 = trunc i32 %var_2_1326 to i8
; %var_2_526 = trunc i32 %var_2_525 to i8
; Matched:%var_2_2612:  %var_2_2612 = and i8 %var_2_2611, 1
; %var_2_527 = and i8 %var_2_526, 1
; Matched:%var_2_1329:  %var_2_1329 = xor i8 %var_2_1328, 1
; %var_2_528 = xor i8 %var_2_527, 1
; Matched:\<badref\>:  store i8 %var_2_1022, i8* %var_2_21, align 1
; store i8 %var_2_528, i8* %var_2_25, align 1
; Matched:%var_2_1533:  %var_2_1533 = xor i32 %var_2_1524, %var_2_1519
; %var_2_529 = xor i32 %var_2_520, %var_2_515
; Matched:%var_2_1331:  %var_2_1331 = xor i32 %var_2_1330, %var_2_1322
; %var_2_530 = xor i32 %var_2_529, %var_2_521
; Matched:%var_2_2616:  %var_2_2616 = lshr i32 %var_2_2615, 4
; %var_2_531 = lshr i32 %var_2_530, 4
; Matched:%var_2_1974:  %var_2_1974 = trunc i32 %var_2_1973 to i8
; %var_2_532 = trunc i32 %var_2_531 to i8
; Matched:%var_2_2293:  %var_2_2293 = and i8 %var_2_2292, 1
; %var_2_533 = and i8 %var_2_532, 1
; Matched:\<badref\>:  store i8 %var_2_2618, i8* %var_2_26, align 1
; store i8 %var_2_533, i8* %var_2_30, align 1
%var_2_534 = icmp eq i32 %var_2_521, 0
; Matched:%var_2_1336:  %var_2_1336 = zext i1 %var_2_1335 to i8
; %var_2_535 = zext i1 %var_2_534 to i8
; Matched:\<badref\>:  store i8 %var_2_1029, i8* %var_2_29, align 1
; store i8 %var_2_535, i8* %var_2_33, align 1
; Matched:%var_2_1030:  %var_2_1030 = lshr i32 %var_2_1015, 31
; %var_2_536 = lshr i32 %var_2_521, 31
; Matched:%var_2_1031:  %var_2_1031 = trunc i32 %var_2_1030 to i8
; %var_2_537 = trunc i32 %var_2_536 to i8
; Matched:\<badref\>:  store i8 %var_2_1031, i8* %var_2_32, align 1
; store i8 %var_2_537, i8* %var_2_36, align 1
; Matched:%var_2_1032:  %var_2_1032 = lshr i32 %var_2_1009, 31
; %var_2_538 = lshr i32 %var_2_515, 31
; Matched:%var_2_2624:  %var_2_2624 = lshr i32 %var_2_2605, 31
; %var_2_539 = lshr i32 %var_2_520, 31
; Matched:%var_2_2300:  %var_2_2300 = xor i32 %var_2_2299, %var_2_2298
; %var_2_540 = xor i32 %var_2_539, %var_2_538
; Matched:%var_2_2451:  %var_2_2451 = xor i32 %var_2_2446, %var_2_2448
; %var_2_541 = xor i32 %var_2_536, %var_2_538
; Matched:%var_2_2452:  %var_2_2452 = add nuw nsw i32 %var_2_2451, %var_2_2450
; %var_2_542 = add nuw nsw i32 %var_2_541, %var_2_540
; Matched:%var_2_2628:  %var_2_2628 = icmp eq i32 %var_2_2627, 2
; %var_2_543 = icmp eq i32 %var_2_542, 2
; Matched:%var_2_2629:  %var_2_2629 = zext i1 %var_2_2628 to i8
; %var_2_544 = zext i1 %var_2_543 to i8
; Matched:\<badref\>:  store i8 %var_2_1038, i8* %var_2_38, align 1
; store i8 %var_2_544, i8* %var_2_42, align 1
%.v465 = select i1 %var_2_534, i64 18, i64 75
%var_2_545 = add i64 %var_2_1602, %.v465
; Matched:\<badref\>:  store i64 %var_2_2154, i64* %var_2_3, align 8
; store i64 %var_2_545, i64* %PC, align 8
br i1 %var_2_534, label %block_4012f4, label %block_40132d

block_400e60:                                     ; preds = %block_400dc1
%var_2_546 = add i64 %var_2_873, -176
; Matched:%var_2_1314:  %var_2_1314 = add i64 %var_2_1231, 6
; %var_2_547 = add i64 %var_2_909, 6
; Matched:\<badref\>:  store i64 %var_2_1314, i64* %var_2_3, align 8
; store i64 %var_2_547, i64* %PC, align 8
%var_2_548 = inttoptr i64 %var_2_546 to i32*
%var_2_549 = load i32, i32* %var_2_548, align 4
; Matched:%var_2_1141:  %var_2_1141 = zext i32 %var_2_1140 to i64
; %var_2_550 = zext i32 %var_2_549 to i64
; Matched:\<badref\>:  store i64 %var_2_1141, i64* %RAX.i1199, align 8
; store i64 %var_2_550, i64* %RAX, align 8
%var_2_551 = add i64 %var_2_873, -172
; Matched:%var_2_1319:  %var_2_1319 = add i64 %var_2_1231, 12
; %var_2_552 = add i64 %var_2_909, 12
; Matched:\<badref\>:  store i64 %var_2_1319, i64* %var_2_3, align 8
; store i64 %var_2_552, i64* %PC, align 8
%var_2_553 = inttoptr i64 %var_2_551 to i32*
%var_2_554 = load i32, i32* %var_2_553, align 4
%var_2_555 = sub i32 %var_2_549, %var_2_554
; Matched:%var_2_2131:  %var_2_2131 = icmp ult i32 %var_2_2124, %var_2_2129
; %var_2_556 = icmp ult i32 %var_2_549, %var_2_554
; Matched:%var_2_2132:  %var_2_2132 = zext i1 %var_2_2131 to i8
; %var_2_557 = zext i1 %var_2_556 to i8
; Matched:\<badref\>:  store i8 %var_2_2132, i8* %var_2_14, align 1
; store i8 %var_2_557, i8* %var_2_18, align 1
; Matched:%var_2_2133:  %var_2_2133 = and i32 %var_2_2130, 255
; %var_2_558 = and i32 %var_2_555, 255
; Matched:%var_2_2134:  %var_2_2134 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2133)
; %var_2_559 = tail call i32 @llvm.ctpop.i32(i32 %var_2_558) #14
; Matched:%var_2_1968:  %var_2_1968 = trunc i32 %var_2_1967 to i8
; %var_2_560 = trunc i32 %var_2_559 to i8
; Matched:%var_2_1969:  %var_2_1969 = and i8 %var_2_1968, 1
; %var_2_561 = and i8 %var_2_560, 1
; Matched:%var_2_1970:  %var_2_1970 = xor i8 %var_2_1969, 1
; %var_2_562 = xor i8 %var_2_561, 1
; Matched:\<badref\>:  store i8 %var_2_1970, i8* %var_2_21, align 1
; store i8 %var_2_562, i8* %var_2_25, align 1
; Matched:%var_2_1971:  %var_2_1971 = xor i32 %var_2_1962, %var_2_1957
; %var_2_563 = xor i32 %var_2_554, %var_2_549
; Matched:%var_2_1534:  %var_2_1534 = xor i32 %var_2_1533, %var_2_1525
; %var_2_564 = xor i32 %var_2_563, %var_2_555
; Matched:%var_2_1973:  %var_2_1973 = lshr i32 %var_2_1972, 4
; %var_2_565 = lshr i32 %var_2_564, 4
; Matched:%var_2_1536:  %var_2_1536 = trunc i32 %var_2_1535 to i8
; %var_2_566 = trunc i32 %var_2_565 to i8
; Matched:%var_2_1975:  %var_2_1975 = and i8 %var_2_1974, 1
; %var_2_567 = and i8 %var_2_566, 1
; Matched:\<badref\>:  store i8 %var_2_1537, i8* %var_2_26, align 1
; store i8 %var_2_567, i8* %var_2_30, align 1
%var_2_568 = icmp eq i32 %var_2_555, 0
; Matched:%var_2_2445:  %var_2_2445 = zext i1 %var_2_2444 to i8
; %var_2_569 = zext i1 %var_2_568 to i8
; Matched:\<badref\>:  store i8 %var_2_1977, i8* %var_2_29, align 1
; store i8 %var_2_569, i8* %var_2_33, align 1
; Matched:%var_2_852:  %var_2_852 = lshr i32 %var_2_837, 31
; %var_2_570 = lshr i32 %var_2_555, 31
; Matched:%var_2_853:  %var_2_853 = trunc i32 %var_2_852 to i8
; %var_2_571 = trunc i32 %var_2_570 to i8
; Matched:\<badref\>:  store i8 %var_2_853, i8* %var_2_32, align 1
; store i8 %var_2_571, i8* %var_2_36, align 1
; Matched:%var_2_854:  %var_2_854 = lshr i32 %var_2_831, 31
; %var_2_572 = lshr i32 %var_2_549, 31
; Matched:%var_2_2148:  %var_2_2148 = lshr i32 %var_2_2129, 31
; %var_2_573 = lshr i32 %var_2_554, 31
; Matched:%var_2_2149:  %var_2_2149 = xor i32 %var_2_2148, %var_2_2147
; %var_2_574 = xor i32 %var_2_573, %var_2_572
; Matched:%var_2_1166:  %var_2_1166 = xor i32 %var_2_1161, %var_2_1163
; %var_2_575 = xor i32 %var_2_570, %var_2_572
; Matched:%var_2_1167:  %var_2_1167 = add nuw nsw i32 %var_2_1166, %var_2_1165
; %var_2_576 = add nuw nsw i32 %var_2_575, %var_2_574
; Matched:%var_2_2152:  %var_2_2152 = icmp eq i32 %var_2_2151, 2
; %var_2_577 = icmp eq i32 %var_2_576, 2
; Matched:%var_2_2153:  %var_2_2153 = zext i1 %var_2_2152 to i8
; %var_2_578 = zext i1 %var_2_577 to i8
; Matched:\<badref\>:  store i8 %var_2_2153, i8* %var_2_38, align 1
; store i8 %var_2_578, i8* %var_2_42, align 1
%.v459 = select i1 %var_2_568, i64 18, i64 66
%var_2_579 = add i64 %var_2_909, %.v459
; Matched:\<badref\>:  store i64 %var_2_1346, i64* %var_2_3, align 8
; store i64 %var_2_579, i64* %PC, align 8
br i1 %var_2_568, label %block_400e72, label %block_400ea2

block_400ddd:                                     ; preds = %block_400dcf
  store i32 2, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_580 = add i64 %var_2_1255, 27
store i64 %var_2_580, i64* %PC, align 8
  br label %block_400df8

block_400d67:                                     ; preds = %block_400d39
%var_2_581 = add i64 %var_2_1758, -176
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1099, 6
; %var_2_582 = add i64 %var_2_1794, 6
; Matched:\<badref\>:  store i64 %var_2_1138, i64* %var_2_3, align 8
; store i64 %var_2_582, i64* %PC, align 8
%var_2_583 = inttoptr i64 %var_2_581 to i32*
%var_2_584 = load i32, i32* %var_2_583, align 4
; Matched:%var_2_2426:  %var_2_2426 = zext i32 %var_2_2425 to i64
; %var_2_585 = zext i32 %var_2_584 to i64
; Matched:\<badref\>:  store i64 %var_2_2276, i64* %RAX.i1199, align 8
; store i64 %var_2_585, i64* %RAX, align 8
%var_2_586 = add i64 %var_2_1758, -172
; Matched:%var_2_1143:  %var_2_1143 = add i64 %var_2_1099, 12
; %var_2_587 = add i64 %var_2_1794, 12
; Matched:\<badref\>:  store i64 %var_2_1143, i64* %var_2_3, align 8
; store i64 %var_2_587, i64* %PC, align 8
%var_2_588 = inttoptr i64 %var_2_586 to i32*
%var_2_589 = load i32, i32* %var_2_588, align 4
%var_2_590 = sub i32 %var_2_584, %var_2_589
; Matched:%var_2_2282:  %var_2_2282 = icmp ult i32 %var_2_2275, %var_2_2280
; %var_2_591 = icmp ult i32 %var_2_584, %var_2_589
; Matched:%var_2_2608:  %var_2_2608 = zext i1 %var_2_2607 to i8
; %var_2_592 = zext i1 %var_2_591 to i8
; Matched:\<badref\>:  store i8 %var_2_2608, i8* %var_2_14, align 1
; store i8 %var_2_592, i8* %var_2_18, align 1
; Matched:%var_2_1018:  %var_2_1018 = and i32 %var_2_1015, 255
; %var_2_593 = and i32 %var_2_590, 255
; Matched:%var_2_2610:  %var_2_2610 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2609)
; %var_2_594 = tail call i32 @llvm.ctpop.i32(i32 %var_2_593) #14
; Matched:%var_2_1530:  %var_2_1530 = trunc i32 %var_2_1529 to i8
; %var_2_595 = trunc i32 %var_2_594 to i8
; Matched:%var_2_1531:  %var_2_1531 = and i8 %var_2_1530, 1
; %var_2_596 = and i8 %var_2_595, 1
; Matched:%var_2_1022:  %var_2_1022 = xor i8 %var_2_1021, 1
; %var_2_597 = xor i8 %var_2_596, 1
; Matched:\<badref\>:  store i8 %var_2_1329, i8* %var_2_21, align 1
; store i8 %var_2_597, i8* %var_2_25, align 1
; Matched:%var_2_1023:  %var_2_1023 = xor i32 %var_2_1014, %var_2_1009
; %var_2_598 = xor i32 %var_2_589, %var_2_584
; Matched:%var_2_2290:  %var_2_2290 = xor i32 %var_2_2289, %var_2_2281
; %var_2_599 = xor i32 %var_2_598, %var_2_590
; Matched:%var_2_2140:  %var_2_2140 = lshr i32 %var_2_2139, 4
; %var_2_600 = lshr i32 %var_2_599, 4
; Matched:%var_2_1026:  %var_2_1026 = trunc i32 %var_2_1025 to i8
; %var_2_601 = trunc i32 %var_2_600 to i8
; Matched:%var_2_1027:  %var_2_1027 = and i8 %var_2_1026, 1
; %var_2_602 = and i8 %var_2_601, 1
; Matched:\<badref\>:  store i8 %var_2_1334, i8* %var_2_26, align 1
; store i8 %var_2_602, i8* %var_2_30, align 1
%var_2_603 = icmp eq i32 %var_2_590, 0
; Matched:%var_2_1539:  %var_2_1539 = zext i1 %var_2_1538 to i8
; %var_2_604 = zext i1 %var_2_603 to i8
; Matched:\<badref\>:  store i8 %var_2_1336, i8* %var_2_29, align 1
; store i8 %var_2_604, i8* %var_2_33, align 1
; Matched:%var_2_2621:  %var_2_2621 = lshr i32 %var_2_2606, 31
; %var_2_605 = lshr i32 %var_2_590, 31
; Matched:%var_2_2622:  %var_2_2622 = trunc i32 %var_2_2621 to i8
; %var_2_606 = trunc i32 %var_2_605 to i8
; Matched:\<badref\>:  store i8 %var_2_2622, i8* %var_2_32, align 1
; store i8 %var_2_606, i8* %var_2_36, align 1
; Matched:%var_2_2623:  %var_2_2623 = lshr i32 %var_2_2600, 31
; %var_2_607 = lshr i32 %var_2_584, 31
; Matched:%var_2_2299:  %var_2_2299 = lshr i32 %var_2_2280, 31
; %var_2_608 = lshr i32 %var_2_589, 31
; Matched:%var_2_2625:  %var_2_2625 = xor i32 %var_2_2624, %var_2_2623
; %var_2_609 = xor i32 %var_2_608, %var_2_607
; Matched:%var_2_2301:  %var_2_2301 = xor i32 %var_2_2296, %var_2_2298
; %var_2_610 = xor i32 %var_2_605, %var_2_607
; Matched:%var_2_2302:  %var_2_2302 = add nuw nsw i32 %var_2_2301, %var_2_2300
; %var_2_611 = add nuw nsw i32 %var_2_610, %var_2_609
; Matched:%var_2_2303:  %var_2_2303 = icmp eq i32 %var_2_2302, 2
; %var_2_612 = icmp eq i32 %var_2_611, 2
; Matched:%var_2_2304:  %var_2_2304 = zext i1 %var_2_2303 to i8
; %var_2_613 = zext i1 %var_2_612 to i8
; Matched:\<badref\>:  store i8 %var_2_2629, i8* %var_2_38, align 1
; store i8 %var_2_613, i8* %var_2_42, align 1
%.v457 = select i1 %var_2_603, i64 18, i64 71
%var_2_614 = add i64 %var_2_1794, %.v457
; Matched:\<badref\>:  store i64 %var_2_1170, i64* %var_2_3, align 8
; store i64 %var_2_614, i64* %PC, align 8
br i1 %var_2_603, label %block_400d79, label %block_400dae

block_400bdc:                                     ; preds = %block_400ba0, %block_400bea
%var_2_615 = phi i64 [ %.pre412, %block_400ba0 ], [ %var_2_148, %block_400bea ]
%var_2_616 = load i64, i64* %RBP, align 8
%var_2_617 = add i64 %var_2_616, -24
; Matched:%var_2_905:  %var_2_905 = add i64 %var_2_902, 4
; %var_2_618 = add i64 %var_2_615, 4
; Matched:\<badref\>:  store i64 %var_2_905, i64* %var_2_3, align 8
; store i64 %var_2_618, i64* %PC, align 8
%var_2_619 = inttoptr i64 %var_2_617 to i64*
%var_2_620 = load i64, i64* %var_2_619, align 8
; Matched:\<badref\>:  store i64 %var_2_1589, i64* %RAX.i1199, align 8
; store i64 %var_2_620, i64* %RAX, align 8
%var_2_621 = add i64 %var_2_616, -40
; Matched:%var_2_909:  %var_2_909 = add i64 %var_2_902, 8
; %var_2_622 = add i64 %var_2_615, 8
; Matched:\<badref\>:  store i64 %var_2_909, i64* %var_2_3, align 8
; store i64 %var_2_622, i64* %PC, align 8
%var_2_623 = inttoptr i64 %var_2_621 to i64*
%var_2_624 = load i64, i64* %var_2_623, align 8
%var_2_625 = sub i64 %var_2_620, %var_2_624
; Matched:%var_2_913:  %var_2_913 = icmp ult i64 %var_2_907, %var_2_911
; %var_2_626 = icmp ult i64 %var_2_620, %var_2_624
; Matched:%var_2_914:  %var_2_914 = zext i1 %var_2_913 to i8
; %var_2_627 = zext i1 %var_2_626 to i8
; Matched:\<badref\>:  store i8 %var_2_914, i8* %var_2_14, align 1
; store i8 %var_2_627, i8* %var_2_18, align 1
; Matched:%var_2_915:  %var_2_915 = trunc i64 %var_2_912 to i32
; %var_2_628 = trunc i64 %var_2_625 to i32
; Matched:%var_2_916:  %var_2_916 = and i32 %var_2_915, 255
; %var_2_629 = and i32 %var_2_628, 255
; Matched:%var_2_917:  %var_2_917 = tail call i32 @llvm.ctpop.i32(i32 %var_2_916)
; %var_2_630 = tail call i32 @llvm.ctpop.i32(i32 %var_2_629) #14
; Matched:%var_2_918:  %var_2_918 = trunc i32 %var_2_917 to i8
; %var_2_631 = trunc i32 %var_2_630 to i8
; Matched:%var_2_919:  %var_2_919 = and i8 %var_2_918, 1
; %var_2_632 = and i8 %var_2_631, 1
; Matched:%var_2_920:  %var_2_920 = xor i8 %var_2_919, 1
; %var_2_633 = xor i8 %var_2_632, 1
; Matched:\<badref\>:  store i8 %var_2_920, i8* %var_2_21, align 1
; store i8 %var_2_633, i8* %var_2_25, align 1
; Matched:%var_2_921:  %var_2_921 = xor i64 %var_2_911, %var_2_907
; %var_2_634 = xor i64 %var_2_624, %var_2_620
; Matched:%var_2_922:  %var_2_922 = xor i64 %var_2_921, %var_2_912
; %var_2_635 = xor i64 %var_2_634, %var_2_625
; Matched:%var_2_923:  %var_2_923 = lshr i64 %var_2_922, 4
; %var_2_636 = lshr i64 %var_2_635, 4
; Matched:%var_2_924:  %var_2_924 = trunc i64 %var_2_923 to i8
; %var_2_637 = trunc i64 %var_2_636 to i8
; Matched:%var_2_925:  %var_2_925 = and i8 %var_2_924, 1
; %var_2_638 = and i8 %var_2_637, 1
; Matched:\<badref\>:  store i8 %var_2_925, i8* %var_2_26, align 1
; store i8 %var_2_638, i8* %var_2_30, align 1
%var_2_639 = icmp eq i64 %var_2_625, 0
; Matched:%var_2_927:  %var_2_927 = zext i1 %var_2_926 to i8
; %var_2_640 = zext i1 %var_2_639 to i8
; Matched:\<badref\>:  store i8 %var_2_927, i8* %var_2_29, align 1
; store i8 %var_2_640, i8* %var_2_33, align 1
%var_2_641 = lshr i64 %var_2_625, 63
%var_2_642 = trunc i64 %var_2_641 to i8
; Matched:\<badref\>:  store i8 %var_2_929, i8* %var_2_32, align 1
; store i8 %var_2_642, i8* %var_2_36, align 1
%var_2_643 = lshr i64 %var_2_620, 63
%var_2_644 = lshr i64 %var_2_624, 63
%var_2_645 = xor i64 %var_2_644, %var_2_643
%var_2_646 = xor i64 %var_2_641, %var_2_643
%var_2_647 = add nuw nsw i64 %var_2_646, %var_2_645
%var_2_648 = icmp eq i64 %var_2_647, 2
; Matched:%var_2_936:  %var_2_936 = zext i1 %var_2_935 to i8
; %var_2_649 = zext i1 %var_2_648 to i8
; Matched:\<badref\>:  store i8 %var_2_936, i8* %var_2_38, align 1
; store i8 %var_2_649, i8* %var_2_42, align 1
%var_2_650 = icmp ne i8 %var_2_642, 0
%var_2_651 = xor i1 %var_2_650, %var_2_648
%.demorgan442 = or i1 %var_2_639, %var_2_651
  %.v454 = select i1 %.demorgan442, i64 14, i64 270
%var_2_652 = add i64 %var_2_615, %.v454
; Matched:\<badref\>:  store i64 %var_2_939, i64* %var_2_3, align 8
; store i64 %var_2_652, i64* %PC, align 8
  br i1 %.demorgan442, label %block_400bea, label %block_400cea

block_400e3f:                                     ; preds = %block_400e21
  store i32 0, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400e4a

block_400b78:                                     ; preds = %block_400b66
; Matched:%var_2_862:  %var_2_862 = add i64 %var_2_861, 4
; %var_2_653 = add i64 %var_2_996, 4
; Matched:\<badref\>:  store i64 %var_2_862, i64* %var_2_3, align 8
; store i64 %var_2_653, i64* %PC, align 8
; Matched:%var_2_863:  %var_2_863 = load i64, i64* %var_2_653, align 8
; %var_2_654 = load i64, i64* %var_2_1693, align 8
; Matched:\<badref\>:  store i64 %var_2_863, i64* %RDI.i1206, align 8
; store i64 %var_2_654, i64* %RDI, align 8
; Matched:%var_2_864:  %var_2_864 = add i64 %var_2_861, 8
; %var_2_655 = add i64 %var_2_996, 8
; Matched:\<badref\>:  store i64 %var_2_864, i64* %var_2_3, align 8
; store i64 %var_2_655, i64* %PC, align 8
; Matched:%var_2_865:  %var_2_865 = load i64, i64* %var_2_653, align 8
; %var_2_656 = load i64, i64* %var_2_1693, align 8
; Matched:\<badref\>:  store i64 %var_2_865, i64* %RSI.i1110, align 8
; store i64 %var_2_656, i64* %RSI, align 8
; Matched:%var_2_866:  %var_2_866 = add i64 %var_2_861, 12
; %var_2_657 = add i64 %var_2_996, 12
; Matched:\<badref\>:  store i64 %var_2_866, i64* %var_2_3, align 8
; store i64 %var_2_657, i64* %PC, align 8
; Matched:%var_2_867:  %var_2_867 = load i64, i64* %var_2_653, align 8
; %var_2_658 = load i64, i64* %var_2_1693, align 8
; Matched:\<badref\>:  store i64 %var_2_867, i64* %RDX.i596, align 8
; store i64 %var_2_658, i64* %RDX, align 8
%var_2_659 = add i64 %var_2_1686, -112
; Matched:%var_2_869:  %var_2_869 = add i64 %var_2_861, 17
; %var_2_660 = add i64 %var_2_996, 17
; Matched:\<badref\>:  store i64 %var_2_869, i64* %var_2_3, align 8
; store i64 %var_2_660, i64* %PC, align 8
%var_2_661 = inttoptr i64 %var_2_659 to i64*
%var_2_662 = load i64, i64* %var_2_661, align 8
; Matched:\<badref\>:  store i64 %var_2_871, i64* %var_2_302, align 1
; store i64 %var_2_662, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2464:  %var_2_2464 = add i64 %var_2_2329, -120
; %var_2_663 = add i64 %var_2_1686, -120
; Matched:%var_2_873:  %var_2_873 = add i64 %var_2_861, 22
; %var_2_664 = add i64 %var_2_996, 22
; Matched:\<badref\>:  store i64 %var_2_873, i64* %var_2_3, align 8
; store i64 %var_2_664, i64* %PC, align 8
; Matched:%var_2_1356:  %var_2_1356 = inttoptr i64 %var_2_1354 to i64*
; %var_2_665 = inttoptr i64 %var_2_663 to i64*
; Matched:%var_2_1357:  %var_2_1357 = load i64, i64* %var_2_1356, align 8
; %var_2_666 = load i64, i64* %var_2_665, align 8
; Matched:\<badref\>:  store i64 %var_2_2467, i64* %var_2_307, align 1
; store i64 %var_2_666, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_876:  %var_2_876 = add i64 %var_2_646, -128
; %var_2_667 = add i64 %var_2_1686, -128
; Matched:%var_2_877:  %var_2_877 = add i64 %var_2_861, 27
; %var_2_668 = add i64 %var_2_996, 27
; Matched:\<badref\>:  store i64 %var_2_877, i64* %var_2_3, align 8
; store i64 %var_2_668, i64* %PC, align 8
; Matched:%var_2_1360:  %var_2_1360 = inttoptr i64 %var_2_1358 to i64*
; %var_2_669 = inttoptr i64 %var_2_667 to i64*
; Matched:%var_2_1361:  %var_2_1361 = load i64, i64* %var_2_1360, align 8
; %var_2_670 = load i64, i64* %var_2_669, align 8
; Matched:\<badref\>:  store i64 %var_2_1361, i64* %var_2_312, align 1
; store i64 %var_2_670, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_671 = add i64 %var_2_1686, -136
; Matched:%var_2_881:  %var_2_881 = add i64 %var_2_861, 35
; %var_2_672 = add i64 %var_2_996, 35
; Matched:\<badref\>:  store i64 %var_2_881, i64* %var_2_3, align 8
; store i64 %var_2_672, i64* %PC, align 8
%var_2_673 = inttoptr i64 %var_2_671 to i64*
%var_2_674 = load i64, i64* %var_2_673, align 8
store i64 %var_2_674, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_675 = add i64 %var_2_996, 2680
; Matched:%var_2_885:  %var_2_885 = add i64 %var_2_861, 40
; %var_2_676 = add i64 %var_2_996, 40
%var_2_677 = load i64, i64* %RSP, align 8
%var_2_678 = add i64 %var_2_677, -8
; Matched:%var_2_888:  %var_2_888 = inttoptr i64 %var_2_887 to i64*
; %var_2_679 = inttoptr i64 %var_2_678 to i64*
; Matched:\<badref\>:  store i64 %var_2_885, i64* %var_2_888, align 8
; store i64 %var_2_676, i64* %var_2_679, align 8
; Matched:\<badref\>:  store i64 %var_2_1909, i64* %var_2_6, align 8
; store i64 %var_2_678, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_884, i64* %var_2_3, align 8
; store i64 %var_2_675, i64* %PC, align 8
%var_2_680 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_675, %struct.Memory* %MEMORY.21)
; Matched:  %.pre99 = load i64, i64* %var_2_3, align 8
; %.pre410 = load i64, i64* %PC, align 8
  %.pre411 = load i64, i64* %RBP, align 8
  br label %block_400ba0

block_4015a0:                                     ; preds = %block_401580
  store i64 0, i64* %RAX, align 8, !tbaa !2428
store i8 0, i8* %var_2_18, align 1
store i8 1, i8* %var_2_25, align 1
store i8 1, i8* %var_2_33, align 1
store i8 0, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
store i8 0, i8* %var_2_30, align 1
  store i64 0, i64* %RDI, align 8, !tbaa !2428
; Matched:%var_2_2717:  %var_2_2717 = add i64 %var_2_2715, -3696
; %var_2_681 = add i64 %var_2_2811, -3696
; Matched:%var_2_2718:  %var_2_2718 = add i64 %var_2_2715, 9
; %var_2_682 = add i64 %var_2_2811, 9
%var_2_683 = load i64, i64* %RSP, align 8
%var_2_684 = add i64 %var_2_683, -8
; Matched:%var_2_2721:  %var_2_2721 = inttoptr i64 %var_2_2720 to i64*
; %var_2_685 = inttoptr i64 %var_2_684 to i64*
; Matched:\<badref\>:  store i64 %var_2_2718, i64* %var_2_2721, align 8
; store i64 %var_2_682, i64* %var_2_685, align 8
; Matched:\<badref\>:  store i64 %var_2_2009, i64* %var_2_6, align 8
; store i64 %var_2_684, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2717, i64* %var_2_3, align 8
; store i64 %var_2_681, i64* %PC, align 8
%var_2_686 = tail call fastcc %struct.Memory* @ext_602128_time(%struct.State* nonnull %0, %struct.Memory* %MEMORY.28)
; Matched:%var_2_2723:  %var_2_2723 = load i64, i64* %var_2_3, align 8
; %var_2_687 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 101), i64* %RDI, align 8, !tbaa !2428
; Matched:%var_2_2724:  %var_2_2724 = load i64, i64* %RBP.i, align 8
; %var_2_688 = load i64, i64* %RBP, align 8
; Matched:%var_2_2725:  %var_2_2725 = add i64 %var_2_2724, -200
; %var_2_689 = add i64 %var_2_688, -200
; Matched:%var_2_2726:  %var_2_2726 = load i64, i64* %RAX.i1199, align 8
; %var_2_690 = load i64, i64* %RAX, align 8
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_10, 17
; %var_2_691 = add i64 %var_2_687, 17
; Matched:\<badref\>:  store i64 %var_2_40, i64* %var_2_3, align 8
; store i64 %var_2_691, i64* %PC, align 8
; Matched:%var_2_2728:  %var_2_2728 = inttoptr i64 %var_2_2725 to i64*
; %var_2_692 = inttoptr i64 %var_2_689 to i64*
; Matched:\<badref\>:  store i64 %var_2_2726, i64* %var_2_2728, align 8
; store i64 %var_2_690, i64* %var_2_692, align 8
; Matched:%var_2_2729:  %var_2_2729 = load i64, i64* %var_2_3, align 8
; %var_2_693 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL.i1140, align 1
; store i8 0, i8* %AL, align 1
; Matched:%var_2_2730:  %var_2_2730 = add i64 %var_2_2729, -3786
; %var_2_694 = add i64 %var_2_693, -3786
; Matched:%var_2_2731:  %var_2_2731 = add i64 %var_2_2729, 7
; %var_2_695 = add i64 %var_2_693, 7
%var_2_696 = load i64, i64* %RSP, align 8
%var_2_697 = add i64 %var_2_696, -8
; Matched:%var_2_2734:  %var_2_2734 = inttoptr i64 %var_2_2733 to i64*
; %var_2_698 = inttoptr i64 %var_2_697 to i64*
; Matched:\<badref\>:  store i64 %var_2_2731, i64* %var_2_2734, align 8
; store i64 %var_2_695, i64* %var_2_698, align 8
; Matched:\<badref\>:  store i64 %var_2_1369, i64* %var_2_6, align 8
; store i64 %var_2_697, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2730, i64* %var_2_3, align 8
; store i64 %var_2_694, i64* %PC, align 8
%var_2_699 = tail call fastcc %struct.Memory* @ext_4006f0_printf(%struct.State* nonnull %0, %struct.Memory* %var_2_686)
; Matched:%var_2_2736:  %var_2_2736 = load i64, i64* %RBP.i, align 8
; %var_2_700 = load i64, i64* %RBP, align 8
; Matched:%var_2_2737:  %var_2_2737 = add i64 %var_2_2736, -208
; %var_2_701 = add i64 %var_2_700, -208
%var_2_702 = load i64, i64* %PC, align 8
; Matched:%var_2_2739:  %var_2_2739 = add i64 %var_2_2738, 7
; %var_2_703 = add i64 %var_2_702, 7
; Matched:\<badref\>:  store i64 %var_2_257, i64* %var_2_3, align 8
; store i64 %var_2_703, i64* %PC, align 8
; Matched:%var_2_2740:  %var_2_2740 = inttoptr i64 %var_2_2737 to i32*
; %var_2_704 = inttoptr i64 %var_2_701 to i32*
; Matched:%var_2_2741:  %var_2_2741 = load i32, i32* %var_2_2740, align 4
; %var_2_705 = load i32, i32* %var_2_704, align 4
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_2742:  %var_2_2742 = and i32 %var_2_2741, 255
; %var_2_706 = and i32 %var_2_705, 255
; Matched:%var_2_2743:  %var_2_2743 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2742)
; %var_2_707 = tail call i32 @llvm.ctpop.i32(i32 %var_2_706) #14
; Matched:%var_2_2744:  %var_2_2744 = trunc i32 %var_2_2743 to i8
; %var_2_708 = trunc i32 %var_2_707 to i8
; Matched:%var_2_2745:  %var_2_2745 = and i8 %var_2_2744, 1
; %var_2_709 = and i8 %var_2_708, 1
; Matched:%var_2_2746:  %var_2_2746 = xor i8 %var_2_2745, 1
; %var_2_710 = xor i8 %var_2_709, 1
; Matched:\<badref\>:  store i8 %var_2_2746, i8* %var_2_21, align 1
; store i8 %var_2_710, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:%var_2_2747:  %var_2_2747 = icmp eq i32 %var_2_2741, 0
; %var_2_711 = icmp eq i32 %var_2_705, 0
; Matched:%var_2_2748:  %var_2_2748 = zext i1 %var_2_2747 to i8
; %var_2_712 = zext i1 %var_2_711 to i8
; Matched:\<badref\>:  store i8 %var_2_2748, i8* %var_2_29, align 1
; store i8 %var_2_712, i8* %var_2_33, align 1
; Matched:%var_2_2749:  %var_2_2749 = lshr i32 %var_2_2741, 31
; %var_2_713 = lshr i32 %var_2_705, 31
; Matched:%var_2_2750:  %var_2_2750 = trunc i32 %var_2_2749 to i8
; %var_2_714 = trunc i32 %var_2_713 to i8
; Matched:\<badref\>:  store i8 %var_2_2750, i8* %var_2_32, align 1
; store i8 %var_2_714, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
; Matched:%var_2_2751:  %var_2_2751 = add i64 %var_2_2736, -316
; %var_2_715 = add i64 %var_2_700, -316
; Matched:%var_2_2752:  %var_2_2752 = load i32, i32* %EAX.i1220, align 4
; %var_2_716 = load i32, i32* %EAX, align 4
; Matched:%var_2_2753:  %var_2_2753 = add i64 %var_2_2738, 13
; %var_2_717 = add i64 %var_2_702, 13
; Matched:\<badref\>:  store i64 %var_2_2753, i64* %var_2_3, align 8
; store i64 %var_2_717, i64* %PC, align 8
; Matched:%var_2_2754:  %var_2_2754 = inttoptr i64 %var_2_2751 to i32*
; %var_2_718 = inttoptr i64 %var_2_715 to i32*
; Matched:\<badref\>:  store i32 %var_2_2752, i32* %var_2_2754, align 4
; store i32 %var_2_716, i32* %var_2_718, align 4
; Matched:%var_2_2755:  %var_2_2755 = load i64, i64* %var_2_3, align 8
; %var_2_719 = load i64, i64* %PC, align 8
%var_2_720 = load i8, i8* %var_2_33, align 1
; Matched:%var_2_2757:  %var_2_2757 = icmp ne i8 %var_2_2756, 0
; %var_2_721 = icmp ne i8 %var_2_720, 0
; Matched:  %.v212 = select i1 %var_2_2757, i64 11, i64 6
; %.v522 = select i1 %var_2_721, i64 11, i64 6
; Matched:%var_2_2758:  %var_2_2758 = add i64 %var_2_2755, %.v212
; %var_2_722 = add i64 %var_2_719, %.v522
; Matched:\<badref\>:  store i64 %var_2_2758, i64* %var_2_3, align 8
; store i64 %var_2_722, i64* %PC, align 8
%var_2_723 = icmp eq i8 %var_2_720, 1
br i1 %var_2_723, label %block_4015d9, label %block_4015a0.block_400986_crit_edge

block_4015a0.block_400986_crit_edge:              ; preds = %block_4015a0
; Matched:%var_2_2759:  %var_2_2759 = add i64 %var_2_2758, -3150
; %var_2_724 = add i64 %var_2_722, -3150
; Matched:  %.pre95 = load i64, i64* %RAX.i1199, align 8
; %.pre406 = load i64, i64* %RAX, align 8
; Matched:%var_2_2761:  %var_2_2761 = trunc i64 %.pre95 to i32
; %var_2_725 = trunc i64 %.pre406 to i32
  br label %block_400986

block_400cfc:                                     ; preds = %block_400cea
; Matched:%var_2_1040:  %var_2_1040 = add i64 %var_2_1039, 4
; %var_2_726 = add i64 %var_2_1756, 4
; Matched:\<badref\>:  store i64 %var_2_1040, i64* %var_2_3, align 8
; store i64 %var_2_726, i64* %PC, align 8
; Matched:%var_2_1041:  %var_2_1041 = load i64, i64* %var_2_910, align 8
; %var_2_727 = load i64, i64* %var_2_623, align 8
; Matched:\<badref\>:  store i64 %var_2_1041, i64* %RDI.i1206, align 8
; store i64 %var_2_727, i64* %RDI, align 8
; Matched:%var_2_1042:  %var_2_1042 = add i64 %var_2_903, -48
; %var_2_728 = add i64 %var_2_616, -48
; Matched:%var_2_1043:  %var_2_1043 = add i64 %var_2_1039, 8
; %var_2_729 = add i64 %var_2_1756, 8
; Matched:\<badref\>:  store i64 %var_2_1043, i64* %var_2_3, align 8
; store i64 %var_2_729, i64* %PC, align 8
; Matched:%var_2_1044:  %var_2_1044 = inttoptr i64 %var_2_1042 to i64*
; %var_2_730 = inttoptr i64 %var_2_728 to i64*
; Matched:%var_2_1045:  %var_2_1045 = load i64, i64* %var_2_1044, align 8
; %var_2_731 = load i64, i64* %var_2_730, align 8
; Matched:\<badref\>:  store i64 %var_2_1045, i64* %RSI.i1110, align 8
; store i64 %var_2_731, i64* %RSI, align 8
; Matched:%var_2_1046:  %var_2_1046 = add i64 %var_2_1039, 12
; %var_2_732 = add i64 %var_2_1756, 12
; Matched:\<badref\>:  store i64 %var_2_1046, i64* %var_2_3, align 8
; store i64 %var_2_732, i64* %PC, align 8
; Matched:%var_2_1047:  %var_2_1047 = load i64, i64* %var_2_910, align 8
; %var_2_733 = load i64, i64* %var_2_623, align 8
; Matched:\<badref\>:  store i64 %var_2_1178, i64* %RDX.i596, align 8
; store i64 %var_2_733, i64* %RDX, align 8
%var_2_734 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_734, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_735 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_735, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_736 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
store i64 %var_2_736, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_737 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
store i64 %var_2_737, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_738 = add i64 %var_2_1756, 2292
; Matched:%var_2_1053:  %var_2_1053 = add i64 %var_2_1039, 53
; %var_2_739 = add i64 %var_2_1756, 53
%var_2_740 = load i64, i64* %RSP, align 8
%var_2_741 = add i64 %var_2_740, -8
; Matched:%var_2_1056:  %var_2_1056 = inttoptr i64 %var_2_1055 to i64*
; %var_2_742 = inttoptr i64 %var_2_741 to i64*
; Matched:\<badref\>:  store i64 %var_2_1053, i64* %var_2_1056, align 8
; store i64 %var_2_739, i64* %var_2_742, align 8
; Matched:\<badref\>:  store i64 %var_2_2238, i64* %var_2_6, align 8
; store i64 %var_2_741, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1052, i64* %var_2_3, align 8
; store i64 %var_2_738, i64* %PC, align 8
%var_2_743 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_738, %struct.Memory* %MEMORY.21)
  %.pre413 = load i64, i64* %RBP, align 8
; Matched:  %.pre103 = load i64, i64* %var_2_3, align 8
; %.pre414 = load i64, i64* %PC, align 8
  br label %block_400d31

block_4008ff:                                     ; preds = %block_4008d5
; Matched:%var_2_187:  %var_2_187 = add i64 %var_2_180, 4
; %var_2_744 = add i64 %var_2_1135, 4
; Matched:\<badref\>:  store i64 %var_2_187, i64* %var_2_3, align 8
; store i64 %var_2_744, i64* %PC, align 8
%var_2_745 = load i64, i64* %var_2_1096, align 8
; Matched:\<badref\>:  store i64 %var_2_188, i64* %RAX.i1199, align 8
; store i64 %var_2_745, i64* %RAX, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_180, 11
; %var_2_746 = add i64 %var_2_1135, 11
; Matched:\<badref\>:  store i64 %var_2_189, i64* %var_2_3, align 8
; store i64 %var_2_746, i64* %PC, align 8
%var_2_747 = load i32, i32* %var_2_1100, align 4
%var_2_748 = sext i32 %var_2_747 to i64
; Matched:\<badref\>:  store i64 %var_2_227, i64* %RCX.i1209, align 8
; store i64 %var_2_748, i64* %RCX, align 8
; Matched:%var_2_228:  %var_2_228 = shl nsw i64 %var_2_227, 3
; %var_2_749 = shl nsw i64 %var_2_748, 3
; Matched:%var_2_193:  %var_2_193 = add i64 %var_2_192, %var_2_188
; %var_2_750 = add i64 %var_2_749, %var_2_745
; Matched:%var_2_194:  %var_2_194 = add i64 %var_2_180, 15
; %var_2_751 = add i64 %var_2_1135, 15
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_3, align 8
; store i64 %var_2_751, i64* %PC, align 8
; Matched:%var_2_195:  %var_2_195 = inttoptr i64 %var_2_193 to i64*
; %var_2_752 = inttoptr i64 %var_2_750 to i64*
; Matched:%var_2_232:  %var_2_232 = load i64, i64* %var_2_231, align 8
; %var_2_753 = load i64, i64* %var_2_752, align 8
; Matched:\<badref\>:  store i64 %var_2_196, i64* %RDI.i1206, align 8
; store i64 %var_2_753, i64* %RDI, align 8
; Matched:%var_2_197:  %var_2_197 = add i64 %var_2_180, -447
; %var_2_754 = add i64 %var_2_1135, -447
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_180, 20
; %var_2_755 = add i64 %var_2_1135, 20
%var_2_756 = load i64, i64* %RSP, align 8
%var_2_757 = add i64 %var_2_756, -8
; Matched:%var_2_201:  %var_2_201 = inttoptr i64 %var_2_200 to i64*
; %var_2_758 = inttoptr i64 %var_2_757 to i64*
; Matched:\<badref\>:  store i64 %var_2_198, i64* %var_2_201, align 8
; store i64 %var_2_755, i64* %var_2_758, align 8
; Matched:\<badref\>:  store i64 %var_2_2178, i64* %var_2_6, align 8
; store i64 %var_2_757, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_197, i64* %var_2_3, align 8
; store i64 %var_2_754, i64* %PC, align 8
%var_2_759 = tail call fastcc %struct.Memory* @ext_602190_atol(%struct.State* nonnull %0, %struct.Memory* %var_2_927)
%var_2_760 = load i64, i64* %RAX, align 8
; Matched:%var_2_204:  %var_2_204 = load i64, i64* %var_2_3, align 8
; %var_2_761 = load i64, i64* %PC, align 8
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_205:  %var_2_205 = trunc i64 %var_2_203 to i32
; %var_2_762 = trunc i64 %var_2_760 to i32
; Matched:%var_2_206:  %var_2_206 = and i32 %var_2_205, 255
; %var_2_763 = and i32 %var_2_762, 255
; Matched:%var_2_207:  %var_2_207 = tail call i32 @llvm.ctpop.i32(i32 %var_2_206)
; %var_2_764 = tail call i32 @llvm.ctpop.i32(i32 %var_2_763) #14
; Matched:%var_2_208:  %var_2_208 = trunc i32 %var_2_207 to i8
; %var_2_765 = trunc i32 %var_2_764 to i8
; Matched:%var_2_209:  %var_2_209 = and i8 %var_2_208, 1
; %var_2_766 = and i8 %var_2_765, 1
; Matched:%var_2_210:  %var_2_210 = xor i8 %var_2_209, 1
; %var_2_767 = xor i8 %var_2_766, 1
; Matched:\<badref\>:  store i8 %var_2_210, i8* %var_2_21, align 1
; store i8 %var_2_767, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
%var_2_768 = icmp eq i64 %var_2_760, 0
; Matched:%var_2_212:  %var_2_212 = zext i1 %var_2_211 to i8
; %var_2_769 = zext i1 %var_2_768 to i8
; Matched:\<badref\>:  store i8 %var_2_212, i8* %var_2_29, align 1
; store i8 %var_2_769, i8* %var_2_33, align 1
%var_2_770 = lshr i64 %var_2_760, 63
%var_2_771 = trunc i64 %var_2_770 to i8
; Matched:\<badref\>:  store i8 %var_2_214, i8* %var_2_32, align 1
; store i8 %var_2_771, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
%var_2_772 = icmp ne i8 %var_2_771, 0
%var_2_773 = or i1 %var_2_768, %var_2_772
; Matched:  %.v166 = select i1 %var_2_216, i64 42, i64 10
; %.v478 = select i1 %var_2_773, i64 42, i64 10
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_204, %.v166
; %var_2_774 = add i64 %var_2_761, %.v478
; Matched:\<badref\>:  store i64 %var_2_217, i64* %var_2_3, align 8
; store i64 %var_2_774, i64* %PC, align 8
br i1 %var_2_773, label %block_40093d, label %block_40091d

block_401547:                                     ; preds = %block_401535
; Matched:%var_2_2631:  %var_2_2631 = add i64 %var_2_2630, 4
; %var_2_775 = add i64 %var_2_511, 4
; Matched:\<badref\>:  store i64 %var_2_2631, i64* %var_2_3, align 8
; store i64 %var_2_775, i64* %PC, align 8
; Matched:%var_2_2632:  %var_2_2632 = load i64, i64* %var_2_2503, align 8
; %var_2_776 = load i64, i64* %var_2_282, align 8
; Matched:\<badref\>:  store i64 %var_2_2632, i64* %RDI.i1206, align 8
; store i64 %var_2_776, i64* %RDI, align 8
%var_2_777 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_778 = sext i32 %var_2_777 to i64
store i64 %var_2_778, i64* %RSI, align 8
%var_2_779 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_780 = sext i32 %var_2_779 to i64
store i64 %var_2_780, i64* %RDX, align 8
%var_2_781 = add i64 %var_2_275, -144
; Matched:%var_2_2638:  %var_2_2638 = add i64 %var_2_2630, 28
; %var_2_782 = add i64 %var_2_511, 28
; Matched:\<badref\>:  store i64 %var_2_2638, i64* %var_2_3, align 8
; store i64 %var_2_782, i64* %PC, align 8
%var_2_783 = inttoptr i64 %var_2_781 to i64*
%var_2_784 = load i64, i64* %var_2_783, align 8
; Matched:\<badref\>:  store i64 %var_2_1670, i64* %var_2_302, align 1
; store i64 %var_2_784, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2641:  %var_2_2641 = add i64 %var_2_2630, 36
; %var_2_785 = add i64 %var_2_511, 36
; Matched:\<badref\>:  store i64 %var_2_2641, i64* %var_2_3, align 8
; store i64 %var_2_785, i64* %PC, align 8
%var_2_786 = load i64, i64* %var_2_783, align 8
; Matched:\<badref\>:  store i64 %var_2_1712, i64* %var_2_307, align 1
; store i64 %var_2_786, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_2643:  %var_2_2643 = add i64 %var_2_2630, 44
; %var_2_787 = add i64 %var_2_511, 44
; Matched:\<badref\>:  store i64 %var_2_2643, i64* %var_2_3, align 8
; store i64 %var_2_787, i64* %PC, align 8
; Matched:%var_2_2644:  %var_2_2644 = load i64, i64* %var_2_2639, align 8
; %var_2_788 = load i64, i64* %var_2_783, align 8
; Matched:\<badref\>:  store i64 %var_2_2644, i64* %var_2_312, align 1
; store i64 %var_2_788, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_2645:  %var_2_2645 = add i64 %var_2_2630, 52
; %var_2_789 = add i64 %var_2_511, 52
; Matched:\<badref\>:  store i64 %var_2_2645, i64* %var_2_3, align 8
; store i64 %var_2_789, i64* %PC, align 8
; Matched:%var_2_1631:  %var_2_1631 = load i64, i64* %var_2_1630, align 8
; %var_2_790 = load i64, i64* %var_2_783, align 8
; Matched:\<badref\>:  store i64 %var_2_1631, i64* %var_2_316, align 1
; store i64 %var_2_790, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_791 = add i64 %var_2_511, 169
; Matched:%var_2_2648:  %var_2_2648 = add i64 %var_2_2630, 57
; %var_2_792 = add i64 %var_2_511, 57
%var_2_793 = load i64, i64* %RSP, align 8
%var_2_794 = add i64 %var_2_793, -8
; Matched:%var_2_2651:  %var_2_2651 = inttoptr i64 %var_2_2650 to i64*
; %var_2_795 = inttoptr i64 %var_2_794 to i64*
; Matched:\<badref\>:  store i64 %var_2_2648, i64* %var_2_2651, align 8
; store i64 %var_2_792, i64* %var_2_795, align 8
; Matched:\<badref\>:  store i64 %var_2_2733, i64* %var_2_6, align 8
; store i64 %var_2_794, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2647, i64* %var_2_3, align 8
; store i64 %var_2_791, i64* %PC, align 8
%var_2_796 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_791, %struct.Memory* %MEMORY.3)
  %.pre437 = load i64, i64* %RBP, align 8
; Matched:  %.pre127 = load i64, i64* %var_2_3, align 8
; %.pre438 = load i64, i64* %PC, align 8
  br label %block_401580

block_40101d:                                     ; preds = %block_400fce, %block_400fe0
; Matched:%var_2_1564:  %var_2_1564 = phi i64 [ %var_2_1378, %block_.L_400fce ], [ %.pre112, %block_400fe0 ]
; %var_2_797 = phi i64 [ %var_2_999, %block_400fce ], [ %.pre423, %block_400fe0 ]
; Matched:%var_2_1565:  %var_2_1565 = phi i64 [ %var_2_1549, %block_.L_400fce ], [ %.pre111, %block_400fe0 ]
; %var_2_798 = phi i64 [ %var_2_847, %block_400fce ], [ %.pre422, %block_400fe0 ]
%MEMORY.5 = phi %struct.Memory* [ %MEMORY.15, %block_400fce ], [ %var_2_1564, %block_400fe0 ]
%var_2_799 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 48) to i64*), align 16
store i64 %var_2_799, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2017:  %var_2_2017 = add i64 %var_2_2011, -144
; %var_2_800 = add i64 %var_2_797, -144
; Matched:%var_2_1571:  %var_2_1571 = add i64 %var_2_1565, 16
; %var_2_801 = add i64 %var_2_798, 16
; Matched:\<badref\>:  store i64 %var_2_1571, i64* %var_2_3, align 8
; store i64 %var_2_801, i64* %PC, align 8
; Matched:%var_2_1572:  %var_2_1572 = inttoptr i64 %var_2_1570 to i64*
; %var_2_802 = inttoptr i64 %var_2_800 to i64*
; Matched:\<badref\>:  store i64 %var_2_2486, i64* %var_2_2489, align 8
; store i64 %var_2_799, i64* %var_2_802, align 8
; Matched:%var_2_2020:  %var_2_2020 = load i64, i64* %RBP.i, align 8
; %var_2_803 = load i64, i64* %RBP, align 8
; Matched:%var_2_2021:  %var_2_2021 = add i64 %var_2_2020, -152
; %var_2_804 = add i64 %var_2_803, -152
%var_2_805 = load i64, i64* %PC, align 8
%var_2_806 = add i64 %var_2_805, 8
store i64 %var_2_806, i64* %PC, align 8
; Matched:%var_2_2024:  %var_2_2024 = load i64, i64* %var_2_302, align 1
; %var_2_807 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_2025:  %var_2_2025 = inttoptr i64 %var_2_2021 to i64*
; %var_2_808 = inttoptr i64 %var_2_804 to i64*
; Matched:\<badref\>:  store i64 %var_2_2024, i64* %var_2_2025, align 8
; store i64 %var_2_807, i64* %var_2_808, align 8
%var_2_809 = load i64, i64* %RBP, align 8
%var_2_810 = add i64 %var_2_809, -24
%var_2_811 = load i64, i64* %PC, align 8
%var_2_812 = add i64 %var_2_811, 8
store i64 %var_2_812, i64* %PC, align 8
%var_2_813 = inttoptr i64 %var_2_810 to i64*
store i64 1, i64* %var_2_813, align 8
  %.pre424 = load i64, i64* %PC, align 8
  br label %block_40103d

block_400fce:                                     ; preds = %block_400ecb
%var_2_814 = add i64 %var_2_999, -176
; Matched:%var_2_1517:  %var_2_1517 = add i64 %var_2_1414, 6
; %var_2_815 = add i64 %var_2_1035, 6
; Matched:\<badref\>:  store i64 %var_2_1517, i64* %var_2_3, align 8
; store i64 %var_2_815, i64* %PC, align 8
%var_2_816 = inttoptr i64 %var_2_814 to i32*
%var_2_817 = load i32, i32* %var_2_816, align 4
; Matched:%var_2_1010:  %var_2_1010 = zext i32 %var_2_1009 to i64
; %var_2_818 = zext i32 %var_2_817 to i64
; Matched:\<badref\>:  store i64 %var_2_1010, i64* %RAX.i1199, align 8
; store i64 %var_2_818, i64* %RAX, align 8
%var_2_819 = add i64 %var_2_999, -172
; Matched:%var_2_1522:  %var_2_1522 = add i64 %var_2_1414, 12
; %var_2_820 = add i64 %var_2_1035, 12
; Matched:\<badref\>:  store i64 %var_2_1522, i64* %var_2_3, align 8
; store i64 %var_2_820, i64* %PC, align 8
%var_2_821 = inttoptr i64 %var_2_819 to i32*
%var_2_822 = load i32, i32* %var_2_821, align 4
%var_2_823 = sub i32 %var_2_817, %var_2_822
; Matched:%var_2_1323:  %var_2_1323 = icmp ult i32 %var_2_1316, %var_2_1321
; %var_2_824 = icmp ult i32 %var_2_817, %var_2_822
; Matched:%var_2_1324:  %var_2_1324 = zext i1 %var_2_1323 to i8
; %var_2_825 = zext i1 %var_2_824 to i8
; Matched:\<badref\>:  store i8 %var_2_1527, i8* %var_2_14, align 1
; store i8 %var_2_825, i8* %var_2_18, align 1
; Matched:%var_2_1325:  %var_2_1325 = and i32 %var_2_1322, 255
; %var_2_826 = and i32 %var_2_823, 255
; Matched:%var_2_1326:  %var_2_1326 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1325)
; %var_2_827 = tail call i32 @llvm.ctpop.i32(i32 %var_2_826) #14
; Matched:%var_2_1151:  %var_2_1151 = trunc i32 %var_2_1150 to i8
; %var_2_828 = trunc i32 %var_2_827 to i8
; Matched:%var_2_1152:  %var_2_1152 = and i8 %var_2_1151, 1
; %var_2_829 = and i8 %var_2_828, 1
; Matched:%var_2_1153:  %var_2_1153 = xor i8 %var_2_1152, 1
; %var_2_830 = xor i8 %var_2_829, 1
; Matched:\<badref\>:  store i8 %var_2_1532, i8* %var_2_21, align 1
; store i8 %var_2_830, i8* %var_2_25, align 1
; Matched:%var_2_1154:  %var_2_1154 = xor i32 %var_2_1145, %var_2_1140
; %var_2_831 = xor i32 %var_2_822, %var_2_817
; Matched:%var_2_1024:  %var_2_1024 = xor i32 %var_2_1023, %var_2_1015
; %var_2_832 = xor i32 %var_2_831, %var_2_823
; Matched:%var_2_1332:  %var_2_1332 = lshr i32 %var_2_1331, 4
; %var_2_833 = lshr i32 %var_2_832, 4
; Matched:%var_2_1157:  %var_2_1157 = trunc i32 %var_2_1156 to i8
; %var_2_834 = trunc i32 %var_2_833 to i8
; Matched:%var_2_1158:  %var_2_1158 = and i8 %var_2_1157, 1
; %var_2_835 = and i8 %var_2_834, 1
; Matched:\<badref\>:  store i8 %var_2_2142, i8* %var_2_26, align 1
; store i8 %var_2_835, i8* %var_2_30, align 1
%var_2_836 = icmp eq i32 %var_2_823, 0
; Matched:%var_2_2144:  %var_2_2144 = zext i1 %var_2_2143 to i8
; %var_2_837 = zext i1 %var_2_836 to i8
; Matched:\<badref\>:  store i8 %var_2_1160, i8* %var_2_29, align 1
; store i8 %var_2_837, i8* %var_2_33, align 1
; Matched:%var_2_1337:  %var_2_1337 = lshr i32 %var_2_1322, 31
; %var_2_838 = lshr i32 %var_2_823, 31
; Matched:%var_2_1338:  %var_2_1338 = trunc i32 %var_2_1337 to i8
; %var_2_839 = trunc i32 %var_2_838 to i8
; Matched:\<badref\>:  store i8 %var_2_1541, i8* %var_2_32, align 1
; store i8 %var_2_839, i8* %var_2_36, align 1
; Matched:%var_2_1542:  %var_2_1542 = lshr i32 %var_2_1519, 31
; %var_2_840 = lshr i32 %var_2_817, 31
; Matched:%var_2_1543:  %var_2_1543 = lshr i32 %var_2_1524, 31
; %var_2_841 = lshr i32 %var_2_822, 31
; Matched:%var_2_1544:  %var_2_1544 = xor i32 %var_2_1543, %var_2_1542
; %var_2_842 = xor i32 %var_2_841, %var_2_840
; Matched:%var_2_1035:  %var_2_1035 = xor i32 %var_2_1030, %var_2_1032
; %var_2_843 = xor i32 %var_2_838, %var_2_840
; Matched:%var_2_1036:  %var_2_1036 = add nuw nsw i32 %var_2_1035, %var_2_1034
; %var_2_844 = add nuw nsw i32 %var_2_843, %var_2_842
; Matched:%var_2_1344:  %var_2_1344 = icmp eq i32 %var_2_1343, 2
; %var_2_845 = icmp eq i32 %var_2_844, 2
; Matched:%var_2_1345:  %var_2_1345 = zext i1 %var_2_1344 to i8
; %var_2_846 = zext i1 %var_2_845 to i8
; Matched:\<badref\>:  store i8 %var_2_1345, i8* %var_2_38, align 1
; store i8 %var_2_846, i8* %var_2_42, align 1
%.v461 = select i1 %var_2_836, i64 18, i64 79
%var_2_847 = add i64 %var_2_1035, %.v461
; Matched:\<badref\>:  store i64 %var_2_1549, i64* %var_2_3, align 8
; store i64 %var_2_847, i64* %PC, align 8
br i1 %var_2_836, label %block_400fe0, label %block_40101d

block_401246:                                     ; preds = %block_401234
; Matched:%var_2_1988:  %var_2_1988 = add i64 %var_2_1987, 4
; %var_2_848 = add i64 %var_2_1232, 4
; Matched:\<badref\>:  store i64 %var_2_1988, i64* %var_2_3, align 8
; store i64 %var_2_848, i64* %PC, align 8
; Matched:%var_2_1989:  %var_2_1989 = load i64, i64* %var_2_1592, align 8
; %var_2_849 = load i64, i64* %var_2_1064, align 8
; Matched:\<badref\>:  store i64 %var_2_1989, i64* %RDI.i1206, align 8
; store i64 %var_2_849, i64* %RDI, align 8
%var_2_850 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_851 = sext i32 %var_2_850 to i64
store i64 %var_2_851, i64* %RSI, align 8
%var_2_852 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_853 = sext i32 %var_2_852 to i64
store i64 %var_2_853, i64* %RDX, align 8
%var_2_854 = add i64 %var_2_1057, -144
; Matched:%var_2_1995:  %var_2_1995 = add i64 %var_2_1987, 28
; %var_2_855 = add i64 %var_2_1232, 28
; Matched:\<badref\>:  store i64 %var_2_1995, i64* %var_2_3, align 8
; store i64 %var_2_855, i64* %PC, align 8
%var_2_856 = inttoptr i64 %var_2_854 to i64*
%var_2_857 = load i64, i64* %var_2_856, align 8
; Matched:\<badref\>:  store i64 %var_2_2536, i64* %var_2_302, align 1
; store i64 %var_2_857, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_1998:  %var_2_1998 = add i64 %var_2_1987, 36
; %var_2_858 = add i64 %var_2_1232, 36
; Matched:\<badref\>:  store i64 %var_2_1998, i64* %var_2_3, align 8
; store i64 %var_2_858, i64* %PC, align 8
%var_2_859 = load i64, i64* %var_2_856, align 8
; Matched:\<badref\>:  store i64 %var_2_1999, i64* %var_2_307, align 1
; store i64 %var_2_859, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_860 = add i64 %var_2_1057, -152
; Matched:%var_2_2001:  %var_2_2001 = add i64 %var_2_1987, 44
; %var_2_861 = add i64 %var_2_1232, 44
; Matched:\<badref\>:  store i64 %var_2_2001, i64* %var_2_3, align 8
; store i64 %var_2_861, i64* %PC, align 8
%var_2_862 = inttoptr i64 %var_2_860 to i64*
; Matched:%var_2_2003:  %var_2_2003 = load i64, i64* %var_2_2002, align 8
; %var_2_863 = load i64, i64* %var_2_862, align 8
; Matched:\<badref\>:  store i64 %var_2_2003, i64* %var_2_312, align 1
; store i64 %var_2_863, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_2004:  %var_2_2004 = add i64 %var_2_1987, 52
; %var_2_864 = add i64 %var_2_1232, 52
; Matched:\<badref\>:  store i64 %var_2_2004, i64* %var_2_3, align 8
; store i64 %var_2_864, i64* %PC, align 8
; Matched:%var_2_1782:  %var_2_1782 = load i64, i64* %var_2_1781, align 8
; %var_2_865 = load i64, i64* %var_2_862, align 8
; Matched:\<badref\>:  store i64 %var_2_1782, i64* %var_2_316, align 1
; store i64 %var_2_865, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_866 = add i64 %var_2_1232, 938
; Matched:%var_2_2007:  %var_2_2007 = add i64 %var_2_1987, 57
; %var_2_867 = add i64 %var_2_1232, 57
%var_2_868 = load i64, i64* %RSP, align 8
%var_2_869 = add i64 %var_2_868, -8
; Matched:%var_2_2010:  %var_2_2010 = inttoptr i64 %var_2_2009 to i64*
; %var_2_870 = inttoptr i64 %var_2_869 to i64*
; Matched:\<badref\>:  store i64 %var_2_2007, i64* %var_2_2010, align 8
; store i64 %var_2_867, i64* %var_2_870, align 8
; Matched:\<badref\>:  store i64 %var_2_887, i64* %var_2_6, align 8
; store i64 %var_2_869, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2006, i64* %var_2_3, align 8
; store i64 %var_2_866, i64* %PC, align 8
%var_2_871 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_866, %struct.Memory* %MEMORY.5)
; Matched:  %.pre114 = load i64, i64* %var_2_3, align 8
; %.pre425 = load i64, i64* %PC, align 8
  %.pre426 = load i64, i64* %RBP, align 8
  br label %block_40127f

block_400dc1:                                     ; preds = %block_400e4a, %block_400dae
%var_2_872 = phi i64 [ %var_2_2266, %block_400e4a ], [ %.pre418, %block_400dae ]
%var_2_873 = load i64, i64* %RBP, align 8
%var_2_874 = add i64 %var_2_873, -24
; Matched:%var_2_1197:  %var_2_1197 = add i64 %var_2_1194, 4
; %var_2_875 = add i64 %var_2_872, 4
; Matched:\<badref\>:  store i64 %var_2_1197, i64* %var_2_3, align 8
; store i64 %var_2_875, i64* %PC, align 8
%var_2_876 = inttoptr i64 %var_2_874 to i64*
%var_2_877 = load i64, i64* %var_2_876, align 8
; Matched:\<badref\>:  store i64 %var_2_1382, i64* %RAX.i1199, align 8
; store i64 %var_2_877, i64* %RAX, align 8
%var_2_878 = add i64 %var_2_873, -56
; Matched:%var_2_1201:  %var_2_1201 = add i64 %var_2_1194, 8
; %var_2_879 = add i64 %var_2_872, 8
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %var_2_3, align 8
; store i64 %var_2_879, i64* %PC, align 8
%var_2_880 = inttoptr i64 %var_2_878 to i64*
%var_2_881 = load i64, i64* %var_2_880, align 8
%var_2_882 = sub i64 %var_2_877, %var_2_881
; Matched:%var_2_1205:  %var_2_1205 = icmp ult i64 %var_2_1199, %var_2_1203
; %var_2_883 = icmp ult i64 %var_2_877, %var_2_881
; Matched:%var_2_1206:  %var_2_1206 = zext i1 %var_2_1205 to i8
; %var_2_884 = zext i1 %var_2_883 to i8
; Matched:\<badref\>:  store i8 %var_2_1206, i8* %var_2_14, align 1
; store i8 %var_2_884, i8* %var_2_18, align 1
; Matched:%var_2_1207:  %var_2_1207 = trunc i64 %var_2_1204 to i32
; %var_2_885 = trunc i64 %var_2_882 to i32
; Matched:%var_2_1208:  %var_2_1208 = and i32 %var_2_1207, 255
; %var_2_886 = and i32 %var_2_885, 255
; Matched:%var_2_1209:  %var_2_1209 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1208)
; %var_2_887 = tail call i32 @llvm.ctpop.i32(i32 %var_2_886) #14
; Matched:%var_2_1210:  %var_2_1210 = trunc i32 %var_2_1209 to i8
; %var_2_888 = trunc i32 %var_2_887 to i8
; Matched:%var_2_1211:  %var_2_1211 = and i8 %var_2_1210, 1
; %var_2_889 = and i8 %var_2_888, 1
; Matched:%var_2_1212:  %var_2_1212 = xor i8 %var_2_1211, 1
; %var_2_890 = xor i8 %var_2_889, 1
; Matched:\<badref\>:  store i8 %var_2_1212, i8* %var_2_21, align 1
; store i8 %var_2_890, i8* %var_2_25, align 1
; Matched:%var_2_1213:  %var_2_1213 = xor i64 %var_2_1203, %var_2_1199
; %var_2_891 = xor i64 %var_2_881, %var_2_877
; Matched:%var_2_1214:  %var_2_1214 = xor i64 %var_2_1213, %var_2_1204
; %var_2_892 = xor i64 %var_2_891, %var_2_882
; Matched:%var_2_1215:  %var_2_1215 = lshr i64 %var_2_1214, 4
; %var_2_893 = lshr i64 %var_2_892, 4
; Matched:%var_2_1216:  %var_2_1216 = trunc i64 %var_2_1215 to i8
; %var_2_894 = trunc i64 %var_2_893 to i8
; Matched:%var_2_1217:  %var_2_1217 = and i8 %var_2_1216, 1
; %var_2_895 = and i8 %var_2_894, 1
; Matched:\<badref\>:  store i8 %var_2_1217, i8* %var_2_26, align 1
; store i8 %var_2_895, i8* %var_2_30, align 1
%var_2_896 = icmp eq i64 %var_2_882, 0
; Matched:%var_2_1219:  %var_2_1219 = zext i1 %var_2_1218 to i8
; %var_2_897 = zext i1 %var_2_896 to i8
; Matched:\<badref\>:  store i8 %var_2_1219, i8* %var_2_29, align 1
; store i8 %var_2_897, i8* %var_2_33, align 1
%var_2_898 = lshr i64 %var_2_882, 63
%var_2_899 = trunc i64 %var_2_898 to i8
; Matched:\<badref\>:  store i8 %var_2_1221, i8* %var_2_32, align 1
; store i8 %var_2_899, i8* %var_2_36, align 1
%var_2_900 = lshr i64 %var_2_877, 63
%var_2_901 = lshr i64 %var_2_881, 63
%var_2_902 = xor i64 %var_2_901, %var_2_900
%var_2_903 = xor i64 %var_2_898, %var_2_900
%var_2_904 = add nuw nsw i64 %var_2_903, %var_2_902
%var_2_905 = icmp eq i64 %var_2_904, 2
; Matched:%var_2_1228:  %var_2_1228 = zext i1 %var_2_1227 to i8
; %var_2_906 = zext i1 %var_2_905 to i8
; Matched:\<badref\>:  store i8 %var_2_1228, i8* %var_2_38, align 1
; store i8 %var_2_906, i8* %var_2_42, align 1
%var_2_907 = icmp ne i8 %var_2_899, 0
%var_2_908 = xor i1 %var_2_907, %var_2_905
%.demorgan444 = or i1 %var_2_896, %var_2_908
  %.v458 = select i1 %.demorgan444, i64 14, i64 159
%var_2_909 = add i64 %var_2_872, %.v458
; Matched:\<badref\>:  store i64 %var_2_1231, i64* %var_2_3, align 8
; store i64 %var_2_909, i64* %PC, align 8
  br i1 %.demorgan444, label %block_400dcf, label %block_400e60

block_4008a7:                                     ; preds = %block_400898
  store i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
%var_2_910 = add i64 %var_2_1796, -16
; Matched:%var_2_110:  %var_2_110 = add i64 %var_2_108, 21
; %var_2_911 = add i64 %var_2_1832, 21
; Matched:\<badref\>:  store i64 %var_2_110, i64* %var_2_3, align 8
; store i64 %var_2_911, i64* %PC, align 8
%var_2_912 = inttoptr i64 %var_2_910 to i64*
%var_2_913 = load i64, i64* %var_2_912, align 8
; Matched:\<badref\>:  store i64 %var_2_112, i64* %RCX.i1209, align 8
; store i64 %var_2_913, i64* %RCX, align 8
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_108, 28
; %var_2_914 = add i64 %var_2_1832, 28
; Matched:\<badref\>:  store i64 %var_2_113, i64* %var_2_3, align 8
; store i64 %var_2_914, i64* %PC, align 8
%var_2_915 = load i32, i32* %var_2_1799, align 4
%var_2_916 = sext i32 %var_2_915 to i64
; Matched:\<badref\>:  store i64 %var_2_115, i64* %RDI.i1206, align 8
; store i64 %var_2_916, i64* %RDI, align 8
; Matched:%var_2_116:  %var_2_116 = shl nsw i64 %var_2_115, 3
; %var_2_917 = shl nsw i64 %var_2_916, 3
; Matched:%var_2_229:  %var_2_229 = add i64 %var_2_228, %var_2_222
; %var_2_918 = add i64 %var_2_917, %var_2_913
; Matched:%var_2_118:  %var_2_118 = add i64 %var_2_108, 32
; %var_2_919 = add i64 %var_2_1832, 32
; Matched:\<badref\>:  store i64 %var_2_118, i64* %var_2_3, align 8
; store i64 %var_2_919, i64* %PC, align 8
; Matched:%var_2_119:  %var_2_119 = inttoptr i64 %var_2_117 to i64*
; %var_2_920 = inttoptr i64 %var_2_918 to i64*
; Matched:%var_2_120:  %var_2_120 = load i64, i64* %var_2_119, align 8
; %var_2_921 = load i64, i64* %var_2_920, align 8
; Matched:\<badref\>:  store i64 %var_2_120, i64* %RDI.i1206, align 8
; store i64 %var_2_921, i64* %RDI, align 8
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_108, -487
; %var_2_922 = add i64 %var_2_1832, -487
; Matched:%var_2_122:  %var_2_122 = add i64 %var_2_108, 37
; %var_2_923 = add i64 %var_2_1832, 37
%var_2_924 = load i64, i64* %RSP, align 8
%var_2_925 = add i64 %var_2_924, -8
; Matched:%var_2_125:  %var_2_125 = inttoptr i64 %var_2_124 to i64*
; %var_2_926 = inttoptr i64 %var_2_925 to i64*
; Matched:\<badref\>:  store i64 %var_2_122, i64* %var_2_125, align 8
; store i64 %var_2_923, i64* %var_2_926, align 8
; Matched:\<badref\>:  store i64 %var_2_236, i64* %var_2_6, align 8
; store i64 %var_2_925, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_121, i64* %var_2_3, align 8
; store i64 %var_2_922, i64* %PC, align 8
%var_2_927 = tail call fastcc %struct.Memory* @ext_6020e8_strncmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.19)
%var_2_928 = load i32, i32* %EAX, align 4
; Matched:%var_2_128:  %var_2_128 = load i64, i64* %var_2_3, align 8
; %var_2_929 = load i64, i64* %PC, align 8
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_129:  %var_2_129 = and i32 %var_2_127, 255
; %var_2_930 = and i32 %var_2_928, 255
; Matched:%var_2_130:  %var_2_130 = tail call i32 @llvm.ctpop.i32(i32 %var_2_129)
; %var_2_931 = tail call i32 @llvm.ctpop.i32(i32 %var_2_930) #14
; Matched:%var_2_131:  %var_2_131 = trunc i32 %var_2_130 to i8
; %var_2_932 = trunc i32 %var_2_931 to i8
; Matched:%var_2_132:  %var_2_132 = and i8 %var_2_131, 1
; %var_2_933 = and i8 %var_2_932, 1
; Matched:%var_2_133:  %var_2_133 = xor i8 %var_2_132, 1
; %var_2_934 = xor i8 %var_2_933, 1
; Matched:\<badref\>:  store i8 %var_2_133, i8* %var_2_21, align 1
; store i8 %var_2_934, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
%var_2_935 = icmp eq i32 %var_2_928, 0
; Matched:%var_2_135:  %var_2_135 = zext i1 %var_2_134 to i8
; %var_2_936 = zext i1 %var_2_935 to i8
; Matched:\<badref\>:  store i8 %var_2_135, i8* %var_2_29, align 1
; store i8 %var_2_936, i8* %var_2_33, align 1
; Matched:%var_2_136:  %var_2_136 = lshr i32 %var_2_127, 31
; %var_2_937 = lshr i32 %var_2_928, 31
; Matched:%var_2_137:  %var_2_137 = trunc i32 %var_2_136 to i8
; %var_2_938 = trunc i32 %var_2_937 to i8
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_32, align 1
; store i8 %var_2_938, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
; Matched:  %.v164 = select i1 %var_2_134, i64 36, i64 9
; %.v476 = select i1 %var_2_935, i64 36, i64 9
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_128, %.v164
; %var_2_939 = add i64 %var_2_929, %.v476
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_3, align 8
; store i64 %var_2_939, i64* %PC, align 8
  %.pre440 = load i64, i64* %RBP, align 8
br i1 %var_2_935, label %block_4008f0, label %block_4008d5

block_40127f:                                     ; preds = %block_401234, %block_401246
; Matched:%var_2_2011:  %var_2_2011 = phi i64 [ %var_2_1585, %block_.L_401234 ], [ %.pre115, %block_401246 ]
; %var_2_940 = phi i64 [ %var_2_1057, %block_401234 ], [ %.pre426, %block_401246 ]
; Matched:%var_2_2012:  %var_2_2012 = phi i64 [ %var_2_1987, %block_.L_401234 ], [ %.pre114, %block_401246 ]
; %var_2_941 = phi i64 [ %var_2_1232, %block_401234 ], [ %.pre425, %block_401246 ]
%MEMORY.7 = phi %struct.Memory* [ %MEMORY.5, %block_401234 ], [ %var_2_871, %block_401246 ]
%var_2_942 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_942, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2487:  %var_2_2487 = add i64 %var_2_2481, -144
; %var_2_943 = add i64 %var_2_940, -144
; Matched:%var_2_2018:  %var_2_2018 = add i64 %var_2_2012, 16
; %var_2_944 = add i64 %var_2_941, 16
; Matched:\<badref\>:  store i64 %var_2_2018, i64* %var_2_3, align 8
; store i64 %var_2_944, i64* %PC, align 8
; Matched:%var_2_2489:  %var_2_2489 = inttoptr i64 %var_2_2487 to i64*
; %var_2_945 = inttoptr i64 %var_2_943 to i64*
; Matched:\<badref\>:  store i64 %var_2_1569, i64* %var_2_1572, align 8
; store i64 %var_2_942, i64* %var_2_945, align 8
; Matched:%var_2_1573:  %var_2_1573 = load i64, i64* %RBP.i, align 8
; %var_2_946 = load i64, i64* %RBP, align 8
; Matched:%var_2_1574:  %var_2_1574 = add i64 %var_2_1573, -152
; %var_2_947 = add i64 %var_2_946, -152
%var_2_948 = load i64, i64* %PC, align 8
%var_2_949 = add i64 %var_2_948, 8
store i64 %var_2_949, i64* %PC, align 8
; Matched:%var_2_1577:  %var_2_1577 = load i64, i64* %var_2_302, align 1
; %var_2_950 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_1578:  %var_2_1578 = inttoptr i64 %var_2_1574 to i64*
; %var_2_951 = inttoptr i64 %var_2_947 to i64*
; Matched:\<badref\>:  store i64 %var_2_1577, i64* %var_2_1578, align 8
; store i64 %var_2_950, i64* %var_2_951, align 8
; Matched:%var_2_2026:  %var_2_2026 = load i64, i64* %RBP.i, align 8
; %var_2_952 = load i64, i64* %RBP, align 8
; Matched:%var_2_2027:  %var_2_2027 = add i64 %var_2_2026, -160
; %var_2_953 = add i64 %var_2_952, -160
%var_2_954 = load i64, i64* %PC, align 8
%var_2_955 = add i64 %var_2_954, 8
store i64 %var_2_955, i64* %PC, align 8
; Matched:%var_2_2030:  %var_2_2030 = load i64, i64* %var_2_302, align 1
; %var_2_956 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_2031:  %var_2_2031 = inttoptr i64 %var_2_2027 to i64*
; %var_2_957 = inttoptr i64 %var_2_953 to i64*
; Matched:\<badref\>:  store i64 %var_2_2030, i64* %var_2_2031, align 8
; store i64 %var_2_956, i64* %var_2_957, align 8
%var_2_958 = load i64, i64* %RBP, align 8
%var_2_959 = add i64 %var_2_958, -24
%var_2_960 = load i64, i64* %PC, align 8
%var_2_961 = add i64 %var_2_960, 8
store i64 %var_2_961, i64* %PC, align 8
%var_2_962 = inttoptr i64 %var_2_959 to i64*
store i64 1, i64* %var_2_962, align 8
  %.pre427 = load i64, i64* %PC, align 8
  br label %block_4012a7

block_400b66:                                     ; preds = %block_400a99
%var_2_963 = add i64 %var_2_1686, -176
; Matched:%var_2_829:  %var_2_829 = add i64 %var_2_682, 6
; %var_2_964 = add i64 %var_2_1722, 6
; Matched:\<badref\>:  store i64 %var_2_829, i64* %var_2_3, align 8
; store i64 %var_2_964, i64* %PC, align 8
%var_2_965 = inttoptr i64 %var_2_963 to i32*
%var_2_966 = load i32, i32* %var_2_965, align 4
; Matched:%var_2_1520:  %var_2_1520 = zext i32 %var_2_1519 to i64
; %var_2_967 = zext i32 %var_2_966 to i64
; Matched:\<badref\>:  store i64 %var_2_1520, i64* %RAX.i1199, align 8
; store i64 %var_2_967, i64* %RAX, align 8
%var_2_968 = add i64 %var_2_1686, -172
; Matched:%var_2_834:  %var_2_834 = add i64 %var_2_682, 12
; %var_2_969 = add i64 %var_2_1722, 12
; Matched:\<badref\>:  store i64 %var_2_834, i64* %var_2_3, align 8
; store i64 %var_2_969, i64* %PC, align 8
%var_2_970 = inttoptr i64 %var_2_968 to i32*
%var_2_971 = load i32, i32* %var_2_970, align 4
%var_2_972 = sub i32 %var_2_966, %var_2_971
; Matched:%var_2_1147:  %var_2_1147 = icmp ult i32 %var_2_1140, %var_2_1145
; %var_2_973 = icmp ult i32 %var_2_966, %var_2_971
; Matched:%var_2_1527:  %var_2_1527 = zext i1 %var_2_1526 to i8
; %var_2_974 = zext i1 %var_2_973 to i8
; Matched:\<badref\>:  store i8 %var_2_1148, i8* %var_2_14, align 1
; store i8 %var_2_974, i8* %var_2_18, align 1
; Matched:%var_2_1149:  %var_2_1149 = and i32 %var_2_1146, 255
; %var_2_975 = and i32 %var_2_972, 255
; Matched:%var_2_1150:  %var_2_1150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1149)
; %var_2_976 = tail call i32 @llvm.ctpop.i32(i32 %var_2_975) #14
; Matched:%var_2_2135:  %var_2_2135 = trunc i32 %var_2_2134 to i8
; %var_2_977 = trunc i32 %var_2_976 to i8
; Matched:%var_2_2136:  %var_2_2136 = and i8 %var_2_2135, 1
; %var_2_978 = and i8 %var_2_977, 1
; Matched:%var_2_2137:  %var_2_2137 = xor i8 %var_2_2136, 1
; %var_2_979 = xor i8 %var_2_978, 1
; Matched:\<badref\>:  store i8 %var_2_2137, i8* %var_2_21, align 1
; store i8 %var_2_979, i8* %var_2_25, align 1
; Matched:%var_2_2138:  %var_2_2138 = xor i32 %var_2_2129, %var_2_2124
; %var_2_980 = xor i32 %var_2_971, %var_2_966
; Matched:%var_2_1155:  %var_2_1155 = xor i32 %var_2_1154, %var_2_1146
; %var_2_981 = xor i32 %var_2_980, %var_2_972
; Matched:%var_2_1156:  %var_2_1156 = lshr i32 %var_2_1155, 4
; %var_2_982 = lshr i32 %var_2_981, 4
; Matched:%var_2_2141:  %var_2_2141 = trunc i32 %var_2_2140 to i8
; %var_2_983 = trunc i32 %var_2_982 to i8
; Matched:%var_2_2142:  %var_2_2142 = and i8 %var_2_2141, 1
; %var_2_984 = and i8 %var_2_983, 1
; Matched:\<badref\>:  store i8 %var_2_849, i8* %var_2_26, align 1
; store i8 %var_2_984, i8* %var_2_30, align 1
%var_2_985 = icmp eq i32 %var_2_972, 0
; Matched:%var_2_851:  %var_2_851 = zext i1 %var_2_850 to i8
; %var_2_986 = zext i1 %var_2_985 to i8
; Matched:\<badref\>:  store i8 %var_2_2144, i8* %var_2_29, align 1
; store i8 %var_2_986, i8* %var_2_33, align 1
; Matched:%var_2_1161:  %var_2_1161 = lshr i32 %var_2_1146, 31
; %var_2_987 = lshr i32 %var_2_972, 31
; Matched:%var_2_1162:  %var_2_1162 = trunc i32 %var_2_1161 to i8
; %var_2_988 = trunc i32 %var_2_987 to i8
; Matched:\<badref\>:  store i8 %var_2_1162, i8* %var_2_32, align 1
; store i8 %var_2_988, i8* %var_2_36, align 1
; Matched:%var_2_1163:  %var_2_1163 = lshr i32 %var_2_1140, 31
; %var_2_989 = lshr i32 %var_2_966, 31
; Matched:%var_2_1340:  %var_2_1340 = lshr i32 %var_2_1321, 31
; %var_2_990 = lshr i32 %var_2_971, 31
; Matched:%var_2_1341:  %var_2_1341 = xor i32 %var_2_1340, %var_2_1339
; %var_2_991 = xor i32 %var_2_990, %var_2_989
; Matched:%var_2_1545:  %var_2_1545 = xor i32 %var_2_1540, %var_2_1542
; %var_2_992 = xor i32 %var_2_987, %var_2_989
; Matched:%var_2_1546:  %var_2_1546 = add nuw nsw i32 %var_2_1545, %var_2_1544
; %var_2_993 = add nuw nsw i32 %var_2_992, %var_2_991
; Matched:%var_2_1547:  %var_2_1547 = icmp eq i32 %var_2_1546, 2
; %var_2_994 = icmp eq i32 %var_2_993, 2
; Matched:%var_2_1548:  %var_2_1548 = zext i1 %var_2_1547 to i8
; %var_2_995 = zext i1 %var_2_994 to i8
; Matched:\<badref\>:  store i8 %var_2_1169, i8* %var_2_38, align 1
; store i8 %var_2_995, i8* %var_2_42, align 1
%.v453 = select i1 %var_2_985, i64 18, i64 58
%var_2_996 = add i64 %var_2_1722, %.v453
; Matched:\<badref\>:  store i64 %var_2_861, i64* %var_2_3, align 8
; store i64 %var_2_996, i64* %PC, align 8
br i1 %var_2_985, label %block_400b78, label %block_400ba0

block_400ecb:                                     ; preds = %block_400ea2, %block_400ed9
%var_2_997 = phi i32 [ 2, %block_400ea2 ], [ %var_2_343, %block_400ed9 ]
%var_2_998 = phi i64 [ %.pre421, %block_400ea2 ], [ %var_2_412, %block_400ed9 ]
%var_2_999 = load i64, i64* %RBP, align 8
%var_2_1000 = add i64 %var_2_999, -24
; Matched:%var_2_1380:  %var_2_1380 = add i64 %var_2_1377, 4
; %var_2_1001 = add i64 %var_2_998, 4
; Matched:\<badref\>:  store i64 %var_2_1380, i64* %var_2_3, align 8
; store i64 %var_2_1001, i64* %PC, align 8
%var_2_1002 = inttoptr i64 %var_2_1000 to i64*
%var_2_1003 = load i64, i64* %var_2_1002, align 8
; Matched:\<badref\>:  store i64 %var_2_1067, i64* %RAX.i1199, align 8
; store i64 %var_2_1003, i64* %RAX, align 8
%var_2_1004 = add i64 %var_2_999, -64
; Matched:%var_2_1384:  %var_2_1384 = add i64 %var_2_1377, 8
; %var_2_1005 = add i64 %var_2_998, 8
; Matched:\<badref\>:  store i64 %var_2_1384, i64* %var_2_3, align 8
; store i64 %var_2_1005, i64* %PC, align 8
%var_2_1006 = inttoptr i64 %var_2_1004 to i64*
%var_2_1007 = load i64, i64* %var_2_1006, align 8
%var_2_1008 = sub i64 %var_2_1003, %var_2_1007
; Matched:%var_2_1388:  %var_2_1388 = icmp ult i64 %var_2_1382, %var_2_1386
; %var_2_1009 = icmp ult i64 %var_2_1003, %var_2_1007
; Matched:%var_2_1389:  %var_2_1389 = zext i1 %var_2_1388 to i8
; %var_2_1010 = zext i1 %var_2_1009 to i8
; Matched:\<badref\>:  store i8 %var_2_1389, i8* %var_2_14, align 1
; store i8 %var_2_1010, i8* %var_2_18, align 1
; Matched:%var_2_1390:  %var_2_1390 = trunc i64 %var_2_1387 to i32
; %var_2_1011 = trunc i64 %var_2_1008 to i32
; Matched:%var_2_1391:  %var_2_1391 = and i32 %var_2_1390, 255
; %var_2_1012 = and i32 %var_2_1011, 255
; Matched:%var_2_1392:  %var_2_1392 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1391)
; %var_2_1013 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1012) #14
; Matched:%var_2_1393:  %var_2_1393 = trunc i32 %var_2_1392 to i8
; %var_2_1014 = trunc i32 %var_2_1013 to i8
; Matched:%var_2_1394:  %var_2_1394 = and i8 %var_2_1393, 1
; %var_2_1015 = and i8 %var_2_1014, 1
; Matched:%var_2_1395:  %var_2_1395 = xor i8 %var_2_1394, 1
; %var_2_1016 = xor i8 %var_2_1015, 1
; Matched:\<badref\>:  store i8 %var_2_1395, i8* %var_2_21, align 1
; store i8 %var_2_1016, i8* %var_2_25, align 1
; Matched:%var_2_1396:  %var_2_1396 = xor i64 %var_2_1386, %var_2_1382
; %var_2_1017 = xor i64 %var_2_1007, %var_2_1003
; Matched:%var_2_1397:  %var_2_1397 = xor i64 %var_2_1396, %var_2_1387
; %var_2_1018 = xor i64 %var_2_1017, %var_2_1008
; Matched:%var_2_1398:  %var_2_1398 = lshr i64 %var_2_1397, 4
; %var_2_1019 = lshr i64 %var_2_1018, 4
; Matched:%var_2_1399:  %var_2_1399 = trunc i64 %var_2_1398 to i8
; %var_2_1020 = trunc i64 %var_2_1019 to i8
; Matched:%var_2_1400:  %var_2_1400 = and i8 %var_2_1399, 1
; %var_2_1021 = and i8 %var_2_1020, 1
; Matched:\<badref\>:  store i8 %var_2_1400, i8* %var_2_26, align 1
; store i8 %var_2_1021, i8* %var_2_30, align 1
%var_2_1022 = icmp eq i64 %var_2_1008, 0
; Matched:%var_2_1402:  %var_2_1402 = zext i1 %var_2_1401 to i8
; %var_2_1023 = zext i1 %var_2_1022 to i8
; Matched:\<badref\>:  store i8 %var_2_1402, i8* %var_2_29, align 1
; store i8 %var_2_1023, i8* %var_2_33, align 1
%var_2_1024 = lshr i64 %var_2_1008, 63
%var_2_1025 = trunc i64 %var_2_1024 to i8
; Matched:\<badref\>:  store i8 %var_2_1404, i8* %var_2_32, align 1
; store i8 %var_2_1025, i8* %var_2_36, align 1
%var_2_1026 = lshr i64 %var_2_1003, 63
%var_2_1027 = lshr i64 %var_2_1007, 63
%var_2_1028 = xor i64 %var_2_1027, %var_2_1026
%var_2_1029 = xor i64 %var_2_1024, %var_2_1026
%var_2_1030 = add nuw nsw i64 %var_2_1029, %var_2_1028
%var_2_1031 = icmp eq i64 %var_2_1030, 2
; Matched:%var_2_1411:  %var_2_1411 = zext i1 %var_2_1410 to i8
; %var_2_1032 = zext i1 %var_2_1031 to i8
; Matched:\<badref\>:  store i8 %var_2_1411, i8* %var_2_38, align 1
; store i8 %var_2_1032, i8* %var_2_42, align 1
%var_2_1033 = icmp ne i8 %var_2_1025, 0
%var_2_1034 = xor i1 %var_2_1033, %var_2_1031
%.demorgan445 = or i1 %var_2_1022, %var_2_1034
  %.v460 = select i1 %.demorgan445, i64 14, i64 259
%var_2_1035 = add i64 %var_2_998, %.v460
; Matched:\<badref\>:  store i64 %var_2_1414, i64* %var_2_3, align 8
; store i64 %var_2_1035, i64* %PC, align 8
  br i1 %.demorgan445, label %block_400ed9, label %block_400fce

block_40093d:                                     ; preds = %block_4008ff
  store i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 75), i64* %RSI, align 8, !tbaa !2428
%var_2_1036 = load i64, i64* @stderr, align 128
store i64 %var_2_1036, i64* %RDI, align 8
; Matched:\<badref\>:  store i8 0, i8* %AL.i1140, align 1
; store i8 0, i8* %AL, align 1
; Matched:%var_2_248:  %var_2_248 = add i64 %var_2_217, -541
; %var_2_1037 = add i64 %var_2_774, -541
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_217, 25
; %var_2_1038 = add i64 %var_2_774, 25
%var_2_1039 = load i64, i64* %RSP, align 8
%var_2_1040 = add i64 %var_2_1039, -8
; Matched:%var_2_252:  %var_2_252 = inttoptr i64 %var_2_251 to i64*
; %var_2_1041 = inttoptr i64 %var_2_1040 to i64*
; Matched:\<badref\>:  store i64 %var_2_249, i64* %var_2_252, align 8
; store i64 %var_2_1038, i64* %var_2_1041, align 8
; Matched:\<badref\>:  store i64 %var_2_1562, i64* %var_2_6, align 8
; store i64 %var_2_1040, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_248, i64* %var_2_3, align 8
; store i64 %var_2_1037, i64* %PC, align 8
%var_2_1042 = tail call fastcc %struct.Memory* @ext_400720_fprintf(%struct.State* nonnull %0, %struct.Memory* %var_2_759)
; Matched:%var_2_254:  %var_2_254 = load i64, i64* %RBP.i, align 8
; %var_2_1043 = load i64, i64* %RBP, align 8
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_254, -4
; %var_2_1044 = add i64 %var_2_1043, -4
%var_2_1045 = load i64, i64* %PC, align 8
; Matched:%var_2_512:  %var_2_512 = add i64 %var_2_511, 7
; %var_2_1046 = add i64 %var_2_1045, 7
; Matched:\<badref\>:  store i64 %var_2_512, i64* %var_2_3, align 8
; store i64 %var_2_1046, i64* %PC, align 8
; Matched:%var_2_2765:  %var_2_2765 = inttoptr i64 %var_2_2763 to i32*
; %var_2_1047 = inttoptr i64 %var_2_1044 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_2765, align 4
; store i32 1, i32* %var_2_1047, align 4
; Matched:%var_2_259:  %var_2_259 = load i64, i64* %RBP.i, align 8
; %var_2_1048 = load i64, i64* %RBP, align 8
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_259, -212
; %var_2_1049 = add i64 %var_2_1048, -212
; Matched:%var_2_261:  %var_2_261 = load i32, i32* %EAX.i1220, align 4
; %var_2_1050 = load i32, i32* %EAX, align 4
; Matched:%var_2_2685:  %var_2_2685 = load i64, i64* %var_2_3, align 8
; %var_2_1051 = load i64, i64* %PC, align 8
; Matched:%var_2_2686:  %var_2_2686 = add i64 %var_2_2685, 6
; %var_2_1052 = add i64 %var_2_1051, 6
; Matched:\<badref\>:  store i64 %var_2_263, i64* %var_2_3, align 8
; store i64 %var_2_1052, i64* %PC, align 8
; Matched:%var_2_264:  %var_2_264 = inttoptr i64 %var_2_260 to i32*
; %var_2_1053 = inttoptr i64 %var_2_1049 to i32*
; Matched:\<badref\>:  store i32 %var_2_261, i32* %var_2_264, align 4
; store i32 %var_2_1050, i32* %var_2_1053, align 4
; Matched:%var_2_265:  %var_2_265 = load i64, i64* %var_2_3, align 8
; %var_2_1054 = load i64, i64* %PC, align 8
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, 3197
; %var_2_1055 = add i64 %var_2_1054, 3197
; Matched:\<badref\>:  store i64 %var_2_266, i64* %var_2_3, align 8
; store i64 %var_2_1055, i64* %PC, align 8
  br label %block_4015e0

block_40103d:                                     ; preds = %block_40104b, %block_40101d
%var_2_1056 = phi i64 [ %var_2_2691, %block_40104b ], [ %.pre424, %block_40101d ]
%var_2_1057 = load i64, i64* %RBP, align 8
%var_2_1058 = add i64 %var_2_1057, -24
; Matched:%var_2_1587:  %var_2_1587 = add i64 %var_2_1584, 4
; %var_2_1059 = add i64 %var_2_1056, 4
; Matched:\<badref\>:  store i64 %var_2_1587, i64* %var_2_3, align 8
; store i64 %var_2_1059, i64* %PC, align 8
%var_2_1060 = inttoptr i64 %var_2_1058 to i64*
%var_2_1061 = load i64, i64* %var_2_1060, align 8
; Matched:\<badref\>:  store i64 %var_2_2500, i64* %RAX.i1199, align 8
; store i64 %var_2_1061, i64* %RAX, align 8
%var_2_1062 = add i64 %var_2_1057, -72
; Matched:%var_2_1591:  %var_2_1591 = add i64 %var_2_1584, 8
; %var_2_1063 = add i64 %var_2_1056, 8
; Matched:\<badref\>:  store i64 %var_2_1591, i64* %var_2_3, align 8
; store i64 %var_2_1063, i64* %PC, align 8
%var_2_1064 = inttoptr i64 %var_2_1062 to i64*
%var_2_1065 = load i64, i64* %var_2_1064, align 8
%var_2_1066 = sub i64 %var_2_1061, %var_2_1065
; Matched:%var_2_1595:  %var_2_1595 = icmp ult i64 %var_2_1589, %var_2_1593
; %var_2_1067 = icmp ult i64 %var_2_1061, %var_2_1065
; Matched:%var_2_1596:  %var_2_1596 = zext i1 %var_2_1595 to i8
; %var_2_1068 = zext i1 %var_2_1067 to i8
; Matched:\<badref\>:  store i8 %var_2_1596, i8* %var_2_14, align 1
; store i8 %var_2_1068, i8* %var_2_18, align 1
; Matched:%var_2_1597:  %var_2_1597 = trunc i64 %var_2_1594 to i32
; %var_2_1069 = trunc i64 %var_2_1066 to i32
; Matched:%var_2_1598:  %var_2_1598 = and i32 %var_2_1597, 255
; %var_2_1070 = and i32 %var_2_1069, 255
; Matched:%var_2_1599:  %var_2_1599 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1598)
; %var_2_1071 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1070) #14
; Matched:%var_2_1600:  %var_2_1600 = trunc i32 %var_2_1599 to i8
; %var_2_1072 = trunc i32 %var_2_1071 to i8
; Matched:%var_2_1601:  %var_2_1601 = and i8 %var_2_1600, 1
; %var_2_1073 = and i8 %var_2_1072, 1
; Matched:%var_2_1602:  %var_2_1602 = xor i8 %var_2_1601, 1
; %var_2_1074 = xor i8 %var_2_1073, 1
; Matched:\<badref\>:  store i8 %var_2_1602, i8* %var_2_21, align 1
; store i8 %var_2_1074, i8* %var_2_25, align 1
; Matched:%var_2_1603:  %var_2_1603 = xor i64 %var_2_1593, %var_2_1589
; %var_2_1075 = xor i64 %var_2_1065, %var_2_1061
; Matched:%var_2_1604:  %var_2_1604 = xor i64 %var_2_1603, %var_2_1594
; %var_2_1076 = xor i64 %var_2_1075, %var_2_1066
; Matched:%var_2_1605:  %var_2_1605 = lshr i64 %var_2_1604, 4
; %var_2_1077 = lshr i64 %var_2_1076, 4
; Matched:%var_2_1606:  %var_2_1606 = trunc i64 %var_2_1605 to i8
; %var_2_1078 = trunc i64 %var_2_1077 to i8
; Matched:%var_2_1607:  %var_2_1607 = and i8 %var_2_1606, 1
; %var_2_1079 = and i8 %var_2_1078, 1
; Matched:\<badref\>:  store i8 %var_2_1607, i8* %var_2_26, align 1
; store i8 %var_2_1079, i8* %var_2_30, align 1
%var_2_1080 = icmp eq i64 %var_2_1066, 0
; Matched:%var_2_1609:  %var_2_1609 = zext i1 %var_2_1608 to i8
; %var_2_1081 = zext i1 %var_2_1080 to i8
; Matched:\<badref\>:  store i8 %var_2_1609, i8* %var_2_29, align 1
; store i8 %var_2_1081, i8* %var_2_33, align 1
%var_2_1082 = lshr i64 %var_2_1066, 63
%var_2_1083 = trunc i64 %var_2_1082 to i8
; Matched:\<badref\>:  store i8 %var_2_1611, i8* %var_2_32, align 1
; store i8 %var_2_1083, i8* %var_2_36, align 1
%var_2_1084 = lshr i64 %var_2_1061, 63
%var_2_1085 = lshr i64 %var_2_1065, 63
%var_2_1086 = xor i64 %var_2_1085, %var_2_1084
%var_2_1087 = xor i64 %var_2_1082, %var_2_1084
%var_2_1088 = add nuw nsw i64 %var_2_1087, %var_2_1086
%var_2_1089 = icmp eq i64 %var_2_1088, 2
; Matched:%var_2_1618:  %var_2_1618 = zext i1 %var_2_1617 to i8
; %var_2_1090 = zext i1 %var_2_1089 to i8
; Matched:\<badref\>:  store i8 %var_2_1618, i8* %var_2_38, align 1
; store i8 %var_2_1090, i8* %var_2_42, align 1
%var_2_1091 = icmp ne i8 %var_2_1083, 0
%var_2_1092 = xor i1 %var_2_1091, %var_2_1089
%.demorgan446 = or i1 %var_2_1080, %var_2_1092
  %.v462 = select i1 %.demorgan446, i64 14, i64 503
%var_2_1093 = add i64 %var_2_1056, %.v462
; Matched:\<badref\>:  store i64 %var_2_1621, i64* %var_2_3, align 8
; store i64 %var_2_1093, i64* %PC, align 8
  br i1 %.demorgan446, label %block_40104b, label %block_401234

block_4008d5:                                     ; preds = %block_4008a7
%var_2_1094 = add i64 %.pre440, -16
; Matched:%var_2_140:  %var_2_140 = add i64 %var_2_138, 4
; %var_2_1095 = add i64 %var_2_939, 4
; Matched:\<badref\>:  store i64 %var_2_140, i64* %var_2_3, align 8
; store i64 %var_2_1095, i64* %PC, align 8
%var_2_1096 = inttoptr i64 %var_2_1094 to i64*
%var_2_1097 = load i64, i64* %var_2_1096, align 8
; Matched:\<badref\>:  store i64 %var_2_142, i64* %RAX.i1199, align 8
; store i64 %var_2_1097, i64* %RAX, align 8
%var_2_1098 = add i64 %.pre440, -172
; Matched:%var_2_144:  %var_2_144 = add i64 %var_2_138, 11
; %var_2_1099 = add i64 %var_2_939, 11
; Matched:\<badref\>:  store i64 %var_2_144, i64* %var_2_3, align 8
; store i64 %var_2_1099, i64* %PC, align 8
%var_2_1100 = inttoptr i64 %var_2_1098 to i32*
%var_2_1101 = load i32, i32* %var_2_1100, align 4
%var_2_1102 = sext i32 %var_2_1101 to i64
; Matched:\<badref\>:  store i64 %var_2_191, i64* %RCX.i1209, align 8
; store i64 %var_2_1102, i64* %RCX, align 8
%var_2_1103 = shl nsw i64 %var_2_1102, 3
%var_2_1104 = add i64 %var_2_1103, %var_2_1097
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_138, 15
; %var_2_1105 = add i64 %var_2_939, 15
; Matched:\<badref\>:  store i64 %var_2_150, i64* %var_2_3, align 8
; store i64 %var_2_1105, i64* %PC, align 8
%var_2_1106 = inttoptr i64 %var_2_1104 to i64*
%var_2_1107 = load i64, i64* %var_2_1106, align 8
; Matched:\<badref\>:  store i64 %var_2_152, i64* %RAX.i1199, align 8
; store i64 %var_2_1107, i64* %RAX, align 8
; Matched:%var_2_153:  %var_2_153 = add i64 %var_2_138, 18
; %var_2_1108 = add i64 %var_2_939, 18
; Matched:\<badref\>:  store i64 %var_2_153, i64* %var_2_3, align 8
; store i64 %var_2_1108, i64* %PC, align 8
%var_2_1109 = inttoptr i64 %var_2_1107 to i8*
%var_2_1110 = load i8, i8* %var_2_1109, align 1
; Matched:%var_2_156:  %var_2_156 = sext i8 %var_2_155 to i64
; %var_2_1111 = sext i8 %var_2_1110 to i64
; Matched:%var_2_157:  %var_2_157 = and i64 %var_2_156, 4294967295
; %var_2_1112 = and i64 %var_2_1111, 4294967295
; Matched:\<badref\>:  store i64 %var_2_157, i64* %RDX.i1213, align 8
; store i64 %var_2_1112, i64* %RDX, align 8
%var_2_1113 = sext i8 %var_2_1110 to i32
%var_2_1114 = add nsw i32 %var_2_1113, -99
; Matched:%var_2_160:  %var_2_160 = icmp ult i8 %var_2_155, 99
; %var_2_1115 = icmp ult i8 %var_2_1110, 99
; Matched:%var_2_161:  %var_2_161 = zext i1 %var_2_160 to i8
; %var_2_1116 = zext i1 %var_2_1115 to i8
; Matched:\<badref\>:  store i8 %var_2_161, i8* %var_2_14, align 1
; store i8 %var_2_1116, i8* %var_2_18, align 1
; Matched:%var_2_162:  %var_2_162 = and i32 %var_2_159, 255
; %var_2_1117 = and i32 %var_2_1114, 255
; Matched:%var_2_163:  %var_2_163 = tail call i32 @llvm.ctpop.i32(i32 %var_2_162)
; %var_2_1118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1117) #14
; Matched:%var_2_164:  %var_2_164 = trunc i32 %var_2_163 to i8
; %var_2_1119 = trunc i32 %var_2_1118 to i8
; Matched:%var_2_165:  %var_2_165 = and i8 %var_2_164, 1
; %var_2_1120 = and i8 %var_2_1119, 1
; Matched:%var_2_166:  %var_2_166 = xor i8 %var_2_165, 1
; %var_2_1121 = xor i8 %var_2_1120, 1
; Matched:\<badref\>:  store i8 %var_2_166, i8* %var_2_21, align 1
; store i8 %var_2_1121, i8* %var_2_25, align 1
; Matched:%var_2_167:  %var_2_167 = xor i32 %var_2_159, %var_2_158
; %var_2_1122 = xor i32 %var_2_1114, %var_2_1113
; Matched:%var_2_168:  %var_2_168 = lshr i32 %var_2_167, 4
; %var_2_1123 = lshr i32 %var_2_1122, 4
; Matched:%var_2_169:  %var_2_169 = trunc i32 %var_2_168 to i8
; %var_2_1124 = trunc i32 %var_2_1123 to i8
; Matched:%var_2_170:  %var_2_170 = and i8 %var_2_169, 1
; %var_2_1125 = and i8 %var_2_1124, 1
; Matched:\<badref\>:  store i8 %var_2_170, i8* %var_2_26, align 1
; store i8 %var_2_1125, i8* %var_2_30, align 1
%var_2_1126 = icmp eq i32 %var_2_1114, 0
; Matched:%var_2_172:  %var_2_172 = zext i1 %var_2_171 to i8
; %var_2_1127 = zext i1 %var_2_1126 to i8
; Matched:\<badref\>:  store i8 %var_2_172, i8* %var_2_29, align 1
; store i8 %var_2_1127, i8* %var_2_33, align 1
; Matched:%var_2_173:  %var_2_173 = lshr i32 %var_2_159, 31
; %var_2_1128 = lshr i32 %var_2_1114, 31
; Matched:%var_2_174:  %var_2_174 = trunc i32 %var_2_173 to i8
; %var_2_1129 = trunc i32 %var_2_1128 to i8
; Matched:\<badref\>:  store i8 %var_2_174, i8* %var_2_32, align 1
; store i8 %var_2_1129, i8* %var_2_36, align 1
; Matched:%var_2_175:  %var_2_175 = lshr i32 %var_2_158, 31
; %var_2_1130 = lshr i32 %var_2_1113, 31
; Matched:%var_2_176:  %var_2_176 = xor i32 %var_2_173, %var_2_175
; %var_2_1131 = xor i32 %var_2_1128, %var_2_1130
; Matched:%var_2_177:  %var_2_177 = add nuw nsw i32 %var_2_176, %var_2_175
; %var_2_1132 = add nuw nsw i32 %var_2_1131, %var_2_1130
; Matched:%var_2_178:  %var_2_178 = icmp eq i32 %var_2_177, 2
; %var_2_1133 = icmp eq i32 %var_2_1132, 2
; Matched:%var_2_179:  %var_2_179 = zext i1 %var_2_178 to i8
; %var_2_1134 = zext i1 %var_2_1133 to i8
; Matched:\<badref\>:  store i8 %var_2_179, i8* %var_2_38, align 1
; store i8 %var_2_1134, i8* %var_2_42, align 1
; Matched:  %.v165 = select i1 %var_2_171, i64 27, i64 42
; %.v477 = select i1 %var_2_1126, i64 27, i64 42
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_138, %.v165
; %var_2_1135 = add i64 %var_2_939, %.v477
; Matched:\<badref\>:  store i64 %var_2_180, i64* %var_2_3, align 8
; store i64 %var_2_1135, i64* %PC, align 8
br i1 %var_2_1126, label %block_4008f0, label %block_4008ff

block_4012b5:                                     ; preds = %block_4012a7
; Matched:%var_2_2075:  %var_2_2075 = add i64 %var_2_2038, -160
; %var_2_1136 = add i64 %var_2_1566, -160
; Matched:\<badref\>:  store i64 %var_2_2075, i64* %RDI.i1206, align 8
; store i64 %var_2_1136, i64* %RDI, align 8
%var_2_1137 = add i64 %var_2_1566, -144
; Matched:%var_2_2077:  %var_2_2077 = add i64 %var_2_2074, 15
; %var_2_1138 = add i64 %var_2_1602, 15
; Matched:\<badref\>:  store i64 %var_2_2077, i64* %var_2_3, align 8
; store i64 %var_2_1138, i64* %PC, align 8
%var_2_1139 = inttoptr i64 %var_2_1137 to i64*
%var_2_1140 = load i64, i64* %var_2_1139, align 8
; Matched:\<badref\>:  store i64 %var_2_2164, i64* %var_2_302, align 1
; store i64 %var_2_1140, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2080:  %var_2_2080 = add i64 %var_2_2038, -152
; %var_2_1141 = add i64 %var_2_1566, -152
; Matched:%var_2_2081:  %var_2_2081 = add i64 %var_2_2074, 23
; %var_2_1142 = add i64 %var_2_1602, 23
; Matched:\<badref\>:  store i64 %var_2_2081, i64* %var_2_3, align 8
; store i64 %var_2_1142, i64* %PC, align 8
; Matched:%var_2_2167:  %var_2_2167 = inttoptr i64 %var_2_2165 to i64*
; %var_2_1143 = inttoptr i64 %var_2_1141 to i64*
; Matched:%var_2_2168:  %var_2_2168 = load i64, i64* %var_2_2167, align 8
; %var_2_1144 = load i64, i64* %var_2_1143, align 8
; Matched:\<badref\>:  store i64 %var_2_2168, i64* %var_2_307, align 1
; store i64 %var_2_1144, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_1145 = add i64 %var_2_1602, 1243
; Matched:%var_2_2085:  %var_2_2085 = add i64 %var_2_2074, 28
; %var_2_1146 = add i64 %var_2_1602, 28
%var_2_1147 = load i64, i64* %RSP, align 8
%var_2_1148 = add i64 %var_2_1147, -8
; Matched:%var_2_2088:  %var_2_2088 = inttoptr i64 %var_2_2087 to i64*
; %var_2_1149 = inttoptr i64 %var_2_1148 to i64*
; Matched:\<badref\>:  store i64 %var_2_2085, i64* %var_2_2088, align 8
; store i64 %var_2_1146, i64* %var_2_1149, align 8
; Matched:\<badref\>:  store i64 %var_2_1657, i64* %var_2_6, align 8
; store i64 %var_2_1148, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2084, i64* %var_2_3, align 8
; store i64 %var_2_1145, i64* %PC, align 8
%var_2_1150 = tail call %struct.Memory* @sub_401790_P3_renamed_(%struct.State* nonnull %0, i64 %var_2_1145, %struct.Memory* %MEMORY.7)
%var_2_1151 = load i64, i64* %RBP, align 8
%var_2_1152 = add i64 %var_2_1151, -24
%var_2_1153 = load i64, i64* %PC, align 8
; Matched:%var_2_2568:  %var_2_2568 = add i64 %var_2_2567, 4
; %var_2_1154 = add i64 %var_2_1153, 4
; Matched:\<badref\>:  store i64 %var_2_2568, i64* %var_2_3, align 8
; store i64 %var_2_1154, i64* %PC, align 8
%var_2_1155 = inttoptr i64 %var_2_1152 to i64*
; Matched:%var_2_1489:  %var_2_1489 = load i64, i64* %var_2_1488, align 8
; %var_2_1156 = load i64, i64* %var_2_1155, align 8
; Matched:%var_2_1490:  %var_2_1490 = add i64 %var_2_1489, 1
; %var_2_1157 = add i64 %var_2_1156, 1
; Matched:\<badref\>:  store i64 %var_2_1490, i64* %RAX.i1199, align 8
; store i64 %var_2_1157, i64* %RAX, align 8
; Matched:%var_2_1288:  %var_2_1288 = icmp eq i64 %var_2_1286, -1
; %var_2_1158 = icmp eq i64 %var_2_1156, -1
; Matched:%var_2_982:  %var_2_982 = icmp eq i64 %var_2_980, 0
; %var_2_1159 = icmp eq i64 %var_2_1157, 0
; Matched:%var_2_2574:  %var_2_2574 = or i1 %var_2_2572, %var_2_2573
; %var_2_1160 = or i1 %var_2_1158, %var_2_1159
; Matched:%var_2_2575:  %var_2_2575 = zext i1 %var_2_2574 to i8
; %var_2_1161 = zext i1 %var_2_1160 to i8
; Matched:\<badref\>:  store i8 %var_2_2575, i8* %var_2_14, align 1
; store i8 %var_2_1161, i8* %var_2_18, align 1
; Matched:%var_2_2576:  %var_2_2576 = trunc i64 %var_2_2571 to i32
; %var_2_1162 = trunc i64 %var_2_1157 to i32
; Matched:%var_2_2577:  %var_2_2577 = and i32 %var_2_2576, 255
; %var_2_1163 = and i32 %var_2_1162, 255
; Matched:%var_2_2253:  %var_2_2253 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2252)
; %var_2_1164 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1163) #14
; Matched:%var_2_2254:  %var_2_2254 = trunc i32 %var_2_2253 to i8
; %var_2_1165 = trunc i32 %var_2_1164 to i8
; Matched:%var_2_2255:  %var_2_2255 = and i8 %var_2_2254, 1
; %var_2_1166 = and i8 %var_2_1165, 1
; Matched:%var_2_2256:  %var_2_2256 = xor i8 %var_2_2255, 1
; %var_2_1167 = xor i8 %var_2_1166, 1
; Matched:\<badref\>:  store i8 %var_2_2256, i8* %var_2_21, align 1
; store i8 %var_2_1167, i8* %var_2_25, align 1
; Matched:%var_2_991:  %var_2_991 = xor i64 %var_2_980, %var_2_979
; %var_2_1168 = xor i64 %var_2_1157, %var_2_1156
; Matched:%var_2_992:  %var_2_992 = lshr i64 %var_2_991, 4
; %var_2_1169 = lshr i64 %var_2_1168, 4
; Matched:%var_2_2584:  %var_2_2584 = trunc i64 %var_2_2583 to i8
; %var_2_1170 = trunc i64 %var_2_1169 to i8
; Matched:%var_2_2585:  %var_2_2585 = and i8 %var_2_2584, 1
; %var_2_1171 = and i8 %var_2_1170, 1
; Matched:\<badref\>:  store i8 %var_2_994, i8* %var_2_26, align 1
; store i8 %var_2_1171, i8* %var_2_30, align 1
; Matched:%var_2_995:  %var_2_995 = zext i1 %var_2_982 to i8
; %var_2_1172 = zext i1 %var_2_1159 to i8
; Matched:\<badref\>:  store i8 %var_2_995, i8* %var_2_29, align 1
; store i8 %var_2_1172, i8* %var_2_33, align 1
; Matched:%var_2_1303:  %var_2_1303 = lshr i64 %var_2_1287, 63
; %var_2_1173 = lshr i64 %var_2_1157, 63
; Matched:%var_2_1304:  %var_2_1304 = trunc i64 %var_2_1303 to i8
; %var_2_1174 = trunc i64 %var_2_1173 to i8
; Matched:\<badref\>:  store i8 %var_2_997, i8* %var_2_32, align 1
; store i8 %var_2_1174, i8* %var_2_36, align 1
; Matched:%var_2_998:  %var_2_998 = lshr i64 %var_2_979, 63
; %var_2_1175 = lshr i64 %var_2_1156, 63
; Matched:%var_2_1306:  %var_2_1306 = xor i64 %var_2_1303, %var_2_1305
; %var_2_1176 = xor i64 %var_2_1173, %var_2_1175
; Matched:%var_2_1510:  %var_2_1510 = add nuw nsw i64 %var_2_1509, %var_2_1506
; %var_2_1177 = add nuw nsw i64 %var_2_1176, %var_2_1173
; Matched:%var_2_1308:  %var_2_1308 = icmp eq i64 %var_2_1307, 2
; %var_2_1178 = icmp eq i64 %var_2_1177, 2
; Matched:%var_2_1512:  %var_2_1512 = zext i1 %var_2_1511 to i8
; %var_2_1179 = zext i1 %var_2_1178 to i8
; Matched:\<badref\>:  store i8 %var_2_1002, i8* %var_2_38, align 1
; store i8 %var_2_1179, i8* %var_2_42, align 1
; Matched:%var_2_455:  %var_2_455 = add i64 %var_2_433, 12
; %var_2_1180 = add i64 %var_2_1153, 12
; Matched:\<badref\>:  store i64 %var_2_2269, i64* %var_2_3, align 8
; store i64 %var_2_1180, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_1490, i64* %var_2_1488, align 8
; store i64 %var_2_1157, i64* %var_2_1155, align 8
%var_2_1181 = load i64, i64* %PC, align 8
%var_2_1182 = add i64 %var_2_1181, -54
; Matched:\<badref\>:  store i64 %var_2_2120, i64* %var_2_3, align 8
; store i64 %var_2_1182, i64* %PC, align 8
  br label %block_4012a7

block_4013bf:                                     ; preds = %block_4013ad
; Matched:%var_2_2306:  %var_2_2306 = add i64 %var_2_2305, 4
; %var_2_1183 = add i64 %var_2_1943, 4
; Matched:\<badref\>:  store i64 %var_2_2306, i64* %var_2_3, align 8
; store i64 %var_2_1183, i64* %PC, align 8
; Matched:%var_2_2307:  %var_2_2307 = load i64, i64* %var_2_2205, align 8
; %var_2_1184 = load i64, i64* %var_2_2275, align 8
; Matched:\<badref\>:  store i64 %var_2_2307, i64* %RDI.i1206, align 8
; store i64 %var_2_1184, i64* %RDI, align 8
%var_2_1185 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1186 = sext i32 %var_2_1185 to i64
store i64 %var_2_1186, i64* %RSI, align 8
%var_2_1187 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_1188 = sext i32 %var_2_1187 to i64
store i64 %var_2_1188, i64* %RDX, align 8
%var_2_1189 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_1189, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_1190 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_1190, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_1191 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
store i64 %var_2_1191, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_1192 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
store i64 %var_2_1192, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_1193 = add i64 %var_2_1943, 561
; Matched:%var_2_2317:  %var_2_2317 = add i64 %var_2_2305, 61
; %var_2_1194 = add i64 %var_2_1943, 61
%var_2_1195 = load i64, i64* %RSP, align 8
%var_2_1196 = add i64 %var_2_1195, -8
; Matched:%var_2_2320:  %var_2_2320 = inttoptr i64 %var_2_2319 to i64*
; %var_2_1197 = inttoptr i64 %var_2_1196 to i64*
; Matched:\<badref\>:  store i64 %var_2_2317, i64* %var_2_2320, align 8
; store i64 %var_2_1194, i64* %var_2_1197, align 8
; Matched:\<badref\>:  store i64 %var_2_349, i64* %var_2_6, align 8
; store i64 %var_2_1196, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2316, i64* %var_2_3, align 8
; store i64 %var_2_1193, i64* %PC, align 8
%var_2_1198 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_1193, %struct.Memory* %MEMORY.23)
; Matched:  %.pre120 = load i64, i64* %var_2_3, align 8
; %.pre431 = load i64, i64* %PC, align 8
  %.pre432 = load i64, i64* %RBP, align 8
  br label %block_4013fc

block_401234:                                     ; preds = %block_40103d
%var_2_1199 = add i64 %var_2_1057, -176
; Matched:%var_2_1955:  %var_2_1955 = add i64 %var_2_1621, 6
; %var_2_1200 = add i64 %var_2_1093, 6
; Matched:\<badref\>:  store i64 %var_2_1955, i64* %var_2_3, align 8
; store i64 %var_2_1200, i64* %PC, align 8
%var_2_1201 = inttoptr i64 %var_2_1199 to i32*
%var_2_1202 = load i32, i32* %var_2_1201, align 4
; Matched:%var_2_2601:  %var_2_2601 = zext i32 %var_2_2600 to i64
; %var_2_1203 = zext i32 %var_2_1202 to i64
; Matched:\<badref\>:  store i64 %var_2_2601, i64* %RAX.i1199, align 8
; store i64 %var_2_1203, i64* %RAX, align 8
%var_2_1204 = add i64 %var_2_1057, -172
; Matched:%var_2_1960:  %var_2_1960 = add i64 %var_2_1621, 12
; %var_2_1205 = add i64 %var_2_1093, 12
; Matched:\<badref\>:  store i64 %var_2_1960, i64* %var_2_3, align 8
; store i64 %var_2_1205, i64* %PC, align 8
%var_2_1206 = inttoptr i64 %var_2_1204 to i32*
%var_2_1207 = load i32, i32* %var_2_1206, align 4
%var_2_1208 = sub i32 %var_2_1202, %var_2_1207
; Matched:%var_2_1016:  %var_2_1016 = icmp ult i32 %var_2_1009, %var_2_1014
; %var_2_1209 = icmp ult i32 %var_2_1202, %var_2_1207
; Matched:%var_2_1017:  %var_2_1017 = zext i1 %var_2_1016 to i8
; %var_2_1210 = zext i1 %var_2_1209 to i8
; Matched:\<badref\>:  store i8 %var_2_1324, i8* %var_2_14, align 1
; store i8 %var_2_1210, i8* %var_2_18, align 1
; Matched:%var_2_1528:  %var_2_1528 = and i32 %var_2_1525, 255
; %var_2_1211 = and i32 %var_2_1208, 255
; Matched:%var_2_1529:  %var_2_1529 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1528)
; %var_2_1212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1211) #14
; Matched:%var_2_1020:  %var_2_1020 = trunc i32 %var_2_1019 to i8
; %var_2_1213 = trunc i32 %var_2_1212 to i8
; Matched:%var_2_1328:  %var_2_1328 = and i8 %var_2_1327, 1
; %var_2_1214 = and i8 %var_2_1213, 1
; Matched:%var_2_1532:  %var_2_1532 = xor i8 %var_2_1531, 1
; %var_2_1215 = xor i8 %var_2_1214, 1
; Matched:\<badref\>:  store i8 %var_2_1153, i8* %var_2_21, align 1
; store i8 %var_2_1215, i8* %var_2_25, align 1
; Matched:%var_2_1330:  %var_2_1330 = xor i32 %var_2_1321, %var_2_1316
; %var_2_1216 = xor i32 %var_2_1207, %var_2_1202
; Matched:%var_2_2615:  %var_2_2615 = xor i32 %var_2_2614, %var_2_2606
; %var_2_1217 = xor i32 %var_2_1216, %var_2_1208
; Matched:%var_2_1025:  %var_2_1025 = lshr i32 %var_2_1024, 4
; %var_2_1218 = lshr i32 %var_2_1217, 4
; Matched:%var_2_1333:  %var_2_1333 = trunc i32 %var_2_1332 to i8
; %var_2_1219 = trunc i32 %var_2_1218 to i8
; Matched:%var_2_1334:  %var_2_1334 = and i8 %var_2_1333, 1
; %var_2_1220 = and i8 %var_2_1219, 1
; Matched:\<badref\>:  store i8 %var_2_1158, i8* %var_2_26, align 1
; store i8 %var_2_1220, i8* %var_2_30, align 1
%var_2_1221 = icmp eq i32 %var_2_1208, 0
; Matched:%var_2_1160:  %var_2_1160 = zext i1 %var_2_1159 to i8
; %var_2_1222 = zext i1 %var_2_1221 to i8
; Matched:\<badref\>:  store i8 %var_2_1539, i8* %var_2_29, align 1
; store i8 %var_2_1222, i8* %var_2_33, align 1
; Matched:%var_2_1540:  %var_2_1540 = lshr i32 %var_2_1525, 31
; %var_2_1223 = lshr i32 %var_2_1208, 31
; Matched:%var_2_1541:  %var_2_1541 = trunc i32 %var_2_1540 to i8
; %var_2_1224 = trunc i32 %var_2_1223 to i8
; Matched:\<badref\>:  store i8 %var_2_1338, i8* %var_2_32, align 1
; store i8 %var_2_1224, i8* %var_2_36, align 1
; Matched:%var_2_1339:  %var_2_1339 = lshr i32 %var_2_1316, 31
; %var_2_1225 = lshr i32 %var_2_1202, 31
; Matched:%var_2_1033:  %var_2_1033 = lshr i32 %var_2_1014, 31
; %var_2_1226 = lshr i32 %var_2_1207, 31
; Matched:%var_2_1034:  %var_2_1034 = xor i32 %var_2_1033, %var_2_1032
; %var_2_1227 = xor i32 %var_2_1226, %var_2_1225
; Matched:%var_2_2626:  %var_2_2626 = xor i32 %var_2_2621, %var_2_2623
; %var_2_1228 = xor i32 %var_2_1223, %var_2_1225
; Matched:%var_2_2627:  %var_2_2627 = add nuw nsw i32 %var_2_2626, %var_2_2625
; %var_2_1229 = add nuw nsw i32 %var_2_1228, %var_2_1227
; Matched:%var_2_1037:  %var_2_1037 = icmp eq i32 %var_2_1036, 2
; %var_2_1230 = icmp eq i32 %var_2_1229, 2
; Matched:%var_2_1038:  %var_2_1038 = zext i1 %var_2_1037 to i8
; %var_2_1231 = zext i1 %var_2_1230 to i8
; Matched:\<badref\>:  store i8 %var_2_1548, i8* %var_2_38, align 1
; store i8 %var_2_1231, i8* %var_2_42, align 1
%.v463 = select i1 %var_2_1221, i64 18, i64 75
%var_2_1232 = add i64 %var_2_1093, %.v463
; Matched:\<badref\>:  store i64 %var_2_1987, i64* %var_2_3, align 8
; store i64 %var_2_1232, i64* %PC, align 8
br i1 %var_2_1221, label %block_401246, label %block_40127f

block_400dcf:                                     ; preds = %block_400dc1
%var_2_1233 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1234 = add i32 %var_2_1233, -1
%var_2_1235 = icmp eq i32 %var_2_1233, 0
%var_2_1236 = zext i1 %var_2_1235 to i8
store i8 %var_2_1236, i8* %var_2_18, align 1
; Matched:%var_2_1461:  %var_2_1461 = and i32 %var_2_1457, 255
; %var_2_1237 = and i32 %var_2_1234, 255
; Matched:%var_2_1462:  %var_2_1462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1461)
; %var_2_1238 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1237) #14
; Matched:%var_2_1463:  %var_2_1463 = trunc i32 %var_2_1462 to i8
; %var_2_1239 = trunc i32 %var_2_1238 to i8
; Matched:%var_2_1464:  %var_2_1464 = and i8 %var_2_1463, 1
; %var_2_1240 = and i8 %var_2_1239, 1
; Matched:%var_2_1465:  %var_2_1465 = xor i8 %var_2_1464, 1
; %var_2_1241 = xor i8 %var_2_1240, 1
; Matched:\<badref\>:  store i8 %var_2_1465, i8* %var_2_21, align 1
; store i8 %var_2_1241, i8* %var_2_25, align 1
; Matched:%var_2_1466:  %var_2_1466 = xor i32 %var_2_1457, %var_2_1446
; %var_2_1242 = xor i32 %var_2_1234, %var_2_1233
; Matched:%var_2_1467:  %var_2_1467 = lshr i32 %var_2_1466, 4
; %var_2_1243 = lshr i32 %var_2_1242, 4
; Matched:%var_2_1468:  %var_2_1468 = trunc i32 %var_2_1467 to i8
; %var_2_1244 = trunc i32 %var_2_1243 to i8
; Matched:%var_2_1469:  %var_2_1469 = and i8 %var_2_1468, 1
; %var_2_1245 = and i8 %var_2_1244, 1
; Matched:\<badref\>:  store i8 %var_2_1469, i8* %var_2_26, align 1
; store i8 %var_2_1245, i8* %var_2_30, align 1
%var_2_1246 = icmp eq i32 %var_2_1234, 0
; Matched:%var_2_1471:  %var_2_1471 = zext i1 %var_2_1470 to i8
; %var_2_1247 = zext i1 %var_2_1246 to i8
; Matched:\<badref\>:  store i8 %var_2_1471, i8* %var_2_29, align 1
; store i8 %var_2_1247, i8* %var_2_33, align 1
; Matched:%var_2_1472:  %var_2_1472 = lshr i32 %var_2_1457, 31
; %var_2_1248 = lshr i32 %var_2_1234, 31
; Matched:%var_2_1473:  %var_2_1473 = trunc i32 %var_2_1472 to i8
; %var_2_1249 = trunc i32 %var_2_1248 to i8
; Matched:\<badref\>:  store i8 %var_2_1473, i8* %var_2_32, align 1
; store i8 %var_2_1249, i8* %var_2_36, align 1
; Matched:%var_2_1474:  %var_2_1474 = lshr i32 %var_2_1446, 31
; %var_2_1250 = lshr i32 %var_2_1233, 31
; Matched:%var_2_1475:  %var_2_1475 = xor i32 %var_2_1472, %var_2_1474
; %var_2_1251 = xor i32 %var_2_1248, %var_2_1250
; Matched:%var_2_1476:  %var_2_1476 = add nuw nsw i32 %var_2_1475, %var_2_1474
; %var_2_1252 = add nuw nsw i32 %var_2_1251, %var_2_1250
; Matched:%var_2_1477:  %var_2_1477 = icmp eq i32 %var_2_1476, 2
; %var_2_1253 = icmp eq i32 %var_2_1252, 2
; Matched:%var_2_1478:  %var_2_1478 = zext i1 %var_2_1477 to i8
; %var_2_1254 = zext i1 %var_2_1253 to i8
; Matched:\<badref\>:  store i8 %var_2_1478, i8* %var_2_38, align 1
; store i8 %var_2_1254, i8* %var_2_42, align 1
%.v473 = select i1 %var_2_1246, i64 14, i64 30
%var_2_1255 = add i64 %var_2_909, %.v473
%var_2_1256 = add i64 %var_2_1255, 11
store i64 %var_2_1256, i64* %PC, align 8
br i1 %var_2_1246, label %block_400ddd, label %block_400ded

block_400d31:                                     ; preds = %block_400cea, %block_400cfc
; Matched:%var_2_1057:  %var_2_1057 = phi i64 [ %var_2_1039, %block_.L_400cea ], [ %.pre103, %block_400cfc ]
; %var_2_1257 = phi i64 [ %var_2_1756, %block_400cea ], [ %.pre414, %block_400cfc ]
; Matched:%var_2_889:  %var_2_889 = phi i64 [ %.pre100, %block_400b78 ], [ %var_2_646, %block_.L_400b66 ]
; %var_2_1258 = phi i64 [ %var_2_616, %block_400cea ], [ %.pre413, %block_400cfc ]
%MEMORY.10 = phi %struct.Memory* [ %MEMORY.21, %block_400cea ], [ %var_2_743, %block_400cfc ]
; Matched:%var_2_2194:  %var_2_2194 = add i64 %var_2_2180, -24
; %var_2_1259 = add i64 %var_2_1258, -24
; Matched:%var_2_1060:  %var_2_1060 = add i64 %var_2_1057, 8
; %var_2_1260 = add i64 %var_2_1257, 8
; Matched:\<badref\>:  store i64 %var_2_1060, i64* %var_2_3, align 8
; store i64 %var_2_1260, i64* %PC, align 8
; Matched:%var_2_901:  %var_2_901 = inttoptr i64 %var_2_899 to i64*
; %var_2_1261 = inttoptr i64 %var_2_1259 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_901, align 8
; store i64 1, i64* %var_2_1261, align 8
  %.pre415 = load i64, i64* %PC, align 8
  br label %block_400d39

block_4008f0:                                     ; preds = %block_4008a7, %block_4008d5
; Matched:%var_2_181:  %var_2_181 = phi i64 [ %var_2_180, %block_4008d5 ], [ %var_2_138, %block_4008a7 ]
; %var_2_1262 = phi i64 [ %var_2_1135, %block_4008d5 ], [ %var_2_939, %block_4008a7 ]
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, -208
; %var_2_1263 = add i64 %.pre440, -208
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_181, 10
; %var_2_1264 = add i64 %var_2_1262, 10
; Matched:\<badref\>:  store i64 %var_2_183, i64* %var_2_3, align 8
; store i64 %var_2_1264, i64* %PC, align 8
; Matched:%var_2_184:  %var_2_184 = inttoptr i64 %var_2_182 to i32*
; %var_2_1265 = inttoptr i64 %var_2_1263 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_184, align 4
; store i32 1, i32* %var_2_1265, align 4
  %.pre441 = load i64, i64* %PC, align 8
  br label %block_40096d

block_400e2f:                                     ; preds = %block_400e21
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1266 = add i64 %var_2_1653, 27
store i64 %var_2_1266, i64* %PC, align 8
  br label %block_400e4a

block_400dae:                                     ; preds = %block_400d67, %block_400d79
; Matched:%var_2_1058:  %var_2_1058 = phi i64 [ %var_2_903, %block_.L_400cea ], [ %.pre102, %block_400cfc ]
; %var_2_1267 = phi i64 [ %var_2_1758, %block_400d67 ], [ %.pre417, %block_400d79 ]
; Matched:%var_2_1189:  %var_2_1189 = phi i64 [ %var_2_1170, %block_.L_400d67 ], [ %.pre105, %block_400d79 ]
; %var_2_1268 = phi i64 [ %var_2_614, %block_400d67 ], [ %.pre416, %block_400d79 ]
%MEMORY.12 = phi %struct.Memory* [ %MEMORY.10, %block_400d67 ], [ %var_2_166, %block_400d79 ]
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
; Matched:%var_2_899:  %var_2_899 = add i64 %var_2_889, -24
; %var_2_1269 = add i64 %var_2_1267, -24
; Matched:%var_2_1191:  %var_2_1191 = add i64 %var_2_1189, 19
; %var_2_1270 = add i64 %var_2_1268, 19
; Matched:\<badref\>:  store i64 %var_2_1191, i64* %var_2_3, align 8
; store i64 %var_2_1270, i64* %PC, align 8
; Matched:%var_2_1061:  %var_2_1061 = inttoptr i64 %var_2_1059 to i64*
; %var_2_1271 = inttoptr i64 %var_2_1269 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1061, align 8
; store i64 1, i64* %var_2_1271, align 8
  %.pre418 = load i64, i64* %PC, align 8
  br label %block_400dc1

block_400d47:                                     ; preds = %block_400d39
  store i64 ptrtoint (%E1_type* @E1 to i64), i64* %RDI, align 8, !tbaa !2428
%var_2_1272 = add i64 %var_2_1794, 2329
; Matched:%var_2_1101:  %var_2_1101 = add i64 %var_2_1099, 15
; %var_2_1273 = add i64 %var_2_1794, 15
%var_2_1274 = load i64, i64* %RSP, align 8
%var_2_1275 = add i64 %var_2_1274, -8
; Matched:%var_2_1104:  %var_2_1104 = inttoptr i64 %var_2_1103 to i64*
; %var_2_1276 = inttoptr i64 %var_2_1275 to i64*
; Matched:\<badref\>:  store i64 %var_2_1101, i64* %var_2_1104, align 8
; store i64 %var_2_1273, i64* %var_2_1276, align 8
; Matched:\<badref\>:  store i64 %var_2_251, i64* %var_2_6, align 8
; store i64 %var_2_1275, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1100, i64* %var_2_3, align 8
; store i64 %var_2_1272, i64* %PC, align 8
%var_2_1277 = tail call %struct.Memory* @sub_401660_PA_renamed_(%struct.State* nonnull %0, i64 %var_2_1272, %struct.Memory* %MEMORY.10)
%var_2_1278 = load i64, i64* %RBP, align 8
%var_2_1279 = add i64 %var_2_1278, -24
%var_2_1280 = load i64, i64* %PC, align 8
; Matched:%var_2_1108:  %var_2_1108 = add i64 %var_2_1107, 4
; %var_2_1281 = add i64 %var_2_1280, 4
; Matched:\<badref\>:  store i64 %var_2_1108, i64* %var_2_3, align 8
; store i64 %var_2_1281, i64* %PC, align 8
%var_2_1282 = inttoptr i64 %var_2_1279 to i64*
; Matched:%var_2_2094:  %var_2_2094 = load i64, i64* %var_2_2093, align 8
; %var_2_1283 = load i64, i64* %var_2_1282, align 8
; Matched:%var_2_2095:  %var_2_2095 = add i64 %var_2_2094, 1
; %var_2_1284 = add i64 %var_2_1283, 1
; Matched:\<badref\>:  store i64 %var_2_2095, i64* %RAX.i1199, align 8
; store i64 %var_2_1284, i64* %RAX, align 8
; Matched:%var_2_1112:  %var_2_1112 = icmp eq i64 %var_2_1110, -1
; %var_2_1285 = icmp eq i64 %var_2_1283, -1
; Matched:%var_2_1492:  %var_2_1492 = icmp eq i64 %var_2_1490, 0
; %var_2_1286 = icmp eq i64 %var_2_1284, 0
; Matched:%var_2_1493:  %var_2_1493 = or i1 %var_2_1491, %var_2_1492
; %var_2_1287 = or i1 %var_2_1285, %var_2_1286
; Matched:%var_2_1291:  %var_2_1291 = zext i1 %var_2_1290 to i8
; %var_2_1288 = zext i1 %var_2_1287 to i8
; Matched:\<badref\>:  store i8 %var_2_1291, i8* %var_2_14, align 1
; store i8 %var_2_1288, i8* %var_2_18, align 1
; Matched:%var_2_1292:  %var_2_1292 = trunc i64 %var_2_1287 to i32
; %var_2_1289 = trunc i64 %var_2_1284 to i32
; Matched:%var_2_1293:  %var_2_1293 = and i32 %var_2_1292, 255
; %var_2_1290 = and i32 %var_2_1289, 255
; Matched:%var_2_987:  %var_2_987 = tail call i32 @llvm.ctpop.i32(i32 %var_2_986)
; %var_2_1291 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1290) #14
; Matched:%var_2_988:  %var_2_988 = trunc i32 %var_2_987 to i8
; %var_2_1292 = trunc i32 %var_2_1291 to i8
; Matched:%var_2_989:  %var_2_989 = and i8 %var_2_988, 1
; %var_2_1293 = and i8 %var_2_1292, 1
; Matched:%var_2_1500:  %var_2_1500 = xor i8 %var_2_1499, 1
; %var_2_1294 = xor i8 %var_2_1293, 1
; Matched:\<badref\>:  store i8 %var_2_1297, i8* %var_2_21, align 1
; store i8 %var_2_1294, i8* %var_2_25, align 1
; Matched:%var_2_1501:  %var_2_1501 = xor i64 %var_2_1490, %var_2_1489
; %var_2_1295 = xor i64 %var_2_1284, %var_2_1283
; Matched:%var_2_1299:  %var_2_1299 = lshr i64 %var_2_1298, 4
; %var_2_1296 = lshr i64 %var_2_1295, 4
; Matched:%var_2_1300:  %var_2_1300 = trunc i64 %var_2_1299 to i8
; %var_2_1297 = trunc i64 %var_2_1296 to i8
; Matched:%var_2_1504:  %var_2_1504 = and i8 %var_2_1503, 1
; %var_2_1298 = and i8 %var_2_1297, 1
; Matched:\<badref\>:  store i8 %var_2_1301, i8* %var_2_26, align 1
; store i8 %var_2_1298, i8* %var_2_30, align 1
; Matched:%var_2_1505:  %var_2_1505 = zext i1 %var_2_1492 to i8
; %var_2_1299 = zext i1 %var_2_1286 to i8
; Matched:\<badref\>:  store i8 %var_2_1505, i8* %var_2_29, align 1
; store i8 %var_2_1299, i8* %var_2_33, align 1
; Matched:%var_2_1127:  %var_2_1127 = lshr i64 %var_2_1111, 63
; %var_2_1300 = lshr i64 %var_2_1284, 63
; Matched:%var_2_1128:  %var_2_1128 = trunc i64 %var_2_1127 to i8
; %var_2_1301 = trunc i64 %var_2_1300 to i8
; Matched:\<badref\>:  store i8 %var_2_1128, i8* %var_2_32, align 1
; store i8 %var_2_1301, i8* %var_2_36, align 1
; Matched:%var_2_1129:  %var_2_1129 = lshr i64 %var_2_1110, 63
; %var_2_1302 = lshr i64 %var_2_1283, 63
; Matched:%var_2_1130:  %var_2_1130 = xor i64 %var_2_1127, %var_2_1129
; %var_2_1303 = xor i64 %var_2_1300, %var_2_1302
; Matched:%var_2_2115:  %var_2_2115 = add nuw nsw i64 %var_2_2114, %var_2_2111
; %var_2_1304 = add nuw nsw i64 %var_2_1303, %var_2_1300
; Matched:%var_2_2116:  %var_2_2116 = icmp eq i64 %var_2_2115, 2
; %var_2_1305 = icmp eq i64 %var_2_1304, 2
; Matched:%var_2_1133:  %var_2_1133 = zext i1 %var_2_1132 to i8
; %var_2_1306 = zext i1 %var_2_1305 to i8
; Matched:\<badref\>:  store i8 %var_2_1133, i8* %var_2_38, align 1
; store i8 %var_2_1306, i8* %var_2_42, align 1
; Matched:%var_2_1134:  %var_2_1134 = add i64 %var_2_1107, 12
; %var_2_1307 = add i64 %var_2_1280, 12
; Matched:\<badref\>:  store i64 %var_2_825, i64* %var_2_3, align 8
; store i64 %var_2_1307, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_2095, i64* %var_2_2093, align 8
; store i64 %var_2_1284, i64* %var_2_1282, align 8
%var_2_1308 = load i64, i64* %PC, align 8
%var_2_1309 = add i64 %var_2_1308, -41
; Matched:\<badref\>:  store i64 %var_2_1136, i64* %var_2_3, align 8
; store i64 %var_2_1309, i64* %PC, align 8
  br label %block_400d39

block_401428:                                     ; preds = %block_40141a
%var_2_1310 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1311 = zext i32 %var_2_1310 to i64
%var_2_1312 = add i32 %var_2_2191, %var_2_1310
%var_2_1313 = icmp ult i32 %var_2_1312, %var_2_2191
%var_2_1314 = lshr i32 %var_2_1312, 31
%var_2_1315 = lshr i32 %var_2_1310, 31
%var_2_1316 = lshr i32 %var_2_2191, 31
%var_2_1317 = xor i32 %var_2_1314, %var_2_1315
%var_2_1318 = xor i32 %var_2_1314, %var_2_1316
%var_2_1319 = add nuw nsw i32 %var_2_1317, %var_2_1318
%var_2_1320 = icmp eq i32 %var_2_1319, 2
%var_2_1321 = zext i1 %var_2_1320 to i8
%var_2_1322 = xor i32 %var_2_2191, %var_2_1312
store i32 %var_2_2191, i32* bitcast (%J_type* @J to i32*), align 8
store i64 %var_2_1311, i64* %RAX, align 8
%var_2_1323 = zext i1 %var_2_1313 to i8
store i8 %var_2_1323, i8* %var_2_18, align 1
%var_2_1324 = and i32 %var_2_1310, 255
%var_2_1325 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1324) #14
%var_2_1326 = trunc i32 %var_2_1325 to i8
%var_2_1327 = and i8 %var_2_1326, 1
%var_2_1328 = xor i8 %var_2_1327, 1
store i8 %var_2_1328, i8* %var_2_25, align 1
%var_2_1329 = xor i32 %var_2_1322, %var_2_1310
%var_2_1330 = lshr i32 %var_2_1329, 4
%var_2_1331 = trunc i32 %var_2_1330 to i8
%var_2_1332 = and i8 %var_2_1331, 1
store i8 %var_2_1332, i8* %var_2_30, align 1
%var_2_1333 = icmp eq i32 %var_2_1310, 0
%var_2_1334 = zext i1 %var_2_1333 to i8
store i8 %var_2_1334, i8* %var_2_33, align 1
%var_2_1335 = trunc i32 %var_2_1315 to i8
store i8 %var_2_1335, i8* %var_2_36, align 1
store i8 %var_2_1321, i8* %var_2_42, align 1
store i32 %var_2_1310, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_1336 = load i64, i64* %RBP, align 8
%var_2_1337 = add i64 %var_2_1336, -24
; Matched:%var_2_2393:  %var_2_2393 = add i64 %var_2_2365, 95
; %var_2_1338 = add i64 %var_2_2229, 95
; Matched:\<badref\>:  store i64 %var_2_2393, i64* %var_2_3, align 8
; store i64 %var_2_1338, i64* %PC, align 8
%var_2_1339 = inttoptr i64 %var_2_1337 to i64*
; Matched:%var_2_979:  %var_2_979 = load i64, i64* %var_2_978, align 8
; %var_2_1340 = load i64, i64* %var_2_1339, align 8
; Matched:%var_2_980:  %var_2_980 = add i64 %var_2_979, 1
; %var_2_1341 = add i64 %var_2_1340, 1
; Matched:\<badref\>:  store i64 %var_2_980, i64* %RAX.i1199, align 8
; store i64 %var_2_1341, i64* %RAX, align 8
; Matched:%var_2_981:  %var_2_981 = icmp eq i64 %var_2_979, -1
; %var_2_1342 = icmp eq i64 %var_2_1340, -1
; Matched:%var_2_2573:  %var_2_2573 = icmp eq i64 %var_2_2571, 0
; %var_2_1343 = icmp eq i64 %var_2_1341, 0
; Matched:%var_2_2249:  %var_2_2249 = or i1 %var_2_2247, %var_2_2248
; %var_2_1344 = or i1 %var_2_1342, %var_2_1343
; Matched:%var_2_2250:  %var_2_2250 = zext i1 %var_2_2249 to i8
; %var_2_1345 = zext i1 %var_2_1344 to i8
; Matched:\<badref\>:  store i8 %var_2_2250, i8* %var_2_14, align 1
; store i8 %var_2_1345, i8* %var_2_18, align 1
; Matched:%var_2_2251:  %var_2_2251 = trunc i64 %var_2_2246 to i32
; %var_2_1346 = trunc i64 %var_2_1341 to i32
; Matched:%var_2_2402:  %var_2_2402 = and i32 %var_2_2401, 255
; %var_2_1347 = and i32 %var_2_1346, 255
; Matched:%var_2_1935:  %var_2_1935 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1934)
; %var_2_1348 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1347) #14
; Matched:%var_2_1936:  %var_2_1936 = trunc i32 %var_2_1935 to i8
; %var_2_1349 = trunc i32 %var_2_1348 to i8
; Matched:%var_2_1937:  %var_2_1937 = and i8 %var_2_1936, 1
; %var_2_1350 = and i8 %var_2_1349, 1
; Matched:%var_2_2406:  %var_2_2406 = xor i8 %var_2_2405, 1
; %var_2_1351 = xor i8 %var_2_1350, 1
; Matched:\<badref\>:  store i8 %var_2_2406, i8* %var_2_21, align 1
; store i8 %var_2_1351, i8* %var_2_25, align 1
; Matched:%var_2_2582:  %var_2_2582 = xor i64 %var_2_2571, %var_2_2570
; %var_2_1352 = xor i64 %var_2_1341, %var_2_1340
; Matched:%var_2_2583:  %var_2_2583 = lshr i64 %var_2_2582, 4
; %var_2_1353 = lshr i64 %var_2_1352, 4
; Matched:%var_2_2259:  %var_2_2259 = trunc i64 %var_2_2258 to i8
; %var_2_1354 = trunc i64 %var_2_1353 to i8
; Matched:%var_2_2260:  %var_2_2260 = and i8 %var_2_2259, 1
; %var_2_1355 = and i8 %var_2_1354, 1
; Matched:\<badref\>:  store i8 %var_2_2585, i8* %var_2_26, align 1
; store i8 %var_2_1355, i8* %var_2_30, align 1
; Matched:%var_2_2261:  %var_2_2261 = zext i1 %var_2_2248 to i8
; %var_2_1356 = zext i1 %var_2_1343 to i8
; Matched:\<badref\>:  store i8 %var_2_2261, i8* %var_2_29, align 1
; store i8 %var_2_1356, i8* %var_2_33, align 1
; Matched:%var_2_2587:  %var_2_2587 = lshr i64 %var_2_2571, 63
; %var_2_1357 = lshr i64 %var_2_1341, 63
; Matched:%var_2_2588:  %var_2_2588 = trunc i64 %var_2_2587 to i8
; %var_2_1358 = trunc i64 %var_2_1357 to i8
; Matched:\<badref\>:  store i8 %var_2_2588, i8* %var_2_32, align 1
; store i8 %var_2_1358, i8* %var_2_36, align 1
; Matched:%var_2_2589:  %var_2_2589 = lshr i64 %var_2_2570, 63
; %var_2_1359 = lshr i64 %var_2_1340, 63
; Matched:%var_2_999:  %var_2_999 = xor i64 %var_2_996, %var_2_998
; %var_2_1360 = xor i64 %var_2_1357, %var_2_1359
; Matched:%var_2_1307:  %var_2_1307 = add nuw nsw i64 %var_2_1306, %var_2_1303
; %var_2_1361 = add nuw nsw i64 %var_2_1360, %var_2_1357
; Matched:%var_2_1511:  %var_2_1511 = icmp eq i64 %var_2_1510, 2
; %var_2_1362 = icmp eq i64 %var_2_1361, 2
; Matched:%var_2_1002:  %var_2_1002 = zext i1 %var_2_1001 to i8
; %var_2_1363 = zext i1 %var_2_1362 to i8
; Matched:\<badref\>:  store i8 %var_2_2593, i8* %var_2_38, align 1
; store i8 %var_2_1363, i8* %var_2_42, align 1
; Matched:%var_2_2419:  %var_2_2419 = add i64 %var_2_2365, 103
; %var_2_1364 = add i64 %var_2_2229, 103
; Matched:\<badref\>:  store i64 %var_2_2419, i64* %var_2_3, align 8
; store i64 %var_2_1364, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_980, i64* %var_2_978, align 8
; store i64 %var_2_1341, i64* %var_2_1339, align 8
%var_2_1365 = load i64, i64* %PC, align 8
%var_2_1366 = add i64 %var_2_1365, -117
; Matched:\<badref\>:  store i64 %var_2_2421, i64* %var_2_3, align 8
; store i64 %var_2_1366, i64* %PC, align 8
  br label %block_40141a

block_4014d6:                                     ; preds = %block_401494, %block_4014a6
; Matched:%var_2_2481:  %var_2_2481 = phi i64 [ %var_2_2329, %block_.L_401494 ], [ %.pre124, %block_4014a6 ]
; %var_2_1367 = phi i64 [ %var_2_2193, %block_401494 ], [ %.pre435, %block_4014a6 ]
; Matched:%var_2_2482:  %var_2_2482 = phi i64 [ %var_2_2455, %block_.L_401494 ], [ %.pre123, %block_4014a6 ]
; %var_2_1368 = phi i64 [ %var_2_1904, %block_401494 ], [ %.pre434, %block_4014a6 ]
%MEMORY.13 = phi %struct.Memory* [ %MEMORY.20, %block_401494 ], [ %var_2_1549, %block_4014a6 ]
%var_2_1369 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 64) to i64*), align 16
store i64 %var_2_1369, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_1570:  %var_2_1570 = add i64 %var_2_1564, -144
; %var_2_1370 = add i64 %var_2_1367, -144
; Matched:%var_2_2488:  %var_2_2488 = add i64 %var_2_2482, 16
; %var_2_1371 = add i64 %var_2_1368, 16
; Matched:\<badref\>:  store i64 %var_2_2488, i64* %var_2_3, align 8
; store i64 %var_2_1371, i64* %PC, align 8
; Matched:%var_2_2019:  %var_2_2019 = inttoptr i64 %var_2_2017 to i64*
; %var_2_1372 = inttoptr i64 %var_2_1370 to i64*
; Matched:\<badref\>:  store i64 %var_2_2016, i64* %var_2_2019, align 8
; store i64 %var_2_1369, i64* %var_2_1372, align 8
%var_2_1373 = load i64, i64* %RBP, align 8
%var_2_1374 = add i64 %var_2_1373, -24
%var_2_1375 = load i64, i64* %PC, align 8
%var_2_1376 = add i64 %var_2_1375, 8
store i64 %var_2_1376, i64* %PC, align 8
%var_2_1377 = inttoptr i64 %var_2_1374 to i64*
store i64 1, i64* %var_2_1377, align 8
  %.pre436 = load i64, i64* %PC, align 8
  br label %block_4014ee

block_400aa7:                                     ; preds = %block_400a99
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
%var_2_1378 = add i64 %var_2_1686, -112
; Matched:%var_2_684:  %var_2_684 = add i64 %var_2_682, 15
; %var_2_1379 = add i64 %var_2_1722, 15
; Matched:\<badref\>:  store i64 %var_2_684, i64* %var_2_3, align 8
; store i64 %var_2_1379, i64* %PC, align 8
%var_2_1380 = inttoptr i64 %var_2_1378 to i64*
%var_2_1381 = load i64, i64* %var_2_1380, align 8
; Matched:\<badref\>:  store i64 %var_2_686, i64* %var_2_302, align 1
; store i64 %var_2_1381, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_1382 = add i64 %var_2_1686, -120
; Matched:%var_2_688:  %var_2_688 = add i64 %var_2_682, 20
; %var_2_1383 = add i64 %var_2_1722, 20
; Matched:\<badref\>:  store i64 %var_2_688, i64* %var_2_3, align 8
; store i64 %var_2_1383, i64* %PC, align 8
%var_2_1384 = bitcast i64 %var_2_1381 to double
%var_2_1385 = inttoptr i64 %var_2_1382 to double*
%var_2_1386 = load double, double* %var_2_1385, align 8
%var_2_1387 = fadd double %var_2_1384, %var_2_1386
; Matched:\<badref\>:  store double %var_2_718, double* %var_2_301, align 1
; store double %var_2_1387, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_693:  %var_2_693 = add i64 %var_2_646, -128
; %var_2_1388 = add i64 %var_2_1686, -128
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_682, 25
; %var_2_1389 = add i64 %var_2_1722, 25
; Matched:\<badref\>:  store i64 %var_2_694, i64* %var_2_3, align 8
; store i64 %var_2_1389, i64* %PC, align 8
; Matched:%var_2_695:  %var_2_695 = inttoptr i64 %var_2_693 to double*
; %var_2_1390 = inttoptr i64 %var_2_1388 to double*
; Matched:%var_2_696:  %var_2_696 = load double, double* %var_2_695, align 8
; %var_2_1391 = load double, double* %var_2_1390, align 8
; Matched:%var_2_697:  %var_2_697 = fadd double %var_2_692, %var_2_696
; %var_2_1392 = fadd double %var_2_1387, %var_2_1391
; Matched:\<badref\>:  store double %var_2_697, double* %var_2_301, align 1
; store double %var_2_1392, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_698:  %var_2_698 = add i64 %var_2_646, -136
; %var_2_1393 = add i64 %var_2_1686, -136
; Matched:%var_2_699:  %var_2_699 = add i64 %var_2_682, 33
; %var_2_1394 = add i64 %var_2_1722, 33
; Matched:\<badref\>:  store i64 %var_2_699, i64* %var_2_3, align 8
; store i64 %var_2_1394, i64* %PC, align 8
; Matched:%var_2_700:  %var_2_700 = inttoptr i64 %var_2_698 to double*
; %var_2_1395 = inttoptr i64 %var_2_1393 to double*
; Matched:%var_2_701:  %var_2_701 = load double, double* %var_2_700, align 8
; %var_2_1396 = load double, double* %var_2_1395, align 8
; Matched:%var_2_702:  %var_2_702 = fsub double %var_2_697, %var_2_701
; %var_2_1397 = fsub double %var_2_1392, %var_2_1396
; Matched:%var_2_703:  %var_2_703 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; %var_2_1398 = load double, double* bitcast (%T_type* @T to double*), align 8
; Matched:%var_2_704:  %var_2_704 = fmul double %var_2_702, %var_2_703
; %var_2_1399 = fmul double %var_2_1397, %var_2_1398
; Matched:\<badref\>:  store double %var_2_704, double* %var_2_301, align 1
; store double %var_2_1399, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_705:  %var_2_705 = add i64 %var_2_682, 47
; %var_2_1400 = add i64 %var_2_1722, 47
; Matched:\<badref\>:  store i64 %var_2_705, i64* %var_2_3, align 8
; store i64 %var_2_1400, i64* %PC, align 8
; Matched:%var_2_706:  %var_2_706 = inttoptr i64 %var_2_683 to double*
; %var_2_1401 = inttoptr i64 %var_2_1378 to double*
; Matched:\<badref\>:  store double %var_2_704, double* %var_2_706, align 8
; store double %var_2_1399, double* %var_2_1401, align 8
%var_2_1402 = load i64, i64* %RBP, align 8
%var_2_1403 = add i64 %var_2_1402, -112
%var_2_1404 = load i64, i64* %PC, align 8
; Matched:%var_2_619:  %var_2_619 = add i64 %var_2_618, 5
; %var_2_1405 = add i64 %var_2_1404, 5
; Matched:\<badref\>:  store i64 %var_2_736, i64* %var_2_3, align 8
; store i64 %var_2_1405, i64* %PC, align 8
%var_2_1406 = inttoptr i64 %var_2_1403 to i64*
%var_2_1407 = load i64, i64* %var_2_1406, align 8
; Matched:\<badref\>:  store i64 %var_2_2463, i64* %var_2_302, align 1
; store i64 %var_2_1407, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_1408 = add i64 %var_2_1402, -120
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, 10
; %var_2_1409 = add i64 %var_2_1404, 10
; Matched:\<badref\>:  store i64 %var_2_390, i64* %var_2_3, align 8
; store i64 %var_2_1409, i64* %PC, align 8
%var_2_1410 = bitcast i64 %var_2_1407 to double
%var_2_1411 = inttoptr i64 %var_2_1408 to double*
%var_2_1412 = load double, double* %var_2_1411, align 8
%var_2_1413 = fadd double %var_2_1410, %var_2_1412
; Matched:\<badref\>:  store double %var_2_692, double* %var_2_301, align 1
; store double %var_2_1413, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_719:  %var_2_719 = add i64 %var_2_707, -128
; %var_2_1414 = add i64 %var_2_1402, -128
; Matched:%var_2_531:  %var_2_531 = add i64 %var_2_511, 15
; %var_2_1415 = add i64 %var_2_1404, 15
; Matched:\<badref\>:  store i64 %var_2_531, i64* %var_2_3, align 8
; store i64 %var_2_1415, i64* %PC, align 8
; Matched:%var_2_721:  %var_2_721 = inttoptr i64 %var_2_719 to double*
; %var_2_1416 = inttoptr i64 %var_2_1414 to double*
; Matched:%var_2_722:  %var_2_722 = load double, double* %var_2_721, align 8
; %var_2_1417 = load double, double* %var_2_1416, align 8
; Matched:%var_2_723:  %var_2_723 = fsub double %var_2_718, %var_2_722
; %var_2_1418 = fsub double %var_2_1413, %var_2_1417
; Matched:\<badref\>:  store double %var_2_723, double* %var_2_301, align 1
; store double %var_2_1418, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_724:  %var_2_724 = add i64 %var_2_707, -136
; %var_2_1419 = add i64 %var_2_1402, -136
; Matched:%var_2_725:  %var_2_725 = add i64 %var_2_709, 23
; %var_2_1420 = add i64 %var_2_1404, 23
; Matched:\<badref\>:  store i64 %var_2_751, i64* %var_2_3, align 8
; store i64 %var_2_1420, i64* %PC, align 8
; Matched:%var_2_726:  %var_2_726 = inttoptr i64 %var_2_724 to double*
; %var_2_1421 = inttoptr i64 %var_2_1419 to double*
; Matched:%var_2_727:  %var_2_727 = load double, double* %var_2_726, align 8
; %var_2_1422 = load double, double* %var_2_1421, align 8
; Matched:%var_2_728:  %var_2_728 = fadd double %var_2_723, %var_2_727
; %var_2_1423 = fadd double %var_2_1418, %var_2_1422
; Matched:%var_2_729:  %var_2_729 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; %var_2_1424 = load double, double* bitcast (%T_type* @T to double*), align 8
; Matched:%var_2_730:  %var_2_730 = fmul double %var_2_728, %var_2_729
; %var_2_1425 = fmul double %var_2_1423, %var_2_1424
; Matched:\<badref\>:  store double %var_2_730, double* %var_2_301, align 1
; store double %var_2_1425, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_731:  %var_2_731 = add i64 %var_2_709, 37
; %var_2_1426 = add i64 %var_2_1404, 37
; Matched:\<badref\>:  store i64 %var_2_731, i64* %var_2_3, align 8
; store i64 %var_2_1426, i64* %PC, align 8
; Matched:%var_2_732:  %var_2_732 = inttoptr i64 %var_2_713 to double*
; %var_2_1427 = inttoptr i64 %var_2_1408 to double*
; Matched:\<badref\>:  store double %var_2_730, double* %var_2_732, align 8
; store double %var_2_1425, double* %var_2_1427, align 8
%var_2_1428 = load i64, i64* %RBP, align 8
%var_2_1429 = add i64 %var_2_1428, -112
%var_2_1430 = load i64, i64* %PC, align 8
; Matched:%var_2_736:  %var_2_736 = add i64 %var_2_735, 5
; %var_2_1431 = add i64 %var_2_1430, 5
; Matched:\<badref\>:  store i64 %var_2_710, i64* %var_2_3, align 8
; store i64 %var_2_1431, i64* %PC, align 8
%var_2_1432 = inttoptr i64 %var_2_1429 to i64*
%var_2_1433 = load i64, i64* %var_2_1432, align 8
; Matched:\<badref\>:  store i64 %var_2_1353, i64* %var_2_302, align 1
; store i64 %var_2_1433, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_739:  %var_2_739 = add i64 %var_2_733, -120
; %var_2_1434 = add i64 %var_2_1428, -120
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_62, 10
; %var_2_1435 = add i64 %var_2_1430, 10
; Matched:\<badref\>:  store i64 %var_2_740, i64* %var_2_3, align 8
; store i64 %var_2_1435, i64* %PC, align 8
; Matched:%var_2_741:  %var_2_741 = bitcast i64 %var_2_738 to double
; %var_2_1436 = bitcast i64 %var_2_1433 to double
; Matched:%var_2_742:  %var_2_742 = inttoptr i64 %var_2_739 to double*
; %var_2_1437 = inttoptr i64 %var_2_1434 to double*
; Matched:%var_2_743:  %var_2_743 = load double, double* %var_2_742, align 8
; %var_2_1438 = load double, double* %var_2_1437, align 8
; Matched:%var_2_744:  %var_2_744 = fsub double %var_2_741, %var_2_743
; %var_2_1439 = fsub double %var_2_1436, %var_2_1438
; Matched:\<badref\>:  store double %var_2_744, double* %var_2_301, align 1
; store double %var_2_1439, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_745:  %var_2_745 = add i64 %var_2_733, -128
; %var_2_1440 = add i64 %var_2_1428, -128
; Matched:%var_2_557:  %var_2_557 = add i64 %var_2_535, 15
; %var_2_1441 = add i64 %var_2_1430, 15
; Matched:\<badref\>:  store i64 %var_2_557, i64* %var_2_3, align 8
; store i64 %var_2_1441, i64* %PC, align 8
; Matched:%var_2_747:  %var_2_747 = inttoptr i64 %var_2_745 to double*
; %var_2_1442 = inttoptr i64 %var_2_1440 to double*
; Matched:%var_2_748:  %var_2_748 = load double, double* %var_2_747, align 8
; %var_2_1443 = load double, double* %var_2_1442, align 8
; Matched:%var_2_749:  %var_2_749 = fadd double %var_2_744, %var_2_748
; %var_2_1444 = fadd double %var_2_1439, %var_2_1443
; Matched:\<badref\>:  store double %var_2_749, double* %var_2_301, align 1
; store double %var_2_1444, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_750:  %var_2_750 = add i64 %var_2_733, -136
; %var_2_1445 = add i64 %var_2_1428, -136
; Matched:%var_2_778:  %var_2_778 = add i64 %var_2_761, 23
; %var_2_1446 = add i64 %var_2_1430, 23
; Matched:\<badref\>:  store i64 %var_2_778, i64* %var_2_3, align 8
; store i64 %var_2_1446, i64* %PC, align 8
; Matched:%var_2_752:  %var_2_752 = inttoptr i64 %var_2_750 to double*
; %var_2_1447 = inttoptr i64 %var_2_1445 to double*
; Matched:%var_2_753:  %var_2_753 = load double, double* %var_2_752, align 8
; %var_2_1448 = load double, double* %var_2_1447, align 8
; Matched:%var_2_754:  %var_2_754 = fadd double %var_2_749, %var_2_753
; %var_2_1449 = fadd double %var_2_1444, %var_2_1448
; Matched:%var_2_755:  %var_2_755 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; %var_2_1450 = load double, double* bitcast (%T_type* @T to double*), align 8
; Matched:%var_2_756:  %var_2_756 = fmul double %var_2_754, %var_2_755
; %var_2_1451 = fmul double %var_2_1449, %var_2_1450
; Matched:\<badref\>:  store double %var_2_756, double* %var_2_301, align 1
; store double %var_2_1451, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_735, 37
; %var_2_1452 = add i64 %var_2_1430, 37
; Matched:\<badref\>:  store i64 %var_2_757, i64* %var_2_3, align 8
; store i64 %var_2_1452, i64* %PC, align 8
; Matched:%var_2_758:  %var_2_758 = inttoptr i64 %var_2_745 to double*
; %var_2_1453 = inttoptr i64 %var_2_1440 to double*
; Matched:\<badref\>:  store double %var_2_756, double* %var_2_758, align 8
; store double %var_2_1451, double* %var_2_1453, align 8
; Matched:%var_2_759:  %var_2_759 = load i64, i64* %RBP.i, align 8
; %var_2_1454 = load i64, i64* %RBP, align 8
; Matched:%var_2_760:  %var_2_760 = add i64 %var_2_759, -112
; %var_2_1455 = add i64 %var_2_1454, -112
%var_2_1456 = load i64, i64* %PC, align 8
; Matched:%var_2_710:  %var_2_710 = add i64 %var_2_709, 5
; %var_2_1457 = add i64 %var_2_1456, 5
; Matched:\<badref\>:  store i64 %var_2_619, i64* %var_2_3, align 8
; store i64 %var_2_1457, i64* %PC, align 8
; Matched:%var_2_763:  %var_2_763 = inttoptr i64 %var_2_760 to i64*
; %var_2_1458 = inttoptr i64 %var_2_1455 to i64*
; Matched:%var_2_764:  %var_2_764 = load i64, i64* %var_2_763, align 8
; %var_2_1459 = load i64, i64* %var_2_1458, align 8
; Matched:%var_2_765:  %var_2_765 = load i64, i64* %RAX.i1199, align 8
; %var_2_1460 = load i64, i64* %RAX, align 8
; Matched:%var_2_766:  %var_2_766 = xor i64 %var_2_765, %var_2_764
; %var_2_1461 = xor i64 %var_2_1460, %var_2_1459
; Matched:\<badref\>:  store i64 %var_2_766, i64* %RCX.i1209, align 8
; store i64 %var_2_1461, i64* %RCX, align 8
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_767:  %var_2_767 = trunc i64 %var_2_766 to i32
; %var_2_1462 = trunc i64 %var_2_1461 to i32
; Matched:%var_2_768:  %var_2_768 = and i32 %var_2_767, 255
; %var_2_1463 = and i32 %var_2_1462, 255
; Matched:%var_2_769:  %var_2_769 = tail call i32 @llvm.ctpop.i32(i32 %var_2_768)
; %var_2_1464 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1463) #14
; Matched:%var_2_770:  %var_2_770 = trunc i32 %var_2_769 to i8
; %var_2_1465 = trunc i32 %var_2_1464 to i8
; Matched:%var_2_771:  %var_2_771 = and i8 %var_2_770, 1
; %var_2_1466 = and i8 %var_2_1465, 1
; Matched:%var_2_772:  %var_2_772 = xor i8 %var_2_771, 1
; %var_2_1467 = xor i8 %var_2_1466, 1
; Matched:\<badref\>:  store i8 %var_2_772, i8* %var_2_21, align 1
; store i8 %var_2_1467, i8* %var_2_25, align 1
; Matched:%var_2_773:  %var_2_773 = icmp eq i64 %var_2_766, 0
; %var_2_1468 = icmp eq i64 %var_2_1461, 0
; Matched:%var_2_774:  %var_2_774 = zext i1 %var_2_773 to i8
; %var_2_1469 = zext i1 %var_2_1468 to i8
; Matched:\<badref\>:  store i8 %var_2_774, i8* %var_2_29, align 1
; store i8 %var_2_1469, i8* %var_2_33, align 1
; Matched:%var_2_775:  %var_2_775 = lshr i64 %var_2_766, 63
; %var_2_1470 = lshr i64 %var_2_1461, 63
; Matched:%var_2_776:  %var_2_776 = trunc i64 %var_2_775 to i8
; %var_2_1471 = trunc i64 %var_2_1470 to i8
; Matched:\<badref\>:  store i8 %var_2_776, i8* %var_2_32, align 1
; store i8 %var_2_1471, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:\<badref\>:  store i64 %var_2_766, i64* %var_2_302, align 1
; store i64 %var_2_1461, i64* %var_2_2695, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_777:  %var_2_777 = add i64 %var_2_759, -120
; %var_2_1472 = add i64 %var_2_1454, -120
; Matched:%var_2_751:  %var_2_751 = add i64 %var_2_735, 23
; %var_2_1473 = add i64 %var_2_1456, 23
; Matched:\<badref\>:  store i64 %var_2_725, i64* %var_2_3, align 8
; store i64 %var_2_1473, i64* %PC, align 8
; Matched:  %.cast = bitcast i64 %var_2_766 to double
; %.cast = bitcast i64 %var_2_1461 to double
; Matched:%var_2_779:  %var_2_779 = inttoptr i64 %var_2_777 to double*
; %var_2_1474 = inttoptr i64 %var_2_1472 to double*
; Matched:%var_2_780:  %var_2_780 = load double, double* %var_2_779, align 8
; %var_2_1475 = load double, double* %var_2_1474, align 8
; Matched:%var_2_781:  %var_2_781 = fadd double %.cast, %var_2_780
; %var_2_1476 = fadd double %.cast, %var_2_1475
; Matched:\<badref\>:  store double %var_2_781, double* %var_2_301, align 1
; store double %var_2_1476, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_759, -128
; %var_2_1477 = add i64 %var_2_1454, -128
%var_2_1478 = add i64 %var_2_1456, 28
store i64 %var_2_1478, i64* %PC, align 8
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_782 to double*
; %var_2_1479 = inttoptr i64 %var_2_1477 to double*
; Matched:%var_2_785:  %var_2_785 = load double, double* %var_2_784, align 8
; %var_2_1480 = load double, double* %var_2_1479, align 8
; Matched:%var_2_786:  %var_2_786 = fadd double %var_2_781, %var_2_785
; %var_2_1481 = fadd double %var_2_1476, %var_2_1480
; Matched:\<badref\>:  store double %var_2_786, double* %var_2_301, align 1
; store double %var_2_1481, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
; Matched:%var_2_787:  %var_2_787 = add i64 %var_2_759, -136
; %var_2_1482 = add i64 %var_2_1454, -136
%var_2_1483 = add i64 %var_2_1456, 36
store i64 %var_2_1483, i64* %PC, align 8
; Matched:%var_2_789:  %var_2_789 = inttoptr i64 %var_2_787 to double*
; %var_2_1484 = inttoptr i64 %var_2_1482 to double*
; Matched:%var_2_790:  %var_2_790 = load double, double* %var_2_789, align 8
; %var_2_1485 = load double, double* %var_2_1484, align 8
; Matched:%var_2_791:  %var_2_791 = fadd double %var_2_786, %var_2_790
; %var_2_1486 = fadd double %var_2_1481, %var_2_1485
; Matched:%var_2_792:  %var_2_792 = load double, double* bitcast (%G_0x602098_type* @G_0x602098 to double*), align 8
; %var_2_1487 = load double, double* bitcast (%T_type* @T to double*), align 8
; Matched:%var_2_793:  %var_2_793 = fmul double %var_2_791, %var_2_792
; %var_2_1488 = fmul double %var_2_1486, %var_2_1487
; Matched:\<badref\>:  store double %var_2_793, double* %var_2_301, align 1
; store double %var_2_1488, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
%var_2_1489 = add i64 %var_2_1456, 53
store i64 %var_2_1489, i64* %PC, align 8
; Matched:%var_2_795:  %var_2_795 = inttoptr i64 %var_2_787 to double*
; %var_2_1490 = inttoptr i64 %var_2_1482 to double*
; Matched:\<badref\>:  store double %var_2_793, double* %var_2_795, align 8
; store double %var_2_1488, double* %var_2_1490, align 8
%var_2_1491 = load i64, i64* %RBP, align 8
%var_2_1492 = add i64 %var_2_1491, -24
%var_2_1493 = load i64, i64* %PC, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, 4
; %var_2_1494 = add i64 %var_2_1493, 4
; Matched:\<badref\>:  store i64 %var_2_53, i64* %var_2_3, align 8
; store i64 %var_2_1494, i64* %PC, align 8
%var_2_1495 = inttoptr i64 %var_2_1492 to i64*
; Matched:%var_2_1286:  %var_2_1286 = load i64, i64* %var_2_1198, align 8
; %var_2_1496 = load i64, i64* %var_2_1495, align 8
; Matched:%var_2_802:  %var_2_802 = add i64 %var_2_801, 1
; %var_2_1497 = add i64 %var_2_1496, 1
; Matched:\<badref\>:  store i64 %var_2_802, i64* %RAX.i1199, align 8
; store i64 %var_2_1497, i64* %RAX, align 8
; Matched:%var_2_2096:  %var_2_2096 = icmp eq i64 %var_2_2094, -1
; %var_2_1498 = icmp eq i64 %var_2_1496, -1
; Matched:%var_2_1113:  %var_2_1113 = icmp eq i64 %var_2_1111, 0
; %var_2_1499 = icmp eq i64 %var_2_1497, 0
; Matched:%var_2_1290:  %var_2_1290 = or i1 %var_2_1288, %var_2_1289
; %var_2_1500 = or i1 %var_2_1498, %var_2_1499
; Matched:%var_2_1115:  %var_2_1115 = zext i1 %var_2_1114 to i8
; %var_2_1501 = zext i1 %var_2_1500 to i8
; Matched:\<badref\>:  store i8 %var_2_1494, i8* %var_2_14, align 1
; store i8 %var_2_1501, i8* %var_2_18, align 1
; Matched:%var_2_1495:  %var_2_1495 = trunc i64 %var_2_1490 to i32
; %var_2_1502 = trunc i64 %var_2_1497 to i32
; Matched:%var_2_1496:  %var_2_1496 = and i32 %var_2_1495, 255
; %var_2_1503 = and i32 %var_2_1502, 255
; Matched:%var_2_1497:  %var_2_1497 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1496)
; %var_2_1504 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1503) #14
; Matched:%var_2_1295:  %var_2_1295 = trunc i32 %var_2_1294 to i8
; %var_2_1505 = trunc i32 %var_2_1504 to i8
; Matched:%var_2_1499:  %var_2_1499 = and i8 %var_2_1498, 1
; %var_2_1506 = and i8 %var_2_1505, 1
; Matched:%var_2_1297:  %var_2_1297 = xor i8 %var_2_1296, 1
; %var_2_1507 = xor i8 %var_2_1506, 1
; Matched:\<badref\>:  store i8 %var_2_1500, i8* %var_2_21, align 1
; store i8 %var_2_1507, i8* %var_2_25, align 1
; Matched:%var_2_1122:  %var_2_1122 = xor i64 %var_2_1111, %var_2_1110
; %var_2_1508 = xor i64 %var_2_1497, %var_2_1496
; Matched:%var_2_1123:  %var_2_1123 = lshr i64 %var_2_1122, 4
; %var_2_1509 = lshr i64 %var_2_1508, 4
; Matched:%var_2_1503:  %var_2_1503 = trunc i64 %var_2_1502 to i8
; %var_2_1510 = trunc i64 %var_2_1509 to i8
; Matched:%var_2_1301:  %var_2_1301 = and i8 %var_2_1300, 1
; %var_2_1511 = and i8 %var_2_1510, 1
; Matched:\<badref\>:  store i8 %var_2_2109, i8* %var_2_26, align 1
; store i8 %var_2_1511, i8* %var_2_30, align 1
; Matched:%var_2_2411:  %var_2_2411 = zext i1 %var_2_2398 to i8
; %var_2_1512 = zext i1 %var_2_1499 to i8
; Matched:\<badref\>:  store i8 %var_2_2586, i8* %var_2_29, align 1
; store i8 %var_2_1512, i8* %var_2_33, align 1
; Matched:%var_2_996:  %var_2_996 = lshr i64 %var_2_980, 63
; %var_2_1513 = lshr i64 %var_2_1497, 63
; Matched:%var_2_997:  %var_2_997 = trunc i64 %var_2_996 to i8
; %var_2_1514 = trunc i64 %var_2_1513 to i8
; Matched:\<badref\>:  store i8 %var_2_1507, i8* %var_2_32, align 1
; store i8 %var_2_1514, i8* %var_2_36, align 1
; Matched:%var_2_1508:  %var_2_1508 = lshr i64 %var_2_1489, 63
; %var_2_1515 = lshr i64 %var_2_1496, 63
; Matched:%var_2_2114:  %var_2_2114 = xor i64 %var_2_2111, %var_2_2113
; %var_2_1516 = xor i64 %var_2_1513, %var_2_1515
; Matched:%var_2_822:  %var_2_822 = add nuw nsw i64 %var_2_821, %var_2_818
; %var_2_1517 = add nuw nsw i64 %var_2_1516, %var_2_1513
; Matched:%var_2_823:  %var_2_823 = icmp eq i64 %var_2_822, 2
; %var_2_1518 = icmp eq i64 %var_2_1517, 2
; Matched:%var_2_2117:  %var_2_2117 = zext i1 %var_2_2116 to i8
; %var_2_1519 = zext i1 %var_2_1518 to i8
; Matched:\<badref\>:  store i8 %var_2_2117, i8* %var_2_38, align 1
; store i8 %var_2_1519, i8* %var_2_42, align 1
; Matched:%var_2_2118:  %var_2_2118 = add i64 %var_2_2091, 12
; %var_2_1520 = add i64 %var_2_1493, 12
; Matched:\<badref\>:  store i64 %var_2_2118, i64* %var_2_3, align 8
; store i64 %var_2_1520, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_802, i64* %var_2_800, align 8
; store i64 %var_2_1497, i64* %var_2_1495, align 8
%var_2_1521 = load i64, i64* %PC, align 8
%var_2_1522 = add i64 %var_2_1521, -200
; Matched:\<badref\>:  store i64 %var_2_827, i64* %var_2_3, align 8
; store i64 %var_2_1522, i64* %PC, align 8
  br label %block_400a99

block_4014a6:                                     ; preds = %block_401494
; Matched:%var_2_2456:  %var_2_2456 = add i64 %var_2_2455, 4
; %var_2_1523 = add i64 %var_2_1904, 4
; Matched:\<badref\>:  store i64 %var_2_2456, i64* %var_2_3, align 8
; store i64 %var_2_1523, i64* %PC, align 8
; Matched:%var_2_2457:  %var_2_2457 = load i64, i64* %var_2_2336, align 8
; %var_2_1524 = load i64, i64* %var_2_2200, align 8
; Matched:\<badref\>:  store i64 %var_2_2457, i64* %RDI.i1206, align 8
; store i64 %var_2_1524, i64* %RDI, align 8
%var_2_1525 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1526 = sext i32 %var_2_1525 to i64
store i64 %var_2_1526, i64* %RSI, align 8
%var_2_1527 = sext i32 %var_2_2191 to i64
store i64 %var_2_1527, i64* %RDX, align 8
%var_2_1528 = add i64 %var_2_2193, -112
; Matched:%var_2_2461:  %var_2_2461 = add i64 %var_2_2455, 25
; %var_2_1529 = add i64 %var_2_1904, 25
; Matched:\<badref\>:  store i64 %var_2_2461, i64* %var_2_3, align 8
; store i64 %var_2_1529, i64* %PC, align 8
%var_2_1530 = inttoptr i64 %var_2_1528 to i64*
%var_2_1531 = load i64, i64* %var_2_1530, align 8
; Matched:\<badref\>:  store i64 %var_2_712, i64* %var_2_302, align 1
; store i64 %var_2_1531, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_872:  %var_2_872 = add i64 %var_2_646, -120
; %var_2_1532 = add i64 %var_2_2193, -120
; Matched:%var_2_2465:  %var_2_2465 = add i64 %var_2_2455, 30
; %var_2_1533 = add i64 %var_2_1904, 30
; Matched:\<badref\>:  store i64 %var_2_2465, i64* %var_2_3, align 8
; store i64 %var_2_1533, i64* %PC, align 8
; Matched:%var_2_2466:  %var_2_2466 = inttoptr i64 %var_2_2464 to i64*
; %var_2_1534 = inttoptr i64 %var_2_1532 to i64*
; Matched:%var_2_2467:  %var_2_2467 = load i64, i64* %var_2_2466, align 8
; %var_2_1535 = load i64, i64* %var_2_1534, align 8
; Matched:\<badref\>:  store i64 %var_2_875, i64* %var_2_307, align 1
; store i64 %var_2_1535, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_1358:  %var_2_1358 = add i64 %var_2_1195, -128
; %var_2_1536 = add i64 %var_2_2193, -128
; Matched:%var_2_2469:  %var_2_2469 = add i64 %var_2_2455, 35
; %var_2_1537 = add i64 %var_2_1904, 35
; Matched:\<badref\>:  store i64 %var_2_2469, i64* %var_2_3, align 8
; store i64 %var_2_1537, i64* %PC, align 8
; Matched:%var_2_2470:  %var_2_2470 = inttoptr i64 %var_2_2468 to i64*
; %var_2_1538 = inttoptr i64 %var_2_1536 to i64*
; Matched:%var_2_2471:  %var_2_2471 = load i64, i64* %var_2_2470, align 8
; %var_2_1539 = load i64, i64* %var_2_1538, align 8
; Matched:\<badref\>:  store i64 %var_2_2471, i64* %var_2_312, align 1
; store i64 %var_2_1539, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_1540 = add i64 %var_2_2193, -136
; Matched:%var_2_2473:  %var_2_2473 = add i64 %var_2_2455, 43
; %var_2_1541 = add i64 %var_2_1904, 43
; Matched:\<badref\>:  store i64 %var_2_2473, i64* %var_2_3, align 8
; store i64 %var_2_1541, i64* %PC, align 8
%var_2_1542 = inttoptr i64 %var_2_1540 to i64*
%var_2_1543 = load i64, i64* %var_2_1542, align 8
store i64 %var_2_1543, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_1544 = add i64 %var_2_1904, 330
; Matched:%var_2_2477:  %var_2_2477 = add i64 %var_2_2455, 48
; %var_2_1545 = add i64 %var_2_1904, 48
%var_2_1546 = load i64, i64* %RSP, align 8
%var_2_1547 = add i64 %var_2_1546, -8
; Matched:%var_2_2480:  %var_2_2480 = inttoptr i64 %var_2_2479 to i64*
; %var_2_1548 = inttoptr i64 %var_2_1547 to i64*
; Matched:\<badref\>:  store i64 %var_2_2477, i64* %var_2_2480, align 8
; store i64 %var_2_1545, i64* %var_2_1548, align 8
; Matched:\<badref\>:  store i64 %var_2_1884, i64* %var_2_6, align 8
; store i64 %var_2_1547, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2476, i64* %var_2_3, align 8
; store i64 %var_2_1544, i64* %PC, align 8
%var_2_1549 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_1544, %struct.Memory* %MEMORY.20)
; Matched:  %.pre123 = load i64, i64* %var_2_3, align 8
; %.pre434 = load i64, i64* %PC, align 8
  %.pre435 = load i64, i64* %RBP, align 8
  br label %block_4014d6

block_400fe0:                                     ; preds = %block_400fce
; Matched:%var_2_1550:  %var_2_1550 = add i64 %var_2_1549, 4
; %var_2_1550 = add i64 %var_2_847, 4
; Matched:\<badref\>:  store i64 %var_2_1550, i64* %var_2_3, align 8
; store i64 %var_2_1550, i64* %PC, align 8
; Matched:%var_2_1551:  %var_2_1551 = load i64, i64* %var_2_1385, align 8
; %var_2_1551 = load i64, i64* %var_2_1006, align 8
; Matched:\<badref\>:  store i64 %var_2_1551, i64* %RDI.i1206, align 8
; store i64 %var_2_1551, i64* %RDI, align 8
%var_2_1552 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1553 = sext i32 %var_2_1552 to i64
store i64 %var_2_1553, i64* %RSI, align 8
%var_2_1554 = sext i32 %var_2_997 to i64
store i64 %var_2_1554, i64* %RDX, align 8
%var_2_1555 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_1555, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_1556 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_1556, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_1557 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
store i64 %var_2_1557, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
%var_2_1558 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
store i64 %var_2_1558, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_1559 = add i64 %var_2_847, 1552
; Matched:%var_2_1560:  %var_2_1560 = add i64 %var_2_1549, 61
; %var_2_1560 = add i64 %var_2_847, 61
%var_2_1561 = load i64, i64* %RSP, align 8
%var_2_1562 = add i64 %var_2_1561, -8
; Matched:%var_2_1563:  %var_2_1563 = inttoptr i64 %var_2_1562 to i64*
; %var_2_1563 = inttoptr i64 %var_2_1562 to i64*
; Matched:\<badref\>:  store i64 %var_2_1560, i64* %var_2_1563, align 8
; store i64 %var_2_1560, i64* %var_2_1563, align 8
; Matched:\<badref\>:  store i64 %var_2_200, i64* %var_2_6, align 8
; store i64 %var_2_1562, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1559, i64* %var_2_3, align 8
; store i64 %var_2_1559, i64* %PC, align 8
%var_2_1564 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_1559, %struct.Memory* %MEMORY.15)
; Matched:  %.pre111 = load i64, i64* %var_2_3, align 8
; %.pre422 = load i64, i64* %PC, align 8
  %.pre423 = load i64, i64* %RBP, align 8
  br label %block_40101d

block_4012a7:                                     ; preds = %block_4012b5, %block_40127f
%var_2_1565 = phi i64 [ %var_2_1182, %block_4012b5 ], [ %.pre427, %block_40127f ]
%var_2_1566 = load i64, i64* %RBP, align 8
%var_2_1567 = add i64 %var_2_1566, -24
; Matched:%var_2_2040:  %var_2_2040 = add i64 %var_2_2037, 4
; %var_2_1568 = add i64 %var_2_1565, 4
; Matched:\<badref\>:  store i64 %var_2_2040, i64* %var_2_3, align 8
; store i64 %var_2_1568, i64* %PC, align 8
%var_2_1569 = inttoptr i64 %var_2_1567 to i64*
%var_2_1570 = load i64, i64* %var_2_1569, align 8
; Matched:\<badref\>:  store i64 %var_2_907, i64* %RAX.i1199, align 8
; store i64 %var_2_1570, i64* %RAX, align 8
%var_2_1571 = add i64 %var_2_1566, -80
; Matched:%var_2_2044:  %var_2_2044 = add i64 %var_2_2037, 8
; %var_2_1572 = add i64 %var_2_1565, 8
; Matched:\<badref\>:  store i64 %var_2_2044, i64* %var_2_3, align 8
; store i64 %var_2_1572, i64* %PC, align 8
%var_2_1573 = inttoptr i64 %var_2_1571 to i64*
%var_2_1574 = load i64, i64* %var_2_1573, align 8
%var_2_1575 = sub i64 %var_2_1570, %var_2_1574
; Matched:%var_2_2048:  %var_2_2048 = icmp ult i64 %var_2_2042, %var_2_2046
; %var_2_1576 = icmp ult i64 %var_2_1570, %var_2_1574
; Matched:%var_2_2049:  %var_2_2049 = zext i1 %var_2_2048 to i8
; %var_2_1577 = zext i1 %var_2_1576 to i8
; Matched:\<badref\>:  store i8 %var_2_2049, i8* %var_2_14, align 1
; store i8 %var_2_1577, i8* %var_2_18, align 1
; Matched:%var_2_2050:  %var_2_2050 = trunc i64 %var_2_2047 to i32
; %var_2_1578 = trunc i64 %var_2_1575 to i32
; Matched:%var_2_2051:  %var_2_2051 = and i32 %var_2_2050, 255
; %var_2_1579 = and i32 %var_2_1578, 255
; Matched:%var_2_2052:  %var_2_2052 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2051)
; %var_2_1580 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1579) #14
; Matched:%var_2_2053:  %var_2_2053 = trunc i32 %var_2_2052 to i8
; %var_2_1581 = trunc i32 %var_2_1580 to i8
; Matched:%var_2_2054:  %var_2_2054 = and i8 %var_2_2053, 1
; %var_2_1582 = and i8 %var_2_1581, 1
; Matched:%var_2_2055:  %var_2_2055 = xor i8 %var_2_2054, 1
; %var_2_1583 = xor i8 %var_2_1582, 1
; Matched:\<badref\>:  store i8 %var_2_2055, i8* %var_2_21, align 1
; store i8 %var_2_1583, i8* %var_2_25, align 1
; Matched:%var_2_2056:  %var_2_2056 = xor i64 %var_2_2046, %var_2_2042
; %var_2_1584 = xor i64 %var_2_1574, %var_2_1570
; Matched:%var_2_2057:  %var_2_2057 = xor i64 %var_2_2056, %var_2_2047
; %var_2_1585 = xor i64 %var_2_1584, %var_2_1575
; Matched:%var_2_2058:  %var_2_2058 = lshr i64 %var_2_2057, 4
; %var_2_1586 = lshr i64 %var_2_1585, 4
; Matched:%var_2_2059:  %var_2_2059 = trunc i64 %var_2_2058 to i8
; %var_2_1587 = trunc i64 %var_2_1586 to i8
; Matched:%var_2_2060:  %var_2_2060 = and i8 %var_2_2059, 1
; %var_2_1588 = and i8 %var_2_1587, 1
; Matched:\<badref\>:  store i8 %var_2_2060, i8* %var_2_26, align 1
; store i8 %var_2_1588, i8* %var_2_30, align 1
%var_2_1589 = icmp eq i64 %var_2_1575, 0
; Matched:%var_2_2062:  %var_2_2062 = zext i1 %var_2_2061 to i8
; %var_2_1590 = zext i1 %var_2_1589 to i8
; Matched:\<badref\>:  store i8 %var_2_2062, i8* %var_2_29, align 1
; store i8 %var_2_1590, i8* %var_2_33, align 1
%var_2_1591 = lshr i64 %var_2_1575, 63
%var_2_1592 = trunc i64 %var_2_1591 to i8
; Matched:\<badref\>:  store i8 %var_2_2064, i8* %var_2_32, align 1
; store i8 %var_2_1592, i8* %var_2_36, align 1
%var_2_1593 = lshr i64 %var_2_1570, 63
%var_2_1594 = lshr i64 %var_2_1574, 63
%var_2_1595 = xor i64 %var_2_1594, %var_2_1593
%var_2_1596 = xor i64 %var_2_1591, %var_2_1593
%var_2_1597 = add nuw nsw i64 %var_2_1596, %var_2_1595
%var_2_1598 = icmp eq i64 %var_2_1597, 2
; Matched:%var_2_2071:  %var_2_2071 = zext i1 %var_2_2070 to i8
; %var_2_1599 = zext i1 %var_2_1598 to i8
; Matched:\<badref\>:  store i8 %var_2_2071, i8* %var_2_38, align 1
; store i8 %var_2_1599, i8* %var_2_42, align 1
%var_2_1600 = icmp ne i8 %var_2_1592, 0
%var_2_1601 = xor i1 %var_2_1600, %var_2_1598
%.demorgan447 = or i1 %var_2_1589, %var_2_1601
  %.v464 = select i1 %.demorgan447, i64 14, i64 59
%var_2_1602 = add i64 %var_2_1565, %.v464
; Matched:\<badref\>:  store i64 %var_2_2074, i64* %var_2_3, align 8
; store i64 %var_2_1602, i64* %PC, align 8
  br i1 %.demorgan447, label %block_4012b5, label %block_4012e2

block_400e06:                                     ; preds = %block_400df8
  store i32 0, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1603 = add i64 %var_2_175, 27
store i64 %var_2_1603, i64* %PC, align 8
  br label %block_400e21

block_4012f4:                                     ; preds = %block_4012e2
; Matched:%var_2_2155:  %var_2_2155 = add i64 %var_2_2154, 4
; %var_2_1604 = add i64 %var_2_545, 4
; Matched:\<badref\>:  store i64 %var_2_2155, i64* %var_2_3, align 8
; store i64 %var_2_1604, i64* %PC, align 8
; Matched:%var_2_2156:  %var_2_2156 = load i64, i64* %var_2_2045, align 8
; %var_2_1605 = load i64, i64* %var_2_1573, align 8
; Matched:\<badref\>:  store i64 %var_2_2156, i64* %RDI.i1206, align 8
; store i64 %var_2_1605, i64* %RDI, align 8
%var_2_1606 = load i32, i32* bitcast (%J_type* @J to i32*), align 8
%var_2_1607 = sext i32 %var_2_1606 to i64
store i64 %var_2_1607, i64* %RSI, align 8
%var_2_1608 = load i32, i32* bitcast (%K_type* @K to i32*), align 8
%var_2_1609 = sext i32 %var_2_1608 to i64
store i64 %var_2_1609, i64* %RDX, align 8
%var_2_1610 = add i64 %var_2_1566, -144
; Matched:%var_2_2162:  %var_2_2162 = add i64 %var_2_2154, 28
; %var_2_1611 = add i64 %var_2_545, 28
; Matched:\<badref\>:  store i64 %var_2_2162, i64* %var_2_3, align 8
; store i64 %var_2_1611, i64* %PC, align 8
%var_2_1612 = inttoptr i64 %var_2_1610 to i64*
%var_2_1613 = load i64, i64* %var_2_1612, align 8
; Matched:\<badref\>:  store i64 %var_2_1842, i64* %var_2_302, align 1
; store i64 %var_2_1613, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_2165:  %var_2_2165 = add i64 %var_2_2038, -152
; %var_2_1614 = add i64 %var_2_1566, -152
; Matched:%var_2_2166:  %var_2_2166 = add i64 %var_2_2154, 36
; %var_2_1615 = add i64 %var_2_545, 36
; Matched:\<badref\>:  store i64 %var_2_2166, i64* %var_2_3, align 8
; store i64 %var_2_1615, i64* %PC, align 8
; Matched:%var_2_2082:  %var_2_2082 = inttoptr i64 %var_2_2080 to i64*
; %var_2_1616 = inttoptr i64 %var_2_1614 to i64*
; Matched:%var_2_2083:  %var_2_2083 = load i64, i64* %var_2_2082, align 8
; %var_2_1617 = load i64, i64* %var_2_1616, align 8
; Matched:\<badref\>:  store i64 %var_2_2083, i64* %var_2_307, align 1
; store i64 %var_2_1617, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_1618 = add i64 %var_2_1566, -160
; Matched:%var_2_2170:  %var_2_2170 = add i64 %var_2_2154, 44
; %var_2_1619 = add i64 %var_2_545, 44
; Matched:\<badref\>:  store i64 %var_2_2170, i64* %var_2_3, align 8
; store i64 %var_2_1619, i64* %PC, align 8
%var_2_1620 = inttoptr i64 %var_2_1618 to i64*
; Matched:%var_2_2172:  %var_2_2172 = load i64, i64* %var_2_2171, align 8
; %var_2_1621 = load i64, i64* %var_2_1620, align 8
; Matched:\<badref\>:  store i64 %var_2_2172, i64* %var_2_312, align 1
; store i64 %var_2_1621, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_2173:  %var_2_2173 = add i64 %var_2_2154, 52
; %var_2_1622 = add i64 %var_2_545, 52
; Matched:\<badref\>:  store i64 %var_2_2173, i64* %var_2_3, align 8
; store i64 %var_2_1622, i64* %PC, align 8
%var_2_1623 = load i64, i64* %var_2_1620, align 8
store i64 %var_2_1623, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
%var_2_1624 = add i64 %var_2_545, 764
; Matched:%var_2_2176:  %var_2_2176 = add i64 %var_2_2154, 57
; %var_2_1625 = add i64 %var_2_545, 57
%var_2_1626 = load i64, i64* %RSP, align 8
%var_2_1627 = add i64 %var_2_1626, -8
; Matched:%var_2_2179:  %var_2_2179 = inttoptr i64 %var_2_2178 to i64*
; %var_2_1628 = inttoptr i64 %var_2_1627 to i64*
; Matched:\<badref\>:  store i64 %var_2_2176, i64* %var_2_2179, align 8
; store i64 %var_2_1625, i64* %var_2_1628, align 8
; Matched:\<badref\>:  store i64 %var_2_1808, i64* %var_2_6, align 8
; store i64 %var_2_1627, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2175, i64* %var_2_3, align 8
; store i64 %var_2_1624, i64* %PC, align 8
%var_2_1629 = tail call %struct.Memory* @sub_4015f0_POUT_renamed_(%struct.State* nonnull %0, i64 %var_2_1624, %struct.Memory* %MEMORY.7)
; Matched:  %.pre117 = load i64, i64* %var_2_3, align 8
; %.pre428 = load i64, i64* %PC, align 8
  %.pre429 = load i64, i64* %RBP, align 8
  br label %block_40132d

block_400ea2:                                     ; preds = %block_400e60, %block_400e72
; Matched:%var_2_1371:  %var_2_1371 = phi i64 [ %var_2_1195, %block_.L_400e60 ], [ %.pre109, %block_400e72 ]
; %var_2_1630 = phi i64 [ %var_2_873, %block_400e60 ], [ %.pre420, %block_400e72 ]
; Matched:%var_2_1372:  %var_2_1372 = phi i64 [ %var_2_1346, %block_.L_400e60 ], [ %.pre108, %block_400e72 ]
; %var_2_1631 = phi i64 [ %var_2_579, %block_400e60 ], [ %.pre419, %block_400e72 ]
%MEMORY.15 = phi %struct.Memory* [ %MEMORY.12, %block_400e60 ], [ %var_2_273, %block_400e72 ]
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 2, i32* bitcast (%K_type* @K to i32*), align 8
  store i32 3, i32* bitcast (%L_type* @L to i32*), align 8
; Matched:%var_2_1373:  %var_2_1373 = add i64 %var_2_1371, -24
; %var_2_1632 = add i64 %var_2_1630, -24
; Matched:%var_2_1374:  %var_2_1374 = add i64 %var_2_1372, 41
; %var_2_1633 = add i64 %var_2_1631, 41
; Matched:\<badref\>:  store i64 %var_2_1374, i64* %var_2_3, align 8
; store i64 %var_2_1633, i64* %PC, align 8
; Matched:%var_2_2325:  %var_2_2325 = inttoptr i64 %var_2_2323 to i64*
; %var_2_1634 = inttoptr i64 %var_2_1632 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_2325, align 8
; store i64 1, i64* %var_2_1634, align 8
  %.pre421 = load i64, i64* %PC, align 8
  br label %block_400ecb

block_400e21:                                     ; preds = %block_400e16, %block_400e06
%var_2_1635 = phi i32 [ 1, %block_400e16 ], [ 0, %block_400e06 ]
%var_2_1636 = phi i64 [ %var_2_176, %block_400e16 ], [ %var_2_1603, %block_400e06 ]
%var_2_1637 = add nsw i32 %var_2_1635, -1
; Matched:%var_2_1265:  %var_2_1265 = trunc i32 %var_2_1262 to i8
; %var_2_1638 = trunc i32 %var_2_1635 to i8
; Matched:%var_2_1266:  %var_2_1266 = xor i8 %var_2_1265, 1
; %var_2_1639 = xor i8 %var_2_1638, 1
; Matched:\<badref\>:  store i8 %var_2_1266, i8* %var_2_14, align 1
; store i8 %var_2_1639, i8* %var_2_18, align 1
; Matched:%var_2_1267:  %var_2_1267 = and i32 %var_2_1264, 255
; %var_2_1640 = and i32 %var_2_1637, 255
; Matched:%var_2_1268:  %var_2_1268 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1267)
; %var_2_1641 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1640) #14
; Matched:%var_2_1269:  %var_2_1269 = trunc i32 %var_2_1268 to i8
; %var_2_1642 = trunc i32 %var_2_1641 to i8
; Matched:%var_2_1270:  %var_2_1270 = and i8 %var_2_1269, 1
; %var_2_1643 = and i8 %var_2_1642, 1
; Matched:%var_2_1271:  %var_2_1271 = xor i8 %var_2_1270, 1
; %var_2_1644 = xor i8 %var_2_1643, 1
; Matched:\<badref\>:  store i8 %var_2_1271, i8* %var_2_21, align 1
; store i8 %var_2_1644, i8* %var_2_25, align 1
; Matched:%var_2_1272:  %var_2_1272 = lshr i32 %var_2_1264, 4
; %var_2_1645 = lshr i32 %var_2_1637, 4
; Matched:%var_2_1273:  %var_2_1273 = trunc i32 %var_2_1272 to i8
; %var_2_1646 = trunc i32 %var_2_1645 to i8
; Matched:%var_2_1274:  %var_2_1274 = and i8 %var_2_1273, 1
; %var_2_1647 = and i8 %var_2_1646, 1
; Matched:\<badref\>:  store i8 %var_2_1274, i8* %var_2_26, align 1
; store i8 %var_2_1647, i8* %var_2_30, align 1
; Matched:%var_2_1275:  %var_2_1275 = icmp eq i32 %var_2_1264, 0
; %var_2_1648 = icmp eq i32 %var_2_1637, 0
; Matched:%var_2_1276:  %var_2_1276 = zext i1 %var_2_1275 to i8
; %var_2_1649 = zext i1 %var_2_1648 to i8
; Matched:\<badref\>:  store i8 %var_2_1276, i8* %var_2_29, align 1
; store i8 %var_2_1649, i8* %var_2_33, align 1
%var_2_1650 = lshr i32 %var_2_1637, 31
%var_2_1651 = trunc i32 %var_2_1650 to i8
; Matched:\<badref\>:  store i8 %var_2_1278, i8* %var_2_32, align 1
; store i8 %var_2_1651, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
%var_2_1652 = icmp ne i8 %var_2_1651, 0
%.v475 = select i1 %var_2_1652, i64 14, i64 30
%var_2_1653 = add i64 %var_2_1636, %.v475
%var_2_1654 = add i64 %var_2_1653, 11
store i64 %var_2_1654, i64* %PC, align 8
br i1 %var_2_1652, label %block_400e2f, label %block_400e3f

block_40091d:                                     ; preds = %block_4008ff
%var_2_1655 = load i64, i64* %RBP, align 8
%var_2_1656 = add i64 %var_2_1655, -16
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_217, 4
; %var_2_1657 = add i64 %var_2_774, 4
; Matched:\<badref\>:  store i64 %var_2_220, i64* %var_2_3, align 8
; store i64 %var_2_1657, i64* %PC, align 8
%var_2_1658 = inttoptr i64 %var_2_1656 to i64*
%var_2_1659 = load i64, i64* %var_2_1658, align 8
; Matched:\<badref\>:  store i64 %var_2_222, i64* %RAX.i1199, align 8
; store i64 %var_2_1659, i64* %RAX, align 8
%var_2_1660 = add i64 %var_2_1655, -172
; Matched:%var_2_224:  %var_2_224 = add i64 %var_2_217, 11
; %var_2_1661 = add i64 %var_2_774, 11
; Matched:\<badref\>:  store i64 %var_2_224, i64* %var_2_3, align 8
; store i64 %var_2_1661, i64* %PC, align 8
%var_2_1662 = inttoptr i64 %var_2_1660 to i32*
%var_2_1663 = load i32, i32* %var_2_1662, align 4
%var_2_1664 = sext i32 %var_2_1663 to i64
; Matched:\<badref\>:  store i64 %var_2_147, i64* %RCX.i1209, align 8
; store i64 %var_2_1664, i64* %RCX, align 8
; Matched:%var_2_192:  %var_2_192 = shl nsw i64 %var_2_191, 3
; %var_2_1665 = shl nsw i64 %var_2_1664, 3
; Matched:%var_2_117:  %var_2_117 = add i64 %var_2_116, %var_2_112
; %var_2_1666 = add i64 %var_2_1665, %var_2_1659
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_217, 15
; %var_2_1667 = add i64 %var_2_774, 15
; Matched:\<badref\>:  store i64 %var_2_230, i64* %var_2_3, align 8
; store i64 %var_2_1667, i64* %PC, align 8
; Matched:%var_2_231:  %var_2_231 = inttoptr i64 %var_2_229 to i64*
; %var_2_1668 = inttoptr i64 %var_2_1666 to i64*
; Matched:%var_2_196:  %var_2_196 = load i64, i64* %var_2_195, align 8
; %var_2_1669 = load i64, i64* %var_2_1668, align 8
; Matched:\<badref\>:  store i64 %var_2_232, i64* %RDI.i1206, align 8
; store i64 %var_2_1669, i64* %RDI, align 8
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_217, -477
; %var_2_1670 = add i64 %var_2_774, -477
; Matched:%var_2_234:  %var_2_234 = add i64 %var_2_217, 20
; %var_2_1671 = add i64 %var_2_774, 20
%var_2_1672 = load i64, i64* %RSP, align 8
%var_2_1673 = add i64 %var_2_1672, -8
; Matched:%var_2_237:  %var_2_237 = inttoptr i64 %var_2_236 to i64*
; %var_2_1674 = inttoptr i64 %var_2_1673 to i64*
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_237, align 8
; store i64 %var_2_1671, i64* %var_2_1674, align 8
; Matched:\<badref\>:  store i64 %var_2_1186, i64* %var_2_6, align 8
; store i64 %var_2_1673, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_233, i64* %var_2_3, align 8
; store i64 %var_2_1670, i64* %PC, align 8
%var_2_1675 = tail call fastcc %struct.Memory* @ext_602190_atol(%struct.State* nonnull %0, %struct.Memory* %var_2_759)
; Matched:%var_2_239:  %var_2_239 = load i64, i64* %RBP.i, align 8
; %var_2_1676 = load i64, i64* %RBP, align 8
; Matched:%var_2_240:  %var_2_240 = add i64 %var_2_239, -184
; %var_2_1677 = add i64 %var_2_1676, -184
; Matched:%var_2_241:  %var_2_241 = load i64, i64* %RAX.i1199, align 8
; %var_2_1678 = load i64, i64* %RAX, align 8
%var_2_1679 = load i64, i64* %PC, align 8
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_242, 7
; %var_2_1680 = add i64 %var_2_1679, 7
; Matched:\<badref\>:  store i64 %var_2_2739, i64* %var_2_3, align 8
; store i64 %var_2_1680, i64* %PC, align 8
; Matched:%var_2_244:  %var_2_244 = inttoptr i64 %var_2_240 to i64*
; %var_2_1681 = inttoptr i64 %var_2_1677 to i64*
; Matched:\<badref\>:  store i64 %var_2_241, i64* %var_2_244, align 8
; store i64 %var_2_1678, i64* %var_2_1681, align 8
%var_2_1682 = load i64, i64* %PC, align 8
%var_2_1683 = add i64 %var_2_1682, 48
store i64 %var_2_1683, i64* %PC, align 8
  br label %block_40096d

block_40159b:                                     ; preds = %block_401580
; Matched:%var_2_2716:  %var_2_2716 = add i64 %var_2_2715, -2992
; %var_2_1684 = add i64 %var_2_2811, -2992
; Matched:\<badref\>:  store i64 %var_2_2716, i64* %var_2_3, align 8
; store i64 %var_2_1684, i64* %PC, align 8
  br label %block_4009eb

block_400a99:                                     ; preds = %block_4009eb, %block_400aa7
%var_2_1685 = phi i64 [ %.pre409, %block_4009eb ], [ %var_2_1522, %block_400aa7 ]
%var_2_1686 = load i64, i64* %RBP, align 8
%var_2_1687 = add i64 %var_2_1686, -24
; Matched:%var_2_648:  %var_2_648 = add i64 %var_2_645, 4
; %var_2_1688 = add i64 %var_2_1685, 4
; Matched:\<badref\>:  store i64 %var_2_648, i64* %var_2_3, align 8
; store i64 %var_2_1688, i64* %PC, align 8
%var_2_1689 = inttoptr i64 %var_2_1687 to i64*
%var_2_1690 = load i64, i64* %var_2_1689, align 8
; Matched:\<badref\>:  store i64 %var_2_2042, i64* %RAX.i1199, align 8
; store i64 %var_2_1690, i64* %RAX, align 8
%var_2_1691 = add i64 %var_2_1686, -32
; Matched:%var_2_652:  %var_2_652 = add i64 %var_2_645, 8
; %var_2_1692 = add i64 %var_2_1685, 8
; Matched:\<badref\>:  store i64 %var_2_652, i64* %var_2_3, align 8
; store i64 %var_2_1692, i64* %PC, align 8
%var_2_1693 = inttoptr i64 %var_2_1691 to i64*
%var_2_1694 = load i64, i64* %var_2_1693, align 8
%var_2_1695 = sub i64 %var_2_1690, %var_2_1694
; Matched:%var_2_656:  %var_2_656 = icmp ult i64 %var_2_650, %var_2_654
; %var_2_1696 = icmp ult i64 %var_2_1690, %var_2_1694
; Matched:%var_2_657:  %var_2_657 = zext i1 %var_2_656 to i8
; %var_2_1697 = zext i1 %var_2_1696 to i8
; Matched:\<badref\>:  store i8 %var_2_657, i8* %var_2_14, align 1
; store i8 %var_2_1697, i8* %var_2_18, align 1
; Matched:%var_2_658:  %var_2_658 = trunc i64 %var_2_655 to i32
; %var_2_1698 = trunc i64 %var_2_1695 to i32
; Matched:%var_2_659:  %var_2_659 = and i32 %var_2_658, 255
; %var_2_1699 = and i32 %var_2_1698, 255
; Matched:%var_2_660:  %var_2_660 = tail call i32 @llvm.ctpop.i32(i32 %var_2_659)
; %var_2_1700 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1699) #14
; Matched:%var_2_661:  %var_2_661 = trunc i32 %var_2_660 to i8
; %var_2_1701 = trunc i32 %var_2_1700 to i8
; Matched:%var_2_662:  %var_2_662 = and i8 %var_2_661, 1
; %var_2_1702 = and i8 %var_2_1701, 1
; Matched:%var_2_663:  %var_2_663 = xor i8 %var_2_662, 1
; %var_2_1703 = xor i8 %var_2_1702, 1
; Matched:\<badref\>:  store i8 %var_2_663, i8* %var_2_21, align 1
; store i8 %var_2_1703, i8* %var_2_25, align 1
; Matched:%var_2_664:  %var_2_664 = xor i64 %var_2_654, %var_2_650
; %var_2_1704 = xor i64 %var_2_1694, %var_2_1690
; Matched:%var_2_665:  %var_2_665 = xor i64 %var_2_664, %var_2_655
; %var_2_1705 = xor i64 %var_2_1704, %var_2_1695
; Matched:%var_2_666:  %var_2_666 = lshr i64 %var_2_665, 4
; %var_2_1706 = lshr i64 %var_2_1705, 4
; Matched:%var_2_667:  %var_2_667 = trunc i64 %var_2_666 to i8
; %var_2_1707 = trunc i64 %var_2_1706 to i8
; Matched:%var_2_668:  %var_2_668 = and i8 %var_2_667, 1
; %var_2_1708 = and i8 %var_2_1707, 1
; Matched:\<badref\>:  store i8 %var_2_668, i8* %var_2_26, align 1
; store i8 %var_2_1708, i8* %var_2_30, align 1
%var_2_1709 = icmp eq i64 %var_2_1695, 0
; Matched:%var_2_670:  %var_2_670 = zext i1 %var_2_669 to i8
; %var_2_1710 = zext i1 %var_2_1709 to i8
; Matched:\<badref\>:  store i8 %var_2_670, i8* %var_2_29, align 1
; store i8 %var_2_1710, i8* %var_2_33, align 1
%var_2_1711 = lshr i64 %var_2_1695, 63
%var_2_1712 = trunc i64 %var_2_1711 to i8
; Matched:\<badref\>:  store i8 %var_2_672, i8* %var_2_32, align 1
; store i8 %var_2_1712, i8* %var_2_36, align 1
%var_2_1713 = lshr i64 %var_2_1690, 63
%var_2_1714 = lshr i64 %var_2_1694, 63
%var_2_1715 = xor i64 %var_2_1714, %var_2_1713
%var_2_1716 = xor i64 %var_2_1711, %var_2_1713
%var_2_1717 = add nuw nsw i64 %var_2_1716, %var_2_1715
%var_2_1718 = icmp eq i64 %var_2_1717, 2
; Matched:%var_2_679:  %var_2_679 = zext i1 %var_2_678 to i8
; %var_2_1719 = zext i1 %var_2_1718 to i8
; Matched:\<badref\>:  store i8 %var_2_679, i8* %var_2_38, align 1
; store i8 %var_2_1719, i8* %var_2_42, align 1
%var_2_1720 = icmp ne i8 %var_2_1712, 0
%var_2_1721 = xor i1 %var_2_1720, %var_2_1718
%.demorgan = or i1 %var_2_1709, %var_2_1721
  %.v452 = select i1 %.demorgan, i64 14, i64 205
%var_2_1722 = add i64 %var_2_1685, %.v452
; Matched:\<badref\>:  store i64 %var_2_682, i64* %var_2_3, align 8
; store i64 %var_2_1722, i64* %PC, align 8
  br i1 %.demorgan, label %block_400aa7, label %block_400b66

block_400cea:                                     ; preds = %block_400bdc
%var_2_1723 = add i64 %var_2_616, -176
; Matched:%var_2_1007:  %var_2_1007 = add i64 %var_2_939, 6
; %var_2_1724 = add i64 %var_2_652, 6
; Matched:\<badref\>:  store i64 %var_2_1007, i64* %var_2_3, align 8
; store i64 %var_2_1724, i64* %PC, align 8
%var_2_1725 = inttoptr i64 %var_2_1723 to i32*
%var_2_1726 = load i32, i32* %var_2_1725, align 4
; Matched:%var_2_1317:  %var_2_1317 = zext i32 %var_2_1316 to i64
; %var_2_1727 = zext i32 %var_2_1726 to i64
; Matched:\<badref\>:  store i64 %var_2_1317, i64* %RAX.i1199, align 8
; store i64 %var_2_1727, i64* %RAX, align 8
%var_2_1728 = add i64 %var_2_616, -172
; Matched:%var_2_1012:  %var_2_1012 = add i64 %var_2_939, 12
; %var_2_1729 = add i64 %var_2_652, 12
; Matched:\<badref\>:  store i64 %var_2_1012, i64* %var_2_3, align 8
; store i64 %var_2_1729, i64* %PC, align 8
%var_2_1730 = inttoptr i64 %var_2_1728 to i32*
%var_2_1731 = load i32, i32* %var_2_1730, align 4
%var_2_1732 = sub i32 %var_2_1726, %var_2_1731
; Matched:%var_2_1526:  %var_2_1526 = icmp ult i32 %var_2_1519, %var_2_1524
; %var_2_1733 = icmp ult i32 %var_2_1726, %var_2_1731
; Matched:%var_2_1148:  %var_2_1148 = zext i1 %var_2_1147 to i8
; %var_2_1734 = zext i1 %var_2_1733 to i8
; Matched:\<badref\>:  store i8 %var_2_1965, i8* %var_2_14, align 1
; store i8 %var_2_1734, i8* %var_2_18, align 1
; Matched:%var_2_2434:  %var_2_2434 = and i32 %var_2_2431, 255
; %var_2_1735 = and i32 %var_2_1732, 255
; Matched:%var_2_2285:  %var_2_2285 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2284)
; %var_2_1736 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1735) #14
; Matched:%var_2_842:  %var_2_842 = trunc i32 %var_2_841 to i8
; %var_2_1737 = trunc i32 %var_2_1736 to i8
; Matched:%var_2_843:  %var_2_843 = and i8 %var_2_842, 1
; %var_2_1738 = and i8 %var_2_1737, 1
; Matched:%var_2_844:  %var_2_844 = xor i8 %var_2_843, 1
; %var_2_1739 = xor i8 %var_2_1738, 1
; Matched:\<badref\>:  store i8 %var_2_844, i8* %var_2_21, align 1
; store i8 %var_2_1739, i8* %var_2_25, align 1
; Matched:%var_2_845:  %var_2_845 = xor i32 %var_2_836, %var_2_831
; %var_2_1740 = xor i32 %var_2_1731, %var_2_1726
; Matched:%var_2_2139:  %var_2_2139 = xor i32 %var_2_2138, %var_2_2130
; %var_2_1741 = xor i32 %var_2_1740, %var_2_1732
; Matched:%var_2_847:  %var_2_847 = lshr i32 %var_2_846, 4
; %var_2_1742 = lshr i32 %var_2_1741, 4
; Matched:%var_2_848:  %var_2_848 = trunc i32 %var_2_847 to i8
; %var_2_1743 = trunc i32 %var_2_1742 to i8
; Matched:%var_2_849:  %var_2_849 = and i8 %var_2_848, 1
; %var_2_1744 = and i8 %var_2_1743, 1
; Matched:\<badref\>:  store i8 %var_2_1975, i8* %var_2_26, align 1
; store i8 %var_2_1744, i8* %var_2_30, align 1
%var_2_1745 = icmp eq i32 %var_2_1732, 0
; Matched:%var_2_1977:  %var_2_1977 = zext i1 %var_2_1976 to i8
; %var_2_1746 = zext i1 %var_2_1745 to i8
; Matched:\<badref\>:  store i8 %var_2_851, i8* %var_2_29, align 1
; store i8 %var_2_1746, i8* %var_2_33, align 1
; Matched:%var_2_2145:  %var_2_2145 = lshr i32 %var_2_2130, 31
; %var_2_1747 = lshr i32 %var_2_1732, 31
; Matched:%var_2_2146:  %var_2_2146 = trunc i32 %var_2_2145 to i8
; %var_2_1748 = trunc i32 %var_2_1747 to i8
; Matched:\<badref\>:  store i8 %var_2_2146, i8* %var_2_32, align 1
; store i8 %var_2_1748, i8* %var_2_36, align 1
; Matched:%var_2_2147:  %var_2_2147 = lshr i32 %var_2_2124, 31
; %var_2_1749 = lshr i32 %var_2_1726, 31
; Matched:%var_2_1164:  %var_2_1164 = lshr i32 %var_2_1145, 31
; %var_2_1750 = lshr i32 %var_2_1731, 31
; Matched:%var_2_1165:  %var_2_1165 = xor i32 %var_2_1164, %var_2_1163
; %var_2_1751 = xor i32 %var_2_1750, %var_2_1749
; Matched:%var_2_1342:  %var_2_1342 = xor i32 %var_2_1337, %var_2_1339
; %var_2_1752 = xor i32 %var_2_1747, %var_2_1749
; Matched:%var_2_1343:  %var_2_1343 = add nuw nsw i32 %var_2_1342, %var_2_1341
; %var_2_1753 = add nuw nsw i32 %var_2_1752, %var_2_1751
; Matched:%var_2_1168:  %var_2_1168 = icmp eq i32 %var_2_1167, 2
; %var_2_1754 = icmp eq i32 %var_2_1753, 2
; Matched:%var_2_1169:  %var_2_1169 = zext i1 %var_2_1168 to i8
; %var_2_1755 = zext i1 %var_2_1754 to i8
; Matched:\<badref\>:  store i8 %var_2_2304, i8* %var_2_38, align 1
; store i8 %var_2_1755, i8* %var_2_42, align 1
%.v455 = select i1 %var_2_1745, i64 18, i64 71
%var_2_1756 = add i64 %var_2_652, %.v455
; Matched:\<badref\>:  store i64 %var_2_1039, i64* %var_2_3, align 8
; store i64 %var_2_1756, i64* %PC, align 8
br i1 %var_2_1745, label %block_400cfc, label %block_400d31

block_400d39:                                     ; preds = %block_400d47, %block_400d31
%var_2_1757 = phi i64 [ %var_2_1309, %block_400d47 ], [ %.pre415, %block_400d31 ]
%var_2_1758 = load i64, i64* %RBP, align 8
%var_2_1759 = add i64 %var_2_1758, -24
; Matched:%var_2_1065:  %var_2_1065 = add i64 %var_2_1062, 4
; %var_2_1760 = add i64 %var_2_1757, 4
; Matched:\<badref\>:  store i64 %var_2_1065, i64* %var_2_3, align 8
; store i64 %var_2_1760, i64* %PC, align 8
%var_2_1761 = inttoptr i64 %var_2_1759 to i64*
%var_2_1762 = load i64, i64* %var_2_1761, align 8
; Matched:\<badref\>:  store i64 %var_2_2333, i64* %RAX.i1199, align 8
; store i64 %var_2_1762, i64* %RAX, align 8
%var_2_1763 = add i64 %var_2_1758, -48
; Matched:%var_2_1069:  %var_2_1069 = add i64 %var_2_1062, 8
; %var_2_1764 = add i64 %var_2_1757, 8
; Matched:\<badref\>:  store i64 %var_2_1069, i64* %var_2_3, align 8
; store i64 %var_2_1764, i64* %PC, align 8
%var_2_1765 = inttoptr i64 %var_2_1763 to i64*
%var_2_1766 = load i64, i64* %var_2_1765, align 8
%var_2_1767 = sub i64 %var_2_1762, %var_2_1766
; Matched:%var_2_1073:  %var_2_1073 = icmp ult i64 %var_2_1067, %var_2_1071
; %var_2_1768 = icmp ult i64 %var_2_1762, %var_2_1766
; Matched:%var_2_1074:  %var_2_1074 = zext i1 %var_2_1073 to i8
; %var_2_1769 = zext i1 %var_2_1768 to i8
; Matched:\<badref\>:  store i8 %var_2_1074, i8* %var_2_14, align 1
; store i8 %var_2_1769, i8* %var_2_18, align 1
; Matched:%var_2_1075:  %var_2_1075 = trunc i64 %var_2_1072 to i32
; %var_2_1770 = trunc i64 %var_2_1767 to i32
; Matched:%var_2_1076:  %var_2_1076 = and i32 %var_2_1075, 255
; %var_2_1771 = and i32 %var_2_1770, 255
; Matched:%var_2_1077:  %var_2_1077 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1076)
; %var_2_1772 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1771) #14
; Matched:%var_2_1078:  %var_2_1078 = trunc i32 %var_2_1077 to i8
; %var_2_1773 = trunc i32 %var_2_1772 to i8
; Matched:%var_2_1079:  %var_2_1079 = and i8 %var_2_1078, 1
; %var_2_1774 = and i8 %var_2_1773, 1
; Matched:%var_2_1080:  %var_2_1080 = xor i8 %var_2_1079, 1
; %var_2_1775 = xor i8 %var_2_1774, 1
; Matched:\<badref\>:  store i8 %var_2_1080, i8* %var_2_21, align 1
; store i8 %var_2_1775, i8* %var_2_25, align 1
; Matched:%var_2_1081:  %var_2_1081 = xor i64 %var_2_1071, %var_2_1067
; %var_2_1776 = xor i64 %var_2_1766, %var_2_1762
; Matched:%var_2_1082:  %var_2_1082 = xor i64 %var_2_1081, %var_2_1072
; %var_2_1777 = xor i64 %var_2_1776, %var_2_1767
; Matched:%var_2_1083:  %var_2_1083 = lshr i64 %var_2_1082, 4
; %var_2_1778 = lshr i64 %var_2_1777, 4
; Matched:%var_2_1084:  %var_2_1084 = trunc i64 %var_2_1083 to i8
; %var_2_1779 = trunc i64 %var_2_1778 to i8
; Matched:%var_2_1085:  %var_2_1085 = and i8 %var_2_1084, 1
; %var_2_1780 = and i8 %var_2_1779, 1
; Matched:\<badref\>:  store i8 %var_2_1085, i8* %var_2_26, align 1
; store i8 %var_2_1780, i8* %var_2_30, align 1
%var_2_1781 = icmp eq i64 %var_2_1767, 0
; Matched:%var_2_1087:  %var_2_1087 = zext i1 %var_2_1086 to i8
; %var_2_1782 = zext i1 %var_2_1781 to i8
; Matched:\<badref\>:  store i8 %var_2_1087, i8* %var_2_29, align 1
; store i8 %var_2_1782, i8* %var_2_33, align 1
%var_2_1783 = lshr i64 %var_2_1767, 63
%var_2_1784 = trunc i64 %var_2_1783 to i8
; Matched:\<badref\>:  store i8 %var_2_1089, i8* %var_2_32, align 1
; store i8 %var_2_1784, i8* %var_2_36, align 1
%var_2_1785 = lshr i64 %var_2_1762, 63
%var_2_1786 = lshr i64 %var_2_1766, 63
%var_2_1787 = xor i64 %var_2_1786, %var_2_1785
%var_2_1788 = xor i64 %var_2_1783, %var_2_1785
%var_2_1789 = add nuw nsw i64 %var_2_1788, %var_2_1787
%var_2_1790 = icmp eq i64 %var_2_1789, 2
; Matched:%var_2_1096:  %var_2_1096 = zext i1 %var_2_1095 to i8
; %var_2_1791 = zext i1 %var_2_1790 to i8
; Matched:\<badref\>:  store i8 %var_2_1096, i8* %var_2_38, align 1
; store i8 %var_2_1791, i8* %var_2_42, align 1
%var_2_1792 = icmp ne i8 %var_2_1784, 0
%var_2_1793 = xor i1 %var_2_1792, %var_2_1790
%.demorgan443 = or i1 %var_2_1781, %var_2_1793
  %.v456 = select i1 %.demorgan443, i64 14, i64 46
%var_2_1794 = add i64 %var_2_1757, %.v456
; Matched:\<badref\>:  store i64 %var_2_1099, i64* %var_2_3, align 8
; store i64 %var_2_1794, i64* %PC, align 8
  br i1 %.demorgan443, label %block_400d47, label %block_400d67

block_400898:                                     ; preds = %block_40096d, %block_400860
; Matched:%var_2_71:  %var_2_71 = phi i64 [ %.pre, %entry ], [ %var_2_297, %block_.L_40096d ]
; %var_2_1795 = phi i64 [ %.pre, %block_400860 ], [ %var_2_209, %block_40096d ]
  %MEMORY.19 = phi %struct.Memory* [ %2, %block_400860 ], [ %MEMORY.1, %block_40096d ]
%var_2_1796 = load i64, i64* %RBP, align 8
%var_2_1797 = add i64 %var_2_1796, -172
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_71, 6
; %var_2_1798 = add i64 %var_2_1795, 6
; Matched:\<badref\>:  store i64 %var_2_74, i64* %var_2_3, align 8
; store i64 %var_2_1798, i64* %PC, align 8
%var_2_1799 = inttoptr i64 %var_2_1797 to i32*
%var_2_1800 = load i32, i32* %var_2_1799, align 4
; Matched:%var_2_77:  %var_2_77 = zext i32 %var_2_76 to i64
; %var_2_1801 = zext i32 %var_2_1800 to i64
; Matched:\<badref\>:  store i64 %var_2_77, i64* %RAX.i1199, align 8
; store i64 %var_2_1801, i64* %RAX, align 8
%var_2_1802 = add i64 %var_2_1796, -8
; Matched:%var_2_79:  %var_2_79 = add i64 %var_2_71, 9
; %var_2_1803 = add i64 %var_2_1795, 9
; Matched:\<badref\>:  store i64 %var_2_79, i64* %var_2_3, align 8
; store i64 %var_2_1803, i64* %PC, align 8
%var_2_1804 = inttoptr i64 %var_2_1802 to i32*
%var_2_1805 = load i32, i32* %var_2_1804, align 4
%var_2_1806 = sub i32 %var_2_1800, %var_2_1805
; Matched:%var_2_83:  %var_2_83 = icmp ult i32 %var_2_76, %var_2_81
; %var_2_1807 = icmp ult i32 %var_2_1800, %var_2_1805
; Matched:%var_2_84:  %var_2_84 = zext i1 %var_2_83 to i8
; %var_2_1808 = zext i1 %var_2_1807 to i8
; Matched:\<badref\>:  store i8 %var_2_84, i8* %var_2_14, align 1
; store i8 %var_2_1808, i8* %var_2_18, align 1
; Matched:%var_2_85:  %var_2_85 = and i32 %var_2_82, 255
; %var_2_1809 = and i32 %var_2_1806, 255
; Matched:%var_2_86:  %var_2_86 = tail call i32 @llvm.ctpop.i32(i32 %var_2_85)
; %var_2_1810 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1809) #14
; Matched:%var_2_87:  %var_2_87 = trunc i32 %var_2_86 to i8
; %var_2_1811 = trunc i32 %var_2_1810 to i8
; Matched:%var_2_88:  %var_2_88 = and i8 %var_2_87, 1
; %var_2_1812 = and i8 %var_2_1811, 1
; Matched:%var_2_89:  %var_2_89 = xor i8 %var_2_88, 1
; %var_2_1813 = xor i8 %var_2_1812, 1
; Matched:\<badref\>:  store i8 %var_2_89, i8* %var_2_21, align 1
; store i8 %var_2_1813, i8* %var_2_25, align 1
; Matched:%var_2_90:  %var_2_90 = xor i32 %var_2_81, %var_2_76
; %var_2_1814 = xor i32 %var_2_1805, %var_2_1800
; Matched:%var_2_91:  %var_2_91 = xor i32 %var_2_90, %var_2_82
; %var_2_1815 = xor i32 %var_2_1814, %var_2_1806
; Matched:%var_2_92:  %var_2_92 = lshr i32 %var_2_91, 4
; %var_2_1816 = lshr i32 %var_2_1815, 4
; Matched:%var_2_93:  %var_2_93 = trunc i32 %var_2_92 to i8
; %var_2_1817 = trunc i32 %var_2_1816 to i8
; Matched:%var_2_94:  %var_2_94 = and i8 %var_2_93, 1
; %var_2_1818 = and i8 %var_2_1817, 1
; Matched:\<badref\>:  store i8 %var_2_94, i8* %var_2_26, align 1
; store i8 %var_2_1818, i8* %var_2_30, align 1
; Matched:%var_2_95:  %var_2_95 = icmp eq i32 %var_2_82, 0
; %var_2_1819 = icmp eq i32 %var_2_1806, 0
; Matched:%var_2_96:  %var_2_96 = zext i1 %var_2_95 to i8
; %var_2_1820 = zext i1 %var_2_1819 to i8
; Matched:\<badref\>:  store i8 %var_2_96, i8* %var_2_29, align 1
; store i8 %var_2_1820, i8* %var_2_33, align 1
%var_2_1821 = lshr i32 %var_2_1806, 31
%var_2_1822 = trunc i32 %var_2_1821 to i8
; Matched:\<badref\>:  store i8 %var_2_98, i8* %var_2_32, align 1
; store i8 %var_2_1822, i8* %var_2_36, align 1
%var_2_1823 = lshr i32 %var_2_1800, 31
%var_2_1824 = lshr i32 %var_2_1805, 31
%var_2_1825 = xor i32 %var_2_1824, %var_2_1823
%var_2_1826 = xor i32 %var_2_1821, %var_2_1823
%var_2_1827 = add nuw nsw i32 %var_2_1826, %var_2_1825
%var_2_1828 = icmp eq i32 %var_2_1827, 2
; Matched:%var_2_105:  %var_2_105 = zext i1 %var_2_104 to i8
; %var_2_1829 = zext i1 %var_2_1828 to i8
; Matched:\<badref\>:  store i8 %var_2_105, i8* %var_2_38, align 1
; store i8 %var_2_1829, i8* %var_2_42, align 1
%var_2_1830 = icmp ne i8 %var_2_1822, 0
%var_2_1831 = xor i1 %var_2_1830, %var_2_1828
; Matched:  %.v = select i1 %var_2_107, i64 15, i64 233
; %.v = select i1 %var_2_1831, i64 15, i64 233
; Matched:%var_2_108:  %var_2_108 = add i64 %var_2_71, %.v
; %var_2_1832 = add i64 %var_2_1795, %.v
; Matched:\<badref\>:  store i64 %var_2_108, i64* %var_2_3, align 8
; store i64 %var_2_1832, i64* %PC, align 8
br i1 %var_2_1831, label %block_4008a7, label %block_400981

block_401397:                                     ; preds = %block_401389
%var_2_1833 = add i64 %var_2_2304, 1145
; Matched:%var_2_2236:  %var_2_2236 = add i64 %var_2_2234, 5
; %var_2_1834 = add i64 %var_2_2304, 5
%var_2_1835 = load i64, i64* %RSP, align 8
%var_2_1836 = add i64 %var_2_1835, -8
; Matched:%var_2_2239:  %var_2_2239 = inttoptr i64 %var_2_2238 to i64*
; %var_2_1837 = inttoptr i64 %var_2_1836 to i64*
; Matched:\<badref\>:  store i64 %var_2_2236, i64* %var_2_2239, align 8
; store i64 %var_2_1834, i64* %var_2_1837, align 8
; Matched:\<badref\>:  store i64 %var_2_124, i64* %var_2_6, align 8
; store i64 %var_2_1836, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_2235, i64* %var_2_3, align 8
; store i64 %var_2_1833, i64* %PC, align 8
%var_2_1838 = tail call %struct.Memory* @sub_401810_P0_renamed_(%struct.State* nonnull %0, i64 %var_2_1833, %struct.Memory* %MEMORY.23)
%var_2_1839 = load i64, i64* %RBP, align 8
%var_2_1840 = add i64 %var_2_1839, -24
%var_2_1841 = load i64, i64* %PC, align 8
; Matched:%var_2_2243:  %var_2_2243 = add i64 %var_2_2242, 4
; %var_2_1842 = add i64 %var_2_1841, 4
; Matched:\<badref\>:  store i64 %var_2_2243, i64* %var_2_3, align 8
; store i64 %var_2_1842, i64* %PC, align 8
%var_2_1843 = inttoptr i64 %var_2_1840 to i64*
; Matched:%var_2_2570:  %var_2_2570 = load i64, i64* %var_2_2569, align 8
; %var_2_1844 = load i64, i64* %var_2_1843, align 8
; Matched:%var_2_2571:  %var_2_2571 = add i64 %var_2_2570, 1
; %var_2_1845 = add i64 %var_2_1844, 1
; Matched:\<badref\>:  store i64 %var_2_2571, i64* %RAX.i1199, align 8
; store i64 %var_2_1845, i64* %RAX, align 8
; Matched:%var_2_2572:  %var_2_2572 = icmp eq i64 %var_2_2570, -1
; %var_2_1846 = icmp eq i64 %var_2_1844, -1
; Matched:%var_2_2248:  %var_2_2248 = icmp eq i64 %var_2_2246, 0
; %var_2_1847 = icmp eq i64 %var_2_1845, 0
; Matched:%var_2_2399:  %var_2_2399 = or i1 %var_2_2397, %var_2_2398
; %var_2_1848 = or i1 %var_2_1846, %var_2_1847
; Matched:%var_2_1494:  %var_2_1494 = zext i1 %var_2_1493 to i8
; %var_2_1849 = zext i1 %var_2_1848 to i8
; Matched:\<badref\>:  store i8 %var_2_1115, i8* %var_2_14, align 1
; store i8 %var_2_1849, i8* %var_2_18, align 1
; Matched:%var_2_2100:  %var_2_2100 = trunc i64 %var_2_2095 to i32
; %var_2_1850 = trunc i64 %var_2_1845 to i32
; Matched:%var_2_2252:  %var_2_2252 = and i32 %var_2_2251, 255
; %var_2_1851 = and i32 %var_2_1850, 255
; Matched:%var_2_2403:  %var_2_2403 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2402)
; %var_2_1852 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1851) #14
; Matched:%var_2_2404:  %var_2_2404 = trunc i32 %var_2_2403 to i8
; %var_2_1853 = trunc i32 %var_2_1852 to i8
; Matched:%var_2_2405:  %var_2_2405 = and i8 %var_2_2404, 1
; %var_2_1854 = and i8 %var_2_1853, 1
; Matched:%var_2_2581:  %var_2_2581 = xor i8 %var_2_2580, 1
; %var_2_1855 = xor i8 %var_2_1854, 1
; Matched:\<badref\>:  store i8 %var_2_990, i8* %var_2_21, align 1
; store i8 %var_2_1855, i8* %var_2_25, align 1
; Matched:%var_2_2257:  %var_2_2257 = xor i64 %var_2_2246, %var_2_2245
; %var_2_1856 = xor i64 %var_2_1845, %var_2_1844
; Matched:%var_2_2258:  %var_2_2258 = lshr i64 %var_2_2257, 4
; %var_2_1857 = lshr i64 %var_2_1856, 4
; Matched:%var_2_2409:  %var_2_2409 = trunc i64 %var_2_2408 to i8
; %var_2_1858 = trunc i64 %var_2_1857 to i8
; Matched:%var_2_2410:  %var_2_2410 = and i8 %var_2_2409, 1
; %var_2_1859 = and i8 %var_2_1858, 1
; Matched:\<badref\>:  store i8 %var_2_2260, i8* %var_2_26, align 1
; store i8 %var_2_1859, i8* %var_2_30, align 1
; Matched:%var_2_2586:  %var_2_2586 = zext i1 %var_2_2573 to i8
; %var_2_1860 = zext i1 %var_2_1847 to i8
; Matched:\<badref\>:  store i8 %var_2_2411, i8* %var_2_29, align 1
; store i8 %var_2_1860, i8* %var_2_33, align 1
; Matched:%var_2_2262:  %var_2_2262 = lshr i64 %var_2_2246, 63
; %var_2_1861 = lshr i64 %var_2_1845, 63
; Matched:%var_2_2263:  %var_2_2263 = trunc i64 %var_2_2262 to i8
; %var_2_1862 = trunc i64 %var_2_1861 to i8
; Matched:\<badref\>:  store i8 %var_2_2263, i8* %var_2_32, align 1
; store i8 %var_2_1862, i8* %var_2_36, align 1
; Matched:%var_2_2264:  %var_2_2264 = lshr i64 %var_2_2245, 63
; %var_2_1863 = lshr i64 %var_2_1844, 63
; Matched:%var_2_2590:  %var_2_2590 = xor i64 %var_2_2587, %var_2_2589
; %var_2_1864 = xor i64 %var_2_1861, %var_2_1863
; Matched:%var_2_1000:  %var_2_1000 = add nuw nsw i64 %var_2_999, %var_2_996
; %var_2_1865 = add nuw nsw i64 %var_2_1864, %var_2_1861
; Matched:%var_2_1001:  %var_2_1001 = icmp eq i64 %var_2_1000, 2
; %var_2_1866 = icmp eq i64 %var_2_1865, 2
; Matched:%var_2_2593:  %var_2_2593 = zext i1 %var_2_2592 to i8
; %var_2_1867 = zext i1 %var_2_1866 to i8
; Matched:\<badref\>:  store i8 %var_2_2268, i8* %var_2_38, align 1
; store i8 %var_2_1867, i8* %var_2_42, align 1
; Matched:%var_2_2594:  %var_2_2594 = add i64 %var_2_2567, 12
; %var_2_1868 = add i64 %var_2_1841, 12
; Matched:\<badref\>:  store i64 %var_2_614, i64* %var_2_3, align 8
; store i64 %var_2_1868, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_2571, i64* %var_2_2569, align 8
; store i64 %var_2_1845, i64* %var_2_1843, align 8
%var_2_1869 = load i64, i64* %PC, align 8
%var_2_1870 = add i64 %var_2_1869, -31
; Matched:\<badref\>:  store i64 %var_2_2271, i64* %var_2_3, align 8
; store i64 %var_2_1870, i64* %PC, align 8
  br label %block_401389

block_400e16:                                     ; preds = %block_400df8
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  br label %block_400e21

block_401494:                                     ; preds = %block_40141a
%var_2_1871 = add i64 %var_2_2193, -176
; Matched:%var_2_2423:  %var_2_2423 = add i64 %var_2_2365, 6
; %var_2_1872 = add i64 %var_2_2229, 6
; Matched:\<badref\>:  store i64 %var_2_2423, i64* %var_2_3, align 8
; store i64 %var_2_1872, i64* %PC, align 8
%var_2_1873 = inttoptr i64 %var_2_1871 to i32*
%var_2_1874 = load i32, i32* %var_2_1873, align 4
; Matched:%var_2_1958:  %var_2_1958 = zext i32 %var_2_1957 to i64
; %var_2_1875 = zext i32 %var_2_1874 to i64
; Matched:\<badref\>:  store i64 %var_2_1958, i64* %RAX.i1199, align 8
; store i64 %var_2_1875, i64* %RAX, align 8
%var_2_1876 = add i64 %var_2_2193, -172
; Matched:%var_2_2428:  %var_2_2428 = add i64 %var_2_2365, 12
; %var_2_1877 = add i64 %var_2_2229, 12
; Matched:\<badref\>:  store i64 %var_2_2428, i64* %var_2_3, align 8
; store i64 %var_2_1877, i64* %PC, align 8
%var_2_1878 = inttoptr i64 %var_2_1876 to i32*
%var_2_1879 = load i32, i32* %var_2_1878, align 4
%var_2_1880 = sub i32 %var_2_1874, %var_2_1879
; Matched:%var_2_2432:  %var_2_2432 = icmp ult i32 %var_2_2425, %var_2_2430
; %var_2_1881 = icmp ult i32 %var_2_1874, %var_2_1879
; Matched:%var_2_2433:  %var_2_2433 = zext i1 %var_2_2432 to i8
; %var_2_1882 = zext i1 %var_2_1881 to i8
; Matched:\<badref\>:  store i8 %var_2_2283, i8* %var_2_14, align 1
; store i8 %var_2_1882, i8* %var_2_18, align 1
; Matched:%var_2_2284:  %var_2_2284 = and i32 %var_2_2281, 255
; %var_2_1883 = and i32 %var_2_1880, 255
; Matched:%var_2_2435:  %var_2_2435 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2434)
; %var_2_1884 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1883) #14
; Matched:%var_2_2611:  %var_2_2611 = trunc i32 %var_2_2610 to i8
; %var_2_1885 = trunc i32 %var_2_1884 to i8
; Matched:%var_2_1021:  %var_2_1021 = and i8 %var_2_1020, 1
; %var_2_1886 = and i8 %var_2_1885, 1
; Matched:%var_2_2613:  %var_2_2613 = xor i8 %var_2_2612, 1
; %var_2_1887 = xor i8 %var_2_1886, 1
; Matched:\<badref\>:  store i8 %var_2_2613, i8* %var_2_21, align 1
; store i8 %var_2_1887, i8* %var_2_25, align 1
; Matched:%var_2_2614:  %var_2_2614 = xor i32 %var_2_2605, %var_2_2600
; %var_2_1888 = xor i32 %var_2_1879, %var_2_1874
; Matched:%var_2_2440:  %var_2_2440 = xor i32 %var_2_2439, %var_2_2431
; %var_2_1889 = xor i32 %var_2_1888, %var_2_1880
; Matched:%var_2_2291:  %var_2_2291 = lshr i32 %var_2_2290, 4
; %var_2_1890 = lshr i32 %var_2_1889, 4
; Matched:%var_2_2617:  %var_2_2617 = trunc i32 %var_2_2616 to i8
; %var_2_1891 = trunc i32 %var_2_1890 to i8
; Matched:%var_2_2618:  %var_2_2618 = and i8 %var_2_2617, 1
; %var_2_1892 = and i8 %var_2_1891, 1
; Matched:\<badref\>:  store i8 %var_2_1027, i8* %var_2_26, align 1
; store i8 %var_2_1892, i8* %var_2_30, align 1
%var_2_1893 = icmp eq i32 %var_2_1880, 0
; Matched:%var_2_1029:  %var_2_1029 = zext i1 %var_2_1028 to i8
; %var_2_1894 = zext i1 %var_2_1893 to i8
; Matched:\<badref\>:  store i8 %var_2_2620, i8* %var_2_29, align 1
; store i8 %var_2_1894, i8* %var_2_33, align 1
; Matched:%var_2_2296:  %var_2_2296 = lshr i32 %var_2_2281, 31
; %var_2_1895 = lshr i32 %var_2_1880, 31
; Matched:%var_2_2297:  %var_2_2297 = trunc i32 %var_2_2296 to i8
; %var_2_1896 = trunc i32 %var_2_1895 to i8
; Matched:\<badref\>:  store i8 %var_2_2297, i8* %var_2_32, align 1
; store i8 %var_2_1896, i8* %var_2_36, align 1
; Matched:%var_2_2298:  %var_2_2298 = lshr i32 %var_2_2275, 31
; %var_2_1897 = lshr i32 %var_2_1874, 31
; Matched:%var_2_2449:  %var_2_2449 = lshr i32 %var_2_2430, 31
; %var_2_1898 = lshr i32 %var_2_1879, 31
; Matched:%var_2_2450:  %var_2_2450 = xor i32 %var_2_2449, %var_2_2448
; %var_2_1899 = xor i32 %var_2_1898, %var_2_1897
; Matched:%var_2_1983:  %var_2_1983 = xor i32 %var_2_1978, %var_2_1980
; %var_2_1900 = xor i32 %var_2_1895, %var_2_1897
; Matched:%var_2_1984:  %var_2_1984 = add nuw nsw i32 %var_2_1983, %var_2_1982
; %var_2_1901 = add nuw nsw i32 %var_2_1900, %var_2_1899
; Matched:%var_2_2453:  %var_2_2453 = icmp eq i32 %var_2_2452, 2
; %var_2_1902 = icmp eq i32 %var_2_1901, 2
; Matched:%var_2_2454:  %var_2_2454 = zext i1 %var_2_2453 to i8
; %var_2_1903 = zext i1 %var_2_1902 to i8
; Matched:\<badref\>:  store i8 %var_2_2454, i8* %var_2_38, align 1
; store i8 %var_2_1903, i8* %var_2_42, align 1
%.v469 = select i1 %var_2_1893, i64 18, i64 66
%var_2_1904 = add i64 %var_2_2229, %.v469
; Matched:\<badref\>:  store i64 %var_2_2455, i64* %var_2_3, align 8
; store i64 %var_2_1904, i64* %PC, align 8
br i1 %var_2_1893, label %block_4014a6, label %block_4014d6

block_4013fc:                                     ; preds = %block_4013ad, %block_4013bf
; Matched:%var_2_2180:  %var_2_2180 = phi i64 [ %var_2_2038, %block_.L_4012e2 ], [ %.pre118, %block_4012f4 ]
; %var_2_1905 = phi i64 [ %var_2_2268, %block_4013ad ], [ %.pre432, %block_4013bf ]
; Matched:%var_2_2322:  %var_2_2322 = phi i64 [ %var_2_2305, %block_.L_4013ad ], [ %.pre120, %block_4013bf ]
; %var_2_1906 = phi i64 [ %var_2_1943, %block_4013ad ], [ %.pre431, %block_4013bf ]
%MEMORY.20 = phi %struct.Memory* [ %MEMORY.23, %block_4013ad ], [ %var_2_1198, %block_4013bf ]
  store i32 2, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 3, i32* bitcast (%K_type* @K to i32*), align 8
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1058, -24
; %var_2_1907 = add i64 %var_2_1905, -24
; Matched:%var_2_2324:  %var_2_2324 = add i64 %var_2_2322, 30
; %var_2_1908 = add i64 %var_2_1906, 30
; Matched:\<badref\>:  store i64 %var_2_2324, i64* %var_2_3, align 8
; store i64 %var_2_1908, i64* %PC, align 8
; Matched:%var_2_1375:  %var_2_1375 = inttoptr i64 %var_2_1373 to i64*
; %var_2_1909 = inttoptr i64 %var_2_1907 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1375, align 8
; store i64 1, i64* %var_2_1909, align 8
  %.pre433 = load i64, i64* %PC, align 8
  br label %block_40141a

block_4013ad:                                     ; preds = %block_401389
%var_2_1910 = add i64 %var_2_2268, -176
; Matched:%var_2_2273:  %var_2_2273 = add i64 %var_2_2234, 6
; %var_2_1911 = add i64 %var_2_2304, 6
; Matched:\<badref\>:  store i64 %var_2_2273, i64* %var_2_3, align 8
; store i64 %var_2_1911, i64* %PC, align 8
%var_2_1912 = inttoptr i64 %var_2_1910 to i32*
%var_2_1913 = load i32, i32* %var_2_1912, align 4
; Matched:%var_2_2125:  %var_2_2125 = zext i32 %var_2_2124 to i64
; %var_2_1914 = zext i32 %var_2_1913 to i64
; Matched:\<badref\>:  store i64 %var_2_2125, i64* %RAX.i1199, align 8
; store i64 %var_2_1914, i64* %RAX, align 8
%var_2_1915 = add i64 %var_2_2268, -172
; Matched:%var_2_2278:  %var_2_2278 = add i64 %var_2_2234, 12
; %var_2_1916 = add i64 %var_2_2304, 12
; Matched:\<badref\>:  store i64 %var_2_2278, i64* %var_2_3, align 8
; store i64 %var_2_1916, i64* %PC, align 8
%var_2_1917 = inttoptr i64 %var_2_1915 to i32*
%var_2_1918 = load i32, i32* %var_2_1917, align 4
%var_2_1919 = sub i32 %var_2_1913, %var_2_1918
; Matched:%var_2_838:  %var_2_838 = icmp ult i32 %var_2_831, %var_2_836
; %var_2_1920 = icmp ult i32 %var_2_1913, %var_2_1918
; Matched:%var_2_839:  %var_2_839 = zext i1 %var_2_838 to i8
; %var_2_1921 = zext i1 %var_2_1920 to i8
; Matched:\<badref\>:  store i8 %var_2_839, i8* %var_2_14, align 1
; store i8 %var_2_1921, i8* %var_2_18, align 1
; Matched:%var_2_840:  %var_2_840 = and i32 %var_2_837, 255
; %var_2_1922 = and i32 %var_2_1919, 255
; Matched:%var_2_841:  %var_2_841 = tail call i32 @llvm.ctpop.i32(i32 %var_2_840)
; %var_2_1923 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1922) #14
; Matched:%var_2_2436:  %var_2_2436 = trunc i32 %var_2_2435 to i8
; %var_2_1924 = trunc i32 %var_2_1923 to i8
; Matched:%var_2_2437:  %var_2_2437 = and i8 %var_2_2436, 1
; %var_2_1925 = and i8 %var_2_1924, 1
; Matched:%var_2_2438:  %var_2_2438 = xor i8 %var_2_2437, 1
; %var_2_1926 = xor i8 %var_2_1925, 1
; Matched:\<badref\>:  store i8 %var_2_2438, i8* %var_2_21, align 1
; store i8 %var_2_1926, i8* %var_2_25, align 1
; Matched:%var_2_2439:  %var_2_2439 = xor i32 %var_2_2430, %var_2_2425
; %var_2_1927 = xor i32 %var_2_1918, %var_2_1913
; Matched:%var_2_846:  %var_2_846 = xor i32 %var_2_845, %var_2_837
; %var_2_1928 = xor i32 %var_2_1927, %var_2_1919
; Matched:%var_2_1535:  %var_2_1535 = lshr i32 %var_2_1534, 4
; %var_2_1929 = lshr i32 %var_2_1928, 4
; Matched:%var_2_2442:  %var_2_2442 = trunc i32 %var_2_2441 to i8
; %var_2_1930 = trunc i32 %var_2_1929 to i8
; Matched:%var_2_2443:  %var_2_2443 = and i8 %var_2_2442, 1
; %var_2_1931 = and i8 %var_2_1930, 1
; Matched:\<badref\>:  store i8 %var_2_2443, i8* %var_2_26, align 1
; store i8 %var_2_1931, i8* %var_2_30, align 1
%var_2_1932 = icmp eq i32 %var_2_1919, 0
; Matched:%var_2_2295:  %var_2_2295 = zext i1 %var_2_2294 to i8
; %var_2_1933 = zext i1 %var_2_1932 to i8
; Matched:\<badref\>:  store i8 %var_2_2445, i8* %var_2_29, align 1
; store i8 %var_2_1933, i8* %var_2_33, align 1
; Matched:%var_2_1978:  %var_2_1978 = lshr i32 %var_2_1963, 31
; %var_2_1934 = lshr i32 %var_2_1919, 31
; Matched:%var_2_1979:  %var_2_1979 = trunc i32 %var_2_1978 to i8
; %var_2_1935 = trunc i32 %var_2_1934 to i8
; Matched:\<badref\>:  store i8 %var_2_1979, i8* %var_2_32, align 1
; store i8 %var_2_1935, i8* %var_2_36, align 1
; Matched:%var_2_1980:  %var_2_1980 = lshr i32 %var_2_1957, 31
; %var_2_1936 = lshr i32 %var_2_1913, 31
; Matched:%var_2_855:  %var_2_855 = lshr i32 %var_2_836, 31
; %var_2_1937 = lshr i32 %var_2_1918, 31
; Matched:%var_2_856:  %var_2_856 = xor i32 %var_2_855, %var_2_854
; %var_2_1938 = xor i32 %var_2_1937, %var_2_1936
; Matched:%var_2_2150:  %var_2_2150 = xor i32 %var_2_2145, %var_2_2147
; %var_2_1939 = xor i32 %var_2_1934, %var_2_1936
; Matched:%var_2_2151:  %var_2_2151 = add nuw nsw i32 %var_2_2150, %var_2_2149
; %var_2_1940 = add nuw nsw i32 %var_2_1939, %var_2_1938
; Matched:%var_2_859:  %var_2_859 = icmp eq i32 %var_2_858, 2
; %var_2_1941 = icmp eq i32 %var_2_1940, 2
; Matched:%var_2_860:  %var_2_860 = zext i1 %var_2_859 to i8
; %var_2_1942 = zext i1 %var_2_1941 to i8
; Matched:\<badref\>:  store i8 %var_2_860, i8* %var_2_38, align 1
; store i8 %var_2_1942, i8* %var_2_42, align 1
%.v467 = select i1 %var_2_1932, i64 18, i64 79
%var_2_1943 = add i64 %var_2_2304, %.v467
; Matched:\<badref\>:  store i64 %var_2_2305, i64* %var_2_3, align 8
; store i64 %var_2_1943, i64* %PC, align 8
br i1 %var_2_1932, label %block_4013bf, label %block_4013fc

block_4009eb:                                     ; preds = %block_400986, %block_40159b
; Matched:%var_2_392:  %var_2_392 = phi i64 [ %.pre97, %block_.L_400986 ], [ %var_2_2683, %block_40159b ]
; %var_2_1944 = phi i64 [ %.pre408, %block_400986 ], [ %var_2_2779, %block_40159b ]
; Matched:%var_2_393:  %var_2_393 = phi i64 [ %.pre96, %block_.L_400986 ], [ %var_2_2716, %block_40159b ]
; %var_2_1945 = phi i64 [ %.pre407, %block_400986 ], [ %var_2_1684, %block_40159b ]
%MEMORY.21 = phi %struct.Memory* [ %var_2_2326, %block_400986 ], [ %MEMORY.28, %block_40159b ]
%var_2_1946 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 32) to i64*), align 16
store i64 %var_2_1946, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_1947 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_1947, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_392, -32
; %var_2_1948 = add i64 %var_2_1944, -32
; Matched:%var_2_403:  %var_2_403 = add i64 %var_2_393, 24
; %var_2_1949 = add i64 %var_2_1945, 24
; Matched:\<badref\>:  store i64 %var_2_403, i64* %var_2_3, align 8
; store i64 %var_2_1949, i64* %PC, align 8
; Matched:%var_2_404:  %var_2_404 = inttoptr i64 %var_2_402 to i64*
; %var_2_1950 = inttoptr i64 %var_2_1948 to i64*
; Matched:\<badref\>:  store i64 0, i64* %var_2_404, align 8
; store i64 0, i64* %var_2_1950, align 8
; Matched:%var_2_405:  %var_2_405 = load i64, i64* %RBP.i, align 8
; %var_2_1951 = load i64, i64* %RBP, align 8
; Matched:%var_2_406:  %var_2_406 = add i64 %var_2_405, -168
; %var_2_1952 = add i64 %var_2_1951, -168
%var_2_1953 = load i64, i64* %PC, align 8
%var_2_1954 = add i64 %var_2_1953, 8
store i64 %var_2_1954, i64* %PC, align 8
; Matched:%var_2_409:  %var_2_409 = inttoptr i64 %var_2_406 to i64*
; %var_2_1955 = inttoptr i64 %var_2_1952 to i64*
; Matched:%var_2_410:  %var_2_410 = load i64, i64* %var_2_409, align 8
; %var_2_1956 = load i64, i64* %var_2_1955, align 8
; Matched:%var_2_411:  %var_2_411 = sext i64 %var_2_410 to i128
; %var_2_1957 = sext i64 %var_2_1956 to i128
; Matched:%var_2_412:  %var_2_412 = and i128 %var_2_411, -18446744073709551616
; %var_2_1958 = and i128 %var_2_1957, -18446744073709551616
; Matched:%var_2_413:  %var_2_413 = zext i64 %var_2_410 to i128
; %var_2_1959 = zext i64 %var_2_1956 to i128
; Matched:%var_2_414:  %var_2_414 = or i128 %var_2_412, %var_2_413
; %var_2_1960 = or i128 %var_2_1958, %var_2_1959
; Matched:%var_2_415:  %var_2_415 = mul nsw i128 %var_2_414, 12
; %var_2_1961 = mul nsw i128 %var_2_1960, 12
; Matched:%var_2_416:  %var_2_416 = trunc i128 %var_2_415 to i64
; %var_2_1962 = trunc i128 %var_2_1961 to i64
; Matched:\<badref\>:  store i64 %var_2_416, i64* %RAX.i1199, align 8
; store i64 %var_2_1962, i64* %RAX, align 8
; Matched:%var_2_417:  %var_2_417 = sext i64 %var_2_416 to i128
; %var_2_1963 = sext i64 %var_2_1962 to i128
; Matched:%var_2_418:  %var_2_418 = icmp ne i128 %var_2_417, %var_2_415
; %var_2_1964 = icmp ne i128 %var_2_1963, %var_2_1961
; Matched:%var_2_419:  %var_2_419 = zext i1 %var_2_418 to i8
; %var_2_1965 = zext i1 %var_2_1964 to i8
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_14, align 1
; store i8 %var_2_1965, i8* %var_2_18, align 1
; Matched:%var_2_420:  %var_2_420 = trunc i128 %var_2_415 to i32
; %var_2_1966 = trunc i128 %var_2_1961 to i32
; Matched:%var_2_421:  %var_2_421 = and i32 %var_2_420, 252
; %var_2_1967 = and i32 %var_2_1966, 252
; Matched:%var_2_422:  %var_2_422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_421)
; %var_2_1968 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1967) #14
; Matched:%var_2_423:  %var_2_423 = trunc i32 %var_2_422 to i8
; %var_2_1969 = trunc i32 %var_2_1968 to i8
; Matched:%var_2_424:  %var_2_424 = and i8 %var_2_423, 1
; %var_2_1970 = and i8 %var_2_1969, 1
; Matched:%var_2_425:  %var_2_425 = xor i8 %var_2_424, 1
; %var_2_1971 = xor i8 %var_2_1970, 1
; Matched:\<badref\>:  store i8 %var_2_425, i8* %var_2_21, align 1
; store i8 %var_2_1971, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_426:  %var_2_426 = lshr i64 %var_2_416, 63
; %var_2_1972 = lshr i64 %var_2_1962, 63
; Matched:%var_2_427:  %var_2_427 = trunc i64 %var_2_426 to i8
; %var_2_1973 = trunc i64 %var_2_1972 to i8
; Matched:\<badref\>:  store i8 %var_2_427, i8* %var_2_32, align 1
; store i8 %var_2_1973, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_419, i8* %var_2_38, align 1
; store i8 %var_2_1965, i8* %var_2_42, align 1
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_405, -40
; %var_2_1974 = add i64 %var_2_1951, -40
; Matched:%var_2_2269:  %var_2_2269 = add i64 %var_2_2242, 12
; %var_2_1975 = add i64 %var_2_1953, 12
; Matched:\<badref\>:  store i64 %var_2_2594, i64* %var_2_3, align 8
; store i64 %var_2_1975, i64* %PC, align 8
; Matched:%var_2_430:  %var_2_430 = inttoptr i64 %var_2_428 to i64*
; %var_2_1976 = inttoptr i64 %var_2_1974 to i64*
; Matched:\<badref\>:  store i64 %var_2_416, i64* %var_2_430, align 8
; store i64 %var_2_1962, i64* %var_2_1976, align 8
; Matched:%var_2_431:  %var_2_431 = load i64, i64* %RBP.i, align 8
; %var_2_1977 = load i64, i64* %RBP, align 8
; Matched:%var_2_432:  %var_2_432 = add i64 %var_2_431, -168
; %var_2_1978 = add i64 %var_2_1977, -168
%var_2_1979 = load i64, i64* %PC, align 8
%var_2_1980 = add i64 %var_2_1979, 8
store i64 %var_2_1980, i64* %PC, align 8
; Matched:%var_2_435:  %var_2_435 = inttoptr i64 %var_2_432 to i64*
; %var_2_1981 = inttoptr i64 %var_2_1978 to i64*
; Matched:%var_2_436:  %var_2_436 = load i64, i64* %var_2_435, align 8
; %var_2_1982 = load i64, i64* %var_2_1981, align 8
; Matched:%var_2_437:  %var_2_437 = sext i64 %var_2_436 to i128
; %var_2_1983 = sext i64 %var_2_1982 to i128
; Matched:%var_2_438:  %var_2_438 = and i128 %var_2_437, -18446744073709551616
; %var_2_1984 = and i128 %var_2_1983, -18446744073709551616
; Matched:%var_2_439:  %var_2_439 = zext i64 %var_2_436 to i128
; %var_2_1985 = zext i64 %var_2_1982 to i128
; Matched:%var_2_440:  %var_2_440 = or i128 %var_2_438, %var_2_439
; %var_2_1986 = or i128 %var_2_1984, %var_2_1985
; Matched:%var_2_441:  %var_2_441 = mul nsw i128 %var_2_440, 14
; %var_2_1987 = mul nsw i128 %var_2_1986, 14
; Matched:%var_2_442:  %var_2_442 = trunc i128 %var_2_441 to i64
; %var_2_1988 = trunc i128 %var_2_1987 to i64
; Matched:\<badref\>:  store i64 %var_2_442, i64* %RAX.i1199, align 8
; store i64 %var_2_1988, i64* %RAX, align 8
; Matched:%var_2_443:  %var_2_443 = sext i64 %var_2_442 to i128
; %var_2_1989 = sext i64 %var_2_1988 to i128
; Matched:%var_2_444:  %var_2_444 = icmp ne i128 %var_2_443, %var_2_441
; %var_2_1990 = icmp ne i128 %var_2_1989, %var_2_1987
; Matched:%var_2_445:  %var_2_445 = zext i1 %var_2_444 to i8
; %var_2_1991 = zext i1 %var_2_1990 to i8
; Matched:\<badref\>:  store i8 %var_2_445, i8* %var_2_14, align 1
; store i8 %var_2_1991, i8* %var_2_18, align 1
; Matched:%var_2_446:  %var_2_446 = trunc i128 %var_2_441 to i32
; %var_2_1992 = trunc i128 %var_2_1987 to i32
; Matched:%var_2_447:  %var_2_447 = and i32 %var_2_446, 254
; %var_2_1993 = and i32 %var_2_1992, 254
; Matched:%var_2_448:  %var_2_448 = tail call i32 @llvm.ctpop.i32(i32 %var_2_447)
; %var_2_1994 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1993) #14
; Matched:%var_2_449:  %var_2_449 = trunc i32 %var_2_448 to i8
; %var_2_1995 = trunc i32 %var_2_1994 to i8
; Matched:%var_2_450:  %var_2_450 = and i8 %var_2_449, 1
; %var_2_1996 = and i8 %var_2_1995, 1
; Matched:%var_2_451:  %var_2_451 = xor i8 %var_2_450, 1
; %var_2_1997 = xor i8 %var_2_1996, 1
; Matched:\<badref\>:  store i8 %var_2_451, i8* %var_2_21, align 1
; store i8 %var_2_1997, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_452:  %var_2_452 = lshr i64 %var_2_442, 63
; %var_2_1998 = lshr i64 %var_2_1988, 63
; Matched:%var_2_453:  %var_2_453 = trunc i64 %var_2_452 to i8
; %var_2_1999 = trunc i64 %var_2_1998 to i8
; Matched:\<badref\>:  store i8 %var_2_453, i8* %var_2_32, align 1
; store i8 %var_2_1999, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_445, i8* %var_2_38, align 1
; store i8 %var_2_1991, i8* %var_2_42, align 1
; Matched:%var_2_454:  %var_2_454 = add i64 %var_2_431, -48
; %var_2_2000 = add i64 %var_2_1977, -48
; Matched:%var_2_614:  %var_2_614 = add i64 %var_2_592, 12
; %var_2_2001 = add i64 %var_2_1979, 12
; Matched:\<badref\>:  store i64 %var_2_455, i64* %var_2_3, align 8
; store i64 %var_2_2001, i64* %PC, align 8
; Matched:%var_2_456:  %var_2_456 = inttoptr i64 %var_2_454 to i64*
; %var_2_2002 = inttoptr i64 %var_2_2000 to i64*
; Matched:\<badref\>:  store i64 %var_2_442, i64* %var_2_456, align 8
; store i64 %var_2_1988, i64* %var_2_2002, align 8
; Matched:%var_2_457:  %var_2_457 = load i64, i64* %RBP.i, align 8
; %var_2_2003 = load i64, i64* %RBP, align 8
; Matched:%var_2_458:  %var_2_458 = add i64 %var_2_457, -168
; %var_2_2004 = add i64 %var_2_2003, -168
%var_2_2005 = load i64, i64* %PC, align 8
; Matched:%var_2_1795:  %var_2_1795 = add i64 %var_2_1786, 11
; %var_2_2006 = add i64 %var_2_2005, 11
; Matched:\<badref\>:  store i64 %var_2_1644, i64* %var_2_3, align 8
; store i64 %var_2_2006, i64* %PC, align 8
; Matched:%var_2_461:  %var_2_461 = inttoptr i64 %var_2_458 to i64*
; %var_2_2007 = inttoptr i64 %var_2_2004 to i64*
; Matched:%var_2_462:  %var_2_462 = load i64, i64* %var_2_461, align 8
; %var_2_2008 = load i64, i64* %var_2_2007, align 8
; Matched:%var_2_463:  %var_2_463 = sext i64 %var_2_462 to i128
; %var_2_2009 = sext i64 %var_2_2008 to i128
; Matched:%var_2_464:  %var_2_464 = and i128 %var_2_463, -18446744073709551616
; %var_2_2010 = and i128 %var_2_2009, -18446744073709551616
; Matched:%var_2_465:  %var_2_465 = zext i64 %var_2_462 to i128
; %var_2_2011 = zext i64 %var_2_2008 to i128
; Matched:%var_2_466:  %var_2_466 = or i128 %var_2_464, %var_2_465
; %var_2_2012 = or i128 %var_2_2010, %var_2_2011
; Matched:%var_2_467:  %var_2_467 = mul nsw i128 %var_2_466, 345
; %var_2_2013 = mul nsw i128 %var_2_2012, 345
; Matched:%var_2_468:  %var_2_468 = trunc i128 %var_2_467 to i64
; %var_2_2014 = trunc i128 %var_2_2013 to i64
; Matched:\<badref\>:  store i64 %var_2_468, i64* %RAX.i1199, align 8
; store i64 %var_2_2014, i64* %RAX, align 8
; Matched:%var_2_469:  %var_2_469 = sext i64 %var_2_468 to i128
; %var_2_2015 = sext i64 %var_2_2014 to i128
; Matched:%var_2_470:  %var_2_470 = icmp ne i128 %var_2_469, %var_2_467
; %var_2_2016 = icmp ne i128 %var_2_2015, %var_2_2013
; Matched:%var_2_471:  %var_2_471 = zext i1 %var_2_470 to i8
; %var_2_2017 = zext i1 %var_2_2016 to i8
; Matched:\<badref\>:  store i8 %var_2_471, i8* %var_2_14, align 1
; store i8 %var_2_2017, i8* %var_2_18, align 1
; Matched:%var_2_472:  %var_2_472 = trunc i128 %var_2_467 to i32
; %var_2_2018 = trunc i128 %var_2_2013 to i32
; Matched:%var_2_473:  %var_2_473 = and i32 %var_2_472, 255
; %var_2_2019 = and i32 %var_2_2018, 255
; Matched:%var_2_474:  %var_2_474 = tail call i32 @llvm.ctpop.i32(i32 %var_2_473)
; %var_2_2020 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2019) #14
; Matched:%var_2_475:  %var_2_475 = trunc i32 %var_2_474 to i8
; %var_2_2021 = trunc i32 %var_2_2020 to i8
; Matched:%var_2_476:  %var_2_476 = and i8 %var_2_475, 1
; %var_2_2022 = and i8 %var_2_2021, 1
; Matched:%var_2_477:  %var_2_477 = xor i8 %var_2_476, 1
; %var_2_2023 = xor i8 %var_2_2022, 1
; Matched:\<badref\>:  store i8 %var_2_477, i8* %var_2_21, align 1
; store i8 %var_2_2023, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_478:  %var_2_478 = lshr i64 %var_2_468, 63
; %var_2_2024 = lshr i64 %var_2_2014, 63
; Matched:%var_2_479:  %var_2_479 = trunc i64 %var_2_478 to i8
; %var_2_2025 = trunc i64 %var_2_2024 to i8
; Matched:\<badref\>:  store i8 %var_2_479, i8* %var_2_32, align 1
; store i8 %var_2_2025, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_471, i8* %var_2_38, align 1
; store i8 %var_2_2017, i8* %var_2_42, align 1
; Matched:%var_2_480:  %var_2_480 = add i64 %var_2_457, -56
; %var_2_2026 = add i64 %var_2_2003, -56
; Matched:%var_2_746:  %var_2_746 = add i64 %var_2_735, 15
; %var_2_2027 = add i64 %var_2_2005, 15
; Matched:\<badref\>:  store i64 %var_2_746, i64* %var_2_3, align 8
; store i64 %var_2_2027, i64* %PC, align 8
; Matched:%var_2_482:  %var_2_482 = inttoptr i64 %var_2_480 to i64*
; %var_2_2028 = inttoptr i64 %var_2_2026 to i64*
; Matched:\<badref\>:  store i64 %var_2_468, i64* %var_2_482, align 8
; store i64 %var_2_2014, i64* %var_2_2028, align 8
; Matched:%var_2_483:  %var_2_483 = load i64, i64* %RBP.i, align 8
; %var_2_2029 = load i64, i64* %RBP, align 8
; Matched:%var_2_484:  %var_2_484 = add i64 %var_2_483, -168
; %var_2_2030 = add i64 %var_2_2029, -168
%var_2_2031 = load i64, i64* %PC, align 8
; Matched:%var_2_562:  %var_2_562 = add i64 %var_2_561, 11
; %var_2_2032 = add i64 %var_2_2031, 11
; Matched:\<badref\>:  store i64 %var_2_1795, i64* %var_2_3, align 8
; store i64 %var_2_2032, i64* %PC, align 8
; Matched:%var_2_487:  %var_2_487 = inttoptr i64 %var_2_484 to i64*
; %var_2_2033 = inttoptr i64 %var_2_2030 to i64*
; Matched:%var_2_488:  %var_2_488 = load i64, i64* %var_2_487, align 8
; %var_2_2034 = load i64, i64* %var_2_2033, align 8
; Matched:%var_2_489:  %var_2_489 = sext i64 %var_2_488 to i128
; %var_2_2035 = sext i64 %var_2_2034 to i128
; Matched:%var_2_490:  %var_2_490 = and i128 %var_2_489, -18446744073709551616
; %var_2_2036 = and i128 %var_2_2035, -18446744073709551616
; Matched:%var_2_491:  %var_2_491 = zext i64 %var_2_488 to i128
; %var_2_2037 = zext i64 %var_2_2034 to i128
; Matched:%var_2_492:  %var_2_492 = or i128 %var_2_490, %var_2_491
; %var_2_2038 = or i128 %var_2_2036, %var_2_2037
; Matched:%var_2_493:  %var_2_493 = mul nsw i128 %var_2_492, 210
; %var_2_2039 = mul nsw i128 %var_2_2038, 210
; Matched:%var_2_494:  %var_2_494 = trunc i128 %var_2_493 to i64
; %var_2_2040 = trunc i128 %var_2_2039 to i64
; Matched:\<badref\>:  store i64 %var_2_494, i64* %RAX.i1199, align 8
; store i64 %var_2_2040, i64* %RAX, align 8
; Matched:%var_2_495:  %var_2_495 = sext i64 %var_2_494 to i128
; %var_2_2041 = sext i64 %var_2_2040 to i128
; Matched:%var_2_496:  %var_2_496 = icmp ne i128 %var_2_495, %var_2_493
; %var_2_2042 = icmp ne i128 %var_2_2041, %var_2_2039
; Matched:%var_2_497:  %var_2_497 = zext i1 %var_2_496 to i8
; %var_2_2043 = zext i1 %var_2_2042 to i8
; Matched:\<badref\>:  store i8 %var_2_497, i8* %var_2_14, align 1
; store i8 %var_2_2043, i8* %var_2_18, align 1
; Matched:%var_2_498:  %var_2_498 = trunc i128 %var_2_493 to i32
; %var_2_2044 = trunc i128 %var_2_2039 to i32
; Matched:%var_2_499:  %var_2_499 = and i32 %var_2_498, 254
; %var_2_2045 = and i32 %var_2_2044, 254
; Matched:%var_2_500:  %var_2_500 = tail call i32 @llvm.ctpop.i32(i32 %var_2_499)
; %var_2_2046 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2045) #14
; Matched:%var_2_501:  %var_2_501 = trunc i32 %var_2_500 to i8
; %var_2_2047 = trunc i32 %var_2_2046 to i8
; Matched:%var_2_502:  %var_2_502 = and i8 %var_2_501, 1
; %var_2_2048 = and i8 %var_2_2047, 1
; Matched:%var_2_503:  %var_2_503 = xor i8 %var_2_502, 1
; %var_2_2049 = xor i8 %var_2_2048, 1
; Matched:\<badref\>:  store i8 %var_2_503, i8* %var_2_21, align 1
; store i8 %var_2_2049, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_504:  %var_2_504 = lshr i64 %var_2_494, 63
; %var_2_2050 = lshr i64 %var_2_2040, 63
; Matched:%var_2_505:  %var_2_505 = trunc i64 %var_2_504 to i8
; %var_2_2051 = trunc i64 %var_2_2050 to i8
; Matched:\<badref\>:  store i8 %var_2_505, i8* %var_2_32, align 1
; store i8 %var_2_2051, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_497, i8* %var_2_38, align 1
; store i8 %var_2_2043, i8* %var_2_42, align 1
; Matched:%var_2_506:  %var_2_506 = add i64 %var_2_483, -64
; %var_2_2052 = add i64 %var_2_2029, -64
; Matched:%var_2_583:  %var_2_583 = add i64 %var_2_561, 15
; %var_2_2053 = add i64 %var_2_2031, 15
; Matched:\<badref\>:  store i64 %var_2_583, i64* %var_2_3, align 8
; store i64 %var_2_2053, i64* %PC, align 8
; Matched:%var_2_508:  %var_2_508 = inttoptr i64 %var_2_506 to i64*
; %var_2_2054 = inttoptr i64 %var_2_2052 to i64*
; Matched:\<badref\>:  store i64 %var_2_494, i64* %var_2_508, align 8
; store i64 %var_2_2040, i64* %var_2_2054, align 8
; Matched:%var_2_509:  %var_2_509 = load i64, i64* %RBP.i, align 8
; %var_2_2055 = load i64, i64* %RBP, align 8
; Matched:%var_2_510:  %var_2_510 = add i64 %var_2_509, -168
; %var_2_2056 = add i64 %var_2_2055, -168
%var_2_2057 = load i64, i64* %PC, align 8
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_256, 7
; %var_2_2058 = add i64 %var_2_2057, 7
; Matched:\<badref\>:  store i64 %var_2_243, i64* %var_2_3, align 8
; store i64 %var_2_2058, i64* %PC, align 8
; Matched:%var_2_513:  %var_2_513 = inttoptr i64 %var_2_510 to i64*
; %var_2_2059 = inttoptr i64 %var_2_2056 to i64*
; Matched:%var_2_514:  %var_2_514 = load i64, i64* %var_2_513, align 8
; %var_2_2060 = load i64, i64* %var_2_2059, align 8
; Matched:%var_2_515:  %var_2_515 = shl i64 %var_2_514, 5
; %var_2_2061 = shl i64 %var_2_2060, 5
; Matched:\<badref\>:  store i64 %var_2_515, i64* %RAX.i1199, align 8
; store i64 %var_2_2061, i64* %RAX, align 8
; Matched:%var_2_516:  %var_2_516 = lshr i64 %var_2_514, 59
; %var_2_2062 = lshr i64 %var_2_2060, 59
; Matched:%var_2_517:  %var_2_517 = trunc i64 %var_2_516 to i8
; %var_2_2063 = trunc i64 %var_2_2062 to i8
; Matched:%var_2_518:  %var_2_518 = and i8 %var_2_517, 1
; %var_2_2064 = and i8 %var_2_2063, 1
; Matched:\<badref\>:  store i8 %var_2_518, i8* %var_2_14, align 1
; store i8 %var_2_2064, i8* %var_2_18, align 1
; Matched:%var_2_519:  %var_2_519 = trunc i64 %var_2_515 to i32
; %var_2_2065 = trunc i64 %var_2_2061 to i32
; Matched:%var_2_520:  %var_2_520 = and i32 %var_2_519, 224
; %var_2_2066 = and i32 %var_2_2065, 224
; Matched:%var_2_521:  %var_2_521 = tail call i32 @llvm.ctpop.i32(i32 %var_2_520)
; %var_2_2067 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2066) #14
; Matched:%var_2_522:  %var_2_522 = trunc i32 %var_2_521 to i8
; %var_2_2068 = trunc i32 %var_2_2067 to i8
; Matched:%var_2_523:  %var_2_523 = and i8 %var_2_522, 1
; %var_2_2069 = and i8 %var_2_2068, 1
; Matched:%var_2_524:  %var_2_524 = xor i8 %var_2_523, 1
; %var_2_2070 = xor i8 %var_2_2069, 1
; Matched:\<badref\>:  store i8 %var_2_524, i8* %var_2_21, align 1
; store i8 %var_2_2070, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:%var_2_525:  %var_2_525 = icmp eq i64 %var_2_515, 0
; %var_2_2071 = icmp eq i64 %var_2_2061, 0
; Matched:%var_2_526:  %var_2_526 = zext i1 %var_2_525 to i8
; %var_2_2072 = zext i1 %var_2_2071 to i8
; Matched:\<badref\>:  store i8 %var_2_526, i8* %var_2_29, align 1
; store i8 %var_2_2072, i8* %var_2_33, align 1
; Matched:%var_2_527:  %var_2_527 = lshr i64 %var_2_514, 58
; %var_2_2073 = lshr i64 %var_2_2060, 58
; Matched:%var_2_528:  %var_2_528 = trunc i64 %var_2_527 to i8
; %var_2_2074 = trunc i64 %var_2_2073 to i8
; Matched:%var_2_529:  %var_2_529 = and i8 %var_2_528, 1
; %var_2_2075 = and i8 %var_2_2074, 1
; Matched:\<badref\>:  store i8 %var_2_529, i8* %var_2_32, align 1
; store i8 %var_2_2075, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
; Matched:%var_2_530:  %var_2_530 = add i64 %var_2_509, -72
; %var_2_2076 = add i64 %var_2_2055, -72
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_459, 15
; %var_2_2077 = add i64 %var_2_2057, 15
; Matched:\<badref\>:  store i64 %var_2_481, i64* %var_2_3, align 8
; store i64 %var_2_2077, i64* %PC, align 8
; Matched:%var_2_532:  %var_2_532 = inttoptr i64 %var_2_530 to i64*
; %var_2_2078 = inttoptr i64 %var_2_2076 to i64*
; Matched:\<badref\>:  store i64 %var_2_515, i64* %var_2_532, align 8
; store i64 %var_2_2061, i64* %var_2_2078, align 8
; Matched:%var_2_533:  %var_2_533 = load i64, i64* %RBP.i, align 8
; %var_2_2079 = load i64, i64* %RBP, align 8
; Matched:%var_2_534:  %var_2_534 = add i64 %var_2_533, -168
; %var_2_2080 = add i64 %var_2_2079, -168
%var_2_2081 = load i64, i64* %PC, align 8
; Matched:%var_2_486:  %var_2_486 = add i64 %var_2_485, 11
; %var_2_2082 = add i64 %var_2_2081, 11
; Matched:\<badref\>:  store i64 %var_2_460, i64* %var_2_3, align 8
; store i64 %var_2_2082, i64* %PC, align 8
; Matched:%var_2_537:  %var_2_537 = inttoptr i64 %var_2_534 to i64*
; %var_2_2083 = inttoptr i64 %var_2_2080 to i64*
; Matched:%var_2_538:  %var_2_538 = load i64, i64* %var_2_537, align 8
; %var_2_2084 = load i64, i64* %var_2_2083, align 8
; Matched:%var_2_539:  %var_2_539 = sext i64 %var_2_538 to i128
; %var_2_2085 = sext i64 %var_2_2084 to i128
; Matched:%var_2_540:  %var_2_540 = and i128 %var_2_539, -18446744073709551616
; %var_2_2086 = and i128 %var_2_2085, -18446744073709551616
; Matched:%var_2_541:  %var_2_541 = zext i64 %var_2_538 to i128
; %var_2_2087 = zext i64 %var_2_2084 to i128
; Matched:%var_2_542:  %var_2_542 = or i128 %var_2_540, %var_2_541
; %var_2_2088 = or i128 %var_2_2086, %var_2_2087
; Matched:%var_2_543:  %var_2_543 = mul nsw i128 %var_2_542, 899
; %var_2_2089 = mul nsw i128 %var_2_2088, 899
; Matched:%var_2_544:  %var_2_544 = trunc i128 %var_2_543 to i64
; %var_2_2090 = trunc i128 %var_2_2089 to i64
; Matched:\<badref\>:  store i64 %var_2_544, i64* %RAX.i1199, align 8
; store i64 %var_2_2090, i64* %RAX, align 8
; Matched:%var_2_545:  %var_2_545 = sext i64 %var_2_544 to i128
; %var_2_2091 = sext i64 %var_2_2090 to i128
; Matched:%var_2_546:  %var_2_546 = icmp ne i128 %var_2_545, %var_2_543
; %var_2_2092 = icmp ne i128 %var_2_2091, %var_2_2089
; Matched:%var_2_547:  %var_2_547 = zext i1 %var_2_546 to i8
; %var_2_2093 = zext i1 %var_2_2092 to i8
; Matched:\<badref\>:  store i8 %var_2_547, i8* %var_2_14, align 1
; store i8 %var_2_2093, i8* %var_2_18, align 1
; Matched:%var_2_548:  %var_2_548 = trunc i128 %var_2_543 to i32
; %var_2_2094 = trunc i128 %var_2_2089 to i32
; Matched:%var_2_549:  %var_2_549 = and i32 %var_2_548, 255
; %var_2_2095 = and i32 %var_2_2094, 255
; Matched:%var_2_550:  %var_2_550 = tail call i32 @llvm.ctpop.i32(i32 %var_2_549)
; %var_2_2096 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2095) #14
; Matched:%var_2_551:  %var_2_551 = trunc i32 %var_2_550 to i8
; %var_2_2097 = trunc i32 %var_2_2096 to i8
; Matched:%var_2_552:  %var_2_552 = and i8 %var_2_551, 1
; %var_2_2098 = and i8 %var_2_2097, 1
; Matched:%var_2_553:  %var_2_553 = xor i8 %var_2_552, 1
; %var_2_2099 = xor i8 %var_2_2098, 1
; Matched:\<badref\>:  store i8 %var_2_553, i8* %var_2_21, align 1
; store i8 %var_2_2099, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_554:  %var_2_554 = lshr i64 %var_2_544, 63
; %var_2_2100 = lshr i64 %var_2_2090, 63
; Matched:%var_2_555:  %var_2_555 = trunc i64 %var_2_554 to i8
; %var_2_2101 = trunc i64 %var_2_2100 to i8
; Matched:\<badref\>:  store i8 %var_2_555, i8* %var_2_32, align 1
; store i8 %var_2_2101, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_547, i8* %var_2_38, align 1
; store i8 %var_2_2093, i8* %var_2_42, align 1
; Matched:%var_2_556:  %var_2_556 = add i64 %var_2_533, -80
; %var_2_2102 = add i64 %var_2_2079, -80
; Matched:%var_2_720:  %var_2_720 = add i64 %var_2_709, 15
; %var_2_2103 = add i64 %var_2_2081, 15
; Matched:\<badref\>:  store i64 %var_2_720, i64* %var_2_3, align 8
; store i64 %var_2_2103, i64* %PC, align 8
; Matched:%var_2_558:  %var_2_558 = inttoptr i64 %var_2_556 to i64*
; %var_2_2104 = inttoptr i64 %var_2_2102 to i64*
; Matched:\<badref\>:  store i64 %var_2_544, i64* %var_2_558, align 8
; store i64 %var_2_2090, i64* %var_2_2104, align 8
; Matched:%var_2_559:  %var_2_559 = load i64, i64* %RBP.i, align 8
; %var_2_2105 = load i64, i64* %RBP, align 8
; Matched:%var_2_560:  %var_2_560 = add i64 %var_2_559, -168
; %var_2_2106 = add i64 %var_2_2105, -168
%var_2_2107 = load i64, i64* %PC, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, 11
; %var_2_2108 = add i64 %var_2_2107, 11
; Matched:\<badref\>:  store i64 %var_2_486, i64* %var_2_3, align 8
; store i64 %var_2_2108, i64* %PC, align 8
; Matched:%var_2_563:  %var_2_563 = inttoptr i64 %var_2_560 to i64*
; %var_2_2109 = inttoptr i64 %var_2_2106 to i64*
; Matched:%var_2_564:  %var_2_564 = load i64, i64* %var_2_563, align 8
; %var_2_2110 = load i64, i64* %var_2_2109, align 8
; Matched:%var_2_565:  %var_2_565 = sext i64 %var_2_564 to i128
; %var_2_2111 = sext i64 %var_2_2110 to i128
; Matched:%var_2_566:  %var_2_566 = and i128 %var_2_565, -18446744073709551616
; %var_2_2112 = and i128 %var_2_2111, -18446744073709551616
; Matched:%var_2_567:  %var_2_567 = zext i64 %var_2_564 to i128
; %var_2_2113 = zext i64 %var_2_2110 to i128
; Matched:%var_2_568:  %var_2_568 = or i128 %var_2_566, %var_2_567
; %var_2_2114 = or i128 %var_2_2112, %var_2_2113
; Matched:%var_2_569:  %var_2_569 = mul nsw i128 %var_2_568, 616
; %var_2_2115 = mul nsw i128 %var_2_2114, 616
; Matched:%var_2_570:  %var_2_570 = trunc i128 %var_2_569 to i64
; %var_2_2116 = trunc i128 %var_2_2115 to i64
; Matched:\<badref\>:  store i64 %var_2_570, i64* %RAX.i1199, align 8
; store i64 %var_2_2116, i64* %RAX, align 8
; Matched:%var_2_571:  %var_2_571 = sext i64 %var_2_570 to i128
; %var_2_2117 = sext i64 %var_2_2116 to i128
; Matched:%var_2_572:  %var_2_572 = icmp ne i128 %var_2_571, %var_2_569
; %var_2_2118 = icmp ne i128 %var_2_2117, %var_2_2115
; Matched:%var_2_573:  %var_2_573 = zext i1 %var_2_572 to i8
; %var_2_2119 = zext i1 %var_2_2118 to i8
; Matched:\<badref\>:  store i8 %var_2_573, i8* %var_2_14, align 1
; store i8 %var_2_2119, i8* %var_2_18, align 1
; Matched:%var_2_574:  %var_2_574 = trunc i128 %var_2_569 to i32
; %var_2_2120 = trunc i128 %var_2_2115 to i32
; Matched:%var_2_575:  %var_2_575 = and i32 %var_2_574, 248
; %var_2_2121 = and i32 %var_2_2120, 248
; Matched:%var_2_576:  %var_2_576 = tail call i32 @llvm.ctpop.i32(i32 %var_2_575)
; %var_2_2122 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2121) #14
; Matched:%var_2_577:  %var_2_577 = trunc i32 %var_2_576 to i8
; %var_2_2123 = trunc i32 %var_2_2122 to i8
; Matched:%var_2_578:  %var_2_578 = and i8 %var_2_577, 1
; %var_2_2124 = and i8 %var_2_2123, 1
; Matched:%var_2_579:  %var_2_579 = xor i8 %var_2_578, 1
; %var_2_2125 = xor i8 %var_2_2124, 1
; Matched:\<badref\>:  store i8 %var_2_579, i8* %var_2_21, align 1
; store i8 %var_2_2125, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_580:  %var_2_580 = lshr i64 %var_2_570, 63
; %var_2_2126 = lshr i64 %var_2_2116, 63
; Matched:%var_2_581:  %var_2_581 = trunc i64 %var_2_580 to i8
; %var_2_2127 = trunc i64 %var_2_2126 to i8
; Matched:\<badref\>:  store i8 %var_2_581, i8* %var_2_32, align 1
; store i8 %var_2_2127, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_573, i8* %var_2_38, align 1
; store i8 %var_2_2119, i8* %var_2_42, align 1
; Matched:%var_2_582:  %var_2_582 = add i64 %var_2_559, -88
; %var_2_2128 = add i64 %var_2_2105, -88
; Matched:%var_2_507:  %var_2_507 = add i64 %var_2_485, 15
; %var_2_2129 = add i64 %var_2_2107, 15
; Matched:\<badref\>:  store i64 %var_2_507, i64* %var_2_3, align 8
; store i64 %var_2_2129, i64* %PC, align 8
; Matched:%var_2_584:  %var_2_584 = inttoptr i64 %var_2_582 to i64*
; %var_2_2130 = inttoptr i64 %var_2_2128 to i64*
; Matched:\<badref\>:  store i64 %var_2_570, i64* %var_2_584, align 8
; store i64 %var_2_2116, i64* %var_2_2130, align 8
; Matched:%var_2_585:  %var_2_585 = load i64, i64* %RBP.i, align 8
; %var_2_2131 = load i64, i64* %RBP, align 8
; Matched:%var_2_586:  %var_2_586 = add i64 %var_2_585, -96
; %var_2_2132 = add i64 %var_2_2131, -96
%var_2_2133 = load i64, i64* %PC, align 8
%var_2_2134 = add i64 %var_2_2133, 8
store i64 %var_2_2134, i64* %PC, align 8
; Matched:%var_2_589:  %var_2_589 = inttoptr i64 %var_2_586 to i64*
; %var_2_2135 = inttoptr i64 %var_2_2132 to i64*
; Matched:\<badref\>:  store i64 0, i64* %var_2_589, align 8
; store i64 0, i64* %var_2_2135, align 8
; Matched:%var_2_590:  %var_2_590 = load i64, i64* %RBP.i, align 8
; %var_2_2136 = load i64, i64* %RBP, align 8
; Matched:%var_2_591:  %var_2_591 = add i64 %var_2_590, -168
; %var_2_2137 = add i64 %var_2_2136, -168
%var_2_2138 = load i64, i64* %PC, align 8
%var_2_2139 = add i64 %var_2_2138, 8
store i64 %var_2_2139, i64* %PC, align 8
; Matched:%var_2_594:  %var_2_594 = inttoptr i64 %var_2_591 to i64*
; %var_2_2140 = inttoptr i64 %var_2_2137 to i64*
; Matched:%var_2_595:  %var_2_595 = load i64, i64* %var_2_594, align 8
; %var_2_2141 = load i64, i64* %var_2_2140, align 8
; Matched:%var_2_596:  %var_2_596 = sext i64 %var_2_595 to i128
; %var_2_2142 = sext i64 %var_2_2141 to i128
; Matched:%var_2_597:  %var_2_597 = and i128 %var_2_596, -18446744073709551616
; %var_2_2143 = and i128 %var_2_2142, -18446744073709551616
; Matched:%var_2_598:  %var_2_598 = zext i64 %var_2_595 to i128
; %var_2_2144 = zext i64 %var_2_2141 to i128
; Matched:%var_2_599:  %var_2_599 = or i128 %var_2_597, %var_2_598
; %var_2_2145 = or i128 %var_2_2143, %var_2_2144
; Matched:%var_2_600:  %var_2_600 = mul nsw i128 %var_2_599, 93
; %var_2_2146 = mul nsw i128 %var_2_2145, 93
; Matched:%var_2_601:  %var_2_601 = trunc i128 %var_2_600 to i64
; %var_2_2147 = trunc i128 %var_2_2146 to i64
; Matched:\<badref\>:  store i64 %var_2_601, i64* %RAX.i1199, align 8
; store i64 %var_2_2147, i64* %RAX, align 8
; Matched:%var_2_602:  %var_2_602 = sext i64 %var_2_601 to i128
; %var_2_2148 = sext i64 %var_2_2147 to i128
; Matched:%var_2_603:  %var_2_603 = icmp ne i128 %var_2_602, %var_2_600
; %var_2_2149 = icmp ne i128 %var_2_2148, %var_2_2146
; Matched:%var_2_604:  %var_2_604 = zext i1 %var_2_603 to i8
; %var_2_2150 = zext i1 %var_2_2149 to i8
; Matched:\<badref\>:  store i8 %var_2_604, i8* %var_2_14, align 1
; store i8 %var_2_2150, i8* %var_2_18, align 1
; Matched:%var_2_605:  %var_2_605 = trunc i128 %var_2_600 to i32
; %var_2_2151 = trunc i128 %var_2_2146 to i32
; Matched:%var_2_606:  %var_2_606 = and i32 %var_2_605, 255
; %var_2_2152 = and i32 %var_2_2151, 255
; Matched:%var_2_607:  %var_2_607 = tail call i32 @llvm.ctpop.i32(i32 %var_2_606)
; %var_2_2153 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2152) #14
; Matched:%var_2_608:  %var_2_608 = trunc i32 %var_2_607 to i8
; %var_2_2154 = trunc i32 %var_2_2153 to i8
; Matched:%var_2_609:  %var_2_609 = and i8 %var_2_608, 1
; %var_2_2155 = and i8 %var_2_2154, 1
; Matched:%var_2_610:  %var_2_610 = xor i8 %var_2_609, 1
; %var_2_2156 = xor i8 %var_2_2155, 1
; Matched:\<badref\>:  store i8 %var_2_610, i8* %var_2_21, align 1
; store i8 %var_2_2156, i8* %var_2_25, align 1
store i8 0, i8* %var_2_30, align 1
store i8 0, i8* %var_2_33, align 1
; Matched:%var_2_611:  %var_2_611 = lshr i64 %var_2_601, 63
; %var_2_2157 = lshr i64 %var_2_2147, 63
; Matched:%var_2_612:  %var_2_612 = trunc i64 %var_2_611 to i8
; %var_2_2158 = trunc i64 %var_2_2157 to i8
; Matched:\<badref\>:  store i8 %var_2_612, i8* %var_2_32, align 1
; store i8 %var_2_2158, i8* %var_2_36, align 1
; Matched:\<badref\>:  store i8 %var_2_604, i8* %var_2_38, align 1
; store i8 %var_2_2150, i8* %var_2_42, align 1
; Matched:%var_2_613:  %var_2_613 = add i64 %var_2_590, -104
; %var_2_2159 = add i64 %var_2_2136, -104
; Matched:%var_2_429:  %var_2_429 = add i64 %var_2_407, 12
; %var_2_2160 = add i64 %var_2_2138, 12
; Matched:\<badref\>:  store i64 %var_2_1513, i64* %var_2_3, align 8
; store i64 %var_2_2160, i64* %PC, align 8
; Matched:%var_2_615:  %var_2_615 = inttoptr i64 %var_2_613 to i64*
; %var_2_2161 = inttoptr i64 %var_2_2159 to i64*
; Matched:\<badref\>:  store i64 %var_2_601, i64* %var_2_615, align 8
; store i64 %var_2_2147, i64* %var_2_2161, align 8
; Matched:%var_2_616:  %var_2_616 = load i64, i64* %RBP.i, align 8
; %var_2_2162 = load i64, i64* %RBP, align 8
; Matched:%var_2_617:  %var_2_617 = add i64 %var_2_616, -112
; %var_2_2163 = add i64 %var_2_2162, -112
%var_2_2164 = load i64, i64* %PC, align 8
; Matched:%var_2_625:  %var_2_625 = add i64 %var_2_624, 5
; %var_2_2165 = add i64 %var_2_2164, 5
; Matched:\<badref\>:  store i64 %var_2_631, i64* %var_2_3, align 8
; store i64 %var_2_2165, i64* %PC, align 8
; Matched:%var_2_620:  %var_2_620 = load i64, i64* %var_2_307, align 1
; %var_2_2166 = load i64, i64* %var_2_2699, align 1
; Matched:%var_2_621:  %var_2_621 = inttoptr i64 %var_2_617 to i64*
; %var_2_2167 = inttoptr i64 %var_2_2163 to i64*
; Matched:\<badref\>:  store i64 %var_2_620, i64* %var_2_621, align 8
; store i64 %var_2_2166, i64* %var_2_2167, align 8
; Matched:%var_2_622:  %var_2_622 = load i64, i64* %RBP.i, align 8
; %var_2_2168 = load i64, i64* %RBP, align 8
; Matched:%var_2_623:  %var_2_623 = add i64 %var_2_622, -120
; %var_2_2169 = add i64 %var_2_2168, -120
%var_2_2170 = load i64, i64* %PC, align 8
; Matched:%var_2_631:  %var_2_631 = add i64 %var_2_630, 5
; %var_2_2171 = add i64 %var_2_2170, 5
; Matched:\<badref\>:  store i64 %var_2_762, i64* %var_2_3, align 8
; store i64 %var_2_2171, i64* %PC, align 8
; Matched:%var_2_626:  %var_2_626 = load i64, i64* %var_2_302, align 1
; %var_2_2172 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_627:  %var_2_627 = inttoptr i64 %var_2_623 to i64*
; %var_2_2173 = inttoptr i64 %var_2_2169 to i64*
; Matched:\<badref\>:  store i64 %var_2_626, i64* %var_2_627, align 8
; store i64 %var_2_2172, i64* %var_2_2173, align 8
; Matched:%var_2_628:  %var_2_628 = load i64, i64* %RBP.i, align 8
; %var_2_2174 = load i64, i64* %RBP, align 8
; Matched:%var_2_629:  %var_2_629 = add i64 %var_2_628, -128
; %var_2_2175 = add i64 %var_2_2174, -128
%var_2_2176 = load i64, i64* %PC, align 8
; Matched:%var_2_762:  %var_2_762 = add i64 %var_2_761, 5
; %var_2_2177 = add i64 %var_2_2176, 5
; Matched:\<badref\>:  store i64 %var_2_625, i64* %var_2_3, align 8
; store i64 %var_2_2177, i64* %PC, align 8
; Matched:%var_2_632:  %var_2_632 = load i64, i64* %var_2_302, align 1
; %var_2_2178 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_633:  %var_2_633 = inttoptr i64 %var_2_629 to i64*
; %var_2_2179 = inttoptr i64 %var_2_2175 to i64*
; Matched:\<badref\>:  store i64 %var_2_632, i64* %var_2_633, align 8
; store i64 %var_2_2178, i64* %var_2_2179, align 8
; Matched:%var_2_634:  %var_2_634 = load i64, i64* %RBP.i, align 8
; %var_2_2180 = load i64, i64* %RBP, align 8
; Matched:%var_2_635:  %var_2_635 = add i64 %var_2_634, -136
; %var_2_2181 = add i64 %var_2_2180, -136
%var_2_2182 = load i64, i64* %PC, align 8
%var_2_2183 = add i64 %var_2_2182, 8
store i64 %var_2_2183, i64* %PC, align 8
; Matched:%var_2_638:  %var_2_638 = load i64, i64* %var_2_302, align 1
; %var_2_2184 = load i64, i64* %var_2_2695, align 1
; Matched:%var_2_639:  %var_2_639 = inttoptr i64 %var_2_635 to i64*
; %var_2_2185 = inttoptr i64 %var_2_2181 to i64*
; Matched:\<badref\>:  store i64 %var_2_638, i64* %var_2_639, align 8
; store i64 %var_2_2184, i64* %var_2_2185, align 8
%var_2_2186 = load i64, i64* %RBP, align 8
%var_2_2187 = add i64 %var_2_2186, -24
%var_2_2188 = load i64, i64* %PC, align 8
%var_2_2189 = add i64 %var_2_2188, 8
store i64 %var_2_2189, i64* %PC, align 8
%var_2_2190 = inttoptr i64 %var_2_2187 to i64*
store i64 1, i64* %var_2_2190, align 8
  %.pre409 = load i64, i64* %PC, align 8
  br label %block_400a99

block_40141a:                                     ; preds = %block_4013fc, %block_401428
%var_2_2191 = phi i32 [ 3, %block_4013fc ], [ %var_2_1310, %block_401428 ]
%var_2_2192 = phi i64 [ %.pre433, %block_4013fc ], [ %var_2_1366, %block_401428 ]
%var_2_2193 = load i64, i64* %RBP, align 8
%var_2_2194 = add i64 %var_2_2193, -24
; Matched:%var_2_2331:  %var_2_2331 = add i64 %var_2_2328, 4
; %var_2_2195 = add i64 %var_2_2192, 4
; Matched:\<badref\>:  store i64 %var_2_2331, i64* %var_2_3, align 8
; store i64 %var_2_2195, i64* %PC, align 8
%var_2_2196 = inttoptr i64 %var_2_2194 to i64*
%var_2_2197 = load i64, i64* %var_2_2196, align 8
; Matched:\<badref\>:  store i64 %var_2_650, i64* %RAX.i1199, align 8
; store i64 %var_2_2197, i64* %RAX, align 8
%var_2_2198 = add i64 %var_2_2193, -96
; Matched:%var_2_2335:  %var_2_2335 = add i64 %var_2_2328, 8
; %var_2_2199 = add i64 %var_2_2192, 8
; Matched:\<badref\>:  store i64 %var_2_2335, i64* %var_2_3, align 8
; store i64 %var_2_2199, i64* %PC, align 8
%var_2_2200 = inttoptr i64 %var_2_2198 to i64*
%var_2_2201 = load i64, i64* %var_2_2200, align 8
%var_2_2202 = sub i64 %var_2_2197, %var_2_2201
; Matched:%var_2_2339:  %var_2_2339 = icmp ult i64 %var_2_2333, %var_2_2337
; %var_2_2203 = icmp ult i64 %var_2_2197, %var_2_2201
; Matched:%var_2_2340:  %var_2_2340 = zext i1 %var_2_2339 to i8
; %var_2_2204 = zext i1 %var_2_2203 to i8
; Matched:\<badref\>:  store i8 %var_2_2340, i8* %var_2_14, align 1
; store i8 %var_2_2204, i8* %var_2_18, align 1
; Matched:%var_2_2341:  %var_2_2341 = trunc i64 %var_2_2338 to i32
; %var_2_2205 = trunc i64 %var_2_2202 to i32
; Matched:%var_2_2342:  %var_2_2342 = and i32 %var_2_2341, 255
; %var_2_2206 = and i32 %var_2_2205, 255
; Matched:%var_2_2343:  %var_2_2343 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2342)
; %var_2_2207 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2206) #14
; Matched:%var_2_2344:  %var_2_2344 = trunc i32 %var_2_2343 to i8
; %var_2_2208 = trunc i32 %var_2_2207 to i8
; Matched:%var_2_2345:  %var_2_2345 = and i8 %var_2_2344, 1
; %var_2_2209 = and i8 %var_2_2208, 1
; Matched:%var_2_2346:  %var_2_2346 = xor i8 %var_2_2345, 1
; %var_2_2210 = xor i8 %var_2_2209, 1
; Matched:\<badref\>:  store i8 %var_2_2346, i8* %var_2_21, align 1
; store i8 %var_2_2210, i8* %var_2_25, align 1
; Matched:%var_2_2347:  %var_2_2347 = xor i64 %var_2_2337, %var_2_2333
; %var_2_2211 = xor i64 %var_2_2201, %var_2_2197
; Matched:%var_2_2348:  %var_2_2348 = xor i64 %var_2_2347, %var_2_2338
; %var_2_2212 = xor i64 %var_2_2211, %var_2_2202
; Matched:%var_2_2349:  %var_2_2349 = lshr i64 %var_2_2348, 4
; %var_2_2213 = lshr i64 %var_2_2212, 4
; Matched:%var_2_2350:  %var_2_2350 = trunc i64 %var_2_2349 to i8
; %var_2_2214 = trunc i64 %var_2_2213 to i8
; Matched:%var_2_2351:  %var_2_2351 = and i8 %var_2_2350, 1
; %var_2_2215 = and i8 %var_2_2214, 1
; Matched:\<badref\>:  store i8 %var_2_2351, i8* %var_2_26, align 1
; store i8 %var_2_2215, i8* %var_2_30, align 1
%var_2_2216 = icmp eq i64 %var_2_2202, 0
; Matched:%var_2_2353:  %var_2_2353 = zext i1 %var_2_2352 to i8
; %var_2_2217 = zext i1 %var_2_2216 to i8
; Matched:\<badref\>:  store i8 %var_2_2353, i8* %var_2_29, align 1
; store i8 %var_2_2217, i8* %var_2_33, align 1
%var_2_2218 = lshr i64 %var_2_2202, 63
%var_2_2219 = trunc i64 %var_2_2218 to i8
; Matched:\<badref\>:  store i8 %var_2_2355, i8* %var_2_32, align 1
; store i8 %var_2_2219, i8* %var_2_36, align 1
%var_2_2220 = lshr i64 %var_2_2197, 63
%var_2_2221 = lshr i64 %var_2_2201, 63
%var_2_2222 = xor i64 %var_2_2221, %var_2_2220
%var_2_2223 = xor i64 %var_2_2218, %var_2_2220
%var_2_2224 = add nuw nsw i64 %var_2_2223, %var_2_2222
%var_2_2225 = icmp eq i64 %var_2_2224, 2
; Matched:%var_2_2362:  %var_2_2362 = zext i1 %var_2_2361 to i8
; %var_2_2226 = zext i1 %var_2_2225 to i8
; Matched:\<badref\>:  store i8 %var_2_2362, i8* %var_2_38, align 1
; store i8 %var_2_2226, i8* %var_2_42, align 1
%var_2_2227 = icmp ne i8 %var_2_2219, 0
%var_2_2228 = xor i1 %var_2_2227, %var_2_2225
%.demorgan449 = or i1 %var_2_2216, %var_2_2228
  %.v468 = select i1 %.demorgan449, i64 14, i64 122
%var_2_2229 = add i64 %var_2_2192, %.v468
; Matched:\<badref\>:  store i64 %var_2_2365, i64* %var_2_3, align 8
; store i64 %var_2_2229, i64* %PC, align 8
  br i1 %.demorgan449, label %block_401428, label %block_401494

block_40132d:                                     ; preds = %block_4012e2, %block_4012f4
; Matched:%var_2_1188:  %var_2_1188 = phi i64 [ %var_2_1063, %block_.L_400d67 ], [ %.pre106, %block_400d79 ]
; %var_2_2230 = phi i64 [ %var_2_1566, %block_4012e2 ], [ %.pre429, %block_4012f4 ]
; Matched:%var_2_2181:  %var_2_2181 = phi i64 [ %var_2_2154, %block_.L_4012e2 ], [ %.pre117, %block_4012f4 ]
; %var_2_2231 = phi i64 [ %var_2_545, %block_4012e2 ], [ %.pre428, %block_4012f4 ]
%MEMORY.23 = phi %struct.Memory* [ %MEMORY.7, %block_4012e2 ], [ %var_2_1629, %block_4012f4 ]
%var_2_2232 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 56) to i64*), align 8
store i64 %var_2_2232, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2233 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 8) to i64*), align 8
store i64 %var_2_2233, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_2234 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_2234, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
  store i32 1, i32* bitcast (%J_type* @J to i32*), align 8
  store i32 2, i32* bitcast (%K_type* @K to i32*), align 8
  store i32 3, i32* bitcast (%L_type* @L to i32*), align 8
store i64 %var_2_2234, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_2233, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_2232, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
; Matched:%var_2_1190:  %var_2_1190 = add i64 %var_2_1188, -24
; %var_2_2235 = add i64 %var_2_2230, -24
; Matched:%var_2_2195:  %var_2_2195 = add i64 %var_2_2181, 92
; %var_2_2236 = add i64 %var_2_2231, 92
; Matched:\<badref\>:  store i64 %var_2_2195, i64* %var_2_3, align 8
; store i64 %var_2_2236, i64* %PC, align 8
; Matched:%var_2_2196:  %var_2_2196 = inttoptr i64 %var_2_2194 to i64*
; %var_2_2237 = inttoptr i64 %var_2_2235 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_2196, align 8
; store i64 1, i64* %var_2_2237, align 8
  %.pre430 = load i64, i64* %PC, align 8
  br label %block_401389

block_400e4a:                                     ; preds = %block_400e2f, %block_400e3f
%var_2_2238 = phi i64 [ %var_2_1266, %block_400e2f ], [ %var_2_1654, %block_400e3f ]
%var_2_2239 = add i64 %var_2_2238, 9
store i64 %var_2_2239, i64* %PC, align 8
; Matched:%var_2_1927:  %var_2_1927 = load i64, i64* %var_2_1926, align 8
; %var_2_2240 = load i64, i64* %var_2_876, align 8
; Matched:%var_2_1287:  %var_2_1287 = add i64 %var_2_1286, 1
; %var_2_2241 = add i64 %var_2_2240, 1
; Matched:\<badref\>:  store i64 %var_2_1287, i64* %RAX.i1199, align 8
; store i64 %var_2_2241, i64* %RAX, align 8
; Matched:%var_2_1929:  %var_2_1929 = icmp eq i64 %var_2_1927, -1
; %var_2_2242 = icmp eq i64 %var_2_2240, -1
; Matched:%var_2_804:  %var_2_804 = icmp eq i64 %var_2_802, 0
; %var_2_2243 = icmp eq i64 %var_2_2241, 0
; Matched:%var_2_2098:  %var_2_2098 = or i1 %var_2_2096, %var_2_2097
; %var_2_2244 = or i1 %var_2_2242, %var_2_2243
; Matched:%var_2_806:  %var_2_806 = zext i1 %var_2_805 to i8
; %var_2_2245 = zext i1 %var_2_2244 to i8
; Matched:\<badref\>:  store i8 %var_2_806, i8* %var_2_14, align 1
; store i8 %var_2_2245, i8* %var_2_18, align 1
; Matched:%var_2_807:  %var_2_807 = trunc i64 %var_2_802 to i32
; %var_2_2246 = trunc i64 %var_2_2241 to i32
; Matched:%var_2_2101:  %var_2_2101 = and i32 %var_2_2100, 255
; %var_2_2247 = and i32 %var_2_2246, 255
; Matched:%var_2_1118:  %var_2_1118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1117)
; %var_2_2248 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2247) #14
; Matched:%var_2_1119:  %var_2_1119 = trunc i32 %var_2_1118 to i8
; %var_2_2249 = trunc i32 %var_2_2248 to i8
; Matched:%var_2_1120:  %var_2_1120 = and i8 %var_2_1119, 1
; %var_2_2250 = and i8 %var_2_2249, 1
; Matched:%var_2_2105:  %var_2_2105 = xor i8 %var_2_2104, 1
; %var_2_2251 = xor i8 %var_2_2250, 1
; Matched:\<badref\>:  store i8 %var_2_2105, i8* %var_2_21, align 1
; store i8 %var_2_2251, i8* %var_2_25, align 1
; Matched:%var_2_813:  %var_2_813 = xor i64 %var_2_802, %var_2_801
; %var_2_2252 = xor i64 %var_2_2241, %var_2_2240
; Matched:%var_2_814:  %var_2_814 = lshr i64 %var_2_813, 4
; %var_2_2253 = lshr i64 %var_2_2252, 4
; Matched:%var_2_2108:  %var_2_2108 = trunc i64 %var_2_2107 to i8
; %var_2_2254 = trunc i64 %var_2_2253 to i8
; Matched:%var_2_2109:  %var_2_2109 = and i8 %var_2_2108, 1
; %var_2_2255 = and i8 %var_2_2254, 1
; Matched:\<badref\>:  store i8 %var_2_816, i8* %var_2_26, align 1
; store i8 %var_2_2255, i8* %var_2_30, align 1
; Matched:%var_2_2110:  %var_2_2110 = zext i1 %var_2_2097 to i8
; %var_2_2256 = zext i1 %var_2_2243 to i8
; Matched:\<badref\>:  store i8 %var_2_2110, i8* %var_2_29, align 1
; store i8 %var_2_2256, i8* %var_2_33, align 1
; Matched:%var_2_818:  %var_2_818 = lshr i64 %var_2_802, 63
; %var_2_2257 = lshr i64 %var_2_2241, 63
; Matched:%var_2_819:  %var_2_819 = trunc i64 %var_2_818 to i8
; %var_2_2258 = trunc i64 %var_2_2257 to i8
; Matched:\<badref\>:  store i8 %var_2_819, i8* %var_2_32, align 1
; store i8 %var_2_2258, i8* %var_2_36, align 1
; Matched:%var_2_820:  %var_2_820 = lshr i64 %var_2_801, 63
; %var_2_2259 = lshr i64 %var_2_2240, 63
; Matched:%var_2_1947:  %var_2_1947 = xor i64 %var_2_1944, %var_2_1946
; %var_2_2260 = xor i64 %var_2_2257, %var_2_2259
; Matched:%var_2_2416:  %var_2_2416 = add nuw nsw i64 %var_2_2415, %var_2_2412
; %var_2_2261 = add nuw nsw i64 %var_2_2260, %var_2_2257
; Matched:%var_2_2417:  %var_2_2417 = icmp eq i64 %var_2_2416, 2
; %var_2_2262 = icmp eq i64 %var_2_2261, 2
; Matched:%var_2_1950:  %var_2_1950 = zext i1 %var_2_1949 to i8
; %var_2_2263 = zext i1 %var_2_2262 to i8
; Matched:\<badref\>:  store i8 %var_2_1950, i8* %var_2_38, align 1
; store i8 %var_2_2263, i8* %var_2_42, align 1
%var_2_2264 = add i64 %var_2_2238, 17
store i64 %var_2_2264, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_1287, i64* %var_2_1198, align 8
; store i64 %var_2_2241, i64* %var_2_876, align 8
%var_2_2265 = load i64, i64* %PC, align 8
%var_2_2266 = add i64 %var_2_2265, -154
; Matched:\<badref\>:  store i64 %var_2_1312, i64* %var_2_3, align 8
; store i64 %var_2_2266, i64* %PC, align 8
  br label %block_400dc1

block_401389:                                     ; preds = %block_40132d, %block_401397
%var_2_2267 = phi i64 [ %.pre430, %block_40132d ], [ %var_2_1870, %block_401397 ]
%var_2_2268 = load i64, i64* %RBP, align 8
%var_2_2269 = add i64 %var_2_2268, -24
; Matched:%var_2_2200:  %var_2_2200 = add i64 %var_2_2197, 4
; %var_2_2270 = add i64 %var_2_2267, 4
; Matched:\<badref\>:  store i64 %var_2_2200, i64* %var_2_3, align 8
; store i64 %var_2_2270, i64* %PC, align 8
%var_2_2271 = inttoptr i64 %var_2_2269 to i64*
%var_2_2272 = load i64, i64* %var_2_2271, align 8
; Matched:\<badref\>:  store i64 %var_2_2202, i64* %RAX.i1199, align 8
; store i64 %var_2_2272, i64* %RAX, align 8
%var_2_2273 = add i64 %var_2_2268, -88
; Matched:%var_2_2204:  %var_2_2204 = add i64 %var_2_2197, 8
; %var_2_2274 = add i64 %var_2_2267, 8
; Matched:\<badref\>:  store i64 %var_2_2204, i64* %var_2_3, align 8
; store i64 %var_2_2274, i64* %PC, align 8
%var_2_2275 = inttoptr i64 %var_2_2273 to i64*
%var_2_2276 = load i64, i64* %var_2_2275, align 8
%var_2_2277 = sub i64 %var_2_2272, %var_2_2276
; Matched:%var_2_2208:  %var_2_2208 = icmp ult i64 %var_2_2202, %var_2_2206
; %var_2_2278 = icmp ult i64 %var_2_2272, %var_2_2276
; Matched:%var_2_2209:  %var_2_2209 = zext i1 %var_2_2208 to i8
; %var_2_2279 = zext i1 %var_2_2278 to i8
; Matched:\<badref\>:  store i8 %var_2_2209, i8* %var_2_14, align 1
; store i8 %var_2_2279, i8* %var_2_18, align 1
; Matched:%var_2_2210:  %var_2_2210 = trunc i64 %var_2_2207 to i32
; %var_2_2280 = trunc i64 %var_2_2277 to i32
; Matched:%var_2_2211:  %var_2_2211 = and i32 %var_2_2210, 255
; %var_2_2281 = and i32 %var_2_2280, 255
; Matched:%var_2_2212:  %var_2_2212 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2211)
; %var_2_2282 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2281) #14
; Matched:%var_2_2213:  %var_2_2213 = trunc i32 %var_2_2212 to i8
; %var_2_2283 = trunc i32 %var_2_2282 to i8
; Matched:%var_2_2214:  %var_2_2214 = and i8 %var_2_2213, 1
; %var_2_2284 = and i8 %var_2_2283, 1
; Matched:%var_2_2215:  %var_2_2215 = xor i8 %var_2_2214, 1
; %var_2_2285 = xor i8 %var_2_2284, 1
; Matched:\<badref\>:  store i8 %var_2_2215, i8* %var_2_21, align 1
; store i8 %var_2_2285, i8* %var_2_25, align 1
; Matched:%var_2_2216:  %var_2_2216 = xor i64 %var_2_2206, %var_2_2202
; %var_2_2286 = xor i64 %var_2_2276, %var_2_2272
; Matched:%var_2_2217:  %var_2_2217 = xor i64 %var_2_2216, %var_2_2207
; %var_2_2287 = xor i64 %var_2_2286, %var_2_2277
; Matched:%var_2_2218:  %var_2_2218 = lshr i64 %var_2_2217, 4
; %var_2_2288 = lshr i64 %var_2_2287, 4
; Matched:%var_2_2219:  %var_2_2219 = trunc i64 %var_2_2218 to i8
; %var_2_2289 = trunc i64 %var_2_2288 to i8
; Matched:%var_2_2220:  %var_2_2220 = and i8 %var_2_2219, 1
; %var_2_2290 = and i8 %var_2_2289, 1
; Matched:\<badref\>:  store i8 %var_2_2220, i8* %var_2_26, align 1
; store i8 %var_2_2290, i8* %var_2_30, align 1
%var_2_2291 = icmp eq i64 %var_2_2277, 0
; Matched:%var_2_2222:  %var_2_2222 = zext i1 %var_2_2221 to i8
; %var_2_2292 = zext i1 %var_2_2291 to i8
; Matched:\<badref\>:  store i8 %var_2_2222, i8* %var_2_29, align 1
; store i8 %var_2_2292, i8* %var_2_33, align 1
%var_2_2293 = lshr i64 %var_2_2277, 63
%var_2_2294 = trunc i64 %var_2_2293 to i8
; Matched:\<badref\>:  store i8 %var_2_2224, i8* %var_2_32, align 1
; store i8 %var_2_2294, i8* %var_2_36, align 1
%var_2_2295 = lshr i64 %var_2_2272, 63
%var_2_2296 = lshr i64 %var_2_2276, 63
%var_2_2297 = xor i64 %var_2_2296, %var_2_2295
%var_2_2298 = xor i64 %var_2_2293, %var_2_2295
%var_2_2299 = add nuw nsw i64 %var_2_2298, %var_2_2297
%var_2_2300 = icmp eq i64 %var_2_2299, 2
; Matched:%var_2_2231:  %var_2_2231 = zext i1 %var_2_2230 to i8
; %var_2_2301 = zext i1 %var_2_2300 to i8
; Matched:\<badref\>:  store i8 %var_2_2231, i8* %var_2_38, align 1
; store i8 %var_2_2301, i8* %var_2_42, align 1
%var_2_2302 = icmp ne i8 %var_2_2294, 0
%var_2_2303 = xor i1 %var_2_2302, %var_2_2300
%.demorgan448 = or i1 %var_2_2291, %var_2_2303
  %.v466 = select i1 %.demorgan448, i64 14, i64 36
%var_2_2304 = add i64 %var_2_2267, %.v466
; Matched:\<badref\>:  store i64 %var_2_2234, i64* %var_2_3, align 8
; store i64 %var_2_2304, i64* %PC, align 8
  br i1 %.demorgan448, label %block_401397, label %block_4013ad

block_400986:                                     ; preds = %block_4015a0.block_400986_crit_edge, %block_400981
; Matched:%var_2_330:  %var_2_330 = phi i32 [ %var_2_76, %block_.L_400981 ], [ %var_2_2761, %block_4015d4 ]
; %var_2_2305 = phi i32 [ %var_2_1800, %block_400981 ], [ %var_2_725, %block_4015a0.block_400986_crit_edge ]
; Matched:%var_2_331:  %var_2_331 = phi i64 [ %var_2_77, %block_.L_400981 ], [ %.pre95, %block_4015d4 ]
; %var_2_2306 = phi i64 [ %var_2_1801, %block_400981 ], [ %.pre406, %block_4015a0.block_400986_crit_edge ]
; Matched:  %storemerge29 = phi i64 [ %var_2_298, %block_.L_400981 ], [ %var_2_2759, %block_4015d4 ]
; %.sink = phi i64 [ %var_2_2692, %block_400981 ], [ %var_2_724, %block_4015a0.block_400986_crit_edge ]
%MEMORY.26 = phi %struct.Memory* [ %MEMORY.19, %block_400981 ], [ %var_2_699, %block_4015a0.block_400986_crit_edge ]
; Matched:%var_2_332:  %var_2_332 = zext i32 %var_2_330 to i64
; %var_2_2307 = zext i32 %var_2_2305 to i64
; Matched:%var_2_333:  %var_2_333 = xor i64 %var_2_332, %var_2_331
; %var_2_2308 = xor i64 %var_2_2307, %var_2_2306
; Matched:%var_2_334:  %var_2_334 = trunc i64 %var_2_333 to i32
; %var_2_2309 = trunc i64 %var_2_2308 to i32
; Matched:%var_2_335:  %var_2_335 = and i64 %var_2_333, 4294967295
; %var_2_2310 = and i64 %var_2_2308, 4294967295
; Matched:\<badref\>:  store i64 %var_2_335, i64* %RAX.i1199, align 8
; store i64 %var_2_2310, i64* %RAX, align 8
store i8 0, i8* %var_2_18, align 1
; Matched:%var_2_336:  %var_2_336 = and i32 %var_2_334, 255
; %var_2_2311 = and i32 %var_2_2309, 255
; Matched:%var_2_337:  %var_2_337 = tail call i32 @llvm.ctpop.i32(i32 %var_2_336)
; %var_2_2312 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2311) #14
; Matched:%var_2_338:  %var_2_338 = trunc i32 %var_2_337 to i8
; %var_2_2313 = trunc i32 %var_2_2312 to i8
; Matched:%var_2_339:  %var_2_339 = and i8 %var_2_338, 1
; %var_2_2314 = and i8 %var_2_2313, 1
; Matched:%var_2_340:  %var_2_340 = xor i8 %var_2_339, 1
; %var_2_2315 = xor i8 %var_2_2314, 1
; Matched:\<badref\>:  store i8 %var_2_340, i8* %var_2_21, align 1
; store i8 %var_2_2315, i8* %var_2_25, align 1
; Matched:%var_2_341:  %var_2_341 = icmp eq i32 %var_2_334, 0
; %var_2_2316 = icmp eq i32 %var_2_2309, 0
; Matched:%var_2_342:  %var_2_342 = zext i1 %var_2_341 to i8
; %var_2_2317 = zext i1 %var_2_2316 to i8
; Matched:\<badref\>:  store i8 %var_2_342, i8* %var_2_29, align 1
; store i8 %var_2_2317, i8* %var_2_33, align 1
; Matched:%var_2_343:  %var_2_343 = lshr i32 %var_2_334, 31
; %var_2_2318 = lshr i32 %var_2_2309, 31
; Matched:%var_2_344:  %var_2_344 = trunc i32 %var_2_343 to i8
; %var_2_2319 = trunc i32 %var_2_2318 to i8
; Matched:\<badref\>:  store i8 %var_2_344, i8* %var_2_32, align 1
; store i8 %var_2_2319, i8* %var_2_36, align 1
store i8 0, i8* %var_2_42, align 1
store i8 0, i8* %var_2_30, align 1
; Matched:%var_2_345:  %var_2_345 = and i64 %var_2_333, 4294967295
; %var_2_2320 = and i64 %var_2_2308, 4294967295
; Matched:\<badref\>:  store i64 %var_2_345, i64* %RDI.i1206, align 8
; store i64 %var_2_2320, i64* %RDI, align 8
; Matched:%var_2_346:  %var_2_346 = add i64 %storemerge29, -598
; %var_2_2321 = add i64 %.sink, -598
; Matched:%var_2_347:  %var_2_347 = add i64 %storemerge29, 9
; %var_2_2322 = add i64 %.sink, 9
%var_2_2323 = load i64, i64* %RSP, align 8
%var_2_2324 = add i64 %var_2_2323, -8
; Matched:%var_2_350:  %var_2_350 = inttoptr i64 %var_2_349 to i64*
; %var_2_2325 = inttoptr i64 %var_2_2324 to i64*
; Matched:\<badref\>:  store i64 %var_2_347, i64* %var_2_350, align 8
; store i64 %var_2_2322, i64* %var_2_2325, align 8
; Matched:\<badref\>:  store i64 %var_2_2720, i64* %var_2_6, align 8
; store i64 %var_2_2324, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_346, i64* %var_2_3, align 8
; store i64 %var_2_2321, i64* %PC, align 8
%var_2_2326 = tail call fastcc %struct.Memory* @ext_602128_time(%struct.State* nonnull %0, %struct.Memory* %MEMORY.26)
; Matched:%var_2_352:  %var_2_352 = load i64, i64* %var_2_3, align 8
; %var_2_2327 = load i64, i64* %PC, align 8
%var_2_2328 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 8) to i64*), align 8
store i64 %var_2_2328, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2329 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 16) to i64*), align 16
store i64 %var_2_2329, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_2330 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 24) to i64*), align 8
store i64 %var_2_2330, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_365:  %var_2_365 = load i64, i64* %RBP.i, align 8
; %var_2_2331 = load i64, i64* %RBP, align 8
; Matched:%var_2_366:  %var_2_366 = add i64 %var_2_365, -192
; %var_2_2332 = add i64 %var_2_2331, -192
; Matched:%var_2_367:  %var_2_367 = load i64, i64* %RAX.i1199, align 8
; %var_2_2333 = load i64, i64* %RAX, align 8
; Matched:%var_2_368:  %var_2_368 = add i64 %var_2_352, 31
; %var_2_2334 = add i64 %var_2_2327, 31
; Matched:\<badref\>:  store i64 %var_2_368, i64* %var_2_3, align 8
; store i64 %var_2_2334, i64* %PC, align 8
; Matched:%var_2_369:  %var_2_369 = inttoptr i64 %var_2_366 to i64*
; %var_2_2335 = inttoptr i64 %var_2_2332 to i64*
; Matched:\<badref\>:  store i64 %var_2_367, i64* %var_2_369, align 8
; store i64 %var_2_2333, i64* %var_2_2335, align 8
; Matched:%var_2_1775:  %var_2_1775 = load i64, i64* %var_2_3, align 8
; %var_2_2336 = load i64, i64* %PC, align 8
%var_2_2337 = load i64, i64* %var_2_2703, align 1
store i64 %var_2_2337, i64* bitcast (%T_type* @T to i64*), align 8
%var_2_2338 = load i64, i64* %var_2_2699, align 1
store i64 %var_2_2338, i64* bitcast (%T1_type* @T1 to i64*), align 8
%var_2_2339 = load i64, i64* %var_2_2695, align 1
store i64 %var_2_2339, i64* bitcast (%T2_type* @T2 to i64*), align 8
; Matched:%var_2_374:  %var_2_374 = load i64, i64* %RBP.i, align 8
; %var_2_2340 = load i64, i64* %RBP, align 8
; Matched:%var_2_375:  %var_2_375 = add i64 %var_2_374, -184
; %var_2_2341 = add i64 %var_2_2340, -184
; Matched:%var_2_1784:  %var_2_1784 = add i64 %var_2_1775, 34
; %var_2_2342 = add i64 %var_2_2336, 34
; Matched:\<badref\>:  store i64 %var_2_1784, i64* %var_2_3, align 8
; store i64 %var_2_2342, i64* %PC, align 8
; Matched:%var_2_377:  %var_2_377 = inttoptr i64 %var_2_375 to i64*
; %var_2_2343 = inttoptr i64 %var_2_2341 to i64*
; Matched:%var_2_378:  %var_2_378 = load i64, i64* %var_2_377, align 8
; %var_2_2344 = load i64, i64* %var_2_2343, align 8
; Matched:\<badref\>:  store i64 %var_2_378, i64* %RAX.i1199, align 8
; store i64 %var_2_2344, i64* %RAX, align 8
; Matched:%var_2_379:  %var_2_379 = add i64 %var_2_374, -168
; %var_2_2345 = add i64 %var_2_2340, -168
; Matched:%var_2_380:  %var_2_380 = add i64 %var_2_370, 41
; %var_2_2346 = add i64 %var_2_2336, 41
; Matched:\<badref\>:  store i64 %var_2_380, i64* %var_2_3, align 8
; store i64 %var_2_2346, i64* %PC, align 8
; Matched:%var_2_381:  %var_2_381 = inttoptr i64 %var_2_379 to i64*
; %var_2_2347 = inttoptr i64 %var_2_2345 to i64*
; Matched:\<badref\>:  store i64 %var_2_378, i64* %var_2_381, align 8
; store i64 %var_2_2344, i64* %var_2_2347, align 8
%var_2_2348 = load i64, i64* %RBP, align 8
%var_2_2349 = add i64 %var_2_2348, -172
%var_2_2350 = load i64, i64* %PC, align 8
; Matched:%var_2_385:  %var_2_385 = add i64 %var_2_384, 10
; %var_2_2351 = add i64 %var_2_2350, 10
; Matched:\<badref\>:  store i64 %var_2_63, i64* %var_2_3, align 8
; store i64 %var_2_2351, i64* %PC, align 8
%var_2_2352 = inttoptr i64 %var_2_2349 to i32*
store i32 1, i32* %var_2_2352, align 4
; Matched:%var_2_387:  %var_2_387 = load i64, i64* %RBP.i, align 8
; %var_2_2353 = load i64, i64* %RBP, align 8
; Matched:%var_2_388:  %var_2_388 = add i64 %var_2_387, -176
; %var_2_2354 = add i64 %var_2_2353, -176
%var_2_2355 = load i64, i64* %PC, align 8
; Matched:%var_2_714:  %var_2_714 = add i64 %var_2_709, 10
; %var_2_2356 = add i64 %var_2_2355, 10
; Matched:\<badref\>:  store i64 %var_2_385, i64* %var_2_3, align 8
; store i64 %var_2_2356, i64* %PC, align 8
; Matched:%var_2_391:  %var_2_391 = inttoptr i64 %var_2_388 to i32*
; %var_2_2357 = inttoptr i64 %var_2_2354 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_391, align 4
; store i32 1, i32* %var_2_2357, align 4
; Matched:  %.pre96 = load i64, i64* %var_2_3, align 8
; %.pre407 = load i64, i64* %PC, align 8
; Matched:%var_2_2683:  %var_2_2683 = load i64, i64* %RBP.i, align 8
; %.pre408 = load i64, i64* %RBP, align 8
  br label %block_4009eb

block_4015d9:                                     ; preds = %block_4015a0
; Matched:%var_2_2762:  %var_2_2762 = load i64, i64* %RBP.i, align 8
; %var_2_2358 = load i64, i64* %RBP, align 8
; Matched:%var_2_2763:  %var_2_2763 = add i64 %var_2_2762, -4
; %var_2_2359 = add i64 %var_2_2358, -4
; Matched:%var_2_2764:  %var_2_2764 = add i64 %var_2_2758, 7
; %var_2_2360 = add i64 %var_2_722, 7
; Matched:\<badref\>:  store i64 %var_2_2764, i64* %var_2_3, align 8
; store i64 %var_2_2360, i64* %PC, align 8
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_255 to i32*
; %var_2_2361 = inttoptr i64 %var_2_2359 to i32*
; Matched:\<badref\>:  store i32 1, i32* %var_2_258, align 4
; store i32 0, i32* %var_2_2361, align 4
; Matched:  %.pre128 = load i64, i64* %var_2_3, align 8
; %.pre439 = load i64, i64* %PC, align 8
  br label %block_4015e0

block_40104b:                                     ; preds = %block_40103d
%var_2_2362 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_2362, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2363 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
store i64 %var_2_2363, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_2364 = load i64, i64* bitcast (%T2_type* @T2 to i64*), align 8
store i64 %var_2_2364, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_1628:  %var_2_1628 = add i64 %var_2_1585, -144
; %var_2_2365 = add i64 %var_2_1057, -144
; Matched:%var_2_1629:  %var_2_1629 = add i64 %var_2_1621, 34
; %var_2_2366 = add i64 %var_2_1093, 34
; Matched:\<badref\>:  store i64 %var_2_1629, i64* %var_2_3, align 8
; store i64 %var_2_2366, i64* %PC, align 8
; Matched:%var_2_1630:  %var_2_1630 = inttoptr i64 %var_2_1628 to i64*
; %var_2_2367 = inttoptr i64 %var_2_2365 to i64*
; Matched:%var_2_1631:  %var_2_1631 = load i64, i64* %var_2_1630, align 8
; %var_2_2368 = load i64, i64* %var_2_2367, align 8
; Matched:\<badref\>:  store i64 %var_2_1631, i64* %var_2_316, align 1
; store i64 %var_2_2368, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
; Matched:%var_2_1632:  %var_2_1632 = add i64 %var_2_1585, -224
; %var_2_2369 = add i64 %var_2_1057, -224
; Matched:%var_2_1633:  %var_2_1633 = add i64 %var_2_1621, 42
; %var_2_2370 = add i64 %var_2_1093, 42
; Matched:\<badref\>:  store i64 %var_2_1633, i64* %var_2_3, align 8
; store i64 %var_2_2370, i64* %PC, align 8
; Matched:%var_2_1634:  %var_2_1634 = inttoptr i64 %var_2_1632 to i64*
; %var_2_2371 = inttoptr i64 %var_2_2369 to i64*
; Matched:\<badref\>:  store i64 %var_2_1625, i64* %var_2_1634, align 8
; store i64 %var_2_2362, i64* %var_2_2371, align 8
%var_2_2372 = load i64, i64* %PC, align 8
%var_2_2373 = load <2 x i32>, <2 x i32>* %var_2_2709, align 1
%var_2_2374 = load <2 x i32>, <2 x i32>* %var_2_2710, align 1
%var_2_2375 = extractelement <2 x i32> %var_2_2373, i32 0
; Matched:\<badref\>:  store i32 %var_2_1789, i32* %var_2_321, align 1
; store i32 %var_2_2375, i32* %var_2_2711, align 1
%var_2_2376 = extractelement <2 x i32> %var_2_2373, i32 1
; Matched:\<badref\>:  store i32 %var_2_1639, i32* %var_2_323, align 1
; store i32 %var_2_2376, i32* %var_2_2713, align 1
%var_2_2377 = extractelement <2 x i32> %var_2_2374, i32 0
; Matched:\<badref\>:  store i32 %var_2_1791, i32* %var_2_324, align 1
; store i32 %var_2_2377, i32* %var_2_2714, align 1
%var_2_2378 = extractelement <2 x i32> %var_2_2374, i32 1
; Matched:\<badref\>:  store i32 %var_2_1641, i32* %var_2_326, align 1
; store i32 %var_2_2378, i32* %var_2_2716, align 1
; Matched:%var_2_1642:  %var_2_1642 = load i64, i64* %RBP.i, align 8
; %var_2_2379 = load i64, i64* %RBP, align 8
; Matched:%var_2_1643:  %var_2_1643 = add i64 %var_2_1642, -232
; %var_2_2380 = add i64 %var_2_2379, -232
; Matched:%var_2_536:  %var_2_536 = add i64 %var_2_535, 11
; %var_2_2381 = add i64 %var_2_2372, 11
; Matched:\<badref\>:  store i64 %var_2_58, i64* %var_2_3, align 8
; store i64 %var_2_2381, i64* %PC, align 8
; Matched:%var_2_1645:  %var_2_1645 = load i64, i64* %var_2_312, align 1
; %var_2_2382 = load i64, i64* %var_2_2703, align 1
; Matched:%var_2_1646:  %var_2_1646 = inttoptr i64 %var_2_1643 to i64*
; %var_2_2383 = inttoptr i64 %var_2_2380 to i64*
; Matched:\<badref\>:  store i64 %var_2_1645, i64* %var_2_1646, align 8
; store i64 %var_2_2382, i64* %var_2_2383, align 8
; Matched:%var_2_1647:  %var_2_1647 = load i64, i64* %RBP.i, align 8
; %var_2_2384 = load i64, i64* %RBP, align 8
; Matched:%var_2_1648:  %var_2_1648 = add i64 %var_2_1647, -240
; %var_2_2385 = add i64 %var_2_2384, -240
%var_2_2386 = load i64, i64* %PC, align 8
%var_2_2387 = add i64 %var_2_2386, 8
store i64 %var_2_2387, i64* %PC, align 8
; Matched:%var_2_1651:  %var_2_1651 = load i64, i64* %var_2_307, align 1
; %var_2_2388 = load i64, i64* %var_2_2699, align 1
; Matched:%var_2_1652:  %var_2_1652 = inttoptr i64 %var_2_1648 to i64*
; %var_2_2389 = inttoptr i64 %var_2_2385 to i64*
; Matched:\<badref\>:  store i64 %var_2_1651, i64* %var_2_1652, align 8
; store i64 %var_2_2388, i64* %var_2_2389, align 8
; Matched:%var_2_1674:  %var_2_1674 = load i64, i64* %var_2_3, align 8
; %var_2_2390 = load i64, i64* %PC, align 8
; Matched:%var_2_1654:  %var_2_1654 = add i64 %var_2_1653, -2360
; %var_2_2391 = add i64 %var_2_2390, -2360
; Matched:%var_2_1806:  %var_2_1806 = add i64 %var_2_1804, 5
; %var_2_2392 = add i64 %var_2_2390, 5
%var_2_2393 = load i64, i64* %RSP, align 8
%var_2_2394 = add i64 %var_2_2393, -8
%var_2_2395 = inttoptr i64 %var_2_2394 to i64*
; Matched:\<badref\>:  store i64 %var_2_2555, i64* %var_2_2558, align 8
; store i64 %var_2_2392, i64* %var_2_2395, align 8
; Matched:\<badref\>:  store i64 %var_2_1678, i64* %var_2_6, align 8
; store i64 %var_2_2394, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1654, i64* %var_2_3, align 8
; store i64 %var_2_2391, i64* %PC, align 8
%var_2_2396 = load double, double* %var_2_2694, align 8, !alias.scope !2461, !noalias !2464
%var_2_2397 = load i64, i64* %var_2_2395, align 8
store i64 %var_2_2393, i64* %RSP, align 8, !alias.scope !2461, !noalias !2464
%var_2_2398 = tail call double @sin(double %var_2_2396)
call void @llvm.memset.p0i8.i64(i8* %var_2_2720, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2398, double* %var_2_2694, align 8, !alias.scope !2461, !noalias !2464
%var_2_2399 = load i64, i64* %RBP, align 8
%var_2_2400 = add i64 %var_2_2399, -232
%var_2_2401 = add i64 %var_2_2397, 8
store i64 %var_2_2401, i64* %PC, align 8
%var_2_2402 = inttoptr i64 %var_2_2400 to double*
%var_2_2403 = load double, double* %var_2_2402, align 8
%var_2_2404 = fmul double %var_2_2403, %var_2_2398
store double %var_2_2404, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2405 = add i64 %var_2_2399, -144
%var_2_2406 = add i64 %var_2_2397, 20
store i64 %var_2_2406, i64* %PC, align 8
%var_2_2407 = inttoptr i64 %var_2_2405 to i64*
%var_2_2408 = load i64, i64* %var_2_2407, align 8
; Matched:\<badref\>:  store i64 %var_2_2079, i64* %var_2_302, align 1
; store i64 %var_2_2408, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2409 = add i64 %var_2_2399, -248
%var_2_2410 = add i64 %var_2_2397, 28
store i64 %var_2_2410, i64* %PC, align 8
%var_2_2411 = inttoptr i64 %var_2_2409 to double*
store double %var_2_2404, double* %var_2_2411, align 8
; Matched:%var_2_1825:  %var_2_1825 = load i64, i64* %var_2_3, align 8
; %var_2_2412 = load i64, i64* %PC, align 8
; Matched:%var_2_1675:  %var_2_1675 = add i64 %var_2_1674, -2457
; %var_2_2413 = add i64 %var_2_2412, -2457
; Matched:%var_2_1827:  %var_2_1827 = add i64 %var_2_1825, 5
; %var_2_2414 = add i64 %var_2_2412, 5
%var_2_2415 = load i64, i64* %RSP, align 8
%var_2_2416 = add i64 %var_2_2415, -8
%var_2_2417 = inttoptr i64 %var_2_2416 to i64*
; Matched:\<badref\>:  store i64 %var_2_1655, i64* %var_2_1658, align 8
; store i64 %var_2_2414, i64* %var_2_2417, align 8
; Matched:\<badref\>:  store i64 %var_2_2479, i64* %var_2_6, align 8
; store i64 %var_2_2416, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1675, i64* %var_2_3, align 8
; store i64 %var_2_2413, i64* %PC, align 8
%var_2_2418 = load double, double* %var_2_2694, align 8, !alias.scope !2466, !noalias !2469
%var_2_2419 = load i64, i64* %var_2_2417, align 8
store i64 %var_2_2415, i64* %RSP, align 8, !alias.scope !2466, !noalias !2469
%var_2_2420 = tail call double @cos(double %var_2_2418)
call void @llvm.memset.p0i8.i64(i8* %var_2_2722, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2420, double* %var_2_2694, align 8, !alias.scope !2466, !noalias !2469
%var_2_2421 = load i64, i64* %RBP, align 8
%var_2_2422 = add i64 %var_2_2421, -248
%var_2_2423 = add i64 %var_2_2419, 8
store i64 %var_2_2423, i64* %PC, align 8
%var_2_2424 = inttoptr i64 %var_2_2422 to double*
%var_2_2425 = load double, double* %var_2_2424, align 8
%var_2_2426 = fmul double %var_2_2425, %var_2_2420
store double %var_2_2426, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2427 = add i64 %var_2_2421, -144
%var_2_2428 = add i64 %var_2_2419, 20
store i64 %var_2_2428, i64* %PC, align 8
%var_2_2429 = inttoptr i64 %var_2_2427 to i64*
%var_2_2430 = load i64, i64* %var_2_2429, align 8
; Matched:\<badref\>:  store i64 %var_2_1997, i64* %var_2_302, align 1
; store i64 %var_2_2430, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_1843:  %var_2_1843 = add i64 %var_2_1831, -152
; %var_2_2431 = add i64 %var_2_2421, -152
%var_2_2432 = add i64 %var_2_2419, 28
store i64 %var_2_2432, i64* %PC, align 8
; Matched:%var_2_1694:  %var_2_1694 = bitcast i64 %var_2_1691 to double
; %var_2_2433 = bitcast i64 %var_2_2430 to double
; Matched:%var_2_1695:  %var_2_1695 = inttoptr i64 %var_2_1692 to double*
; %var_2_2434 = inttoptr i64 %var_2_2431 to double*
; Matched:%var_2_1696:  %var_2_1696 = load double, double* %var_2_1695, align 8
; %var_2_2435 = load double, double* %var_2_2434, align 8
; Matched:%var_2_1848:  %var_2_1848 = fadd double %var_2_1845, %var_2_1847
; %var_2_2436 = fadd double %var_2_2433, %var_2_2435
; Matched:\<badref\>:  store double %var_2_1848, double* %var_2_301, align 1
; store double %var_2_2436, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
%var_2_2437 = add i64 %var_2_2421, -256
%var_2_2438 = add i64 %var_2_2419, 36
store i64 %var_2_2438, i64* %PC, align 8
%var_2_2439 = inttoptr i64 %var_2_2437 to double*
store double %var_2_2426, double* %var_2_2439, align 8
; Matched:%var_2_1701:  %var_2_1701 = load i64, i64* %var_2_3, align 8
; %var_2_2440 = load i64, i64* %PC, align 8
; Matched:%var_2_1702:  %var_2_1702 = add i64 %var_2_1701, -2498
; %var_2_2441 = add i64 %var_2_2440, -2498
; Matched:%var_2_1854:  %var_2_1854 = add i64 %var_2_1852, 5
; %var_2_2442 = add i64 %var_2_2440, 5
%var_2_2443 = load i64, i64* %RSP, align 8
%var_2_2444 = add i64 %var_2_2443, -8
%var_2_2445 = inttoptr i64 %var_2_2444 to i64*
; Matched:\<badref\>:  store i64 %var_2_1806, i64* %var_2_1809, align 8
; store i64 %var_2_2442, i64* %var_2_2445, align 8
; Matched:\<badref\>:  store i64 %var_2_1829, i64* %var_2_6, align 8
; store i64 %var_2_2444, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1702, i64* %var_2_3, align 8
; store i64 %var_2_2441, i64* %PC, align 8
%var_2_2446 = load double, double* %var_2_2694, align 8, !alias.scope !2471, !noalias !2474
%var_2_2447 = load i64, i64* %var_2_2445, align 8
store i64 %var_2_2443, i64* %RSP, align 8, !alias.scope !2471, !noalias !2474
%var_2_2448 = tail call double @cos(double %var_2_2446)
call void @llvm.memset.p0i8.i64(i8* %var_2_2724, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2448, double* %var_2_2694, align 8, !alias.scope !2471, !noalias !2474
%var_2_2449 = load i64, i64* %RBP, align 8
%var_2_2450 = add i64 %var_2_2449, -144
%var_2_2451 = add i64 %var_2_2447, 8
store i64 %var_2_2451, i64* %PC, align 8
%var_2_2452 = inttoptr i64 %var_2_2450 to i64*
%var_2_2453 = load i64, i64* %var_2_2452, align 8
; Matched:\<badref\>:  store i64 %var_2_2642, i64* %var_2_307, align 1
; store i64 %var_2_2453, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_1864:  %var_2_1864 = add i64 %var_2_1858, -152
; %var_2_2454 = add i64 %var_2_2449, -152
%var_2_2455 = add i64 %var_2_2447, 16
store i64 %var_2_2455, i64* %PC, align 8
; Matched:%var_2_1715:  %var_2_1715 = bitcast i64 %var_2_1712 to double
; %var_2_2456 = bitcast i64 %var_2_2453 to double
; Matched:%var_2_1716:  %var_2_1716 = inttoptr i64 %var_2_1713 to double*
; %var_2_2457 = inttoptr i64 %var_2_2454 to double*
; Matched:%var_2_1717:  %var_2_1717 = load double, double* %var_2_1716, align 8
; %var_2_2458 = load double, double* %var_2_2457, align 8
; Matched:%var_2_1718:  %var_2_1718 = fsub double %var_2_1715, %var_2_1717
; %var_2_2459 = fsub double %var_2_2456, %var_2_2458
; Matched:\<badref\>:  store double %var_2_1869, double* %var_2_306, align 1
; store double %var_2_2459, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2460 = add i64 %var_2_2449, -264
%var_2_2461 = add i64 %var_2_2447, 24
store i64 %var_2_2461, i64* %PC, align 8
%var_2_2462 = inttoptr i64 %var_2_2460 to double*
store double %var_2_2448, double* %var_2_2462, align 8
; Matched:%var_2_1874:  %var_2_1874 = load i64, i64* %var_2_3, align 8
; %var_2_2463 = load i64, i64* %PC, align 8
%var_2_2464 = load <2 x i32>, <2 x i32>* %var_2_2717, align 1
%var_2_2465 = load <2 x i32>, <2 x i32>* %var_2_2718, align 1
%var_2_2466 = extractelement <2 x i32> %var_2_2464, i32 0
; Matched:\<badref\>:  store i32 %var_2_1877, i32* %var_2_321, align 1
; store i32 %var_2_2466, i32* %var_2_2711, align 1
%var_2_2467 = extractelement <2 x i32> %var_2_2464, i32 1
; Matched:\<badref\>:  store i32 %var_2_1727, i32* %var_2_323, align 1
; store i32 %var_2_2467, i32* %var_2_2713, align 1
%var_2_2468 = extractelement <2 x i32> %var_2_2465, i32 0
; Matched:\<badref\>:  store i32 %var_2_1879, i32* %var_2_324, align 1
; store i32 %var_2_2468, i32* %var_2_2714, align 1
%var_2_2469 = extractelement <2 x i32> %var_2_2465, i32 1
; Matched:\<badref\>:  store i32 %var_2_1729, i32* %var_2_326, align 1
; store i32 %var_2_2469, i32* %var_2_2716, align 1
; Matched:%var_2_1730:  %var_2_1730 = add i64 %var_2_1723, -2527
; %var_2_2470 = add i64 %var_2_2463, -2527
; Matched:%var_2_1882:  %var_2_1882 = add i64 %var_2_1874, 8
; %var_2_2471 = add i64 %var_2_2463, 8
%var_2_2472 = load i64, i64* %RSP, align 8
%var_2_2473 = add i64 %var_2_2472, -8
%var_2_2474 = inttoptr i64 %var_2_2473 to i64*
; Matched:\<badref\>:  store i64 %var_2_1882, i64* %var_2_1885, align 8
; store i64 %var_2_2471, i64* %var_2_2474, align 8
; Matched:\<badref\>:  store i64 %var_2_1733, i64* %var_2_6, align 8
; store i64 %var_2_2473, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1730, i64* %var_2_3, align 8
; store i64 %var_2_2470, i64* %PC, align 8
%var_2_2475 = load double, double* %var_2_2694, align 8, !alias.scope !2476, !noalias !2479
%var_2_2476 = load i64, i64* %var_2_2474, align 8
store i64 %var_2_2472, i64* %RSP, align 8, !alias.scope !2476, !noalias !2479
%var_2_2477 = tail call double @cos(double %var_2_2475)
call void @llvm.memset.p0i8.i64(i8* %var_2_2726, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2477, double* %var_2_2694, align 8, !alias.scope !2476, !noalias !2479
%var_2_2478 = load i64, i64* %RBP, align 8
%var_2_2479 = add i64 %var_2_2478, -264
%var_2_2480 = add i64 %var_2_2476, 8
store i64 %var_2_2480, i64* %PC, align 8
%var_2_2481 = inttoptr i64 %var_2_2479 to double*
%var_2_2482 = load double, double* %var_2_2481, align 8
%var_2_2483 = fadd double %var_2_2482, %var_2_2477
store double %var_2_2483, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2484 = add i64 %var_2_2478, -224
%var_2_2485 = add i64 %var_2_2476, 20
store i64 %var_2_2485, i64* %PC, align 8
%var_2_2486 = inttoptr i64 %var_2_2484 to i64*
%var_2_2487 = load i64, i64* %var_2_2486, align 8
; Matched:\<badref\>:  store i64 %var_2_1746, i64* %var_2_302, align 1
; store i64 %var_2_2487, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%.cast328 = bitcast i64 %var_2_2487 to double
%var_2_2488 = fsub double %var_2_2483, %.cast328
store double %var_2_2488, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2489 = add i64 %var_2_2478, -256
%var_2_2490 = add i64 %var_2_2476, 32
store i64 %var_2_2490, i64* %PC, align 8
%var_2_2491 = inttoptr i64 %var_2_2489 to double*
%var_2_2492 = load double, double* %var_2_2491, align 8
%var_2_2493 = fdiv double %var_2_2492, %var_2_2488
store double %var_2_2493, double* %var_2_2702, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_313, align 1
; store i64 0, i64* %var_2_2704, align 1
%.cast330 = bitcast double %var_2_2493 to <2 x i32>
%var_2_2494 = extractelement <2 x i32> %.cast330, i32 0
store i32 %var_2_2494, i32* %var_2_2711, align 1
%var_2_2495 = extractelement <2 x i32> %.cast330, i32 1
store i32 %var_2_2495, i32* %var_2_2713, align 1
store i32 0, i32* %var_2_2714, align 1
store i32 0, i32* %var_2_2716, align 1
%var_2_2496 = add i64 %var_2_2476, -2583
%var_2_2497 = add i64 %var_2_2476, 44
store i64 %var_2_2497, i64* %var_2_2474, align 8
; Matched:\<badref\>:  store i64 %var_2_1733, i64* %var_2_6, align 8
; store i64 %var_2_2473, i64* %RSP, align 8
store i64 %var_2_2496, i64* %PC, align 8
%var_2_2498 = load double, double* %var_2_2694, align 8, !alias.scope !2481, !noalias !2484
%var_2_2499 = load i64, i64* %var_2_2474, align 8
store i64 %var_2_2472, i64* %RSP, align 8, !alias.scope !2481, !noalias !2484
%var_2_2500 = tail call double @atan(double %var_2_2498)
call void @llvm.memset.p0i8.i64(i8* %var_2_2728, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2500, double* %var_2_2694, align 8, !alias.scope !2481, !noalias !2484
%var_2_2501 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_2501, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
%var_2_2502 = load i64, i64* %RBP, align 8
%var_2_2503 = add i64 %var_2_2502, -240
%var_2_2504 = add i64 %var_2_2499, 16
store i64 %var_2_2504, i64* %PC, align 8
%var_2_2505 = inttoptr i64 %var_2_2503 to double*
%var_2_2506 = load double, double* %var_2_2505, align 8
%var_2_2507 = fmul double %var_2_2506, %var_2_2500
%var_2_2508 = add i64 %var_2_2502, -144
%var_2_2509 = add i64 %var_2_2499, 28
store i64 %var_2_2509, i64* %PC, align 8
%var_2_2510 = inttoptr i64 %var_2_2508 to double*
store double %var_2_2507, double* %var_2_2510, align 8
; Matched:%var_2_370:  %var_2_370 = load i64, i64* %var_2_3, align 8
; %var_2_2511 = load i64, i64* %PC, align 8
%var_2_2512 = load i64, i64* bitcast (%T_type* @T to i64*), align 8
store i64 %var_2_2512, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2513 = load i64, i64* bitcast (%T2_type* @T2 to i64*), align 8
store i64 %var_2_2513, i64* %var_2_2703, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_314, align 1
; store double 0.000000e+00, double* %var_2_2705, align 1
; Matched:%var_2_1778:  %var_2_1778 = load i64, i64* %RBP.i, align 8
; %var_2_2514 = load i64, i64* %RBP, align 8
; Matched:%var_2_1779:  %var_2_1779 = add i64 %var_2_1778, -152
; %var_2_2515 = add i64 %var_2_2514, -152
; Matched:%var_2_1780:  %var_2_1780 = add i64 %var_2_1775, 26
; %var_2_2516 = add i64 %var_2_2511, 26
; Matched:\<badref\>:  store i64 %var_2_1780, i64* %var_2_3, align 8
; store i64 %var_2_2516, i64* %PC, align 8
; Matched:%var_2_1781:  %var_2_1781 = inttoptr i64 %var_2_1779 to i64*
; %var_2_2517 = inttoptr i64 %var_2_2515 to i64*
; Matched:%var_2_1782:  %var_2_1782 = load i64, i64* %var_2_1781, align 8
; %var_2_2518 = load i64, i64* %var_2_2517, align 8
; Matched:\<badref\>:  store i64 %var_2_1782, i64* %var_2_316, align 1
; store i64 %var_2_2518, i64* %var_2_2706, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_318, align 1
; store double 0.000000e+00, double* %var_2_2708, align 1
; Matched:%var_2_1783:  %var_2_1783 = add i64 %var_2_1778, -272
; %var_2_2519 = add i64 %var_2_2514, -272
; Matched:%var_2_376:  %var_2_376 = add i64 %var_2_370, 34
; %var_2_2520 = add i64 %var_2_2511, 34
; Matched:\<badref\>:  store i64 %var_2_376, i64* %var_2_3, align 8
; store i64 %var_2_2520, i64* %PC, align 8
; Matched:%var_2_1785:  %var_2_1785 = inttoptr i64 %var_2_1783 to i64*
; %var_2_2521 = inttoptr i64 %var_2_2519 to i64*
; Matched:\<badref\>:  store i64 %var_2_1776, i64* %var_2_1785, align 8
; store i64 %var_2_2512, i64* %var_2_2521, align 8
%var_2_2522 = load i64, i64* %PC, align 8
%var_2_2523 = load <2 x i32>, <2 x i32>* %var_2_2709, align 1
%var_2_2524 = load <2 x i32>, <2 x i32>* %var_2_2710, align 1
%var_2_2525 = extractelement <2 x i32> %var_2_2523, i32 0
; Matched:\<badref\>:  store i32 %var_2_1638, i32* %var_2_321, align 1
; store i32 %var_2_2525, i32* %var_2_2711, align 1
%var_2_2526 = extractelement <2 x i32> %var_2_2523, i32 1
; Matched:\<badref\>:  store i32 %var_2_1790, i32* %var_2_323, align 1
; store i32 %var_2_2526, i32* %var_2_2713, align 1
%var_2_2527 = extractelement <2 x i32> %var_2_2524, i32 0
; Matched:\<badref\>:  store i32 %var_2_1640, i32* %var_2_324, align 1
; store i32 %var_2_2527, i32* %var_2_2714, align 1
%var_2_2528 = extractelement <2 x i32> %var_2_2524, i32 1
; Matched:\<badref\>:  store i32 %var_2_1792, i32* %var_2_326, align 1
; store i32 %var_2_2528, i32* %var_2_2716, align 1
; Matched:%var_2_1793:  %var_2_1793 = load i64, i64* %RBP.i, align 8
; %var_2_2529 = load i64, i64* %RBP, align 8
; Matched:%var_2_1794:  %var_2_1794 = add i64 %var_2_1793, -280
; %var_2_2530 = add i64 %var_2_2529, -280
; Matched:%var_2_460:  %var_2_460 = add i64 %var_2_459, 11
; %var_2_2531 = add i64 %var_2_2522, 11
; Matched:\<badref\>:  store i64 %var_2_562, i64* %var_2_3, align 8
; store i64 %var_2_2531, i64* %PC, align 8
; Matched:%var_2_1796:  %var_2_1796 = load i64, i64* %var_2_307, align 1
; %var_2_2532 = load i64, i64* %var_2_2699, align 1
; Matched:%var_2_1797:  %var_2_1797 = inttoptr i64 %var_2_1794 to i64*
; %var_2_2533 = inttoptr i64 %var_2_2530 to i64*
; Matched:\<badref\>:  store i64 %var_2_1796, i64* %var_2_1797, align 8
; store i64 %var_2_2532, i64* %var_2_2533, align 8
; Matched:%var_2_1798:  %var_2_1798 = load i64, i64* %RBP.i, align 8
; %var_2_2534 = load i64, i64* %RBP, align 8
; Matched:%var_2_1799:  %var_2_1799 = add i64 %var_2_1798, -288
; %var_2_2535 = add i64 %var_2_2534, -288
%var_2_2536 = load i64, i64* %PC, align 8
%var_2_2537 = add i64 %var_2_2536, 8
store i64 %var_2_2537, i64* %PC, align 8
; Matched:%var_2_1802:  %var_2_1802 = load i64, i64* %var_2_312, align 1
; %var_2_2538 = load i64, i64* %var_2_2703, align 1
; Matched:%var_2_1803:  %var_2_1803 = inttoptr i64 %var_2_1799 to i64*
; %var_2_2539 = inttoptr i64 %var_2_2535 to i64*
; Matched:\<badref\>:  store i64 %var_2_1802, i64* %var_2_1803, align 8
; store i64 %var_2_2538, i64* %var_2_2539, align 8
; Matched:%var_2_1852:  %var_2_1852 = load i64, i64* %var_2_3, align 8
; %var_2_2540 = load i64, i64* %PC, align 8
; Matched:%var_2_1805:  %var_2_1805 = add i64 %var_2_1804, -2596
; %var_2_2541 = add i64 %var_2_2540, -2596
; Matched:%var_2_1655:  %var_2_1655 = add i64 %var_2_1653, 5
; %var_2_2542 = add i64 %var_2_2540, 5
%var_2_2543 = load i64, i64* %RSP, align 8
%var_2_2544 = add i64 %var_2_2543, -8
%var_2_2545 = inttoptr i64 %var_2_2544 to i64*
; Matched:\<badref\>:  store i64 %var_2_1827, i64* %var_2_1830, align 8
; store i64 %var_2_2542, i64* %var_2_2545, align 8
; Matched:\<badref\>:  store i64 %var_2_1705, i64* %var_2_6, align 8
; store i64 %var_2_2544, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1805, i64* %var_2_3, align 8
; store i64 %var_2_2541, i64* %PC, align 8
%var_2_2546 = load double, double* %var_2_2694, align 8, !alias.scope !2486, !noalias !2489
%var_2_2547 = load i64, i64* %var_2_2545, align 8
store i64 %var_2_2543, i64* %RSP, align 8, !alias.scope !2486, !noalias !2489
%var_2_2548 = tail call double @sin(double %var_2_2546)
call void @llvm.memset.p0i8.i64(i8* %var_2_2730, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2548, double* %var_2_2694, align 8, !alias.scope !2486, !noalias !2489
%var_2_2549 = load i64, i64* %RBP, align 8
%var_2_2550 = add i64 %var_2_2549, -288
%var_2_2551 = add i64 %var_2_2547, 8
store i64 %var_2_2551, i64* %PC, align 8
%var_2_2552 = inttoptr i64 %var_2_2550 to double*
%var_2_2553 = load double, double* %var_2_2552, align 8
%var_2_2554 = fmul double %var_2_2553, %var_2_2548
store double %var_2_2554, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
; Matched:%var_2_1818:  %var_2_1818 = add i64 %var_2_1810, -152
; %var_2_2555 = add i64 %var_2_2549, -152
%var_2_2556 = add i64 %var_2_2547, 20
store i64 %var_2_2556, i64* %PC, align 8
; Matched:%var_2_1820:  %var_2_1820 = inttoptr i64 %var_2_1818 to i64*
; %var_2_2557 = inttoptr i64 %var_2_2555 to i64*
; Matched:%var_2_1821:  %var_2_1821 = load i64, i64* %var_2_1820, align 8
; %var_2_2558 = load i64, i64* %var_2_2557, align 8
; Matched:\<badref\>:  store i64 %var_2_1821, i64* %var_2_302, align 1
; store i64 %var_2_2558, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2559 = add i64 %var_2_2549, -296
%var_2_2560 = add i64 %var_2_2547, 28
store i64 %var_2_2560, i64* %PC, align 8
%var_2_2561 = inttoptr i64 %var_2_2559 to double*
store double %var_2_2554, double* %var_2_2561, align 8
; Matched:%var_2_1653:  %var_2_1653 = load i64, i64* %var_2_3, align 8
; %var_2_2562 = load i64, i64* %PC, align 8
; Matched:%var_2_1826:  %var_2_1826 = add i64 %var_2_1825, -2693
; %var_2_2563 = add i64 %var_2_2562, -2693
; Matched:%var_2_1676:  %var_2_1676 = add i64 %var_2_1674, 5
; %var_2_2564 = add i64 %var_2_2562, 5
%var_2_2565 = load i64, i64* %RSP, align 8
%var_2_2566 = add i64 %var_2_2565, -8
%var_2_2567 = inttoptr i64 %var_2_2566 to i64*
; Matched:\<badref\>:  store i64 %var_2_1703, i64* %var_2_1706, align 8
; store i64 %var_2_2564, i64* %var_2_2567, align 8
; Matched:\<badref\>:  store i64 %var_2_1055, i64* %var_2_6, align 8
; store i64 %var_2_2566, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1826, i64* %var_2_3, align 8
; store i64 %var_2_2563, i64* %PC, align 8
%var_2_2568 = load double, double* %var_2_2694, align 8, !alias.scope !2491, !noalias !2494
%var_2_2569 = load i64, i64* %var_2_2567, align 8
store i64 %var_2_2565, i64* %RSP, align 8, !alias.scope !2491, !noalias !2494
%var_2_2570 = tail call double @cos(double %var_2_2568)
call void @llvm.memset.p0i8.i64(i8* %var_2_2732, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2570, double* %var_2_2694, align 8, !alias.scope !2491, !noalias !2494
%var_2_2571 = load i64, i64* %RBP, align 8
%var_2_2572 = add i64 %var_2_2571, -296
%var_2_2573 = add i64 %var_2_2569, 8
store i64 %var_2_2573, i64* %PC, align 8
%var_2_2574 = inttoptr i64 %var_2_2572 to double*
%var_2_2575 = load double, double* %var_2_2574, align 8
%var_2_2576 = fmul double %var_2_2575, %var_2_2570
store double %var_2_2576, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2577 = add i64 %var_2_2571, -144
%var_2_2578 = add i64 %var_2_2569, 20
store i64 %var_2_2578, i64* %PC, align 8
%var_2_2579 = inttoptr i64 %var_2_2577 to i64*
%var_2_2580 = load i64, i64* %var_2_2579, align 8
; Matched:\<badref\>:  store i64 %var_2_1691, i64* %var_2_302, align 1
; store i64 %var_2_2580, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
; Matched:%var_2_1692:  %var_2_1692 = add i64 %var_2_1680, -152
; %var_2_2581 = add i64 %var_2_2571, -152
%var_2_2582 = add i64 %var_2_2569, 28
store i64 %var_2_2582, i64* %PC, align 8
; Matched:%var_2_1845:  %var_2_1845 = bitcast i64 %var_2_1842 to double
; %var_2_2583 = bitcast i64 %var_2_2580 to double
; Matched:%var_2_1846:  %var_2_1846 = inttoptr i64 %var_2_1843 to double*
; %var_2_2584 = inttoptr i64 %var_2_2581 to double*
; Matched:%var_2_1847:  %var_2_1847 = load double, double* %var_2_1846, align 8
; %var_2_2585 = load double, double* %var_2_2584, align 8
; Matched:%var_2_1697:  %var_2_1697 = fadd double %var_2_1694, %var_2_1696
; %var_2_2586 = fadd double %var_2_2583, %var_2_2585
; Matched:\<badref\>:  store double %var_2_1697, double* %var_2_301, align 1
; store double %var_2_2586, double* %var_2_2694, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_303, align 1
; store i64 0, i64* %var_2_2696, align 1
%var_2_2587 = add i64 %var_2_2571, -304
%var_2_2588 = add i64 %var_2_2569, 36
store i64 %var_2_2588, i64* %PC, align 8
%var_2_2589 = inttoptr i64 %var_2_2587 to double*
store double %var_2_2576, double* %var_2_2589, align 8
; Matched:%var_2_2553:  %var_2_2553 = load i64, i64* %var_2_3, align 8
; %var_2_2590 = load i64, i64* %PC, align 8
; Matched:%var_2_1853:  %var_2_1853 = add i64 %var_2_1852, -2734
; %var_2_2591 = add i64 %var_2_2590, -2734
; Matched:%var_2_2555:  %var_2_2555 = add i64 %var_2_2553, 5
; %var_2_2592 = add i64 %var_2_2590, 5
%var_2_2593 = load i64, i64* %RSP, align 8
%var_2_2594 = add i64 %var_2_2593, -8
%var_2_2595 = inttoptr i64 %var_2_2594 to i64*
; Matched:\<badref\>:  store i64 %var_2_1676, i64* %var_2_1679, align 8
; store i64 %var_2_2592, i64* %var_2_2595, align 8
; Matched:\<badref\>:  store i64 %var_2_2319, i64* %var_2_6, align 8
; store i64 %var_2_2594, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1853, i64* %var_2_3, align 8
; store i64 %var_2_2591, i64* %PC, align 8
%var_2_2596 = load double, double* %var_2_2694, align 8, !alias.scope !2496, !noalias !2499
%var_2_2597 = load i64, i64* %var_2_2595, align 8
store i64 %var_2_2593, i64* %RSP, align 8, !alias.scope !2496, !noalias !2499
%var_2_2598 = tail call double @cos(double %var_2_2596)
call void @llvm.memset.p0i8.i64(i8* %var_2_2734, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2598, double* %var_2_2694, align 8, !alias.scope !2496, !noalias !2499
%var_2_2599 = load i64, i64* %RBP, align 8
%var_2_2600 = add i64 %var_2_2599, -144
%var_2_2601 = add i64 %var_2_2597, 8
store i64 %var_2_2601, i64* %PC, align 8
%var_2_2602 = inttoptr i64 %var_2_2600 to i64*
%var_2_2603 = load i64, i64* %var_2_2602, align 8
; Matched:\<badref\>:  store i64 %var_2_1863, i64* %var_2_307, align 1
; store i64 %var_2_2603, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
; Matched:%var_2_1713:  %var_2_1713 = add i64 %var_2_1707, -152
; %var_2_2604 = add i64 %var_2_2599, -152
%var_2_2605 = add i64 %var_2_2597, 16
store i64 %var_2_2605, i64* %PC, align 8
; Matched:%var_2_1866:  %var_2_1866 = bitcast i64 %var_2_1863 to double
; %var_2_2606 = bitcast i64 %var_2_2603 to double
; Matched:%var_2_1867:  %var_2_1867 = inttoptr i64 %var_2_1864 to double*
; %var_2_2607 = inttoptr i64 %var_2_2604 to double*
; Matched:%var_2_1868:  %var_2_1868 = load double, double* %var_2_1867, align 8
; %var_2_2608 = load double, double* %var_2_2607, align 8
; Matched:%var_2_1869:  %var_2_1869 = fsub double %var_2_1866, %var_2_1868
; %var_2_2609 = fsub double %var_2_2606, %var_2_2608
; Matched:\<badref\>:  store double %var_2_1718, double* %var_2_306, align 1
; store double %var_2_2609, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2610 = add i64 %var_2_2599, -312
%var_2_2611 = add i64 %var_2_2597, 24
store i64 %var_2_2611, i64* %PC, align 8
%var_2_2612 = inttoptr i64 %var_2_2610 to double*
store double %var_2_2598, double* %var_2_2612, align 8
; Matched:%var_2_1723:  %var_2_1723 = load i64, i64* %var_2_3, align 8
; %var_2_2613 = load i64, i64* %PC, align 8
%var_2_2614 = load <2 x i32>, <2 x i32>* %var_2_2717, align 1
%var_2_2615 = load <2 x i32>, <2 x i32>* %var_2_2718, align 1
%var_2_2616 = extractelement <2 x i32> %var_2_2614, i32 0
; Matched:\<badref\>:  store i32 %var_2_1726, i32* %var_2_321, align 1
; store i32 %var_2_2616, i32* %var_2_2711, align 1
%var_2_2617 = extractelement <2 x i32> %var_2_2614, i32 1
; Matched:\<badref\>:  store i32 %var_2_1878, i32* %var_2_323, align 1
; store i32 %var_2_2617, i32* %var_2_2713, align 1
%var_2_2618 = extractelement <2 x i32> %var_2_2615, i32 0
; Matched:\<badref\>:  store i32 %var_2_1728, i32* %var_2_324, align 1
; store i32 %var_2_2618, i32* %var_2_2714, align 1
%var_2_2619 = extractelement <2 x i32> %var_2_2615, i32 1
; Matched:\<badref\>:  store i32 %var_2_1880, i32* %var_2_326, align 1
; store i32 %var_2_2619, i32* %var_2_2716, align 1
; Matched:%var_2_1881:  %var_2_1881 = add i64 %var_2_1874, -2763
; %var_2_2620 = add i64 %var_2_2613, -2763
; Matched:%var_2_1731:  %var_2_1731 = add i64 %var_2_1723, 8
; %var_2_2621 = add i64 %var_2_2613, 8
%var_2_2622 = load i64, i64* %RSP, align 8
%var_2_2623 = add i64 %var_2_2622, -8
%var_2_2624 = inttoptr i64 %var_2_2623 to i64*
; Matched:\<badref\>:  store i64 %var_2_1731, i64* %var_2_1734, align 8
; store i64 %var_2_2621, i64* %var_2_2624, align 8
; Matched:\<badref\>:  store i64 %var_2_2650, i64* %var_2_6, align 8
; store i64 %var_2_2623, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1881, i64* %var_2_3, align 8
; store i64 %var_2_2620, i64* %PC, align 8
%var_2_2625 = load double, double* %var_2_2694, align 8, !alias.scope !2501, !noalias !2504
%var_2_2626 = load i64, i64* %var_2_2624, align 8
store i64 %var_2_2622, i64* %RSP, align 8, !alias.scope !2501, !noalias !2504
%var_2_2627 = tail call double @cos(double %var_2_2625)
call void @llvm.memset.p0i8.i64(i8* %var_2_2736, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2627, double* %var_2_2694, align 8, !alias.scope !2501, !noalias !2504
%var_2_2628 = load i64, i64* %RBP, align 8
%var_2_2629 = add i64 %var_2_2628, -312
%var_2_2630 = add i64 %var_2_2626, 8
store i64 %var_2_2630, i64* %PC, align 8
%var_2_2631 = inttoptr i64 %var_2_2629 to double*
%var_2_2632 = load double, double* %var_2_2631, align 8
%var_2_2633 = fadd double %var_2_2632, %var_2_2627
store double %var_2_2633, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2634 = add i64 %var_2_2628, -280
%var_2_2635 = add i64 %var_2_2626, 20
store i64 %var_2_2635, i64* %PC, align 8
%var_2_2636 = inttoptr i64 %var_2_2634 to i64*
%var_2_2637 = load i64, i64* %var_2_2636, align 8
; Matched:\<badref\>:  store i64 %var_2_1897, i64* %var_2_302, align 1
; store i64 %var_2_2637, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%.cast355 = bitcast i64 %var_2_2637 to double
%var_2_2638 = fsub double %var_2_2633, %.cast355
store double %var_2_2638, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2639 = add i64 %var_2_2628, -304
%var_2_2640 = add i64 %var_2_2626, 32
store i64 %var_2_2640, i64* %PC, align 8
%var_2_2641 = inttoptr i64 %var_2_2639 to double*
%var_2_2642 = load double, double* %var_2_2641, align 8
%var_2_2643 = fdiv double %var_2_2642, %var_2_2638
store double %var_2_2643, double* %var_2_2702, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_313, align 1
; store i64 0, i64* %var_2_2704, align 1
%.cast357 = bitcast double %var_2_2643 to <2 x i32>
%var_2_2644 = extractelement <2 x i32> %.cast357, i32 0
store i32 %var_2_2644, i32* %var_2_2711, align 1
%var_2_2645 = extractelement <2 x i32> %.cast357, i32 1
store i32 %var_2_2645, i32* %var_2_2713, align 1
store i32 0, i32* %var_2_2714, align 1
store i32 0, i32* %var_2_2716, align 1
%var_2_2646 = add i64 %var_2_2626, -2819
%var_2_2647 = add i64 %var_2_2626, 44
store i64 %var_2_2647, i64* %var_2_2624, align 8
; Matched:\<badref\>:  store i64 %var_2_2650, i64* %var_2_6, align 8
; store i64 %var_2_2623, i64* %RSP, align 8
store i64 %var_2_2646, i64* %PC, align 8
%var_2_2648 = load double, double* %var_2_2694, align 8, !alias.scope !2506, !noalias !2509
%var_2_2649 = load i64, i64* %var_2_2624, align 8
store i64 %var_2_2622, i64* %RSP, align 8, !alias.scope !2506, !noalias !2509
%var_2_2650 = tail call double @atan(double %var_2_2648)
call void @llvm.memset.p0i8.i64(i8* %var_2_2738, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2650, double* %var_2_2694, align 8, !alias.scope !2506, !noalias !2509
%var_2_2651 = load i64, i64* %RBP, align 8
%var_2_2652 = add i64 %var_2_2651, -272
%var_2_2653 = add i64 %var_2_2649, 8
store i64 %var_2_2653, i64* %PC, align 8
%var_2_2654 = inttoptr i64 %var_2_2652 to double*
%var_2_2655 = load double, double* %var_2_2654, align 8
%var_2_2656 = fmul double %var_2_2655, %var_2_2650
store double %var_2_2656, double* %var_2_2698, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_308, align 1
; store i64 0, i64* %var_2_2700, align 1
%var_2_2657 = add i64 %var_2_2651, -152
%var_2_2658 = add i64 %var_2_2649, 20
store i64 %var_2_2658, i64* %PC, align 8
%var_2_2659 = inttoptr i64 %var_2_2657 to double*
store double %var_2_2656, double* %var_2_2659, align 8
%var_2_2660 = load i64, i64* %RBP, align 8
%var_2_2661 = add i64 %var_2_2660, -24
%var_2_2662 = load i64, i64* %PC, align 8
; Matched:%var_2_1487:  %var_2_1487 = add i64 %var_2_1486, 4
; %var_2_2663 = add i64 %var_2_2662, 4
; Matched:\<badref\>:  store i64 %var_2_1487, i64* %var_2_3, align 8
; store i64 %var_2_2663, i64* %PC, align 8
%var_2_2664 = inttoptr i64 %var_2_2661 to i64*
; Matched:%var_2_1110:  %var_2_1110 = load i64, i64* %var_2_1109, align 8
; %var_2_2665 = load i64, i64* %var_2_2664, align 8
; Matched:%var_2_1111:  %var_2_1111 = add i64 %var_2_1110, 1
; %var_2_2666 = add i64 %var_2_2665, 1
; Matched:\<badref\>:  store i64 %var_2_1111, i64* %RAX.i1199, align 8
; store i64 %var_2_2666, i64* %RAX, align 8
; Matched:%var_2_1491:  %var_2_1491 = icmp eq i64 %var_2_1489, -1
; %var_2_2667 = icmp eq i64 %var_2_2665, -1
; Matched:%var_2_1289:  %var_2_1289 = icmp eq i64 %var_2_1287, 0
; %var_2_2668 = icmp eq i64 %var_2_2666, 0
; Matched:%var_2_983:  %var_2_983 = or i1 %var_2_981, %var_2_982
; %var_2_2669 = or i1 %var_2_2667, %var_2_2668
; Matched:%var_2_984:  %var_2_984 = zext i1 %var_2_983 to i8
; %var_2_2670 = zext i1 %var_2_2669 to i8
; Matched:\<badref\>:  store i8 %var_2_984, i8* %var_2_14, align 1
; store i8 %var_2_2670, i8* %var_2_18, align 1
; Matched:%var_2_985:  %var_2_985 = trunc i64 %var_2_980 to i32
; %var_2_2671 = trunc i64 %var_2_2666 to i32
; Matched:%var_2_986:  %var_2_986 = and i32 %var_2_985, 255
; %var_2_2672 = and i32 %var_2_2671, 255
; Matched:%var_2_2578:  %var_2_2578 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2577)
; %var_2_2673 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2672) #14
; Matched:%var_2_2579:  %var_2_2579 = trunc i32 %var_2_2578 to i8
; %var_2_2674 = trunc i32 %var_2_2673 to i8
; Matched:%var_2_2580:  %var_2_2580 = and i8 %var_2_2579, 1
; %var_2_2675 = and i8 %var_2_2674, 1
; Matched:%var_2_990:  %var_2_990 = xor i8 %var_2_989, 1
; %var_2_2676 = xor i8 %var_2_2675, 1
; Matched:\<badref\>:  store i8 %var_2_2581, i8* %var_2_21, align 1
; store i8 %var_2_2676, i8* %var_2_25, align 1
; Matched:%var_2_1298:  %var_2_1298 = xor i64 %var_2_1287, %var_2_1286
; %var_2_2677 = xor i64 %var_2_2666, %var_2_2665
; Matched:%var_2_1502:  %var_2_1502 = lshr i64 %var_2_1501, 4
; %var_2_2678 = lshr i64 %var_2_2677, 4
; Matched:%var_2_993:  %var_2_993 = trunc i64 %var_2_992 to i8
; %var_2_2679 = trunc i64 %var_2_2678 to i8
; Matched:%var_2_994:  %var_2_994 = and i8 %var_2_993, 1
; %var_2_2680 = and i8 %var_2_2679, 1
; Matched:\<badref\>:  store i8 %var_2_1504, i8* %var_2_26, align 1
; store i8 %var_2_2680, i8* %var_2_30, align 1
; Matched:%var_2_1302:  %var_2_1302 = zext i1 %var_2_1289 to i8
; %var_2_2681 = zext i1 %var_2_2668 to i8
; Matched:\<badref\>:  store i8 %var_2_1302, i8* %var_2_29, align 1
; store i8 %var_2_2681, i8* %var_2_33, align 1
; Matched:%var_2_1506:  %var_2_1506 = lshr i64 %var_2_1490, 63
; %var_2_2682 = lshr i64 %var_2_2666, 63
; Matched:%var_2_1507:  %var_2_1507 = trunc i64 %var_2_1506 to i8
; %var_2_2683 = trunc i64 %var_2_2682 to i8
; Matched:\<badref\>:  store i8 %var_2_1304, i8* %var_2_32, align 1
; store i8 %var_2_2683, i8* %var_2_36, align 1
; Matched:%var_2_1305:  %var_2_1305 = lshr i64 %var_2_1286, 63
; %var_2_2684 = lshr i64 %var_2_2665, 63
; Matched:%var_2_1509:  %var_2_1509 = xor i64 %var_2_1506, %var_2_1508
; %var_2_2685 = xor i64 %var_2_2682, %var_2_2684
; Matched:%var_2_1131:  %var_2_1131 = add nuw nsw i64 %var_2_1130, %var_2_1127
; %var_2_2686 = add nuw nsw i64 %var_2_2685, %var_2_2682
; Matched:%var_2_1132:  %var_2_1132 = icmp eq i64 %var_2_1131, 2
; %var_2_2687 = icmp eq i64 %var_2_2686, 2
; Matched:%var_2_1309:  %var_2_1309 = zext i1 %var_2_1308 to i8
; %var_2_2688 = zext i1 %var_2_2687 to i8
; Matched:\<badref\>:  store i8 %var_2_1309, i8* %var_2_38, align 1
; store i8 %var_2_2688, i8* %var_2_42, align 1
; Matched:%var_2_1513:  %var_2_1513 = add i64 %var_2_1486, 12
; %var_2_2689 = add i64 %var_2_2662, 12
; Matched:\<badref\>:  store i64 %var_2_1134, i64* %var_2_3, align 8
; store i64 %var_2_2689, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_1111, i64* %var_2_1109, align 8
; store i64 %var_2_2666, i64* %var_2_2664, align 8
%var_2_2690 = load i64, i64* %PC, align 8
%var_2_2691 = add i64 %var_2_2690, -498
; Matched:\<badref\>:  store i64 %var_2_1953, i64* %var_2_3, align 8
; store i64 %var_2_2691, i64* %PC, align 8
  br label %block_40103d

block_400981:                                     ; preds = %block_400898
; Matched:%var_2_298:  %var_2_298 = add i64 %var_2_108, 5
; %var_2_2692 = add i64 %var_2_1832, 5
%var_2_2693 = bitcast [32 x %union.VectorReg]* %var_2_5 to i8*
%var_2_2694 = bitcast [32 x %union.VectorReg]* %var_2_5 to double*
%var_2_2695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2697 = bitcast i64* %var_2_2696 to double*
%var_2_2698 = bitcast %union.VectorReg* %var_2_6 to double*
%var_2_2699 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_308:  %var_2_308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_309:  %var_2_309 = bitcast i64* %var_2_308 to double*
; %var_2_2701 = bitcast i64* %var_2_2700 to double*
%var_2_2702 = bitcast %union.VectorReg* %var_2_7 to double*
%var_2_2703 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_7, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_313:  %var_2_313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_314:  %var_2_314 = bitcast i64* %var_2_313 to double*
; %var_2_2705 = bitcast i64* %var_2_2704 to double*
%var_2_2706 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_8, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_317:  %var_2_317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_318:  %var_2_318 = bitcast i64* %var_2_317 to double*
; %var_2_2708 = bitcast i64* %var_2_2707 to double*
%var_2_2709 = bitcast %union.VectorReg* %var_2_8 to <2 x i32>*
%var_2_2710 = bitcast i64* %var_2_2707 to <2 x i32>*
%var_2_2711 = bitcast [32 x %union.VectorReg]* %var_2_5 to i32*
%var_2_2712 = getelementptr inbounds i8, i8* %var_2_2693, i64 4
%var_2_2713 = bitcast i8* %var_2_2712 to i32*
%var_2_2714 = bitcast i64* %var_2_2696 to i32*
%var_2_2715 = getelementptr inbounds i8, i8* %var_2_2693, i64 12
%var_2_2716 = bitcast i8* %var_2_2715 to i32*
%var_2_2717 = bitcast %union.VectorReg* %var_2_6 to <2 x i32>*
%var_2_2718 = bitcast i64* %var_2_2700 to <2 x i32>*
%var_2_2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2720 = bitcast i64* %var_2_2719 to i8*
%var_2_2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2722 = bitcast i64* %var_2_2721 to i8*
%var_2_2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2724 = bitcast i64* %var_2_2723 to i8*
%var_2_2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2726 = bitcast i64* %var_2_2725 to i8*
%var_2_2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2728 = bitcast i64* %var_2_2727 to i8*
%var_2_2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2730 = bitcast i64* %var_2_2729 to i8*
%var_2_2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2732 = bitcast i64* %var_2_2731 to i8*
%var_2_2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2734 = bitcast i64* %var_2_2733 to i8*
%var_2_2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2736 = bitcast i64* %var_2_2735 to i8*
%var_2_2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2738 = bitcast i64* %var_2_2737 to i8*
%var_2_2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_2740 = bitcast i64* %var_2_2739 to i8*
  br label %block_400986

block_400ba0:                                     ; preds = %block_400b66, %block_400b78
; Matched:%var_2_2321:  %var_2_2321 = phi i64 [ %var_2_2198, %block_.L_4013ad ], [ %.pre121, %block_4013bf ]
; %var_2_2741 = phi i64 [ %var_2_1686, %block_400b66 ], [ %.pre411, %block_400b78 ]
; Matched:%var_2_890:  %var_2_890 = phi i64 [ %.pre99, %block_400b78 ], [ %var_2_861, %block_.L_400b66 ]
; %var_2_2742 = phi i64 [ %var_2_996, %block_400b66 ], [ %.pre410, %block_400b78 ]
%var_2_2743 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 32) to i64*), align 16
store i64 %var_2_2743, i64* %var_2_2695, align 1
store double 0.000000e+00, double* %var_2_2697, align 1
%var_2_2744 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401900__rodata_type* @seg_401900__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_2744, i64* %var_2_2699, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_309, align 1
; store double 0.000000e+00, double* %var_2_2701, align 1
store i64 %var_2_2744, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 8) to i64*), align 8
store i64 %var_2_2743, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 16) to i64*), align 16
store i64 %var_2_2743, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 24) to i64*), align 8
store i64 %var_2_2743, i64* inttoptr (i64 add (i64 ptrtoint (%E1_type* @E1 to i64), i64 32) to i64*), align 16
; Matched:%var_2_2323:  %var_2_2323 = add i64 %var_2_2321, -24
; %var_2_2745 = add i64 %var_2_2741, -24
; Matched:%var_2_900:  %var_2_900 = add i64 %var_2_890, 60
; %var_2_2746 = add i64 %var_2_2742, 60
; Matched:\<badref\>:  store i64 %var_2_900, i64* %var_2_3, align 8
; store i64 %var_2_2746, i64* %PC, align 8
; Matched:%var_2_1192:  %var_2_1192 = inttoptr i64 %var_2_1190 to i64*
; %var_2_2747 = inttoptr i64 %var_2_2745 to i64*
; Matched:\<badref\>:  store i64 1, i64* %var_2_1192, align 8
; store i64 1, i64* %var_2_2747, align 8
  %.pre412 = load i64, i64* %PC, align 8
  br label %block_400bdc

block_401580:                                     ; preds = %block_401535, %block_401547
; Matched:%var_2_2652:  %var_2_2652 = phi i64 [ %var_2_2630, %block_.L_401535 ], [ %.pre127, %block_401547 ]
; %var_2_2748 = phi i64 [ %var_2_511, %block_401535 ], [ %.pre438, %block_401547 ]
; Matched:%var_2_2653:  %var_2_2653 = phi i64 [ %var_2_2496, %block_.L_401535 ], [ %.pre126, %block_401547 ]
; %var_2_2749 = phi i64 [ %var_2_275, %block_401535 ], [ %.pre437, %block_401547 ]
%MEMORY.28 = phi %struct.Memory* [ %MEMORY.3, %block_401535 ], [ %var_2_796, %block_401547 ]
; Matched:%var_2_2654:  %var_2_2654 = add i64 %var_2_2653, -176
; %var_2_2750 = add i64 %var_2_2749, -176
; Matched:%var_2_2655:  %var_2_2655 = add i64 %var_2_2652, 6
; %var_2_2751 = add i64 %var_2_2748, 6
; Matched:\<badref\>:  store i64 %var_2_2655, i64* %var_2_3, align 8
; store i64 %var_2_2751, i64* %PC, align 8
; Matched:%var_2_2656:  %var_2_2656 = inttoptr i64 %var_2_2654 to i32*
; %var_2_2752 = inttoptr i64 %var_2_2750 to i32*
; Matched:%var_2_2657:  %var_2_2657 = load i32, i32* %var_2_2656, align 4
; %var_2_2753 = load i32, i32* %var_2_2752, align 4
; Matched:%var_2_2658:  %var_2_2658 = add i32 %var_2_2657, 1
; %var_2_2754 = add i32 %var_2_2753, 1
; Matched:%var_2_2659:  %var_2_2659 = zext i32 %var_2_2658 to i64
; %var_2_2755 = zext i32 %var_2_2754 to i64
; Matched:\<badref\>:  store i64 %var_2_2659, i64* %RAX.i1199, align 8
; store i64 %var_2_2755, i64* %RAX, align 8
; Matched:%var_2_2660:  %var_2_2660 = icmp eq i32 %var_2_2657, -1
; %var_2_2756 = icmp eq i32 %var_2_2753, -1
; Matched:%var_2_2661:  %var_2_2661 = icmp eq i32 %var_2_2658, 0
; %var_2_2757 = icmp eq i32 %var_2_2754, 0
; Matched:%var_2_2662:  %var_2_2662 = or i1 %var_2_2660, %var_2_2661
; %var_2_2758 = or i1 %var_2_2756, %var_2_2757
; Matched:%var_2_2663:  %var_2_2663 = zext i1 %var_2_2662 to i8
; %var_2_2759 = zext i1 %var_2_2758 to i8
; Matched:\<badref\>:  store i8 %var_2_2663, i8* %var_2_14, align 1
; store i8 %var_2_2759, i8* %var_2_18, align 1
; Matched:%var_2_2664:  %var_2_2664 = and i32 %var_2_2658, 255
; %var_2_2760 = and i32 %var_2_2754, 255
; Matched:%var_2_2665:  %var_2_2665 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2664)
; %var_2_2761 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2760) #14
; Matched:%var_2_2666:  %var_2_2666 = trunc i32 %var_2_2665 to i8
; %var_2_2762 = trunc i32 %var_2_2761 to i8
; Matched:%var_2_2667:  %var_2_2667 = and i8 %var_2_2666, 1
; %var_2_2763 = and i8 %var_2_2762, 1
; Matched:%var_2_2668:  %var_2_2668 = xor i8 %var_2_2667, 1
; %var_2_2764 = xor i8 %var_2_2763, 1
; Matched:\<badref\>:  store i8 %var_2_2668, i8* %var_2_21, align 1
; store i8 %var_2_2764, i8* %var_2_25, align 1
; Matched:%var_2_2669:  %var_2_2669 = xor i32 %var_2_2658, %var_2_2657
; %var_2_2765 = xor i32 %var_2_2754, %var_2_2753
; Matched:%var_2_2670:  %var_2_2670 = lshr i32 %var_2_2669, 4
; %var_2_2766 = lshr i32 %var_2_2765, 4
; Matched:%var_2_2671:  %var_2_2671 = trunc i32 %var_2_2670 to i8
; %var_2_2767 = trunc i32 %var_2_2766 to i8
; Matched:%var_2_2672:  %var_2_2672 = and i8 %var_2_2671, 1
; %var_2_2768 = and i8 %var_2_2767, 1
; Matched:\<badref\>:  store i8 %var_2_2672, i8* %var_2_26, align 1
; store i8 %var_2_2768, i8* %var_2_30, align 1
; Matched:%var_2_2673:  %var_2_2673 = zext i1 %var_2_2661 to i8
; %var_2_2769 = zext i1 %var_2_2757 to i8
; Matched:\<badref\>:  store i8 %var_2_2673, i8* %var_2_29, align 1
; store i8 %var_2_2769, i8* %var_2_33, align 1
; Matched:%var_2_2674:  %var_2_2674 = lshr i32 %var_2_2658, 31
; %var_2_2770 = lshr i32 %var_2_2754, 31
; Matched:%var_2_2675:  %var_2_2675 = trunc i32 %var_2_2674 to i8
; %var_2_2771 = trunc i32 %var_2_2770 to i8
; Matched:\<badref\>:  store i8 %var_2_2675, i8* %var_2_32, align 1
; store i8 %var_2_2771, i8* %var_2_36, align 1
; Matched:%var_2_2676:  %var_2_2676 = lshr i32 %var_2_2657, 31
; %var_2_2772 = lshr i32 %var_2_2753, 31
; Matched:%var_2_2677:  %var_2_2677 = xor i32 %var_2_2674, %var_2_2676
; %var_2_2773 = xor i32 %var_2_2770, %var_2_2772
; Matched:%var_2_2678:  %var_2_2678 = add nuw nsw i32 %var_2_2677, %var_2_2674
; %var_2_2774 = add nuw nsw i32 %var_2_2773, %var_2_2770
; Matched:%var_2_2679:  %var_2_2679 = icmp eq i32 %var_2_2678, 2
; %var_2_2775 = icmp eq i32 %var_2_2774, 2
; Matched:%var_2_2680:  %var_2_2680 = zext i1 %var_2_2679 to i8
; %var_2_2776 = zext i1 %var_2_2775 to i8
; Matched:\<badref\>:  store i8 %var_2_2680, i8* %var_2_38, align 1
; store i8 %var_2_2776, i8* %var_2_42, align 1
; Matched:%var_2_2681:  %var_2_2681 = add i64 %var_2_2652, 15
; %var_2_2777 = add i64 %var_2_2748, 15
; Matched:\<badref\>:  store i64 %var_2_2681, i64* %var_2_3, align 8
; store i64 %var_2_2777, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2658, i32* %var_2_2656, align 4
; store i32 %var_2_2754, i32* %var_2_2752, align 4
%var_2_2778 = load i32, i32* %EAX, align 4
%var_2_2779 = load i64, i64* %RBP, align 8
%var_2_2780 = add i64 %var_2_2779, -172
; Matched:%var_2_262:  %var_2_262 = load i64, i64* %var_2_3, align 8
; %var_2_2781 = load i64, i64* %PC, align 8
; Matched:%var_2_263:  %var_2_263 = add i64 %var_2_262, 6
; %var_2_2782 = add i64 %var_2_2781, 6
; Matched:\<badref\>:  store i64 %var_2_2686, i64* %var_2_3, align 8
; store i64 %var_2_2782, i64* %PC, align 8
%var_2_2783 = inttoptr i64 %var_2_2780 to i32*
%var_2_2784 = load i32, i32* %var_2_2783, align 4
%var_2_2785 = sub i32 %var_2_2778, %var_2_2784
; Matched:%var_2_2690:  %var_2_2690 = icmp ult i32 %var_2_2682, %var_2_2688
; %var_2_2786 = icmp ult i32 %var_2_2778, %var_2_2784
; Matched:%var_2_2691:  %var_2_2691 = zext i1 %var_2_2690 to i8
; %var_2_2787 = zext i1 %var_2_2786 to i8
; Matched:\<badref\>:  store i8 %var_2_2691, i8* %var_2_14, align 1
; store i8 %var_2_2787, i8* %var_2_18, align 1
; Matched:%var_2_2692:  %var_2_2692 = and i32 %var_2_2689, 255
; %var_2_2788 = and i32 %var_2_2785, 255
; Matched:%var_2_2693:  %var_2_2693 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2692)
; %var_2_2789 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2788) #14
; Matched:%var_2_2694:  %var_2_2694 = trunc i32 %var_2_2693 to i8
; %var_2_2790 = trunc i32 %var_2_2789 to i8
; Matched:%var_2_2695:  %var_2_2695 = and i8 %var_2_2694, 1
; %var_2_2791 = and i8 %var_2_2790, 1
; Matched:%var_2_2696:  %var_2_2696 = xor i8 %var_2_2695, 1
; %var_2_2792 = xor i8 %var_2_2791, 1
; Matched:\<badref\>:  store i8 %var_2_2696, i8* %var_2_21, align 1
; store i8 %var_2_2792, i8* %var_2_25, align 1
; Matched:%var_2_2697:  %var_2_2697 = xor i32 %var_2_2688, %var_2_2682
; %var_2_2793 = xor i32 %var_2_2784, %var_2_2778
; Matched:%var_2_2698:  %var_2_2698 = xor i32 %var_2_2697, %var_2_2689
; %var_2_2794 = xor i32 %var_2_2793, %var_2_2785
; Matched:%var_2_2699:  %var_2_2699 = lshr i32 %var_2_2698, 4
; %var_2_2795 = lshr i32 %var_2_2794, 4
; Matched:%var_2_2700:  %var_2_2700 = trunc i32 %var_2_2699 to i8
; %var_2_2796 = trunc i32 %var_2_2795 to i8
; Matched:%var_2_2701:  %var_2_2701 = and i8 %var_2_2700, 1
; %var_2_2797 = and i8 %var_2_2796, 1
; Matched:\<badref\>:  store i8 %var_2_2701, i8* %var_2_26, align 1
; store i8 %var_2_2797, i8* %var_2_30, align 1
%var_2_2798 = icmp eq i32 %var_2_2785, 0
; Matched:%var_2_2703:  %var_2_2703 = zext i1 %var_2_2702 to i8
; %var_2_2799 = zext i1 %var_2_2798 to i8
; Matched:\<badref\>:  store i8 %var_2_2703, i8* %var_2_29, align 1
; store i8 %var_2_2799, i8* %var_2_33, align 1
%var_2_2800 = lshr i32 %var_2_2785, 31
%var_2_2801 = trunc i32 %var_2_2800 to i8
; Matched:\<badref\>:  store i8 %var_2_2705, i8* %var_2_32, align 1
; store i8 %var_2_2801, i8* %var_2_36, align 1
%var_2_2802 = lshr i32 %var_2_2778, 31
%var_2_2803 = lshr i32 %var_2_2784, 31
%var_2_2804 = xor i32 %var_2_2803, %var_2_2802
%var_2_2805 = xor i32 %var_2_2800, %var_2_2802
%var_2_2806 = add nuw nsw i32 %var_2_2805, %var_2_2804
%var_2_2807 = icmp eq i32 %var_2_2806, 2
; Matched:%var_2_2712:  %var_2_2712 = zext i1 %var_2_2711 to i8
; %var_2_2808 = zext i1 %var_2_2807 to i8
; Matched:\<badref\>:  store i8 %var_2_2712, i8* %var_2_38, align 1
; store i8 %var_2_2808, i8* %var_2_42, align 1
%var_2_2809 = icmp ne i8 %var_2_2801, 0
%var_2_2810 = xor i1 %var_2_2809, %var_2_2807
%.demorgan451 = or i1 %var_2_2798, %var_2_2810
; Matched:  %.v160 = select i1 %.demorgan139, i64 12, i64 17
; %.v472 = select i1 %.demorgan451, i64 12, i64 17
; Matched:%var_2_2715:  %var_2_2715 = add i64 %var_2_2685, %.v160
; %var_2_2811 = add i64 %var_2_2781, %.v472
; Matched:\<badref\>:  store i64 %var_2_2715, i64* %var_2_3, align 8
; store i64 %var_2_2811, i64* %PC, align 8
  br i1 %.demorgan451, label %block_40159b, label %block_4015a0
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4018f0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4018f0:
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
define %struct.Memory* @sub_400770__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400770:
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
  store i8 1, i8* %5, align 1, !tbaa !2450
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2451
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2452
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2449
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #14
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2448
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2450
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2451
  store i8 0, i8* %7, align 1, !tbaa !2452
  store i8 0, i8* %8, align 1, !tbaa !2449
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
  store i64 ptrtoint (void ()* @callback_sub_4018f0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401880___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline
define %struct.Memory* @sub_400850_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
block_400850:
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
  %13 = tail call %struct.Memory* @sub_4007e0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400850_frame_dummy() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_400850_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400820___do_global_dtors_aux() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400820;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_400820___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400820___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4006f0_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602168_log(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_exp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_400760_sqrt(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602128_time(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602190_atol(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8_strncmp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400720_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_400750_sin(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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
define %struct.Memory* @ext_602110_cos(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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
define %struct.Memory* @ext_6020f8_atan(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4018f0___libc_csu_fini() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4018f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4018f0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4018f0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401880___libc_csu_init() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_401880___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401880___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400860;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400860_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602178___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @PA() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @PA_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401660_PA(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4018f4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4018f4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400698;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400698__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @P0() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @P0_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401810_P0(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @POUT() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @POUT_wrapper(%struct.State*, i64, %struct.Memory*) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015f0_POUT(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @P3() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @P3_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401790_P3(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #14 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401880___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #14 {
  tail call void @callback_sub_4018f0___libc_csu_fini()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #15

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { naked nobuiltin noinline nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind }
attributes #14 = { nounwind }
attributes #15 = { argmemonly nounwind }

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
!2449 = !{!2435, !2430, i64 2069}
!2450 = !{!2435, !2430, i64 2071}
!2451 = !{!2435, !2430, i64 2073}
!2452 = !{!2435, !2430, i64 2077}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"ext_400760_sqrt: argument 0"}
!2456 = distinct !{!2456, !"ext_400760_sqrt"}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2456, !"ext_400760_sqrt: argument 1"}
!2459 = !{!2460, !2460, i64 0}
!2460 = !{!"float", !2430, i64 0}
!2461 = !{!2462}
!2462 = distinct !{!2462, !2463, !"ext_400750_sin: argument 0"}
!2463 = distinct !{!2463, !"ext_400750_sin"}
!2464 = !{!2465}
!2465 = distinct !{!2465, !2463, !"ext_400750_sin: argument 1"}
!2466 = !{!2467}
!2467 = distinct !{!2467, !2468, !"ext_602110_cos: argument 0"}
!2468 = distinct !{!2468, !"ext_602110_cos"}
!2469 = !{!2470}
!2470 = distinct !{!2470, !2468, !"ext_602110_cos: argument 1"}
!2471 = !{!2472}
!2472 = distinct !{!2472, !2473, !"ext_602110_cos: argument 0"}
!2473 = distinct !{!2473, !"ext_602110_cos"}
!2474 = !{!2475}
!2475 = distinct !{!2475, !2473, !"ext_602110_cos: argument 1"}
!2476 = !{!2477}
!2477 = distinct !{!2477, !2478, !"ext_602110_cos: argument 0"}
!2478 = distinct !{!2478, !"ext_602110_cos"}
!2479 = !{!2480}
!2480 = distinct !{!2480, !2478, !"ext_602110_cos: argument 1"}
!2481 = !{!2482}
!2482 = distinct !{!2482, !2483, !"ext_6020f8_atan: argument 0"}
!2483 = distinct !{!2483, !"ext_6020f8_atan"}
!2484 = !{!2485}
!2485 = distinct !{!2485, !2483, !"ext_6020f8_atan: argument 1"}
!2486 = !{!2487}
!2487 = distinct !{!2487, !2488, !"ext_400750_sin: argument 0"}
!2488 = distinct !{!2488, !"ext_400750_sin"}
!2489 = !{!2490}
!2490 = distinct !{!2490, !2488, !"ext_400750_sin: argument 1"}
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"ext_602110_cos: argument 0"}
!2493 = distinct !{!2493, !"ext_602110_cos"}
!2494 = !{!2495}
!2495 = distinct !{!2495, !2493, !"ext_602110_cos: argument 1"}
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"ext_602110_cos: argument 0"}
!2498 = distinct !{!2498, !"ext_602110_cos"}
!2499 = !{!2500}
!2500 = distinct !{!2500, !2498, !"ext_602110_cos: argument 1"}
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"ext_602110_cos: argument 0"}
!2503 = distinct !{!2503, !"ext_602110_cos"}
!2504 = !{!2505}
!2505 = distinct !{!2505, !2503, !"ext_602110_cos: argument 1"}
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"ext_6020f8_atan: argument 0"}
!2508 = distinct !{!2508, !"ext_6020f8_atan"}
!2509 = !{!2510}
!2510 = distinct !{!2510, !2508, !"ext_6020f8_atan: argument 1"}
