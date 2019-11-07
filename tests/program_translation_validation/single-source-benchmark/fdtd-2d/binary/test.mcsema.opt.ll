; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401690__rodata_type = type <{ [24 x i8], [7 x i8], [51 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602080__bss_type = type <{ [8 x i8], [8 x i8] }>
%polybench_papi_counters_threadid_type = type <{ [8 x i8] }>
%polybench_program_total_flops_type = type <{ [8 x i8] }>
%polybench_c_end_type = type <{ [8 x i8] }>
%polybench_t_end_type = type <{ [8 x i8] }>
%polybench_t_start_type = type <{ [8 x i8] }>
%polybench_c_start_type = type <{ [8 x i8] }>
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
@stderr = external local_unnamed_addr global i64, align 128
@seg_401690__rodata = internal constant %seg_401690__rodata_type <{ [24 x i8] c"\01\00\02\00\00\00\00\00ffffff\E6?\00\00\00\00\00\00\E0?", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400760_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400730___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400760_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400730___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401680___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401610___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4007f0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b10_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c60_kernel_fdtd_2d_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400770_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401460_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4012c0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400f90_kernel_fdtd_2d_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008d0_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006c0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400820_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400770_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400770:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
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
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %38 = add i64 %6, -12
  %39 = add i64 %9, 21
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 4194560, i32* %40, align 4
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -4
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %RDI, align 8, !tbaa !2428
  %48 = add i64 %43, -342
  %49 = add i64 %43, 9
  %50 = load i64, i64* %RSP, align 8, !tbaa !2428
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  store i64 %48, i64* %PC, align 8, !tbaa !2428
  %53 = tail call fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %54 = load i64, i64* %PC, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %56, align 1, !tbaa !2451
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %RAX, align 8
  %60 = add i64 %54, 7
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 5
  store i64 %65, i64* %PC, align 8
  %66 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %67 = load i64, i64* %66, align 1
  %68 = inttoptr i64 %63 to i64*
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -20
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %74 = bitcast %union.VectorReg* %3 to double*
  %75 = bitcast i64* %55 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007a2

block_4007ae:                                     ; preds = %block_4007a2
  %76 = add i64 %199, 8
  store i64 %76, i64* %PC, align 8
  %77 = load i32, i32* %166, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RCX, align 8, !tbaa !2428
  %79 = shl nsw i64 %78, 3
  %80 = add i64 %79, %203
  %81 = add i64 %199, 13
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %66, align 1, !tbaa !2452
  store double 0.000000e+00, double* %75, align 1, !tbaa !2452
  %84 = add i64 %163, -32
  %85 = add i64 %199, 18
  store i64 %85, i64* %PC, align 8
  %86 = bitcast i64 %83 to double
  %87 = inttoptr i64 %84 to double*
  %88 = load double, double* %87, align 8
  %89 = fadd double %86, %88
  store double %89, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %55, align 1, !tbaa !2452
  %90 = add i64 %199, 23
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %84 to double*
  store double %89, double* %91, align 8
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -20
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = icmp eq i32 %97, -1
  %101 = icmp eq i32 %98, 0
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %13, align 1, !tbaa !2432
  %104 = and i32 %98, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #12
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %20, align 1, !tbaa !2446
  %109 = xor i32 %98, %97
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %25, align 1, !tbaa !2447
  %113 = zext i1 %101 to i8
  store i8 %113, i8* %28, align 1, !tbaa !2448
  %114 = lshr i32 %98, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %31, align 1, !tbaa !2449
  %116 = lshr i32 %97, 31
  %117 = xor i32 %114, %116
  %118 = add nuw nsw i32 %117, %114
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %37, align 1, !tbaa !2450
  %121 = add i64 %94, 9
  store i64 %121, i64* %PC, align 8
  store i32 %98, i32* %96, align 4
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, -44
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br label %block_4007a2

block_4007d3:                                     ; preds = %block_4007a2
  store i64 %203, i64* %RDI, align 8, !tbaa !2428
  %124 = add i64 %199, -467
  %125 = add i64 %199, 12
  %126 = load i64, i64* %RSP, align 8, !tbaa !2428
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  store i64 %124, i64* %PC, align 8, !tbaa !2428
  %129 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %130 = load i64, i64* %RSP, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %130, 32
  store i64 %132, i64* %RSP, align 8, !tbaa !2428
  %133 = icmp ugt i64 %130, -33
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %13, align 1, !tbaa !2432
  %135 = trunc i64 %132 to i32
  %136 = and i32 %135, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #12
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %20, align 1, !tbaa !2446
  %141 = xor i64 %132, %130
  %142 = lshr i64 %141, 4
  %143 = trunc i64 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %25, align 1, !tbaa !2447
  %145 = icmp eq i64 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %28, align 1, !tbaa !2448
  %147 = lshr i64 %132, 63
  %148 = trunc i64 %147 to i8
  store i8 %148, i8* %31, align 1, !tbaa !2449
  %149 = lshr i64 %130, 63
  %150 = xor i64 %147, %149
  %151 = add nuw nsw i64 %150, %147
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %37, align 1, !tbaa !2450
  %154 = add i64 %131, 5
  store i64 %154, i64* %PC, align 8
  %155 = add i64 %130, 40
  %156 = inttoptr i64 %132 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RBP, align 8, !tbaa !2428
  store i64 %155, i64* %RSP, align 8, !tbaa !2428
  %158 = add i64 %131, 6
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %155 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %PC, align 8, !tbaa !2428
  %161 = add i64 %130, 48
  store i64 %161, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %129

block_4007a2:                                     ; preds = %block_4007ae, %block_400770
  %162 = phi i64 [ %123, %block_4007ae ], [ %.pre, %block_400770 ]
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -20
  %165 = add i64 %162, 3
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = add i64 %163, -4
  %170 = add i64 %162, 6
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sub i32 %167, %172
  %174 = icmp ult i32 %167, %172
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %13, align 1, !tbaa !2432
  %176 = and i32 %173, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #12
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %20, align 1, !tbaa !2446
  %181 = xor i32 %172, %167
  %182 = xor i32 %181, %173
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %25, align 1, !tbaa !2447
  %186 = icmp eq i32 %173, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %28, align 1, !tbaa !2448
  %188 = lshr i32 %173, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %31, align 1, !tbaa !2449
  %190 = lshr i32 %167, 31
  %191 = lshr i32 %172, 31
  %192 = xor i32 %191, %190
  %193 = xor i32 %188, %190
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %37, align 1, !tbaa !2450
  %197 = icmp ne i8 %189, 0
  %198 = xor i1 %197, %195
  %.v = select i1 %198, i64 12, i64 49
  %199 = add i64 %162, %.v
  %200 = add i64 %163, -16
  %201 = add i64 %199, 4
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  br i1 %198, label %block_4007ae, label %block_4007d3
}

; Function Attrs: noinline
define %struct.Memory* @sub_400950_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400950:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
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
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -104
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 96
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2432
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2446
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2447
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2448
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2449
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2450
  store i64 1000000, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %7, -12
  %40 = add i64 %10, 26
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -8
  %44 = load i32, i32* %EDI, align 4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %RSI, align 8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -20
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 7
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %55 to i32*
  store i32 50, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 7
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 1000, i32* %63, align 4
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -28
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 1000, i32* %68, align 4
  %69 = load i64, i64* %RCX, align 8
  %70 = load i64, i64* %PC, align 8
  store i64 %69, i64* %RDI, align 8, !tbaa !2428
  %71 = load i32, i32* %EAX, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RSI, align 8, !tbaa !2428
  %73 = add i64 %70, -247
  %74 = add i64 %70, 10
  %75 = load i64, i64* %RSP, align 8, !tbaa !2428
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %RSP, align 8, !tbaa !2428
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  %78 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %73, %struct.Memory* %2)
  %79 = load i64, i64* %PC, align 8
  store i64 1000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -40
  %82 = load i64, i64* %RAX, align 8
  %83 = add i64 %79, 16
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, -273
  %87 = add i64 %85, 5
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %86, %struct.Memory* %78)
  %92 = load i64, i64* %PC, align 8
  store i64 1000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -48
  %95 = load i64, i64* %RAX, align 8
  %96 = add i64 %92, 16
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, -294
  %100 = add i64 %98, 5
  %101 = load i64, i64* %RSP, align 8, !tbaa !2428
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*
  store i64 %100, i64* %103, align 8
  store i64 %102, i64* %RSP, align 8, !tbaa !2428
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  %104 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %99, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  store i64 1000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %106 = load i64, i64* %RBP, align 8
  %107 = add i64 %106, -56
  %108 = load i64, i64* %RAX, align 8
  %109 = add i64 %105, 16
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, -315
  %113 = add i64 %111, 5
  %114 = load i64, i64* %RSP, align 8, !tbaa !2428
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %RSP, align 8, !tbaa !2428
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  %117 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %112, %struct.Memory* %104)
  %118 = load i64, i64* %PC, align 8
  store i64 1000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -64
  %121 = load i64, i64* %RAX, align 8
  %122 = add i64 %118, 16
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, -336
  %126 = add i64 %124, 5
  %127 = load i64, i64* %RSP, align 8, !tbaa !2428
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  %130 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %125, %struct.Memory* %117)
  %131 = load i64, i64* %PC, align 8
  store i64 1000000, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -72
  %134 = load i64, i64* %RAX, align 8
  %135 = add i64 %131, 16
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %PC, align 8
  %138 = add i64 %137, -357
  %139 = add i64 %137, 5
  %140 = load i64, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  store i64 %138, i64* %PC, align 8, !tbaa !2428
  %143 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %138, %struct.Memory* %130)
  %144 = load i64, i64* %PC, align 8
  store i64 50, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %145 = load i64, i64* %RBP, align 8
  %146 = add i64 %145, -80
  %147 = load i64, i64* %RAX, align 8
  %148 = add i64 %144, 16
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, -378
  %152 = add i64 %150, 5
  %153 = load i64, i64* %RSP, align 8, !tbaa !2428
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155, align 8
  store i64 %154, i64* %RSP, align 8, !tbaa !2428
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  %156 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %151, %struct.Memory* %143)
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -88
  %159 = load i64, i64* %RAX, align 8
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -20
  %165 = load i64, i64* %PC, align 8
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDI, align 8, !tbaa !2428
  %170 = add i64 %163, -24
  %171 = add i64 %165, 6
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RSI, align 8, !tbaa !2428
  %175 = add i64 %163, -28
  %176 = add i64 %165, 9
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RDX, align 8, !tbaa !2428
  %180 = add i64 %163, -40
  %181 = add i64 %165, 13
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RCX, align 8, !tbaa !2428
  %184 = add i64 %163, -48
  %185 = add i64 %165, 17
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %R8, align 8, !tbaa !2428
  %188 = add i64 %163, -56
  %189 = add i64 %165, 21
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %R9, align 8, !tbaa !2428
  %192 = add i64 %163, -88
  %193 = add i64 %165, 25
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = bitcast i64* %RSP to i64**
  %197 = load i64*, i64** %196, align 8
  %198 = add i64 %165, 29
  store i64 %198, i64* %PC, align 8
  store i64 %195, i64* %197, align 8
  %199 = load i64, i64* %PC, align 8
  %200 = add i64 %199, 224
  %201 = add i64 %199, 5
  %202 = load i64, i64* %RSP, align 8, !tbaa !2428
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %RSP, align 8, !tbaa !2428
  store i64 %200, i64* %PC, align 8, !tbaa !2428
  %205 = tail call %struct.Memory* @sub_400b10_init_array_renamed_(%struct.State* nonnull %0, i64 %200, %struct.Memory* %156)
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -20
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RDI, align 8, !tbaa !2428
  %213 = add i64 %206, -24
  %214 = add i64 %208, 6
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RSI, align 8, !tbaa !2428
  %218 = add i64 %206, -28
  %219 = add i64 %208, 9
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RDX, align 8, !tbaa !2428
  %223 = add i64 %206, -40
  %224 = add i64 %208, 13
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = add i64 %206, -48
  %228 = add i64 %208, 17
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %R8, align 8, !tbaa !2428
  %231 = add i64 %206, -56
  %232 = add i64 %208, 21
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %R9, align 8, !tbaa !2428
  %235 = add i64 %206, -88
  %236 = add i64 %208, 25
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = load i64*, i64** %196, align 8
  %240 = add i64 %208, 29
  store i64 %240, i64* %PC, align 8
  store i64 %238, i64* %239, align 8
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, 526
  %243 = add i64 %241, 5
  %244 = load i64, i64* %RSP, align 8, !tbaa !2428
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %243, i64* %246, align 8
  store i64 %245, i64* %RSP, align 8, !tbaa !2428
  store i64 %242, i64* %PC, align 8, !tbaa !2428
  %247 = tail call %struct.Memory* @sub_400c60_kernel_fdtd_2d_renamed_(%struct.State* nonnull %0, i64 %242, %struct.Memory* %205)
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -20
  %250 = load i64, i64* %PC, align 8
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDI, align 8, !tbaa !2428
  %255 = add i64 %248, -24
  %256 = add i64 %250, 6
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RSI, align 8, !tbaa !2428
  %260 = add i64 %248, -28
  %261 = add i64 %250, 9
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RDX, align 8, !tbaa !2428
  %265 = add i64 %248, -64
  %266 = add i64 %250, 13
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RCX, align 8, !tbaa !2428
  %269 = add i64 %248, -72
  %270 = add i64 %250, 17
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %R8, align 8, !tbaa !2428
  %273 = add i64 %248, -80
  %274 = add i64 %250, 21
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %R9, align 8, !tbaa !2428
  %277 = add i64 %248, -88
  %278 = add i64 %250, 25
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = load i64*, i64** %196, align 8
  %282 = add i64 %250, 29
  store i64 %282, i64* %PC, align 8
  store i64 %280, i64* %281, align 8
  %283 = load i64, i64* %PC, align 8
  %284 = add i64 %283, 156
  %285 = add i64 %283, 5
  %286 = load i64, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  %289 = tail call %struct.Memory* @sub_400b10_init_array_renamed_(%struct.State* nonnull %0, i64 %284, %struct.Memory* %247)
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -20
  %292 = load i64, i64* %PC, align 8
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RDI, align 8, !tbaa !2428
  %297 = add i64 %290, -24
  %298 = add i64 %292, 6
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RSI, align 8, !tbaa !2428
  %302 = add i64 %290, -28
  %303 = add i64 %292, 9
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RDX, align 8, !tbaa !2428
  %307 = add i64 %290, -64
  %308 = add i64 %292, 13
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = add i64 %290, -72
  %312 = add i64 %292, 17
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %R8, align 8, !tbaa !2428
  %315 = add i64 %290, -80
  %316 = add i64 %292, 21
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %R9, align 8, !tbaa !2428
  %319 = add i64 %290, -88
  %320 = add i64 %292, 25
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = load i64*, i64** %196, align 8
  %324 = add i64 %292, 29
  store i64 %324, i64* %PC, align 8
  store i64 %322, i64* %323, align 8
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 1274
  %327 = add i64 %325, 5
  %328 = load i64, i64* %RSP, align 8, !tbaa !2428
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330, align 8
  store i64 %329, i64* %RSP, align 8, !tbaa !2428
  store i64 %326, i64* %PC, align 8, !tbaa !2428
  %331 = tail call %struct.Memory* @sub_400f90_kernel_fdtd_2d_StrictFP_renamed_(%struct.State* nonnull %0, i64 %326, %struct.Memory* %289)
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -24
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RDI, align 8, !tbaa !2428
  %339 = add i64 %332, -28
  %340 = add i64 %334, 6
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RSI, align 8, !tbaa !2428
  %344 = add i64 %332, -64
  %345 = add i64 %334, 10
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %RDX, align 8, !tbaa !2428
  %348 = add i64 %332, -72
  %349 = add i64 %334, 14
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RCX, align 8, !tbaa !2428
  %352 = add i64 %332, -80
  %353 = add i64 %334, 18
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %R8, align 8, !tbaa !2428
  %356 = add i64 %334, 2085
  %357 = add i64 %334, 23
  %358 = load i64, i64* %RSP, align 8, !tbaa !2428
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %RSP, align 8, !tbaa !2428
  store i64 %356, i64* %PC, align 8, !tbaa !2428
  %361 = tail call %struct.Memory* @sub_4012c0_print_array_renamed_(%struct.State* nonnull %0, i64 %356, %struct.Memory* %331)
  %362 = load i64, i64* %RBP, align 8
  %363 = add i64 %362, -40
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RAX, align 8, !tbaa !2428
  store i64 %367, i64* %RDI, align 8, !tbaa !2428
  %368 = add i64 %364, -1202
  %369 = add i64 %364, 12
  %370 = load i64, i64* %RSP, align 8, !tbaa !2428
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372, align 8
  store i64 %371, i64* %RSP, align 8, !tbaa !2428
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  %373 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %361)
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -48
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX, align 8, !tbaa !2428
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  %380 = add i64 %376, -1214
  %381 = add i64 %376, 12
  %382 = load i64, i64* %RSP, align 8, !tbaa !2428
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %RSP, align 8, !tbaa !2428
  store i64 %380, i64* %PC, align 8, !tbaa !2428
  %385 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %373)
  %386 = load i64, i64* %RBP, align 8
  %387 = add i64 %386, -56
  %388 = load i64, i64* %PC, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  store i64 %391, i64* %RDI, align 8, !tbaa !2428
  %392 = add i64 %388, -1226
  %393 = add i64 %388, 12
  %394 = load i64, i64* %RSP, align 8, !tbaa !2428
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %393, i64* %396, align 8
  store i64 %395, i64* %RSP, align 8, !tbaa !2428
  store i64 %392, i64* %PC, align 8, !tbaa !2428
  %397 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %385)
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -64
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  store i64 %403, i64* %RDI, align 8, !tbaa !2428
  %404 = add i64 %400, -1238
  %405 = add i64 %400, 12
  %406 = load i64, i64* %RSP, align 8, !tbaa !2428
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %RSP, align 8, !tbaa !2428
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  %409 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %397)
  %410 = load i64, i64* %RBP, align 8
  %411 = add i64 %410, -72
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %411 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  store i64 %415, i64* %RDI, align 8, !tbaa !2428
  %416 = add i64 %412, -1250
  %417 = add i64 %412, 12
  %418 = load i64, i64* %RSP, align 8, !tbaa !2428
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %417, i64* %420, align 8
  store i64 %419, i64* %RSP, align 8, !tbaa !2428
  store i64 %416, i64* %PC, align 8, !tbaa !2428
  %421 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %409)
  %422 = load i64, i64* %RBP, align 8
  %423 = add i64 %422, -80
  %424 = load i64, i64* %PC, align 8
  %425 = add i64 %424, 4
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %423 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  store i64 %427, i64* %RDI, align 8, !tbaa !2428
  %428 = add i64 %424, -1262
  %429 = add i64 %424, 12
  %430 = load i64, i64* %RSP, align 8, !tbaa !2428
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %RSP, align 8, !tbaa !2428
  store i64 %428, i64* %PC, align 8, !tbaa !2428
  %433 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %421)
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -88
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  store i64 %439, i64* %RDI, align 8, !tbaa !2428
  %440 = add i64 %436, -1274
  %441 = add i64 %436, 12
  %442 = load i64, i64* %RSP, align 8, !tbaa !2428
  %443 = add i64 %442, -8
  %444 = inttoptr i64 %443 to i64*
  store i64 %441, i64* %444, align 8
  store i64 %443, i64* %RSP, align 8, !tbaa !2428
  store i64 %440, i64* %PC, align 8, !tbaa !2428
  %445 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %433)
  %446 = load i64, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %447 = load i64, i64* %RSP, align 8
  %448 = add i64 %447, 96
  store i64 %448, i64* %RSP, align 8, !tbaa !2428
  %449 = icmp ugt i64 %447, -97
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %14, align 1, !tbaa !2432
  %451 = trunc i64 %448 to i32
  %452 = and i32 %451, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452) #12
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %21, align 1, !tbaa !2446
  %457 = xor i64 %448, %447
  %458 = lshr i64 %457, 4
  %459 = trunc i64 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %26, align 1, !tbaa !2447
  %461 = icmp eq i64 %448, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %29, align 1, !tbaa !2448
  %463 = lshr i64 %448, 63
  %464 = trunc i64 %463 to i8
  store i8 %464, i8* %32, align 1, !tbaa !2449
  %465 = lshr i64 %447, 63
  %466 = xor i64 %463, %465
  %467 = add nuw nsw i64 %466, %463
  %468 = icmp eq i64 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1, !tbaa !2450
  %470 = add i64 %446, 7
  store i64 %470, i64* %PC, align 8
  %471 = add i64 %447, 104
  %472 = inttoptr i64 %448 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %RBP, align 8, !tbaa !2428
  store i64 %471, i64* %RSP, align 8, !tbaa !2428
  %474 = add i64 %446, 8
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %471 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %PC, align 8, !tbaa !2428
  %477 = add i64 %447, 112
  store i64 %477, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %445
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401460_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401460:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %15 = load i64, i64* %14, align 1
  %16 = inttoptr i64 %12 to i64*
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %EDI, align 4
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -24
  %25 = load i64, i64* %RSI, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %30 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 1, !tbaa !2452
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %36 = bitcast i64* %35 to double*
  store double 0.000000e+00, double* %36, align 1, !tbaa !2452
  %37 = add i64 %29, -32
  %38 = add i64 %31, 10
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i64*
  store i64 %34, i64* %39, align 8
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i8*
  %45 = load i8, i8* %44, align 1
  %46 = and i8 %45, 15
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %53 = or i8 %46, 48
  %54 = zext i8 %53 to i32
  %55 = zext i8 %53 to i64
  store i64 %55, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %56 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  store i8 %59, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %53, i8* %AL, align 1, !tbaa !2454
  %60 = add i64 %40, -24
  %61 = add i64 %42, 17
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RSI, align 8, !tbaa !2428
  %64 = add i64 %40, -12
  %65 = add i64 %42, 21
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %RCX, align 8, !tbaa !2428
  %69 = add i64 %63, %68
  %70 = add i64 %42, 24
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %69 to i8*
  store i8 %53, i8* %71, align 1
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -32
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i8*
  %77 = load i8, i8* %76, align 1
  %78 = and i8 %77, 15
  %79 = or i8 %78, 48
  %80 = zext i8 %79 to i32
  %81 = zext i8 %79 to i64
  store i64 %81, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %82 = tail call i32 @llvm.ctpop.i32(i32 %80) #12
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %79, i8* %AL, align 1, !tbaa !2454
  %86 = add i64 %72, -24
  %87 = add i64 %74, 17
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = add i64 %72, -12
  %91 = add i64 %74, 21
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %RSI, align 8, !tbaa !2428
  %95 = add nsw i64 %94, 1
  %96 = add i64 %95, %89
  %97 = add i64 %74, 25
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i8*
  store i8 %79, i8* %98, align 1
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -31
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %100 to i8*
  %104 = load i8, i8* %103, align 1
  %105 = and i8 %104, 15
  %106 = or i8 %105, 48
  %107 = zext i8 %106 to i32
  %108 = zext i8 %106 to i64
  store i64 %108, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %109 = tail call i32 @llvm.ctpop.i32(i32 %107) #12
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %106, i8* %AL, align 1, !tbaa !2454
  %113 = add i64 %99, -24
  %114 = add i64 %101, 17
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RCX, align 8, !tbaa !2428
  %117 = add i64 %99, -12
  %118 = add i64 %101, 21
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %RSI, align 8, !tbaa !2428
  %122 = add nsw i64 %121, 2
  %123 = add i64 %122, %116
  %124 = add i64 %101, 25
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i8*
  store i8 %106, i8* %125, align 1
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -31
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i8*
  %131 = load i8, i8* %130, align 1
  %132 = and i8 %131, 15
  %133 = or i8 %132, 48
  %134 = zext i8 %133 to i32
  %135 = zext i8 %133 to i64
  store i64 %135, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %136 = tail call i32 @llvm.ctpop.i32(i32 %134) #12
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %133, i8* %AL, align 1, !tbaa !2454
  %140 = add i64 %126, -24
  %141 = add i64 %128, 17
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RCX, align 8, !tbaa !2428
  %144 = add i64 %126, -12
  %145 = add i64 %128, 21
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %RSI, align 8, !tbaa !2428
  %149 = add nsw i64 %148, 3
  %150 = add i64 %149, %143
  %151 = add i64 %128, 25
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i8*
  store i8 %133, i8* %152, align 1
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -30
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %154 to i8*
  %158 = load i8, i8* %157, align 1
  %159 = and i8 %158, 15
  %160 = or i8 %159, 48
  %161 = zext i8 %160 to i32
  %162 = zext i8 %160 to i64
  store i64 %162, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %163 = tail call i32 @llvm.ctpop.i32(i32 %161) #12
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %160, i8* %AL, align 1, !tbaa !2454
  %167 = add i64 %153, -24
  %168 = add i64 %155, 17
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = add i64 %153, -12
  %172 = add i64 %155, 21
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %RSI, align 8, !tbaa !2428
  %176 = add nsw i64 %175, 4
  %177 = add i64 %176, %170
  %178 = add i64 %155, 25
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i8*
  store i8 %160, i8* %179, align 1
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -30
  %182 = load i64, i64* %PC, align 8
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %181 to i8*
  %185 = load i8, i8* %184, align 1
  %186 = and i8 %185, 15
  %187 = or i8 %186, 48
  %188 = zext i8 %187 to i32
  %189 = zext i8 %187 to i64
  store i64 %189, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %190 = tail call i32 @llvm.ctpop.i32(i32 %188) #12
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %187, i8* %AL, align 1, !tbaa !2454
  %194 = add i64 %180, -24
  %195 = add i64 %182, 17
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX, align 8, !tbaa !2428
  %198 = add i64 %180, -12
  %199 = add i64 %182, 21
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %RSI, align 8, !tbaa !2428
  %203 = add nsw i64 %202, 5
  %204 = add i64 %203, %197
  %205 = add i64 %182, 25
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i8*
  store i8 %187, i8* %206, align 1
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -29
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 4
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %208 to i8*
  %212 = load i8, i8* %211, align 1
  %213 = and i8 %212, 15
  %214 = or i8 %213, 48
  %215 = zext i8 %214 to i32
  %216 = zext i8 %214 to i64
  store i64 %216, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %217 = tail call i32 @llvm.ctpop.i32(i32 %215) #12
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %214, i8* %AL, align 1, !tbaa !2454
  %221 = add i64 %207, -24
  %222 = add i64 %209, 17
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RCX, align 8, !tbaa !2428
  %225 = add i64 %207, -12
  %226 = add i64 %209, 21
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RSI, align 8, !tbaa !2428
  %230 = add nsw i64 %229, 6
  %231 = add i64 %230, %224
  %232 = add i64 %209, 25
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i8*
  store i8 %214, i8* %233, align 1
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -29
  %236 = load i64, i64* %PC, align 8
  %237 = add i64 %236, 4
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %235 to i8*
  %239 = load i8, i8* %238, align 1
  %240 = and i8 %239, 15
  %241 = or i8 %240, 48
  %242 = zext i8 %241 to i32
  %243 = zext i8 %241 to i64
  store i64 %243, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %244 = tail call i32 @llvm.ctpop.i32(i32 %242) #12
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %241, i8* %AL, align 1, !tbaa !2454
  %248 = add i64 %234, -24
  %249 = add i64 %236, 17
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RCX, align 8, !tbaa !2428
  %252 = add i64 %234, -12
  %253 = add i64 %236, 21
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %RSI, align 8, !tbaa !2428
  %257 = add nsw i64 %256, 7
  %258 = add i64 %257, %251
  %259 = add i64 %236, 25
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i8*
  store i8 %241, i8* %260, align 1
  %261 = load i64, i64* %RBP, align 8
  %262 = add i64 %261, -28
  %263 = load i64, i64* %PC, align 8
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %262 to i8*
  %266 = load i8, i8* %265, align 1
  %267 = and i8 %266, 15
  %268 = or i8 %267, 48
  %269 = zext i8 %268 to i32
  %270 = zext i8 %268 to i64
  store i64 %270, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %271 = tail call i32 @llvm.ctpop.i32(i32 %269) #12
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %268, i8* %AL, align 1, !tbaa !2454
  %275 = add i64 %261, -24
  %276 = add i64 %263, 17
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RCX, align 8, !tbaa !2428
  %279 = add i64 %261, -12
  %280 = add i64 %263, 21
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RSI, align 8, !tbaa !2428
  %284 = add nsw i64 %283, 8
  %285 = add i64 %284, %278
  %286 = add i64 %263, 25
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i8*
  store i8 %268, i8* %287, align 1
  %288 = load i64, i64* %RBP, align 8
  %289 = add i64 %288, -28
  %290 = load i64, i64* %PC, align 8
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %289 to i8*
  %293 = load i8, i8* %292, align 1
  %294 = and i8 %293, 15
  %295 = or i8 %294, 48
  %296 = zext i8 %295 to i32
  %297 = zext i8 %295 to i64
  store i64 %297, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %298 = tail call i32 @llvm.ctpop.i32(i32 %296) #12
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %295, i8* %AL, align 1, !tbaa !2454
  %302 = add i64 %288, -24
  %303 = add i64 %290, 17
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RCX, align 8, !tbaa !2428
  %306 = add i64 %288, -12
  %307 = add i64 %290, 21
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RSI, align 8, !tbaa !2428
  %311 = add nsw i64 %310, 9
  %312 = add i64 %311, %305
  %313 = add i64 %290, 25
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i8*
  store i8 %295, i8* %314, align 1
  %315 = load i64, i64* %RBP, align 8
  %316 = add i64 %315, -27
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, 4
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %316 to i8*
  %320 = load i8, i8* %319, align 1
  %321 = and i8 %320, 15
  %322 = or i8 %321, 48
  %323 = zext i8 %322 to i32
  %324 = zext i8 %322 to i64
  store i64 %324, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %325 = tail call i32 @llvm.ctpop.i32(i32 %323) #12
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %322, i8* %AL, align 1, !tbaa !2454
  %329 = add i64 %315, -24
  %330 = add i64 %317, 17
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RCX, align 8, !tbaa !2428
  %333 = add i64 %315, -12
  %334 = add i64 %317, 21
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %RSI, align 8, !tbaa !2428
  %338 = add nsw i64 %337, 10
  %339 = add i64 %338, %332
  %340 = add i64 %317, 25
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i8*
  store i8 %322, i8* %341, align 1
  %342 = load i64, i64* %RBP, align 8
  %343 = add i64 %342, -27
  %344 = load i64, i64* %PC, align 8
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %343 to i8*
  %347 = load i8, i8* %346, align 1
  %348 = and i8 %347, 15
  %349 = or i8 %348, 48
  %350 = zext i8 %349 to i32
  %351 = zext i8 %349 to i64
  store i64 %351, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %352 = tail call i32 @llvm.ctpop.i32(i32 %350) #12
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %349, i8* %AL, align 1, !tbaa !2454
  %356 = add i64 %342, -24
  %357 = add i64 %344, 17
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = add i64 %342, -12
  %361 = add i64 %344, 21
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RSI, align 8, !tbaa !2428
  %365 = add nsw i64 %364, 11
  %366 = add i64 %365, %359
  %367 = add i64 %344, 25
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i8*
  store i8 %349, i8* %368, align 1
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -26
  %371 = load i64, i64* %PC, align 8
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %370 to i8*
  %374 = load i8, i8* %373, align 1
  %375 = and i8 %374, 15
  %376 = or i8 %375, 48
  %377 = zext i8 %376 to i32
  %378 = zext i8 %376 to i64
  store i64 %378, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %379 = tail call i32 @llvm.ctpop.i32(i32 %377) #12
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %376, i8* %AL, align 1, !tbaa !2454
  %383 = add i64 %369, -24
  %384 = add i64 %371, 17
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to i64*
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = add i64 %369, -12
  %388 = add i64 %371, 21
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %RSI, align 8, !tbaa !2428
  %392 = add nsw i64 %391, 12
  %393 = add i64 %392, %386
  %394 = add i64 %371, 25
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i8*
  store i8 %376, i8* %395, align 1
  %396 = load i64, i64* %RBP, align 8
  %397 = add i64 %396, -26
  %398 = load i64, i64* %PC, align 8
  %399 = add i64 %398, 4
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %397 to i8*
  %401 = load i8, i8* %400, align 1
  %402 = and i8 %401, 15
  %403 = or i8 %402, 48
  %404 = zext i8 %403 to i32
  %405 = zext i8 %403 to i64
  store i64 %405, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %406 = tail call i32 @llvm.ctpop.i32(i32 %404) #12
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %403, i8* %AL, align 1, !tbaa !2454
  %410 = add i64 %396, -24
  %411 = add i64 %398, 17
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = add i64 %396, -12
  %415 = add i64 %398, 21
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %RSI, align 8, !tbaa !2428
  %419 = add nsw i64 %418, 13
  %420 = add i64 %419, %413
  %421 = add i64 %398, 25
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i8*
  store i8 %403, i8* %422, align 1
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -25
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %424 to i8*
  %428 = load i8, i8* %427, align 1
  %429 = and i8 %428, 15
  %430 = or i8 %429, 48
  %431 = zext i8 %430 to i32
  %432 = zext i8 %430 to i64
  store i64 %432, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %433 = tail call i32 @llvm.ctpop.i32(i32 %431) #12
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %430, i8* %AL, align 1, !tbaa !2454
  %437 = add i64 %423, -24
  %438 = add i64 %425, 17
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RCX, align 8, !tbaa !2428
  %441 = add i64 %423, -12
  %442 = add i64 %425, 21
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %RSI, align 8, !tbaa !2428
  %446 = add nsw i64 %445, 14
  %447 = add i64 %446, %440
  %448 = add i64 %425, 25
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i8*
  store i8 %430, i8* %449, align 1
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -25
  %452 = load i64, i64* %PC, align 8
  %453 = add i64 %452, 4
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %451 to i8*
  %455 = load i8, i8* %454, align 1
  %456 = and i8 %455, 15
  %457 = or i8 %456, 48
  %458 = zext i8 %457 to i32
  %459 = zext i8 %457 to i64
  store i64 %459, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %47, align 1, !tbaa !2432
  %460 = tail call i32 @llvm.ctpop.i32(i32 %458) #12
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %52, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %51, align 1, !tbaa !2450
  store i8 %457, i8* %AL, align 1, !tbaa !2454
  %464 = add i64 %450, -24
  %465 = add i64 %452, 17
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RCX, align 8, !tbaa !2428
  %468 = add i64 %450, -12
  %469 = add i64 %452, 21
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RSI, align 8, !tbaa !2428
  %473 = add nsw i64 %472, 15
  %474 = add i64 %473, %467
  %475 = add i64 %452, 25
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %474 to i8*
  store i8 %457, i8* %476, align 1
  %477 = load i64, i64* %PC, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %PC, align 8
  %479 = load i64, i64* %7, align 8, !tbaa !2428
  %480 = add i64 %479, 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RBP, align 8, !tbaa !2428
  store i64 %480, i64* %7, align 8, !tbaa !2428
  %483 = add i64 %477, 2
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %480 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %PC, align 8, !tbaa !2428
  %486 = add i64 %479, 16
  store i64 %486, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4007f0:
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
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -129
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400770_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC, align 8
  %17 = load i64, i64* %5, align 8, !tbaa !2428
  %18 = add i64 %17, 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RBP, align 8, !tbaa !2428
  store i64 %18, i64* %5, align 8, !tbaa !2428
  %21 = add i64 %15, 2
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %17, 16
  store i64 %24, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400760:
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
  %13 = tail call %struct.Memory* @sub_4006f0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b10_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400b10:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
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
  %14 = add i64 %10, 8
  %15 = add i64 %13, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %RAX, align 8, !tbaa !2428
  %18 = add i64 %10, -12
  %19 = load i32, i32* %EDI, align 4
  %20 = add i64 %13, 10
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -8
  %24 = load i32, i32* %ESI, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -12
  %30 = load i32, i32* %EDX, align 4
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 3
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %33, align 4
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -24
  %36 = load i64, i64* %RCX, align 8
  %37 = load i64, i64* %PC, align 8
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %R8, align 8
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -40
  %48 = load i64, i64* %R9, align 8
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -48
  %54 = load i64, i64* %RAX, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -52
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 7
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %69 = bitcast [32 x %union.VectorReg]* %6 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b38

block_400c3d:                                     ; preds = %block_400b7e
  %70 = add i64 %469, 8
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %470 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = icmp eq i32 %72, -1
  %76 = icmp eq i32 %73, 0
  %77 = or i1 %75, %76
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %63, align 1, !tbaa !2432
  %79 = and i32 %73, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #12
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %64, align 1, !tbaa !2446
  %84 = xor i32 %73, %72
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %65, align 1, !tbaa !2447
  %88 = zext i1 %76 to i8
  store i8 %88, i8* %66, align 1, !tbaa !2448
  %89 = lshr i32 %73, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %67, align 1, !tbaa !2449
  %91 = lshr i32 %72, 31
  %92 = xor i32 %89, %91
  %93 = add nuw nsw i32 %92, %89
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %68, align 1, !tbaa !2450
  %96 = add i64 %469, 14
  store i64 %96, i64* %PC, align 8
  store i32 %73, i32* %71, align 4
  %97 = load i64, i64* %PC, align 8
  %98 = add i64 %97, -224
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  br label %block_400b6b

block_400b38:                                     ; preds = %block_400b44, %block_400b10
  %99 = phi i64 [ %519, %block_400b44 ], [ %.pre, %block_400b10 ]
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -52
  %102 = add i64 %99, 3
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  %106 = add i64 %100, -4
  %107 = add i64 %99, 6
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %104, %109
  %111 = icmp ult i32 %104, %109
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %63, align 1, !tbaa !2432
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #12
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %64, align 1, !tbaa !2446
  %118 = xor i32 %109, %104
  %119 = xor i32 %118, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %65, align 1, !tbaa !2447
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %66, align 1, !tbaa !2448
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %67, align 1, !tbaa !2449
  %127 = lshr i32 %104, 31
  %128 = lshr i32 %109, 31
  %129 = xor i32 %128, %127
  %130 = xor i32 %125, %127
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %68, align 1, !tbaa !2450
  %134 = icmp ne i8 %126, 0
  %135 = xor i1 %134, %132
  %.v17 = select i1 %135, i64 12, i64 44
  %136 = add i64 %99, %.v17
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  br i1 %135, label %block_400b44, label %block_400b64

block_400b77:                                     ; preds = %block_400b6b
  %137 = add i64 %521, -56
  %138 = add i64 %557, 7
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 0, i32* %139, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400b7e

block_400c50:                                     ; preds = %block_400b6b
  %140 = add i64 %557, 1
  store i64 %140, i64* %PC, align 8
  %141 = load i64, i64* %9, align 8, !tbaa !2428
  %142 = add i64 %141, 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RBP, align 8, !tbaa !2428
  store i64 %142, i64* %9, align 8, !tbaa !2428
  %145 = add i64 %557, 2
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %142 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  %148 = add i64 %141, 16
  store i64 %148, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400b8a:                                     ; preds = %block_400b7e
  %149 = add i64 %469, 5
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %470 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sitofp i32 %151 to double
  store double %152, double* %69, align 1, !tbaa !2452
  %153 = add i64 %469, 8
  store i64 %153, i64* %PC, align 8
  %154 = load i32, i32* %436, align 4
  %155 = add i32 %154, 1
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RAX, align 8, !tbaa !2428
  %157 = icmp eq i32 %154, -1
  %158 = icmp eq i32 %155, 0
  %159 = or i1 %157, %158
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %63, align 1, !tbaa !2432
  %161 = and i32 %155, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #12
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %64, align 1, !tbaa !2446
  %166 = xor i32 %155, %154
  %167 = lshr i32 %166, 4
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %65, align 1, !tbaa !2447
  %170 = zext i1 %158 to i8
  store i8 %170, i8* %66, align 1, !tbaa !2448
  %171 = lshr i32 %155, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %67, align 1, !tbaa !2449
  %173 = lshr i32 %154, 31
  %174 = xor i32 %171, %173
  %175 = add nuw nsw i32 %174, %171
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %68, align 1, !tbaa !2450
  %178 = sitofp i32 %155 to double
  store double %178, double* %473, align 1, !tbaa !2452
  %179 = fmul double %178, %152
  store double %179, double* %69, align 1, !tbaa !2452
  %180 = add i64 %433, -8
  %181 = add i64 %469, 24
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = sitofp i32 %183 to double
  store double %184, double* %473, align 1, !tbaa !2452
  %185 = fdiv double %179, %184
  store double %185, double* %69, align 1, !tbaa !2452
  %186 = add i64 %433, -24
  %187 = add i64 %469, 32
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = add i64 %469, 36
  store i64 %190, i64* %PC, align 8
  %191 = load i32, i32* %150, align 4
  %192 = sext i32 %191 to i64
  %193 = mul nsw i64 %192, 8000
  store i64 %193, i64* %RDX, align 8, !tbaa !2428
  %194 = lshr i64 %193, 63
  %195 = add i64 %193, %189
  store i64 %195, i64* %RCX, align 8, !tbaa !2428
  %196 = icmp ult i64 %195, %189
  %197 = icmp ult i64 %195, %193
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %63, align 1, !tbaa !2432
  %200 = trunc i64 %195 to i32
  %201 = and i32 %200, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #12
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %64, align 1, !tbaa !2446
  %206 = xor i64 %189, %195
  %207 = lshr i64 %206, 4
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %65, align 1, !tbaa !2447
  %210 = icmp eq i64 %195, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %66, align 1, !tbaa !2448
  %212 = lshr i64 %195, 63
  %213 = trunc i64 %212 to i8
  store i8 %213, i8* %67, align 1, !tbaa !2449
  %214 = lshr i64 %189, 63
  %215 = xor i64 %212, %214
  %216 = xor i64 %212, %194
  %217 = add nuw nsw i64 %215, %216
  %218 = icmp eq i64 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %68, align 1, !tbaa !2450
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -56
  %222 = add i64 %469, 50
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RDX, align 8, !tbaa !2428
  %226 = shl nsw i64 %225, 3
  %227 = add i64 %226, %195
  %228 = add i64 %469, 55
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to double*
  store double %185, double* %229, align 8
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -52
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, 5
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = sitofp i32 %235 to double
  store double %236, double* %69, align 1, !tbaa !2452
  %237 = add i64 %230, -56
  %238 = add i64 %232, 8
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, 2
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = icmp ugt i32 %240, -3
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %63, align 1, !tbaa !2432
  %245 = and i32 %241, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #12
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %64, align 1, !tbaa !2446
  %250 = xor i32 %241, %240
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %65, align 1, !tbaa !2447
  %254 = icmp eq i32 %241, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %66, align 1, !tbaa !2448
  %256 = lshr i32 %241, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %67, align 1, !tbaa !2449
  %258 = lshr i32 %240, 31
  %259 = xor i32 %256, %258
  %260 = add nuw nsw i32 %259, %256
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %68, align 1, !tbaa !2450
  %263 = sitofp i32 %241 to double
  store double %263, double* %473, align 1, !tbaa !2452
  %264 = fmul double %263, %236
  store double %264, double* %69, align 1, !tbaa !2452
  %265 = add i64 %230, -12
  %266 = add i64 %232, 24
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sitofp i32 %268 to double
  store double %269, double* %473, align 1, !tbaa !2452
  %270 = fdiv double %264, %269
  store double %270, double* %69, align 1, !tbaa !2452
  %271 = add i64 %230, -32
  %272 = add i64 %232, 32
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = add i64 %232, 36
  store i64 %275, i64* %PC, align 8
  %276 = load i32, i32* %234, align 4
  %277 = sext i32 %276 to i64
  %278 = mul nsw i64 %277, 8000
  store i64 %278, i64* %RDX, align 8, !tbaa !2428
  %279 = lshr i64 %278, 63
  %280 = add i64 %278, %274
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = icmp ult i64 %280, %274
  %282 = icmp ult i64 %280, %278
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %63, align 1, !tbaa !2432
  %285 = trunc i64 %280 to i32
  %286 = and i32 %285, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286) #12
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %64, align 1, !tbaa !2446
  %291 = xor i64 %274, %280
  %292 = lshr i64 %291, 4
  %293 = trunc i64 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %65, align 1, !tbaa !2447
  %295 = icmp eq i64 %280, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %66, align 1, !tbaa !2448
  %297 = lshr i64 %280, 63
  %298 = trunc i64 %297 to i8
  store i8 %298, i8* %67, align 1, !tbaa !2449
  %299 = lshr i64 %274, 63
  %300 = xor i64 %297, %299
  %301 = xor i64 %297, %279
  %302 = add nuw nsw i64 %300, %301
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %68, align 1, !tbaa !2450
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -56
  %307 = add i64 %232, 50
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RDX, align 8, !tbaa !2428
  %311 = shl nsw i64 %310, 3
  %312 = add i64 %311, %280
  %313 = add i64 %232, 55
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to double*
  store double %270, double* %314, align 8
  %315 = load i64, i64* %RBP, align 8
  %316 = add i64 %315, -52
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = sitofp i32 %320 to double
  store double %321, double* %69, align 1, !tbaa !2452
  %322 = add i64 %315, -56
  %323 = add i64 %317, 8
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, 3
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = icmp ugt i32 %325, -4
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %63, align 1, !tbaa !2432
  %330 = and i32 %326, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #12
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %64, align 1, !tbaa !2446
  %335 = xor i32 %326, %325
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %65, align 1, !tbaa !2447
  %339 = icmp eq i32 %326, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %66, align 1, !tbaa !2448
  %341 = lshr i32 %326, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %67, align 1, !tbaa !2449
  %343 = lshr i32 %325, 31
  %344 = xor i32 %341, %343
  %345 = add nuw nsw i32 %344, %341
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %68, align 1, !tbaa !2450
  %348 = sitofp i32 %326 to double
  store double %348, double* %473, align 1, !tbaa !2452
  %349 = fmul double %348, %321
  store double %349, double* %69, align 1, !tbaa !2452
  %350 = add i64 %315, -8
  %351 = add i64 %317, 24
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sitofp i32 %353 to double
  store double %354, double* %473, align 1, !tbaa !2452
  %355 = fdiv double %349, %354
  store double %355, double* %69, align 1, !tbaa !2452
  %356 = add i64 %315, -40
  %357 = add i64 %317, 32
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = add i64 %317, 36
  store i64 %360, i64* %PC, align 8
  %361 = load i32, i32* %319, align 4
  %362 = sext i32 %361 to i64
  %363 = mul nsw i64 %362, 8000
  store i64 %363, i64* %RDX, align 8, !tbaa !2428
  %364 = lshr i64 %363, 63
  %365 = add i64 %363, %359
  store i64 %365, i64* %RCX, align 8, !tbaa !2428
  %366 = icmp ult i64 %365, %359
  %367 = icmp ult i64 %365, %363
  %368 = or i1 %366, %367
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %63, align 1, !tbaa !2432
  %370 = trunc i64 %365 to i32
  %371 = and i32 %370, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371) #12
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %64, align 1, !tbaa !2446
  %376 = xor i64 %359, %365
  %377 = lshr i64 %376, 4
  %378 = trunc i64 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %65, align 1, !tbaa !2447
  %380 = icmp eq i64 %365, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %66, align 1, !tbaa !2448
  %382 = lshr i64 %365, 63
  %383 = trunc i64 %382 to i8
  store i8 %383, i8* %67, align 1, !tbaa !2449
  %384 = lshr i64 %359, 63
  %385 = xor i64 %382, %384
  %386 = xor i64 %382, %364
  %387 = add nuw nsw i64 %385, %386
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %68, align 1, !tbaa !2450
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -56
  %392 = add i64 %317, 50
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RDX, align 8, !tbaa !2428
  %396 = shl nsw i64 %395, 3
  %397 = add i64 %396, %365
  %398 = add i64 %317, 55
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to double*
  store double %355, double* %399, align 8
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -56
  %402 = load i64, i64* %PC, align 8
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, 1
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX, align 8, !tbaa !2428
  %408 = icmp eq i32 %405, -1
  %409 = icmp eq i32 %406, 0
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %63, align 1, !tbaa !2432
  %412 = and i32 %406, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412) #12
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %64, align 1, !tbaa !2446
  %417 = xor i32 %406, %405
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %65, align 1, !tbaa !2447
  %421 = zext i1 %409 to i8
  store i8 %421, i8* %66, align 1, !tbaa !2448
  %422 = lshr i32 %406, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %67, align 1, !tbaa !2449
  %424 = lshr i32 %405, 31
  %425 = xor i32 %422, %424
  %426 = add nuw nsw i32 %425, %422
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %68, align 1, !tbaa !2450
  %429 = add i64 %402, 9
  store i64 %429, i64* %PC, align 8
  store i32 %406, i32* %404, align 4
  %430 = load i64, i64* %PC, align 8
  %431 = add i64 %430, -186
  store i64 %431, i64* %PC, align 8, !tbaa !2428
  br label %block_400b7e

block_400b7e:                                     ; preds = %block_400b8a, %block_400b77
  %432 = phi i64 [ %431, %block_400b8a ], [ %.pre16, %block_400b77 ]
  %433 = load i64, i64* %RBP, align 8
  %434 = add i64 %433, -56
  %435 = add i64 %432, 3
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX, align 8, !tbaa !2428
  %439 = add i64 %433, -12
  %440 = add i64 %432, 6
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = sub i32 %437, %442
  %444 = icmp ult i32 %437, %442
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %63, align 1, !tbaa !2432
  %446 = and i32 %443, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446) #12
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %64, align 1, !tbaa !2446
  %451 = xor i32 %442, %437
  %452 = xor i32 %451, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %65, align 1, !tbaa !2447
  %456 = icmp eq i32 %443, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %66, align 1, !tbaa !2448
  %458 = lshr i32 %443, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %67, align 1, !tbaa !2449
  %460 = lshr i32 %437, 31
  %461 = lshr i32 %442, 31
  %462 = xor i32 %461, %460
  %463 = xor i32 %458, %460
  %464 = add nuw nsw i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %68, align 1, !tbaa !2450
  %467 = icmp ne i8 %459, 0
  %468 = xor i1 %467, %465
  %.v = select i1 %468, i64 12, i64 191
  %469 = add i64 %432, %.v
  store i64 %469, i64* %PC, align 8, !tbaa !2428
  %470 = add i64 %433, -52
  br i1 %468, label %block_400b8a, label %block_400c3d

block_400b64:                                     ; preds = %block_400b38
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %472 = add i64 %136, 7
  store i64 %472, i64* %PC, align 8
  store i32 0, i32* %103, align 4
  %473 = bitcast %union.VectorReg* %471 to double*
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400b6b

block_400b44:                                     ; preds = %block_400b38
  %474 = add i64 %136, 5
  store i64 %474, i64* %PC, align 8
  %475 = load i32, i32* %103, align 4
  %476 = sitofp i32 %475 to double
  store double %476, double* %69, align 1, !tbaa !2452
  %477 = add i64 %100, -48
  %478 = add i64 %136, 9
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX, align 8, !tbaa !2428
  %481 = add i64 %136, 13
  store i64 %481, i64* %PC, align 8
  %482 = load i32, i32* %103, align 4
  %483 = sext i32 %482 to i64
  store i64 %483, i64* %RCX, align 8, !tbaa !2428
  %484 = shl nsw i64 %483, 3
  %485 = add i64 %484, %480
  %486 = add i64 %136, 18
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to double*
  store double %476, double* %487, align 8
  %488 = load i64, i64* %RBP, align 8
  %489 = add i64 %488, -52
  %490 = load i64, i64* %PC, align 8
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC, align 8
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, 1
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX, align 8, !tbaa !2428
  %496 = icmp eq i32 %493, -1
  %497 = icmp eq i32 %494, 0
  %498 = or i1 %496, %497
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %63, align 1, !tbaa !2432
  %500 = and i32 %494, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500) #12
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %64, align 1, !tbaa !2446
  %505 = xor i32 %494, %493
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %65, align 1, !tbaa !2447
  %509 = zext i1 %497 to i8
  store i8 %509, i8* %66, align 1, !tbaa !2448
  %510 = lshr i32 %494, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %67, align 1, !tbaa !2449
  %512 = lshr i32 %493, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %510
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %68, align 1, !tbaa !2450
  %517 = add i64 %490, 9
  store i64 %517, i64* %PC, align 8
  store i32 %494, i32* %492, align 4
  %518 = load i64, i64* %PC, align 8
  %519 = add i64 %518, -39
  store i64 %519, i64* %PC, align 8, !tbaa !2428
  br label %block_400b38

block_400b6b:                                     ; preds = %block_400b64, %block_400c3d
  %520 = phi i64 [ %.pre15, %block_400b64 ], [ %98, %block_400c3d ]
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -52
  %523 = add i64 %520, 3
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = add i64 %521, -8
  %528 = add i64 %520, 6
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sub i32 %525, %530
  %532 = icmp ult i32 %525, %530
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %63, align 1, !tbaa !2432
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534) #12
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %64, align 1, !tbaa !2446
  %539 = xor i32 %530, %525
  %540 = xor i32 %539, %531
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %65, align 1, !tbaa !2447
  %544 = icmp eq i32 %531, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %66, align 1, !tbaa !2448
  %546 = lshr i32 %531, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %67, align 1, !tbaa !2449
  %548 = lshr i32 %525, 31
  %549 = lshr i32 %530, 31
  %550 = xor i32 %549, %548
  %551 = xor i32 %546, %548
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %68, align 1, !tbaa !2450
  %555 = icmp ne i8 %547, 0
  %556 = xor i1 %555, %553
  %.v18 = select i1 %556, i64 12, i64 229
  %557 = add i64 %520, %.v18
  store i64 %557, i64* %PC, align 8, !tbaa !2428
  br i1 %556, label %block_400b77, label %block_400c50
}

; Function Attrs: noinline
define %struct.Memory* @sub_400730___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400730:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #12
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
  br i1 %12, label %block_400739, label %block_400750

block_400750:                                     ; preds = %block_400730
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

block_400739:                                     ; preds = %block_400730
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
  %36 = tail call %struct.Memory* @sub_4006c0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4006b0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4006b0:
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

; Function Attrs: noinline
define %struct.Memory* @sub_400800_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400800:
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
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007f0_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_400820_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
  %22 = load i64, i64* %PC, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %24 = load i64, i64* %23, align 1
  store i64 %24, i64* bitcast (%polybench_t_start_type* @polybench_t_start to i64*), align 8
  %25 = add i64 %22, 10
  store i64 %25, i64* %PC, align 8
  %26 = load i64, i64* %5, align 8, !tbaa !2428
  %27 = add i64 %26, 8
  %28 = inttoptr i64 %26 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2428
  store i64 %27, i64* %5, align 8, !tbaa !2428
  %30 = add i64 %22, 11
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %PC, align 8, !tbaa !2428
  %33 = add i64 %26, 16
  store i64 %33, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %21
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401680___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401680:
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
define %struct.Memory* @sub_400f90_kernel_fdtd_2d_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400f90:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = add i64 %15, 7
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %16 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %20 = add i64 %12, -12
  %21 = load i32, i32* %EDI, align 4
  %22 = add i64 %15, 10
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -8
  %26 = load i32, i32* %ESI, align 4
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -12
  %32 = load i32, i32* %EDX, align 4
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %RBP, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %RCX, align 8
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -32
  %44 = load i64, i64* %R8, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -40
  %50 = load i64, i64* %R9, align 8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -48
  %56 = load i64, i64* %RAX, align 8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -52
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %73 = bitcast i64* %72 to double*
  %74 = bitcast [32 x %union.VectorReg]* %6 to double*
  %75 = bitcast %union.VectorReg* %7 to double*
  %76 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %78 = bitcast i64* %77 to double*
  %79 = bitcast %union.VectorReg* %8 to double*
  %80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400fb8

block_40117c:                                     ; preds = %block_4010e1
  %83 = add i64 %114, -56
  %84 = add i64 %150, 8
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = icmp eq i32 %86, -1
  %90 = icmp eq i32 %87, 0
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %65, align 1, !tbaa !2432
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #12
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %66, align 1, !tbaa !2446
  %98 = xor i32 %87, %86
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %67, align 1, !tbaa !2447
  %102 = zext i1 %90 to i8
  store i8 %102, i8* %68, align 1, !tbaa !2448
  %103 = lshr i32 %87, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %69, align 1, !tbaa !2449
  %105 = lshr i32 %86, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %103
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %70, align 1, !tbaa !2450
  %110 = add i64 %150, 14
  store i64 %110, i64* %PC, align 8
  store i32 %87, i32* %85, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, -188
  store i64 %112, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ce

block_4010e1:                                     ; preds = %block_4010ed, %block_4010da
  %113 = phi i64 [ %541, %block_4010ed ], [ %.pre33, %block_4010da ]
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -60
  %116 = add i64 %113, 3
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = add i64 %114, -12
  %121 = add i64 %113, 6
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = sub i32 %118, %123
  %125 = icmp ult i32 %118, %123
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %65, align 1, !tbaa !2432
  %127 = and i32 %124, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127) #12
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %66, align 1, !tbaa !2446
  %132 = xor i32 %123, %118
  %133 = xor i32 %132, %124
  %134 = lshr i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %67, align 1, !tbaa !2447
  %137 = icmp eq i32 %124, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %68, align 1, !tbaa !2448
  %139 = lshr i32 %124, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %69, align 1, !tbaa !2449
  %141 = lshr i32 %118, 31
  %142 = lshr i32 %123, 31
  %143 = xor i32 %142, %141
  %144 = xor i32 %139, %141
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %70, align 1, !tbaa !2450
  %148 = icmp ne i8 %140, 0
  %149 = xor i1 %148, %146
  %.v36 = select i1 %149, i64 12, i64 155
  %150 = add i64 %113, %.v36
  store i64 %150, i64* %PC, align 8, !tbaa !2428
  br i1 %149, label %block_4010ed, label %block_40117c

block_4010da:                                     ; preds = %block_4010ce
  %151 = add i64 %543, -60
  %152 = add i64 %579, 7
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 1, i32* %153, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_4010e1

block_400fcb:                                     ; preds = %block_400fd7, %block_400fc4
  %154 = phi i64 [ %254, %block_400fd7 ], [ %.pre28, %block_400fc4 ]
  %155 = load i64, i64* %RBP, align 8
  %156 = add i64 %155, -60
  %157 = add i64 %154, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = add i64 %155, -12
  %162 = add i64 %154, 6
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %159, %164
  %166 = icmp ult i32 %159, %164
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %65, align 1, !tbaa !2432
  %168 = and i32 %165, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #12
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %66, align 1, !tbaa !2446
  %173 = xor i32 %164, %159
  %174 = xor i32 %173, %165
  %175 = lshr i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %67, align 1, !tbaa !2447
  %178 = icmp eq i32 %165, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %68, align 1, !tbaa !2448
  %180 = lshr i32 %165, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %69, align 1, !tbaa !2449
  %182 = lshr i32 %159, 31
  %183 = lshr i32 %164, 31
  %184 = xor i32 %183, %182
  %185 = xor i32 %180, %182
  %186 = add nuw nsw i32 %185, %184
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %70, align 1, !tbaa !2450
  %189 = icmp ne i8 %181, 0
  %190 = xor i1 %189, %187
  %.v39 = select i1 %190, i64 12, i64 52
  %191 = add i64 %154, %.v39
  store i64 %191, i64* %PC, align 8, !tbaa !2428
  br i1 %190, label %block_400fd7, label %block_400fff

block_400fc4:                                     ; preds = %block_400fb8
  %192 = add i64 %256, -60
  %193 = add i64 %292, 7
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 0, i32* %194, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400fcb

block_400fff:                                     ; preds = %block_400fcb
  %195 = add i64 %155, -56
  %196 = add i64 %191, 7
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 1, i32* %197, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_401006

block_400fd7:                                     ; preds = %block_400fcb
  %198 = add i64 %155, -48
  %199 = add i64 %191, 4
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = add i64 %155, -52
  %203 = add i64 %191, 8
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %RCX, align 8, !tbaa !2428
  %207 = shl nsw i64 %206, 3
  %208 = add i64 %207, %201
  %209 = add i64 %191, 13
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %212 = add i64 %155, -32
  %213 = add i64 %191, 17
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = add i64 %191, 21
  store i64 %216, i64* %PC, align 8
  %217 = load i32, i32* %158, align 4
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = shl nsw i64 %218, 3
  %220 = add i64 %219, %215
  %221 = add i64 %191, 26
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i64*
  store i64 %211, i64* %222, align 8
  %223 = load i64, i64* %RBP, align 8
  %224 = add i64 %223, -60
  %225 = load i64, i64* %PC, align 8
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, 1
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX, align 8, !tbaa !2428
  %231 = icmp eq i32 %228, -1
  %232 = icmp eq i32 %229, 0
  %233 = or i1 %231, %232
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %65, align 1, !tbaa !2432
  %235 = and i32 %229, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235) #12
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %66, align 1, !tbaa !2446
  %240 = xor i32 %229, %228
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %67, align 1, !tbaa !2447
  %244 = zext i1 %232 to i8
  store i8 %244, i8* %68, align 1, !tbaa !2448
  %245 = lshr i32 %229, 31
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %69, align 1, !tbaa !2449
  %247 = lshr i32 %228, 31
  %248 = xor i32 %245, %247
  %249 = add nuw nsw i32 %248, %245
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %70, align 1, !tbaa !2450
  %252 = add i64 %225, 9
  store i64 %252, i64* %PC, align 8
  store i32 %229, i32* %227, align 4
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, -47
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  br label %block_400fcb

block_400fb8:                                     ; preds = %block_40129c, %block_400f90
  %255 = phi i64 [ %612, %block_40129c ], [ %.pre, %block_400f90 ]
  %256 = load i64, i64* %RBP, align 8
  %257 = add i64 %256, -52
  %258 = add i64 %255, 3
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = add i64 %256, -4
  %263 = add i64 %255, 6
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %260, %265
  %267 = icmp ult i32 %260, %265
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %65, align 1, !tbaa !2432
  %269 = and i32 %266, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269) #12
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %66, align 1, !tbaa !2446
  %274 = xor i32 %265, %260
  %275 = xor i32 %274, %266
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %67, align 1, !tbaa !2447
  %279 = icmp eq i32 %266, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %68, align 1, !tbaa !2448
  %281 = lshr i32 %266, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %69, align 1, !tbaa !2449
  %283 = lshr i32 %260, 31
  %284 = lshr i32 %265, 31
  %285 = xor i32 %284, %283
  %286 = xor i32 %281, %283
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %70, align 1, !tbaa !2450
  %290 = icmp ne i8 %282, 0
  %291 = xor i1 %290, %288
  %.v38 = select i1 %291, i64 12, i64 759
  %292 = add i64 %255, %.v38
  store i64 %292, i64* %PC, align 8, !tbaa !2428
  br i1 %291, label %block_400fc4, label %block_4012af

block_4012af:                                     ; preds = %block_400fb8
  %293 = add i64 %292, 1
  store i64 %293, i64* %PC, align 8
  %294 = load i64, i64* %11, align 8, !tbaa !2428
  %295 = add i64 %294, 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RBP, align 8, !tbaa !2428
  store i64 %295, i64* %11, align 8, !tbaa !2428
  %298 = add i64 %292, 2
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %295 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %PC, align 8, !tbaa !2428
  %301 = add i64 %294, 16
  store i64 %301, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4010ed:                                     ; preds = %block_4010e1
  %302 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 16) to i64*), align 16
  store i64 %302, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %303 = add i64 %114, -24
  %304 = add i64 %150, 12
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = add i64 %114, -56
  %308 = add i64 %150, 16
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = mul nsw i64 %311, 8000
  store i64 %312, i64* %RCX, align 8, !tbaa !2428
  %313 = lshr i64 %312, 63
  %314 = add i64 %312, %306
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = icmp ult i64 %314, %306
  %316 = icmp ult i64 %314, %312
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %65, align 1, !tbaa !2432
  %319 = trunc i64 %314 to i32
  %320 = and i32 %319, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320) #12
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %66, align 1, !tbaa !2446
  %325 = xor i64 %306, %314
  %326 = lshr i64 %325, 4
  %327 = trunc i64 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %67, align 1, !tbaa !2447
  %329 = icmp eq i64 %314, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %68, align 1, !tbaa !2448
  %331 = lshr i64 %314, 63
  %332 = trunc i64 %331 to i8
  store i8 %332, i8* %69, align 1, !tbaa !2449
  %333 = lshr i64 %306, 63
  %334 = xor i64 %331, %333
  %335 = xor i64 %331, %313
  %336 = add nuw nsw i64 %334, %335
  %337 = icmp eq i64 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %70, align 1, !tbaa !2450
  %339 = add i64 %150, 30
  store i64 %339, i64* %PC, align 8
  %340 = load i32, i32* %117, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RCX, align 8, !tbaa !2428
  %342 = shl nsw i64 %341, 3
  %343 = add i64 %342, %314
  %344 = add i64 %150, 35
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %347 = add i64 %114, -40
  %348 = add i64 %150, 39
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RAX, align 8, !tbaa !2428
  %351 = add i64 %150, 43
  store i64 %351, i64* %PC, align 8
  %352 = load i32, i32* %309, align 4
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, 8000
  store i64 %354, i64* %RCX, align 8, !tbaa !2428
  %355 = lshr i64 %354, 63
  %356 = add i64 %354, %350
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = icmp ult i64 %356, %350
  %358 = icmp ult i64 %356, %354
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %65, align 1, !tbaa !2432
  %361 = trunc i64 %356 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362) #12
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %66, align 1, !tbaa !2446
  %367 = xor i64 %350, %356
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %67, align 1, !tbaa !2447
  %371 = icmp eq i64 %356, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %68, align 1, !tbaa !2448
  %373 = lshr i64 %356, 63
  %374 = trunc i64 %373 to i8
  store i8 %374, i8* %69, align 1, !tbaa !2449
  %375 = lshr i64 %350, 63
  %376 = xor i64 %373, %375
  %377 = xor i64 %373, %355
  %378 = add nuw nsw i64 %376, %377
  %379 = icmp eq i64 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %70, align 1, !tbaa !2450
  %381 = load i64, i64* %RBP, align 8
  %382 = add i64 %381, -60
  %383 = add i64 %150, 57
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = shl nsw i64 %386, 3
  %388 = add i64 %387, %356
  %389 = add i64 %150, 62
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %392 = add i64 %381, -40
  %393 = add i64 %150, 66
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = add i64 %381, -56
  %397 = add i64 %150, 70
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = mul nsw i64 %400, 8000
  store i64 %401, i64* %RCX, align 8, !tbaa !2428
  %402 = lshr i64 %401, 63
  %403 = add i64 %401, %395
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = icmp ult i64 %403, %395
  %405 = icmp ult i64 %403, %401
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %65, align 1, !tbaa !2432
  %408 = trunc i64 %403 to i32
  %409 = and i32 %408, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #12
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %66, align 1, !tbaa !2446
  %414 = xor i64 %395, %403
  %415 = lshr i64 %414, 4
  %416 = trunc i64 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %67, align 1, !tbaa !2447
  %418 = icmp eq i64 %403, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %68, align 1, !tbaa !2448
  %420 = lshr i64 %403, 63
  %421 = trunc i64 %420 to i8
  store i8 %421, i8* %69, align 1, !tbaa !2449
  %422 = lshr i64 %395, 63
  %423 = xor i64 %420, %422
  %424 = xor i64 %420, %402
  %425 = add nuw nsw i64 %423, %424
  %426 = icmp eq i64 %425, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %70, align 1, !tbaa !2450
  %428 = add i64 %150, 83
  store i64 %428, i64* %PC, align 8
  %429 = load i32, i32* %384, align 4
  %430 = add i32 %429, -1
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RDX, align 8, !tbaa !2428
  %432 = icmp eq i32 %429, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %65, align 1, !tbaa !2432
  %434 = and i32 %430, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434) #12
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %66, align 1, !tbaa !2446
  %439 = xor i32 %430, %429
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %67, align 1, !tbaa !2447
  %443 = icmp eq i32 %430, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %68, align 1, !tbaa !2448
  %445 = lshr i32 %430, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %69, align 1, !tbaa !2449
  %447 = lshr i32 %429, 31
  %448 = xor i32 %445, %447
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %70, align 1, !tbaa !2450
  %452 = sext i32 %430 to i64
  store i64 %452, i64* %RCX, align 8, !tbaa !2428
  %453 = shl nsw i64 %452, 3
  %454 = add i64 %403, %453
  %455 = add i64 %150, 94
  store i64 %455, i64* %PC, align 8
  %456 = load double, double* %79, align 1
  %457 = inttoptr i64 %454 to double*
  %458 = load double, double* %457, align 8
  %459 = fsub double %456, %458
  store double %459, double* %79, align 1, !tbaa !2452
  %460 = load double, double* %74, align 1
  %461 = fmul double %460, %459
  store double %461, double* %74, align 1, !tbaa !2452
  %462 = load double, double* %75, align 1
  %463 = fsub double %462, %461
  store double %463, double* %75, align 1, !tbaa !2452
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -24
  %466 = add i64 %150, 106
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %469 = add i64 %464, -56
  %470 = add i64 %150, 110
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = mul nsw i64 %473, 8000
  store i64 %474, i64* %RCX, align 8, !tbaa !2428
  %475 = lshr i64 %474, 63
  %476 = add i64 %474, %468
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = icmp ult i64 %476, %468
  %478 = icmp ult i64 %476, %474
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %65, align 1, !tbaa !2432
  %481 = trunc i64 %476 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #12
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %66, align 1, !tbaa !2446
  %487 = xor i64 %468, %476
  %488 = lshr i64 %487, 4
  %489 = trunc i64 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %67, align 1, !tbaa !2447
  %491 = icmp eq i64 %476, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %68, align 1, !tbaa !2448
  %493 = lshr i64 %476, 63
  %494 = trunc i64 %493 to i8
  store i8 %494, i8* %69, align 1, !tbaa !2449
  %495 = lshr i64 %468, 63
  %496 = xor i64 %493, %495
  %497 = xor i64 %493, %475
  %498 = add nuw nsw i64 %496, %497
  %499 = icmp eq i64 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %70, align 1, !tbaa !2450
  %501 = add i64 %464, -60
  %502 = add i64 %150, 124
  store i64 %502, i64* %PC, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  store i64 %505, i64* %RCX, align 8, !tbaa !2428
  %506 = shl nsw i64 %505, 3
  %507 = add i64 %506, %476
  %508 = add i64 %150, 129
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to double*
  store double %463, double* %509, align 8
  %510 = load i64, i64* %RBP, align 8
  %511 = add i64 %510, -60
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, 3
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %511 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = add i32 %515, 1
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RAX, align 8, !tbaa !2428
  %518 = icmp eq i32 %515, -1
  %519 = icmp eq i32 %516, 0
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %65, align 1, !tbaa !2432
  %522 = and i32 %516, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522) #12
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %66, align 1, !tbaa !2446
  %527 = xor i32 %516, %515
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %67, align 1, !tbaa !2447
  %531 = zext i1 %519 to i8
  store i8 %531, i8* %68, align 1, !tbaa !2448
  %532 = lshr i32 %516, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %69, align 1, !tbaa !2449
  %534 = lshr i32 %515, 31
  %535 = xor i32 %532, %534
  %536 = add nuw nsw i32 %535, %532
  %537 = icmp eq i32 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %70, align 1, !tbaa !2450
  %539 = add i64 %512, 9
  store i64 %539, i64* %PC, align 8
  store i32 %516, i32* %514, align 4
  %540 = load i64, i64* %PC, align 8
  %541 = add i64 %540, -150
  store i64 %541, i64* %PC, align 8, !tbaa !2428
  br label %block_4010e1

block_4010ce:                                     ; preds = %block_4010c7, %block_40117c
  %542 = phi i64 [ %.pre30, %block_4010c7 ], [ %112, %block_40117c ]
  %543 = load i64, i64* %RBP, align 8
  %544 = add i64 %543, -56
  %545 = add i64 %542, 3
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RAX, align 8, !tbaa !2428
  %549 = add i64 %543, -8
  %550 = add i64 %542, 6
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = sub i32 %547, %552
  %554 = icmp ult i32 %547, %552
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %65, align 1, !tbaa !2432
  %556 = and i32 %553, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556) #12
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %66, align 1, !tbaa !2446
  %561 = xor i32 %552, %547
  %562 = xor i32 %561, %553
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %67, align 1, !tbaa !2447
  %566 = icmp eq i32 %553, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %68, align 1, !tbaa !2448
  %568 = lshr i32 %553, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %69, align 1, !tbaa !2449
  %570 = lshr i32 %547, 31
  %571 = lshr i32 %552, 31
  %572 = xor i32 %571, %570
  %573 = xor i32 %568, %570
  %574 = add nuw nsw i32 %573, %572
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %70, align 1, !tbaa !2450
  %577 = icmp ne i8 %569, 0
  %578 = xor i1 %577, %575
  %.v41 = select i1 %578, i64 12, i64 193
  %579 = add i64 %542, %.v41
  store i64 %579, i64* %PC, align 8, !tbaa !2428
  br i1 %578, label %block_4010da, label %block_40118f

block_4011a7:                                     ; preds = %block_401196
  %580 = add i64 %726, -60
  %581 = add i64 %764, 7
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %580 to i32*
  store i32 0, i32* %582, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_4011ae

block_40129c:                                     ; preds = %block_401196
  %583 = add i64 %726, -52
  %584 = add i64 %764, 8
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %586, 1
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = icmp eq i32 %586, -1
  %590 = icmp eq i32 %587, 0
  %591 = or i1 %589, %590
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %65, align 1, !tbaa !2432
  %593 = and i32 %587, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593) #12
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %66, align 1, !tbaa !2446
  %598 = xor i32 %587, %586
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %67, align 1, !tbaa !2447
  %602 = zext i1 %590 to i8
  store i8 %602, i8* %68, align 1, !tbaa !2448
  %603 = lshr i32 %587, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %69, align 1, !tbaa !2449
  %605 = lshr i32 %586, 31
  %606 = xor i32 %603, %605
  %607 = add nuw nsw i32 %606, %603
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %70, align 1, !tbaa !2450
  %610 = add i64 %764, 14
  store i64 %610, i64* %PC, align 8
  store i32 %587, i32* %585, align 4
  %611 = load i64, i64* %PC, align 8
  %612 = add i64 %611, -754
  store i64 %612, i64* %PC, align 8, !tbaa !2428
  br label %block_400fb8

block_4010b4:                                     ; preds = %block_401019
  %613 = add i64 %644, -56
  %614 = add i64 %680, 8
  store i64 %614, i64* %PC, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = add i32 %616, 1
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX, align 8, !tbaa !2428
  %619 = icmp eq i32 %616, -1
  %620 = icmp eq i32 %617, 0
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %65, align 1, !tbaa !2432
  %623 = and i32 %617, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623) #12
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %66, align 1, !tbaa !2446
  %628 = xor i32 %617, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %67, align 1, !tbaa !2447
  %632 = zext i1 %620 to i8
  store i8 %632, i8* %68, align 1, !tbaa !2448
  %633 = lshr i32 %617, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %69, align 1, !tbaa !2449
  %635 = lshr i32 %616, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %633
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %70, align 1, !tbaa !2450
  %640 = add i64 %680, 14
  store i64 %640, i64* %PC, align 8
  store i32 %617, i32* %615, align 4
  %641 = load i64, i64* %PC, align 8
  %642 = add i64 %641, -188
  store i64 %642, i64* %PC, align 8, !tbaa !2428
  br label %block_401006

block_401019:                                     ; preds = %block_401025, %block_401012
  %643 = phi i64 [ %1017, %block_401025 ], [ %.pre34, %block_401012 ]
  %644 = load i64, i64* %RBP, align 8
  %645 = add i64 %644, -60
  %646 = add i64 %643, 3
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RAX, align 8, !tbaa !2428
  %650 = add i64 %644, -12
  %651 = add i64 %643, 6
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = sub i32 %648, %653
  %655 = icmp ult i32 %648, %653
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %65, align 1, !tbaa !2432
  %657 = and i32 %654, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657) #12
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %66, align 1, !tbaa !2446
  %662 = xor i32 %653, %648
  %663 = xor i32 %662, %654
  %664 = lshr i32 %663, 4
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %67, align 1, !tbaa !2447
  %667 = icmp eq i32 %654, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %68, align 1, !tbaa !2448
  %669 = lshr i32 %654, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %69, align 1, !tbaa !2449
  %671 = lshr i32 %648, 31
  %672 = lshr i32 %653, 31
  %673 = xor i32 %672, %671
  %674 = xor i32 %669, %671
  %675 = add nuw nsw i32 %674, %673
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %70, align 1, !tbaa !2450
  %678 = icmp ne i8 %670, 0
  %679 = xor i1 %678, %676
  %.v37 = select i1 %679, i64 12, i64 155
  %680 = add i64 %643, %.v37
  store i64 %680, i64* %PC, align 8, !tbaa !2428
  br i1 %679, label %block_401025, label %block_4010b4

block_401012:                                     ; preds = %block_401006
  %681 = add i64 %1019, -60
  %682 = add i64 %1055, 7
  store i64 %682, i64* %PC, align 8
  %683 = inttoptr i64 %681 to i32*
  store i32 0, i32* %683, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_401019

block_4011ae:                                     ; preds = %block_4011bf, %block_4011a7
  %684 = phi i64 [ %1396, %block_4011bf ], [ %.pre32, %block_4011a7 ]
  %685 = load i64, i64* %RBP, align 8
  %686 = add i64 %685, -60
  %687 = add i64 %684, 3
  store i64 %687, i64* %PC, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RAX, align 8, !tbaa !2428
  %691 = add i64 %685, -12
  %692 = add i64 %684, 6
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, -1
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RCX, align 8, !tbaa !2428
  %697 = lshr i32 %695, 31
  %698 = sub i32 %689, %695
  %699 = icmp ult i32 %689, %695
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %65, align 1, !tbaa !2432
  %701 = and i32 %698, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701) #12
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %66, align 1, !tbaa !2446
  %706 = xor i32 %695, %689
  %707 = xor i32 %706, %698
  %708 = lshr i32 %707, 4
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  store i8 %710, i8* %67, align 1, !tbaa !2447
  %711 = icmp eq i32 %698, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %68, align 1, !tbaa !2448
  %713 = lshr i32 %698, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %69, align 1, !tbaa !2449
  %715 = lshr i32 %689, 31
  %716 = xor i32 %697, %715
  %717 = xor i32 %713, %715
  %718 = add nuw nsw i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %70, align 1, !tbaa !2450
  %721 = icmp ne i8 %714, 0
  %722 = xor i1 %721, %719
  %.v35 = select i1 %722, i64 17, i64 219
  %723 = add i64 %684, %.v35
  store i64 %723, i64* %PC, align 8, !tbaa !2428
  br i1 %722, label %block_4011bf, label %block_401289

block_40118f:                                     ; preds = %block_4010ce
  %724 = add i64 %579, 7
  store i64 %724, i64* %PC, align 8
  store i32 0, i32* %546, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_401196

block_401196:                                     ; preds = %block_401289, %block_40118f
  %725 = phi i64 [ %794, %block_401289 ], [ %.pre31, %block_40118f ]
  %726 = load i64, i64* %RBP, align 8
  %727 = add i64 %726, -56
  %728 = add i64 %725, 3
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RAX, align 8, !tbaa !2428
  %732 = add i64 %726, -8
  %733 = add i64 %725, 6
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = add i32 %735, -1
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RCX, align 8, !tbaa !2428
  %738 = lshr i32 %736, 31
  %739 = sub i32 %730, %736
  %740 = icmp ult i32 %730, %736
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %65, align 1, !tbaa !2432
  %742 = and i32 %739, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742) #12
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %66, align 1, !tbaa !2446
  %747 = xor i32 %736, %730
  %748 = xor i32 %747, %739
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %67, align 1, !tbaa !2447
  %752 = icmp eq i32 %739, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %68, align 1, !tbaa !2448
  %754 = lshr i32 %739, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %69, align 1, !tbaa !2449
  %756 = lshr i32 %730, 31
  %757 = xor i32 %738, %756
  %758 = xor i32 %754, %756
  %759 = add nuw nsw i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %70, align 1, !tbaa !2450
  %762 = icmp ne i8 %755, 0
  %763 = xor i1 %762, %760
  %.v = select i1 %763, i64 17, i64 262
  %764 = add i64 %725, %.v
  store i64 %764, i64* %PC, align 8, !tbaa !2428
  br i1 %763, label %block_4011a7, label %block_40129c

block_401289:                                     ; preds = %block_4011ae
  %765 = add i64 %685, -56
  %766 = add i64 %723, 8
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = add i32 %768, 1
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RAX, align 8, !tbaa !2428
  %771 = icmp eq i32 %768, -1
  %772 = icmp eq i32 %769, 0
  %773 = or i1 %771, %772
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %65, align 1, !tbaa !2432
  %775 = and i32 %769, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775) #12
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %66, align 1, !tbaa !2446
  %780 = xor i32 %769, %768
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %67, align 1, !tbaa !2447
  %784 = zext i1 %772 to i8
  store i8 %784, i8* %68, align 1, !tbaa !2448
  %785 = lshr i32 %769, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %69, align 1, !tbaa !2449
  %787 = lshr i32 %768, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %785
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %70, align 1, !tbaa !2450
  %792 = add i64 %723, 14
  store i64 %792, i64* %PC, align 8
  store i32 %769, i32* %767, align 4
  %793 = load i64, i64* %PC, align 8
  %794 = add i64 %793, -257
  store i64 %794, i64* %PC, align 8, !tbaa !2428
  br label %block_401196

block_401025:                                     ; preds = %block_401019
  %795 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 16) to i64*), align 16
  store i64 %795, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %796 = add i64 %644, -32
  %797 = add i64 %680, 12
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RAX, align 8, !tbaa !2428
  %800 = add i64 %644, -56
  %801 = add i64 %680, 16
  store i64 %801, i64* %PC, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = sext i32 %803 to i64
  %805 = mul nsw i64 %804, 8000
  store i64 %805, i64* %RCX, align 8, !tbaa !2428
  %806 = lshr i64 %805, 63
  %807 = add i64 %805, %799
  store i64 %807, i64* %RAX, align 8, !tbaa !2428
  %808 = icmp ult i64 %807, %799
  %809 = icmp ult i64 %807, %805
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %65, align 1, !tbaa !2432
  %812 = trunc i64 %807 to i32
  %813 = and i32 %812, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813) #12
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %66, align 1, !tbaa !2446
  %818 = xor i64 %799, %807
  %819 = lshr i64 %818, 4
  %820 = trunc i64 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %67, align 1, !tbaa !2447
  %822 = icmp eq i64 %807, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %68, align 1, !tbaa !2448
  %824 = lshr i64 %807, 63
  %825 = trunc i64 %824 to i8
  store i8 %825, i8* %69, align 1, !tbaa !2449
  %826 = lshr i64 %799, 63
  %827 = xor i64 %824, %826
  %828 = xor i64 %824, %806
  %829 = add nuw nsw i64 %827, %828
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %70, align 1, !tbaa !2450
  %832 = add i64 %680, 30
  store i64 %832, i64* %PC, align 8
  %833 = load i32, i32* %647, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX, align 8, !tbaa !2428
  %835 = shl nsw i64 %834, 3
  %836 = add i64 %835, %807
  %837 = add i64 %680, 35
  store i64 %837, i64* %PC, align 8
  %838 = inttoptr i64 %836 to i64*
  %839 = load i64, i64* %838, align 8
  store i64 %839, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %840 = add i64 %644, -40
  %841 = add i64 %680, 39
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %840 to i64*
  %843 = load i64, i64* %842, align 8
  store i64 %843, i64* %RAX, align 8, !tbaa !2428
  %844 = add i64 %680, 43
  store i64 %844, i64* %PC, align 8
  %845 = load i32, i32* %802, align 4
  %846 = sext i32 %845 to i64
  %847 = mul nsw i64 %846, 8000
  store i64 %847, i64* %RCX, align 8, !tbaa !2428
  %848 = lshr i64 %847, 63
  %849 = add i64 %847, %843
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = icmp ult i64 %849, %843
  %851 = icmp ult i64 %849, %847
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %65, align 1, !tbaa !2432
  %854 = trunc i64 %849 to i32
  %855 = and i32 %854, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855) #12
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %66, align 1, !tbaa !2446
  %860 = xor i64 %843, %849
  %861 = lshr i64 %860, 4
  %862 = trunc i64 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %67, align 1, !tbaa !2447
  %864 = icmp eq i64 %849, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %68, align 1, !tbaa !2448
  %866 = lshr i64 %849, 63
  %867 = trunc i64 %866 to i8
  store i8 %867, i8* %69, align 1, !tbaa !2449
  %868 = lshr i64 %843, 63
  %869 = xor i64 %866, %868
  %870 = xor i64 %866, %848
  %871 = add nuw nsw i64 %869, %870
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %70, align 1, !tbaa !2450
  %874 = load i64, i64* %RBP, align 8
  %875 = add i64 %874, -60
  %876 = add i64 %680, 57
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RCX, align 8, !tbaa !2428
  %880 = shl nsw i64 %879, 3
  %881 = add i64 %880, %849
  %882 = add i64 %680, 62
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %885 = add i64 %874, -40
  %886 = add i64 %680, 66
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i64*
  %888 = load i64, i64* %887, align 8
  store i64 %888, i64* %RAX, align 8, !tbaa !2428
  %889 = add i64 %874, -56
  %890 = add i64 %680, 69
  store i64 %890, i64* %PC, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = add i32 %892, -1
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX, align 8, !tbaa !2428
  %895 = sext i32 %893 to i64
  %896 = mul nsw i64 %895, 8000
  store i64 %896, i64* %RCX, align 8, !tbaa !2428
  %897 = lshr i64 %896, 63
  %898 = add i64 %896, %888
  store i64 %898, i64* %RAX, align 8, !tbaa !2428
  %899 = icmp ult i64 %898, %888
  %900 = icmp ult i64 %898, %896
  %901 = or i1 %899, %900
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %65, align 1, !tbaa !2432
  %903 = trunc i64 %898 to i32
  %904 = and i32 %903, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904) #12
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %66, align 1, !tbaa !2446
  %909 = xor i64 %888, %898
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  store i8 %912, i8* %67, align 1, !tbaa !2447
  %913 = icmp eq i64 %898, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %68, align 1, !tbaa !2448
  %915 = lshr i64 %898, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %69, align 1, !tbaa !2449
  %917 = lshr i64 %888, 63
  %918 = xor i64 %915, %917
  %919 = xor i64 %915, %897
  %920 = add nuw nsw i64 %918, %919
  %921 = icmp eq i64 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %70, align 1, !tbaa !2450
  %923 = load i64, i64* %RBP, align 8
  %924 = add i64 %923, -60
  %925 = add i64 %680, 89
  store i64 %925, i64* %PC, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = sext i32 %927 to i64
  store i64 %928, i64* %RCX, align 8, !tbaa !2428
  %929 = shl nsw i64 %928, 3
  %930 = add i64 %929, %898
  %931 = add i64 %680, 94
  store i64 %931, i64* %PC, align 8
  %932 = load double, double* %79, align 1
  %933 = inttoptr i64 %930 to double*
  %934 = load double, double* %933, align 8
  %935 = fsub double %932, %934
  store double %935, double* %79, align 1, !tbaa !2452
  %936 = load double, double* %74, align 1
  %937 = fmul double %936, %935
  store double %937, double* %74, align 1, !tbaa !2452
  %938 = load double, double* %75, align 1
  %939 = fsub double %938, %937
  store double %939, double* %75, align 1, !tbaa !2452
  %940 = add i64 %923, -32
  %941 = add i64 %680, 106
  store i64 %941, i64* %PC, align 8
  %942 = inttoptr i64 %940 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = add i64 %923, -56
  %945 = add i64 %680, 110
  store i64 %945, i64* %PC, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  %949 = mul nsw i64 %948, 8000
  store i64 %949, i64* %RCX, align 8, !tbaa !2428
  %950 = lshr i64 %949, 63
  %951 = add i64 %949, %943
  store i64 %951, i64* %RAX, align 8, !tbaa !2428
  %952 = icmp ult i64 %951, %943
  %953 = icmp ult i64 %951, %949
  %954 = or i1 %952, %953
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %65, align 1, !tbaa !2432
  %956 = trunc i64 %951 to i32
  %957 = and i32 %956, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957) #12
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %66, align 1, !tbaa !2446
  %962 = xor i64 %943, %951
  %963 = lshr i64 %962, 4
  %964 = trunc i64 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %67, align 1, !tbaa !2447
  %966 = icmp eq i64 %951, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %68, align 1, !tbaa !2448
  %968 = lshr i64 %951, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %69, align 1, !tbaa !2449
  %970 = lshr i64 %943, 63
  %971 = xor i64 %968, %970
  %972 = xor i64 %968, %950
  %973 = add nuw nsw i64 %971, %972
  %974 = icmp eq i64 %973, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %70, align 1, !tbaa !2450
  %976 = load i64, i64* %RBP, align 8
  %977 = add i64 %976, -60
  %978 = add i64 %680, 124
  store i64 %978, i64* %PC, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  store i64 %981, i64* %RCX, align 8, !tbaa !2428
  %982 = shl nsw i64 %981, 3
  %983 = add i64 %982, %951
  %984 = add i64 %680, 129
  store i64 %984, i64* %PC, align 8
  %985 = inttoptr i64 %983 to double*
  store double %939, double* %985, align 8
  %986 = load i64, i64* %RBP, align 8
  %987 = add i64 %986, -60
  %988 = load i64, i64* %PC, align 8
  %989 = add i64 %988, 3
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %987 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = add i32 %991, 1
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX, align 8, !tbaa !2428
  %994 = icmp eq i32 %991, -1
  %995 = icmp eq i32 %992, 0
  %996 = or i1 %994, %995
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %65, align 1, !tbaa !2432
  %998 = and i32 %992, 255
  %999 = tail call i32 @llvm.ctpop.i32(i32 %998) #12
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %66, align 1, !tbaa !2446
  %1003 = xor i32 %992, %991
  %1004 = lshr i32 %1003, 4
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %67, align 1, !tbaa !2447
  %1007 = zext i1 %995 to i8
  store i8 %1007, i8* %68, align 1, !tbaa !2448
  %1008 = lshr i32 %992, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %69, align 1, !tbaa !2449
  %1010 = lshr i32 %991, 31
  %1011 = xor i32 %1008, %1010
  %1012 = add nuw nsw i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %70, align 1, !tbaa !2450
  %1015 = add i64 %988, 9
  store i64 %1015, i64* %PC, align 8
  store i32 %992, i32* %990, align 4
  %1016 = load i64, i64* %PC, align 8
  %1017 = add i64 %1016, -150
  store i64 %1017, i64* %PC, align 8, !tbaa !2428
  br label %block_401019

block_401006:                                     ; preds = %block_4010b4, %block_400fff
  %1018 = phi i64 [ %642, %block_4010b4 ], [ %.pre29, %block_400fff ]
  %1019 = load i64, i64* %RBP, align 8
  %1020 = add i64 %1019, -56
  %1021 = add i64 %1018, 3
  store i64 %1021, i64* %PC, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX, align 8, !tbaa !2428
  %1025 = add i64 %1019, -8
  %1026 = add i64 %1018, 6
  store i64 %1026, i64* %PC, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = sub i32 %1023, %1028
  %1030 = icmp ult i32 %1023, %1028
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %65, align 1, !tbaa !2432
  %1032 = and i32 %1029, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032) #12
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %66, align 1, !tbaa !2446
  %1037 = xor i32 %1028, %1023
  %1038 = xor i32 %1037, %1029
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %67, align 1, !tbaa !2447
  %1042 = icmp eq i32 %1029, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %68, align 1, !tbaa !2448
  %1044 = lshr i32 %1029, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %69, align 1, !tbaa !2449
  %1046 = lshr i32 %1023, 31
  %1047 = lshr i32 %1028, 31
  %1048 = xor i32 %1047, %1046
  %1049 = xor i32 %1044, %1046
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %70, align 1, !tbaa !2450
  %1053 = icmp ne i8 %1045, 0
  %1054 = xor i1 %1053, %1051
  %.v40 = select i1 %1054, i64 12, i64 193
  %1055 = add i64 %1018, %.v40
  store i64 %1055, i64* %PC, align 8, !tbaa !2428
  br i1 %1054, label %block_401012, label %block_4010c7

block_4010c7:                                     ; preds = %block_401006
  %1056 = add i64 %1055, 7
  store i64 %1056, i64* %PC, align 8
  store i32 0, i32* %1022, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_4010ce

block_4011bf:                                     ; preds = %block_4011ae
  %1057 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 8) to i64*), align 8
  store i64 %1057, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %1058 = add i64 %685, -40
  %1059 = add i64 %723, 12
  store i64 %1059, i64* %PC, align 8
  %1060 = inttoptr i64 %1058 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i64 %1061, i64* %RAX, align 8, !tbaa !2428
  %1062 = add i64 %685, -56
  %1063 = add i64 %723, 16
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = mul nsw i64 %1066, 8000
  store i64 %1067, i64* %RCX, align 8, !tbaa !2428
  %1068 = lshr i64 %1067, 63
  %1069 = add i64 %1067, %1061
  store i64 %1069, i64* %RAX, align 8, !tbaa !2428
  %1070 = icmp ult i64 %1069, %1061
  %1071 = icmp ult i64 %1069, %1067
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %65, align 1, !tbaa !2432
  %1074 = trunc i64 %1069 to i32
  %1075 = and i32 %1074, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075) #12
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %66, align 1, !tbaa !2446
  %1080 = xor i64 %1061, %1069
  %1081 = lshr i64 %1080, 4
  %1082 = trunc i64 %1081 to i8
  %1083 = and i8 %1082, 1
  store i8 %1083, i8* %67, align 1, !tbaa !2447
  %1084 = icmp eq i64 %1069, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %68, align 1, !tbaa !2448
  %1086 = lshr i64 %1069, 63
  %1087 = trunc i64 %1086 to i8
  store i8 %1087, i8* %69, align 1, !tbaa !2449
  %1088 = lshr i64 %1061, 63
  %1089 = xor i64 %1086, %1088
  %1090 = xor i64 %1086, %1068
  %1091 = add nuw nsw i64 %1089, %1090
  %1092 = icmp eq i64 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %70, align 1, !tbaa !2450
  %1094 = add i64 %723, 30
  store i64 %1094, i64* %PC, align 8
  %1095 = load i32, i32* %688, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RCX, align 8, !tbaa !2428
  %1097 = shl nsw i64 %1096, 3
  %1098 = add i64 %1097, %1069
  %1099 = add i64 %723, 35
  store i64 %1099, i64* %PC, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %1102 = add i64 %685, -24
  %1103 = add i64 %723, 39
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %RAX, align 8, !tbaa !2428
  %1106 = add i64 %723, 43
  store i64 %1106, i64* %PC, align 8
  %1107 = load i32, i32* %1064, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = mul nsw i64 %1108, 8000
  store i64 %1109, i64* %RCX, align 8, !tbaa !2428
  %1110 = lshr i64 %1109, 63
  %1111 = add i64 %1109, %1105
  store i64 %1111, i64* %RAX, align 8, !tbaa !2428
  %1112 = icmp ult i64 %1111, %1105
  %1113 = icmp ult i64 %1111, %1109
  %1114 = or i1 %1112, %1113
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %65, align 1, !tbaa !2432
  %1116 = trunc i64 %1111 to i32
  %1117 = and i32 %1116, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117) #12
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %66, align 1, !tbaa !2446
  %1122 = xor i64 %1105, %1111
  %1123 = lshr i64 %1122, 4
  %1124 = trunc i64 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %67, align 1, !tbaa !2447
  %1126 = icmp eq i64 %1111, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %68, align 1, !tbaa !2448
  %1128 = lshr i64 %1111, 63
  %1129 = trunc i64 %1128 to i8
  store i8 %1129, i8* %69, align 1, !tbaa !2449
  %1130 = lshr i64 %1105, 63
  %1131 = xor i64 %1128, %1130
  %1132 = xor i64 %1128, %1110
  %1133 = add nuw nsw i64 %1131, %1132
  %1134 = icmp eq i64 %1133, 2
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %70, align 1, !tbaa !2450
  %1136 = load i64, i64* %RBP, align 8
  %1137 = add i64 %1136, -60
  %1138 = add i64 %723, 56
  store i64 %1138, i64* %PC, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = add i32 %1140, 1
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RDX, align 8, !tbaa !2428
  %1143 = icmp eq i32 %1140, -1
  %1144 = icmp eq i32 %1141, 0
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %65, align 1, !tbaa !2432
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147) #12
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %66, align 1, !tbaa !2446
  %1152 = xor i32 %1141, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %67, align 1, !tbaa !2447
  %1156 = zext i1 %1144 to i8
  store i8 %1156, i8* %68, align 1, !tbaa !2448
  %1157 = lshr i32 %1141, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %69, align 1, !tbaa !2449
  %1159 = lshr i32 %1140, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1157
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %70, align 1, !tbaa !2450
  %1164 = sext i32 %1141 to i64
  store i64 %1164, i64* %RCX, align 8, !tbaa !2428
  %1165 = shl nsw i64 %1164, 3
  %1166 = add i64 %1111, %1165
  %1167 = add i64 %723, 67
  store i64 %1167, i64* %PC, align 8
  %1168 = inttoptr i64 %1166 to i64*
  %1169 = load i64, i64* %1168, align 8
  store i64 %1169, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %1170 = add i64 %1136, -24
  %1171 = add i64 %723, 71
  store i64 %1171, i64* %PC, align 8
  %1172 = inttoptr i64 %1170 to i64*
  %1173 = load i64, i64* %1172, align 8
  store i64 %1173, i64* %RAX, align 8, !tbaa !2428
  %1174 = add i64 %1136, -56
  %1175 = add i64 %723, 75
  store i64 %1175, i64* %PC, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = mul nsw i64 %1178, 8000
  store i64 %1179, i64* %RCX, align 8, !tbaa !2428
  %1180 = lshr i64 %1179, 63
  %1181 = add i64 %1179, %1173
  store i64 %1181, i64* %RAX, align 8, !tbaa !2428
  %1182 = icmp ult i64 %1181, %1173
  %1183 = icmp ult i64 %1181, %1179
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %65, align 1, !tbaa !2432
  %1186 = trunc i64 %1181 to i32
  %1187 = and i32 %1186, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187) #12
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %66, align 1, !tbaa !2446
  %1192 = xor i64 %1173, %1181
  %1193 = lshr i64 %1192, 4
  %1194 = trunc i64 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %67, align 1, !tbaa !2447
  %1196 = icmp eq i64 %1181, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %68, align 1, !tbaa !2448
  %1198 = lshr i64 %1181, 63
  %1199 = trunc i64 %1198 to i8
  store i8 %1199, i8* %69, align 1, !tbaa !2449
  %1200 = lshr i64 %1173, 63
  %1201 = xor i64 %1198, %1200
  %1202 = xor i64 %1198, %1180
  %1203 = add nuw nsw i64 %1201, %1202
  %1204 = icmp eq i64 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %70, align 1, !tbaa !2450
  %1206 = load i64, i64* %RBP, align 8
  %1207 = add i64 %1206, -60
  %1208 = add i64 %723, 89
  store i64 %1208, i64* %PC, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1210 to i64
  store i64 %1211, i64* %RCX, align 8, !tbaa !2428
  %1212 = shl nsw i64 %1211, 3
  %1213 = add i64 %1212, %1181
  %1214 = add i64 %723, 94
  store i64 %1214, i64* %PC, align 8
  %1215 = bitcast i64 %1169 to double
  %1216 = inttoptr i64 %1213 to double*
  %1217 = load double, double* %1216, align 8
  %1218 = fsub double %1215, %1217
  store double %1218, double* %79, align 1, !tbaa !2452
  store i64 0, i64* %81, align 1, !tbaa !2452
  %1219 = add i64 %1206, -32
  %1220 = add i64 %723, 98
  store i64 %1220, i64* %PC, align 8
  %1221 = inttoptr i64 %1219 to i64*
  %1222 = load i64, i64* %1221, align 8
  store i64 %1222, i64* %RAX, align 8, !tbaa !2428
  %1223 = add i64 %1206, -56
  %1224 = add i64 %723, 101
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = add i32 %1226, 1
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RDX, align 8, !tbaa !2428
  %1229 = sext i32 %1227 to i64
  %1230 = mul nsw i64 %1229, 8000
  store i64 %1230, i64* %RCX, align 8, !tbaa !2428
  %1231 = lshr i64 %1230, 63
  %1232 = add i64 %1230, %1222
  store i64 %1232, i64* %RAX, align 8, !tbaa !2428
  %1233 = icmp ult i64 %1232, %1222
  %1234 = icmp ult i64 %1232, %1230
  %1235 = or i1 %1233, %1234
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %65, align 1, !tbaa !2432
  %1237 = trunc i64 %1232 to i32
  %1238 = and i32 %1237, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238) #12
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %66, align 1, !tbaa !2446
  %1243 = xor i64 %1222, %1232
  %1244 = lshr i64 %1243, 4
  %1245 = trunc i64 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %67, align 1, !tbaa !2447
  %1247 = icmp eq i64 %1232, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %68, align 1, !tbaa !2448
  %1249 = lshr i64 %1232, 63
  %1250 = trunc i64 %1249 to i8
  store i8 %1250, i8* %69, align 1, !tbaa !2449
  %1251 = lshr i64 %1222, 63
  %1252 = xor i64 %1249, %1251
  %1253 = xor i64 %1249, %1231
  %1254 = add nuw nsw i64 %1252, %1253
  %1255 = icmp eq i64 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %70, align 1, !tbaa !2450
  %1257 = load i64, i64* %RBP, align 8
  %1258 = add i64 %1257, -60
  %1259 = add i64 %723, 121
  store i64 %1259, i64* %PC, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = sext i32 %1261 to i64
  store i64 %1262, i64* %RCX, align 8, !tbaa !2428
  %1263 = shl nsw i64 %1262, 3
  %1264 = add i64 %1263, %1232
  %1265 = add i64 %723, 126
  store i64 %1265, i64* %PC, align 8
  %1266 = load double, double* %79, align 1
  %1267 = inttoptr i64 %1264 to double*
  %1268 = load double, double* %1267, align 8
  %1269 = fadd double %1266, %1268
  store double %1269, double* %79, align 1, !tbaa !2452
  %1270 = add i64 %1257, -32
  %1271 = add i64 %723, 130
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX, align 8, !tbaa !2428
  %1274 = add i64 %1257, -56
  %1275 = add i64 %723, 134
  store i64 %1275, i64* %PC, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = mul nsw i64 %1278, 8000
  store i64 %1279, i64* %RCX, align 8, !tbaa !2428
  %1280 = lshr i64 %1279, 63
  %1281 = add i64 %1279, %1273
  store i64 %1281, i64* %RAX, align 8, !tbaa !2428
  %1282 = icmp ult i64 %1281, %1273
  %1283 = icmp ult i64 %1281, %1279
  %1284 = or i1 %1282, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %65, align 1, !tbaa !2432
  %1286 = trunc i64 %1281 to i32
  %1287 = and i32 %1286, 255
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287) #12
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %66, align 1, !tbaa !2446
  %1292 = xor i64 %1273, %1281
  %1293 = lshr i64 %1292, 4
  %1294 = trunc i64 %1293 to i8
  %1295 = and i8 %1294, 1
  store i8 %1295, i8* %67, align 1, !tbaa !2447
  %1296 = icmp eq i64 %1281, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %68, align 1, !tbaa !2448
  %1298 = lshr i64 %1281, 63
  %1299 = trunc i64 %1298 to i8
  store i8 %1299, i8* %69, align 1, !tbaa !2449
  %1300 = lshr i64 %1273, 63
  %1301 = xor i64 %1298, %1300
  %1302 = xor i64 %1298, %1280
  %1303 = add nuw nsw i64 %1301, %1302
  %1304 = icmp eq i64 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %70, align 1, !tbaa !2450
  %1306 = add i64 %723, 148
  store i64 %1306, i64* %PC, align 8
  %1307 = load i32, i32* %1260, align 4
  %1308 = sext i32 %1307 to i64
  store i64 %1308, i64* %RCX, align 8, !tbaa !2428
  %1309 = shl nsw i64 %1308, 3
  %1310 = add i64 %1309, %1281
  %1311 = add i64 %723, 153
  store i64 %1311, i64* %PC, align 8
  %1312 = inttoptr i64 %1310 to double*
  %1313 = load double, double* %1312, align 8
  %1314 = fsub double %1269, %1313
  store double %1314, double* %79, align 1, !tbaa !2452
  %1315 = load double, double* %74, align 1
  %1316 = fmul double %1315, %1314
  store double %1316, double* %74, align 1, !tbaa !2452
  %1317 = load double, double* %75, align 1
  %1318 = fsub double %1317, %1316
  store double %1318, double* %75, align 1, !tbaa !2452
  %1319 = load i64, i64* %RBP, align 8
  %1320 = add i64 %1319, -40
  %1321 = add i64 %723, 165
  store i64 %1321, i64* %PC, align 8
  %1322 = inttoptr i64 %1320 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %RAX, align 8, !tbaa !2428
  %1324 = add i64 %1319, -56
  %1325 = add i64 %723, 169
  store i64 %1325, i64* %PC, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = mul nsw i64 %1328, 8000
  store i64 %1329, i64* %RCX, align 8, !tbaa !2428
  %1330 = lshr i64 %1329, 63
  %1331 = add i64 %1329, %1323
  store i64 %1331, i64* %RAX, align 8, !tbaa !2428
  %1332 = icmp ult i64 %1331, %1323
  %1333 = icmp ult i64 %1331, %1329
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %65, align 1, !tbaa !2432
  %1336 = trunc i64 %1331 to i32
  %1337 = and i32 %1336, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337) #12
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %66, align 1, !tbaa !2446
  %1342 = xor i64 %1323, %1331
  %1343 = lshr i64 %1342, 4
  %1344 = trunc i64 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %67, align 1, !tbaa !2447
  %1346 = icmp eq i64 %1331, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %68, align 1, !tbaa !2448
  %1348 = lshr i64 %1331, 63
  %1349 = trunc i64 %1348 to i8
  store i8 %1349, i8* %69, align 1, !tbaa !2449
  %1350 = lshr i64 %1323, 63
  %1351 = xor i64 %1348, %1350
  %1352 = xor i64 %1348, %1330
  %1353 = add nuw nsw i64 %1351, %1352
  %1354 = icmp eq i64 %1353, 2
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %70, align 1, !tbaa !2450
  %1356 = add i64 %1319, -60
  %1357 = add i64 %723, 183
  store i64 %1357, i64* %PC, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = sext i32 %1359 to i64
  store i64 %1360, i64* %RCX, align 8, !tbaa !2428
  %1361 = shl nsw i64 %1360, 3
  %1362 = add i64 %1361, %1331
  %1363 = add i64 %723, 188
  store i64 %1363, i64* %PC, align 8
  %1364 = inttoptr i64 %1362 to double*
  store double %1318, double* %1364, align 8
  %1365 = load i64, i64* %RBP, align 8
  %1366 = add i64 %1365, -60
  %1367 = load i64, i64* %PC, align 8
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1366 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = add i32 %1370, 1
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX, align 8, !tbaa !2428
  %1373 = icmp eq i32 %1370, -1
  %1374 = icmp eq i32 %1371, 0
  %1375 = or i1 %1373, %1374
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %65, align 1, !tbaa !2432
  %1377 = and i32 %1371, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #12
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %66, align 1, !tbaa !2446
  %1382 = xor i32 %1371, %1370
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  store i8 %1385, i8* %67, align 1, !tbaa !2447
  %1386 = zext i1 %1374 to i8
  store i8 %1386, i8* %68, align 1, !tbaa !2448
  %1387 = lshr i32 %1371, 31
  %1388 = trunc i32 %1387 to i8
  store i8 %1388, i8* %69, align 1, !tbaa !2449
  %1389 = lshr i32 %1370, 31
  %1390 = xor i32 %1387, %1389
  %1391 = add nuw nsw i32 %1390, %1387
  %1392 = icmp eq i32 %1391, 2
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %70, align 1, !tbaa !2450
  %1394 = add i64 %1367, 9
  store i64 %1394, i64* %PC, align 8
  store i32 %1371, i32* %1369, align 4
  %1395 = load i64, i64* %PC, align 8
  %1396 = add i64 %1395, -214
  store i64 %1396, i64* %PC, align 8, !tbaa !2428
  br label %block_4011ae
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c60_kernel_fdtd_2d(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400c60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = add i64 %15, 7
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %16 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %20 = add i64 %12, -12
  %21 = load i32, i32* %EDI, align 4
  %22 = add i64 %15, 10
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -8
  %26 = load i32, i32* %ESI, align 4
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -12
  %32 = load i32, i32* %EDX, align 4
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %RBP, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %RCX, align 8
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -32
  %44 = load i64, i64* %R8, align 8
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -40
  %50 = load i64, i64* %R9, align 8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -48
  %56 = load i64, i64* %RAX, align 8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -52
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %73 = bitcast i64* %72 to double*
  %74 = bitcast [32 x %union.VectorReg]* %6 to double*
  %75 = bitcast %union.VectorReg* %7 to double*
  %76 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %78 = bitcast i64* %77 to double*
  %79 = bitcast %union.VectorReg* %8 to double*
  %80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c88

block_400f7f:                                     ; preds = %block_400c88
  %83 = add i64 %1328, 1
  store i64 %83, i64* %PC, align 8
  %84 = load i64, i64* %11, align 8, !tbaa !2428
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %11, align 8, !tbaa !2428
  %88 = add i64 %1328, 2
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  %91 = add i64 %84, 16
  store i64 %91, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400f6c:                                     ; preds = %block_400e66
  %92 = add i64 %167, -52
  %93 = add i64 %205, 8
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, 1
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp eq i32 %95, -1
  %99 = icmp eq i32 %96, 0
  %100 = or i1 %98, %99
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %65, align 1, !tbaa !2432
  %102 = and i32 %96, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #12
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %66, align 1, !tbaa !2446
  %107 = xor i32 %96, %95
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %67, align 1, !tbaa !2447
  %111 = zext i1 %99 to i8
  store i8 %111, i8* %68, align 1, !tbaa !2448
  %112 = lshr i32 %96, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %69, align 1, !tbaa !2449
  %114 = lshr i32 %95, 31
  %115 = xor i32 %112, %114
  %116 = add nuw nsw i32 %115, %112
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %70, align 1, !tbaa !2450
  %119 = add i64 %205, 14
  store i64 %119, i64* %PC, align 8
  store i32 %96, i32* %94, align 4
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, -754
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  br label %block_400c88

block_400ce2:                                     ; preds = %block_400cd6
  %122 = add i64 %460, -60
  %123 = add i64 %496, 7
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 0, i32* %124, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400ce9

block_400e7e:                                     ; preds = %block_400e8f, %block_400e77
  %125 = phi i64 [ %1230, %block_400e8f ], [ %.pre32, %block_400e77 ]
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -60
  %128 = add i64 %125, 3
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RAX, align 8, !tbaa !2428
  %132 = add i64 %126, -12
  %133 = add i64 %125, 6
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, -1
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = lshr i32 %136, 31
  %139 = sub i32 %130, %136
  %140 = icmp ult i32 %130, %136
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %65, align 1, !tbaa !2432
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142) #12
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %66, align 1, !tbaa !2446
  %147 = xor i32 %136, %130
  %148 = xor i32 %147, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %67, align 1, !tbaa !2447
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %68, align 1, !tbaa !2448
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %69, align 1, !tbaa !2449
  %156 = lshr i32 %130, 31
  %157 = xor i32 %138, %156
  %158 = xor i32 %154, %156
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %70, align 1, !tbaa !2450
  %162 = icmp ne i8 %155, 0
  %163 = xor i1 %162, %160
  %.v35 = select i1 %163, i64 17, i64 219
  %164 = add i64 %125, %.v35
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  br i1 %163, label %block_400e8f, label %block_400f59

block_400e5f:                                     ; preds = %block_400d9e
  %165 = add i64 %848, 7
  store i64 %165, i64* %PC, align 8
  store i32 0, i32* %815, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400e66

block_400e66:                                     ; preds = %block_400f59, %block_400e5f
  %166 = phi i64 [ %235, %block_400f59 ], [ %.pre31, %block_400e5f ]
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -56
  %169 = add i64 %166, 3
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %167, -8
  %174 = add i64 %166, 6
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, -1
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RCX, align 8, !tbaa !2428
  %179 = lshr i32 %177, 31
  %180 = sub i32 %171, %177
  %181 = icmp ult i32 %171, %177
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %65, align 1, !tbaa !2432
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #12
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %66, align 1, !tbaa !2446
  %188 = xor i32 %177, %171
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %67, align 1, !tbaa !2447
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %68, align 1, !tbaa !2448
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %69, align 1, !tbaa !2449
  %197 = lshr i32 %171, 31
  %198 = xor i32 %179, %197
  %199 = xor i32 %195, %197
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %70, align 1, !tbaa !2450
  %203 = icmp ne i8 %196, 0
  %204 = xor i1 %203, %201
  %.v = select i1 %204, i64 17, i64 262
  %205 = add i64 %166, %.v
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  br i1 %204, label %block_400e77, label %block_400f6c

block_400f59:                                     ; preds = %block_400e7e
  %206 = add i64 %126, -56
  %207 = add i64 %164, 8
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = icmp eq i32 %209, -1
  %213 = icmp eq i32 %210, 0
  %214 = or i1 %212, %213
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %65, align 1, !tbaa !2432
  %216 = and i32 %210, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #12
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %66, align 1, !tbaa !2446
  %221 = xor i32 %210, %209
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %67, align 1, !tbaa !2447
  %225 = zext i1 %213 to i8
  store i8 %225, i8* %68, align 1, !tbaa !2448
  %226 = lshr i32 %210, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %69, align 1, !tbaa !2449
  %228 = lshr i32 %209, 31
  %229 = xor i32 %226, %228
  %230 = add nuw nsw i32 %229, %226
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %70, align 1, !tbaa !2450
  %233 = add i64 %164, 14
  store i64 %233, i64* %PC, align 8
  store i32 %210, i32* %208, align 4
  %234 = load i64, i64* %PC, align 8
  %235 = add i64 %234, -257
  store i64 %235, i64* %PC, align 8, !tbaa !2428
  br label %block_400e66

block_400cf5:                                     ; preds = %block_400ce9
  %236 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 16) to i64*), align 16
  store i64 %236, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %237 = add i64 %1330, -32
  %238 = add i64 %1366, 12
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = add i64 %1330, -56
  %242 = add i64 %1366, 16
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 8000
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = lshr i64 %246, 63
  %248 = add i64 %246, %240
  store i64 %248, i64* %RAX, align 8, !tbaa !2428
  %249 = icmp ult i64 %248, %240
  %250 = icmp ult i64 %248, %246
  %251 = or i1 %249, %250
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %65, align 1, !tbaa !2432
  %253 = trunc i64 %248 to i32
  %254 = and i32 %253, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254) #12
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %66, align 1, !tbaa !2446
  %259 = xor i64 %240, %248
  %260 = lshr i64 %259, 4
  %261 = trunc i64 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %67, align 1, !tbaa !2447
  %263 = icmp eq i64 %248, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %68, align 1, !tbaa !2448
  %265 = lshr i64 %248, 63
  %266 = trunc i64 %265 to i8
  store i8 %266, i8* %69, align 1, !tbaa !2449
  %267 = lshr i64 %240, 63
  %268 = xor i64 %265, %267
  %269 = xor i64 %265, %247
  %270 = add nuw nsw i64 %268, %269
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %70, align 1, !tbaa !2450
  %273 = add i64 %1366, 30
  store i64 %273, i64* %PC, align 8
  %274 = load i32, i32* %1333, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RCX, align 8, !tbaa !2428
  %276 = shl nsw i64 %275, 3
  %277 = add i64 %276, %248
  %278 = add i64 %1366, 35
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %281 = add i64 %1330, -40
  %282 = add i64 %1366, 39
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RAX, align 8, !tbaa !2428
  %285 = add i64 %1366, 43
  store i64 %285, i64* %PC, align 8
  %286 = load i32, i32* %243, align 4
  %287 = sext i32 %286 to i64
  %288 = mul nsw i64 %287, 8000
  store i64 %288, i64* %RCX, align 8, !tbaa !2428
  %289 = lshr i64 %288, 63
  %290 = add i64 %288, %284
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = icmp ult i64 %290, %284
  %292 = icmp ult i64 %290, %288
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %65, align 1, !tbaa !2432
  %295 = trunc i64 %290 to i32
  %296 = and i32 %295, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #12
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %66, align 1, !tbaa !2446
  %301 = xor i64 %284, %290
  %302 = lshr i64 %301, 4
  %303 = trunc i64 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %67, align 1, !tbaa !2447
  %305 = icmp eq i64 %290, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %68, align 1, !tbaa !2448
  %307 = lshr i64 %290, 63
  %308 = trunc i64 %307 to i8
  store i8 %308, i8* %69, align 1, !tbaa !2449
  %309 = lshr i64 %284, 63
  %310 = xor i64 %307, %309
  %311 = xor i64 %307, %289
  %312 = add nuw nsw i64 %310, %311
  %313 = icmp eq i64 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %70, align 1, !tbaa !2450
  %315 = load i64, i64* %RBP, align 8
  %316 = add i64 %315, -60
  %317 = add i64 %1366, 57
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %RCX, align 8, !tbaa !2428
  %321 = shl nsw i64 %320, 3
  %322 = add i64 %321, %290
  %323 = add i64 %1366, 62
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %326 = add i64 %315, -40
  %327 = add i64 %1366, 66
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = add i64 %315, -56
  %331 = add i64 %1366, 69
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %333, -1
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RDX, align 8, !tbaa !2428
  %336 = sext i32 %334 to i64
  %337 = mul nsw i64 %336, 8000
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = lshr i64 %337, 63
  %339 = add i64 %337, %329
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = icmp ult i64 %339, %329
  %341 = icmp ult i64 %339, %337
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %65, align 1, !tbaa !2432
  %344 = trunc i64 %339 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345) #12
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %66, align 1, !tbaa !2446
  %350 = xor i64 %329, %339
  %351 = lshr i64 %350, 4
  %352 = trunc i64 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %67, align 1, !tbaa !2447
  %354 = icmp eq i64 %339, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %68, align 1, !tbaa !2448
  %356 = lshr i64 %339, 63
  %357 = trunc i64 %356 to i8
  store i8 %357, i8* %69, align 1, !tbaa !2449
  %358 = lshr i64 %329, 63
  %359 = xor i64 %356, %358
  %360 = xor i64 %356, %338
  %361 = add nuw nsw i64 %359, %360
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %70, align 1, !tbaa !2450
  %364 = load i64, i64* %RBP, align 8
  %365 = add i64 %364, -60
  %366 = add i64 %1366, 89
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX, align 8, !tbaa !2428
  %370 = shl nsw i64 %369, 3
  %371 = add i64 %370, %339
  %372 = add i64 %1366, 94
  store i64 %372, i64* %PC, align 8
  %373 = load double, double* %79, align 1
  %374 = inttoptr i64 %371 to double*
  %375 = load double, double* %374, align 8
  %376 = fsub double %373, %375
  store double %376, double* %79, align 1, !tbaa !2452
  %377 = load double, double* %74, align 1
  %378 = fmul double %377, %376
  store double %378, double* %74, align 1, !tbaa !2452
  %379 = load double, double* %75, align 1
  %380 = fsub double %379, %378
  store double %380, double* %75, align 1, !tbaa !2452
  %381 = add i64 %364, -32
  %382 = add i64 %1366, 106
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to i64*
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %RAX, align 8, !tbaa !2428
  %385 = add i64 %364, -56
  %386 = add i64 %1366, 110
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = mul nsw i64 %389, 8000
  store i64 %390, i64* %RCX, align 8, !tbaa !2428
  %391 = lshr i64 %390, 63
  %392 = add i64 %390, %384
  store i64 %392, i64* %RAX, align 8, !tbaa !2428
  %393 = icmp ult i64 %392, %384
  %394 = icmp ult i64 %392, %390
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %65, align 1, !tbaa !2432
  %397 = trunc i64 %392 to i32
  %398 = and i32 %397, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398) #12
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %66, align 1, !tbaa !2446
  %403 = xor i64 %384, %392
  %404 = lshr i64 %403, 4
  %405 = trunc i64 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %67, align 1, !tbaa !2447
  %407 = icmp eq i64 %392, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %68, align 1, !tbaa !2448
  %409 = lshr i64 %392, 63
  %410 = trunc i64 %409 to i8
  store i8 %410, i8* %69, align 1, !tbaa !2449
  %411 = lshr i64 %384, 63
  %412 = xor i64 %409, %411
  %413 = xor i64 %409, %391
  %414 = add nuw nsw i64 %412, %413
  %415 = icmp eq i64 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %70, align 1, !tbaa !2450
  %417 = load i64, i64* %RBP, align 8
  %418 = add i64 %417, -60
  %419 = add i64 %1366, 124
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  store i64 %422, i64* %RCX, align 8, !tbaa !2428
  %423 = shl nsw i64 %422, 3
  %424 = add i64 %423, %392
  %425 = add i64 %1366, 129
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to double*
  store double %380, double* %426, align 8
  %427 = load i64, i64* %RBP, align 8
  %428 = add i64 %427, -60
  %429 = load i64, i64* %PC, align 8
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %432, 1
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX, align 8, !tbaa !2428
  %435 = icmp eq i32 %432, -1
  %436 = icmp eq i32 %433, 0
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %65, align 1, !tbaa !2432
  %439 = and i32 %433, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439) #12
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %66, align 1, !tbaa !2446
  %444 = xor i32 %433, %432
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %67, align 1, !tbaa !2447
  %448 = zext i1 %436 to i8
  store i8 %448, i8* %68, align 1, !tbaa !2448
  %449 = lshr i32 %433, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %69, align 1, !tbaa !2449
  %451 = lshr i32 %432, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %449
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %70, align 1, !tbaa !2450
  %456 = add i64 %429, 9
  store i64 %456, i64* %PC, align 8
  store i32 %433, i32* %431, align 4
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %457, -150
  store i64 %458, i64* %PC, align 8, !tbaa !2428
  br label %block_400ce9

block_400cd6:                                     ; preds = %block_400d84, %block_400ccf
  %459 = phi i64 [ %1396, %block_400d84 ], [ %.pre29, %block_400ccf ]
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -56
  %462 = add i64 %459, 3
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = add i64 %460, -8
  %467 = add i64 %459, 6
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = sub i32 %464, %469
  %471 = icmp ult i32 %464, %469
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %65, align 1, !tbaa !2432
  %473 = and i32 %470, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473) #12
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %66, align 1, !tbaa !2446
  %478 = xor i32 %469, %464
  %479 = xor i32 %478, %470
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %67, align 1, !tbaa !2447
  %483 = icmp eq i32 %470, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %68, align 1, !tbaa !2448
  %485 = lshr i32 %470, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %69, align 1, !tbaa !2449
  %487 = lshr i32 %464, 31
  %488 = lshr i32 %469, 31
  %489 = xor i32 %488, %487
  %490 = xor i32 %485, %487
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %70, align 1, !tbaa !2450
  %494 = icmp ne i8 %486, 0
  %495 = xor i1 %494, %492
  %.v40 = select i1 %495, i64 12, i64 193
  %496 = add i64 %459, %.v40
  store i64 %496, i64* %PC, align 8, !tbaa !2428
  br i1 %495, label %block_400ce2, label %block_400d97

block_400e4c:                                     ; preds = %block_400db1
  %497 = add i64 %528, -56
  %498 = add i64 %564, 8
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = add i32 %500, 1
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RAX, align 8, !tbaa !2428
  %503 = icmp eq i32 %500, -1
  %504 = icmp eq i32 %501, 0
  %505 = or i1 %503, %504
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %65, align 1, !tbaa !2432
  %507 = and i32 %501, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507) #12
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %66, align 1, !tbaa !2446
  %512 = xor i32 %501, %500
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %67, align 1, !tbaa !2447
  %516 = zext i1 %504 to i8
  store i8 %516, i8* %68, align 1, !tbaa !2448
  %517 = lshr i32 %501, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %69, align 1, !tbaa !2449
  %519 = lshr i32 %500, 31
  %520 = xor i32 %517, %519
  %521 = add nuw nsw i32 %520, %517
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %70, align 1, !tbaa !2450
  %524 = add i64 %564, 14
  store i64 %524, i64* %PC, align 8
  store i32 %501, i32* %499, align 4
  %525 = load i64, i64* %PC, align 8
  %526 = add i64 %525, -188
  store i64 %526, i64* %PC, align 8, !tbaa !2428
  br label %block_400d9e

block_400db1:                                     ; preds = %block_400dbd, %block_400daa
  %527 = phi i64 [ %810, %block_400dbd ], [ %.pre33, %block_400daa ]
  %528 = load i64, i64* %RBP, align 8
  %529 = add i64 %528, -60
  %530 = add i64 %527, 3
  store i64 %530, i64* %PC, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX, align 8, !tbaa !2428
  %534 = add i64 %528, -12
  %535 = add i64 %527, 6
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sub i32 %532, %537
  %539 = icmp ult i32 %532, %537
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %65, align 1, !tbaa !2432
  %541 = and i32 %538, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541) #12
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %66, align 1, !tbaa !2446
  %546 = xor i32 %537, %532
  %547 = xor i32 %546, %538
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %67, align 1, !tbaa !2447
  %551 = icmp eq i32 %538, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %68, align 1, !tbaa !2448
  %553 = lshr i32 %538, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %69, align 1, !tbaa !2449
  %555 = lshr i32 %532, 31
  %556 = lshr i32 %537, 31
  %557 = xor i32 %556, %555
  %558 = xor i32 %553, %555
  %559 = add nuw nsw i32 %558, %557
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %70, align 1, !tbaa !2450
  %562 = icmp ne i8 %554, 0
  %563 = xor i1 %562, %560
  %.v36 = select i1 %563, i64 12, i64 155
  %564 = add i64 %527, %.v36
  store i64 %564, i64* %PC, align 8, !tbaa !2428
  br i1 %563, label %block_400dbd, label %block_400e4c

block_400daa:                                     ; preds = %block_400d9e
  %565 = add i64 %812, -60
  %566 = add i64 %848, 7
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i32*
  store i32 1, i32* %567, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400db1

block_400e77:                                     ; preds = %block_400e66
  %568 = add i64 %167, -60
  %569 = add i64 %205, 7
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 0, i32* %570, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400e7e

block_400dbd:                                     ; preds = %block_400db1
  %571 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 16) to i64*), align 16
  store i64 %571, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %572 = add i64 %528, -24
  %573 = add i64 %564, 12
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RAX, align 8, !tbaa !2428
  %576 = add i64 %528, -56
  %577 = add i64 %564, 16
  store i64 %577, i64* %PC, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = mul nsw i64 %580, 8000
  store i64 %581, i64* %RCX, align 8, !tbaa !2428
  %582 = lshr i64 %581, 63
  %583 = add i64 %581, %575
  store i64 %583, i64* %RAX, align 8, !tbaa !2428
  %584 = icmp ult i64 %583, %575
  %585 = icmp ult i64 %583, %581
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %65, align 1, !tbaa !2432
  %588 = trunc i64 %583 to i32
  %589 = and i32 %588, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589) #12
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %66, align 1, !tbaa !2446
  %594 = xor i64 %575, %583
  %595 = lshr i64 %594, 4
  %596 = trunc i64 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %67, align 1, !tbaa !2447
  %598 = icmp eq i64 %583, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %68, align 1, !tbaa !2448
  %600 = lshr i64 %583, 63
  %601 = trunc i64 %600 to i8
  store i8 %601, i8* %69, align 1, !tbaa !2449
  %602 = lshr i64 %575, 63
  %603 = xor i64 %600, %602
  %604 = xor i64 %600, %582
  %605 = add nuw nsw i64 %603, %604
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %70, align 1, !tbaa !2450
  %608 = add i64 %564, 30
  store i64 %608, i64* %PC, align 8
  %609 = load i32, i32* %531, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RCX, align 8, !tbaa !2428
  %611 = shl nsw i64 %610, 3
  %612 = add i64 %611, %583
  %613 = add i64 %564, 35
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %616 = add i64 %528, -40
  %617 = add i64 %564, 39
  store i64 %617, i64* %PC, align 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %RAX, align 8, !tbaa !2428
  %620 = add i64 %564, 43
  store i64 %620, i64* %PC, align 8
  %621 = load i32, i32* %578, align 4
  %622 = sext i32 %621 to i64
  %623 = mul nsw i64 %622, 8000
  store i64 %623, i64* %RCX, align 8, !tbaa !2428
  %624 = lshr i64 %623, 63
  %625 = add i64 %623, %619
  store i64 %625, i64* %RAX, align 8, !tbaa !2428
  %626 = icmp ult i64 %625, %619
  %627 = icmp ult i64 %625, %623
  %628 = or i1 %626, %627
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %65, align 1, !tbaa !2432
  %630 = trunc i64 %625 to i32
  %631 = and i32 %630, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631) #12
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %66, align 1, !tbaa !2446
  %636 = xor i64 %619, %625
  %637 = lshr i64 %636, 4
  %638 = trunc i64 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %67, align 1, !tbaa !2447
  %640 = icmp eq i64 %625, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %68, align 1, !tbaa !2448
  %642 = lshr i64 %625, 63
  %643 = trunc i64 %642 to i8
  store i8 %643, i8* %69, align 1, !tbaa !2449
  %644 = lshr i64 %619, 63
  %645 = xor i64 %642, %644
  %646 = xor i64 %642, %624
  %647 = add nuw nsw i64 %645, %646
  %648 = icmp eq i64 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %70, align 1, !tbaa !2450
  %650 = load i64, i64* %RBP, align 8
  %651 = add i64 %650, -60
  %652 = add i64 %564, 57
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RCX, align 8, !tbaa !2428
  %656 = shl nsw i64 %655, 3
  %657 = add i64 %656, %625
  %658 = add i64 %564, 62
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %661 = add i64 %650, -40
  %662 = add i64 %564, 66
  store i64 %662, i64* %PC, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RAX, align 8, !tbaa !2428
  %665 = add i64 %650, -56
  %666 = add i64 %564, 70
  store i64 %666, i64* %PC, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = sext i32 %668 to i64
  %670 = mul nsw i64 %669, 8000
  store i64 %670, i64* %RCX, align 8, !tbaa !2428
  %671 = lshr i64 %670, 63
  %672 = add i64 %670, %664
  store i64 %672, i64* %RAX, align 8, !tbaa !2428
  %673 = icmp ult i64 %672, %664
  %674 = icmp ult i64 %672, %670
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %65, align 1, !tbaa !2432
  %677 = trunc i64 %672 to i32
  %678 = and i32 %677, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678) #12
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %66, align 1, !tbaa !2446
  %683 = xor i64 %664, %672
  %684 = lshr i64 %683, 4
  %685 = trunc i64 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %67, align 1, !tbaa !2447
  %687 = icmp eq i64 %672, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %68, align 1, !tbaa !2448
  %689 = lshr i64 %672, 63
  %690 = trunc i64 %689 to i8
  store i8 %690, i8* %69, align 1, !tbaa !2449
  %691 = lshr i64 %664, 63
  %692 = xor i64 %689, %691
  %693 = xor i64 %689, %671
  %694 = add nuw nsw i64 %692, %693
  %695 = icmp eq i64 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %70, align 1, !tbaa !2450
  %697 = add i64 %564, 83
  store i64 %697, i64* %PC, align 8
  %698 = load i32, i32* %653, align 4
  %699 = add i32 %698, -1
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  %701 = icmp eq i32 %698, 0
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %65, align 1, !tbaa !2432
  %703 = and i32 %699, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703) #12
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %66, align 1, !tbaa !2446
  %708 = xor i32 %699, %698
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %67, align 1, !tbaa !2447
  %712 = icmp eq i32 %699, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %68, align 1, !tbaa !2448
  %714 = lshr i32 %699, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %69, align 1, !tbaa !2449
  %716 = lshr i32 %698, 31
  %717 = xor i32 %714, %716
  %718 = add nuw nsw i32 %717, %716
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %70, align 1, !tbaa !2450
  %721 = sext i32 %699 to i64
  store i64 %721, i64* %RCX, align 8, !tbaa !2428
  %722 = shl nsw i64 %721, 3
  %723 = add i64 %672, %722
  %724 = add i64 %564, 94
  store i64 %724, i64* %PC, align 8
  %725 = load double, double* %79, align 1
  %726 = inttoptr i64 %723 to double*
  %727 = load double, double* %726, align 8
  %728 = fsub double %725, %727
  store double %728, double* %79, align 1, !tbaa !2452
  %729 = load double, double* %74, align 1
  %730 = fmul double %729, %728
  store double %730, double* %74, align 1, !tbaa !2452
  %731 = load double, double* %75, align 1
  %732 = fsub double %731, %730
  store double %732, double* %75, align 1, !tbaa !2452
  %733 = load i64, i64* %RBP, align 8
  %734 = add i64 %733, -24
  %735 = add i64 %564, 106
  store i64 %735, i64* %PC, align 8
  %736 = inttoptr i64 %734 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RAX, align 8, !tbaa !2428
  %738 = add i64 %733, -56
  %739 = add i64 %564, 110
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  %743 = mul nsw i64 %742, 8000
  store i64 %743, i64* %RCX, align 8, !tbaa !2428
  %744 = lshr i64 %743, 63
  %745 = add i64 %743, %737
  store i64 %745, i64* %RAX, align 8, !tbaa !2428
  %746 = icmp ult i64 %745, %737
  %747 = icmp ult i64 %745, %743
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %65, align 1, !tbaa !2432
  %750 = trunc i64 %745 to i32
  %751 = and i32 %750, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751) #12
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %66, align 1, !tbaa !2446
  %756 = xor i64 %737, %745
  %757 = lshr i64 %756, 4
  %758 = trunc i64 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %67, align 1, !tbaa !2447
  %760 = icmp eq i64 %745, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %68, align 1, !tbaa !2448
  %762 = lshr i64 %745, 63
  %763 = trunc i64 %762 to i8
  store i8 %763, i8* %69, align 1, !tbaa !2449
  %764 = lshr i64 %737, 63
  %765 = xor i64 %762, %764
  %766 = xor i64 %762, %744
  %767 = add nuw nsw i64 %765, %766
  %768 = icmp eq i64 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %70, align 1, !tbaa !2450
  %770 = add i64 %733, -60
  %771 = add i64 %564, 124
  store i64 %771, i64* %PC, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RCX, align 8, !tbaa !2428
  %775 = shl nsw i64 %774, 3
  %776 = add i64 %775, %745
  %777 = add i64 %564, 129
  store i64 %777, i64* %PC, align 8
  %778 = inttoptr i64 %776 to double*
  store double %732, double* %778, align 8
  %779 = load i64, i64* %RBP, align 8
  %780 = add i64 %779, -60
  %781 = load i64, i64* %PC, align 8
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC, align 8
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = add i32 %784, 1
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RAX, align 8, !tbaa !2428
  %787 = icmp eq i32 %784, -1
  %788 = icmp eq i32 %785, 0
  %789 = or i1 %787, %788
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %65, align 1, !tbaa !2432
  %791 = and i32 %785, 255
  %792 = tail call i32 @llvm.ctpop.i32(i32 %791) #12
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, i8* %66, align 1, !tbaa !2446
  %796 = xor i32 %785, %784
  %797 = lshr i32 %796, 4
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  store i8 %799, i8* %67, align 1, !tbaa !2447
  %800 = zext i1 %788 to i8
  store i8 %800, i8* %68, align 1, !tbaa !2448
  %801 = lshr i32 %785, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %69, align 1, !tbaa !2449
  %803 = lshr i32 %784, 31
  %804 = xor i32 %801, %803
  %805 = add nuw nsw i32 %804, %801
  %806 = icmp eq i32 %805, 2
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %70, align 1, !tbaa !2450
  %808 = add i64 %781, 9
  store i64 %808, i64* %PC, align 8
  store i32 %785, i32* %783, align 4
  %809 = load i64, i64* %PC, align 8
  %810 = add i64 %809, -150
  store i64 %810, i64* %PC, align 8, !tbaa !2428
  br label %block_400db1

block_400d9e:                                     ; preds = %block_400d97, %block_400e4c
  %811 = phi i64 [ %.pre30, %block_400d97 ], [ %526, %block_400e4c ]
  %812 = load i64, i64* %RBP, align 8
  %813 = add i64 %812, -56
  %814 = add i64 %811, 3
  store i64 %814, i64* %PC, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RAX, align 8, !tbaa !2428
  %818 = add i64 %812, -8
  %819 = add i64 %811, 6
  store i64 %819, i64* %PC, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sub i32 %816, %821
  %823 = icmp ult i32 %816, %821
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %65, align 1, !tbaa !2432
  %825 = and i32 %822, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825) #12
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %66, align 1, !tbaa !2446
  %830 = xor i32 %821, %816
  %831 = xor i32 %830, %822
  %832 = lshr i32 %831, 4
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %67, align 1, !tbaa !2447
  %835 = icmp eq i32 %822, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %68, align 1, !tbaa !2448
  %837 = lshr i32 %822, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %69, align 1, !tbaa !2449
  %839 = lshr i32 %816, 31
  %840 = lshr i32 %821, 31
  %841 = xor i32 %840, %839
  %842 = xor i32 %837, %839
  %843 = add nuw nsw i32 %842, %841
  %844 = icmp eq i32 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %70, align 1, !tbaa !2450
  %846 = icmp ne i8 %838, 0
  %847 = xor i1 %846, %844
  %.v41 = select i1 %847, i64 12, i64 193
  %848 = add i64 %811, %.v41
  store i64 %848, i64* %PC, align 8, !tbaa !2428
  br i1 %847, label %block_400daa, label %block_400e5f

block_400c9b:                                     ; preds = %block_400ca7, %block_400c94
  %849 = phi i64 [ %1290, %block_400ca7 ], [ %.pre28, %block_400c94 ]
  %850 = load i64, i64* %RBP, align 8
  %851 = add i64 %850, -60
  %852 = add i64 %849, 3
  store i64 %852, i64* %PC, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RAX, align 8, !tbaa !2428
  %856 = add i64 %850, -12
  %857 = add i64 %849, 6
  store i64 %857, i64* %PC, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sub i32 %854, %859
  %861 = icmp ult i32 %854, %859
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %65, align 1, !tbaa !2432
  %863 = and i32 %860, 255
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863) #12
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %66, align 1, !tbaa !2446
  %868 = xor i32 %859, %854
  %869 = xor i32 %868, %860
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  store i8 %872, i8* %67, align 1, !tbaa !2447
  %873 = icmp eq i32 %860, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %68, align 1, !tbaa !2448
  %875 = lshr i32 %860, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %69, align 1, !tbaa !2449
  %877 = lshr i32 %854, 31
  %878 = lshr i32 %859, 31
  %879 = xor i32 %878, %877
  %880 = xor i32 %875, %877
  %881 = add nuw nsw i32 %880, %879
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %70, align 1, !tbaa !2450
  %884 = icmp ne i8 %876, 0
  %885 = xor i1 %884, %882
  %.v39 = select i1 %885, i64 12, i64 52
  %886 = add i64 %849, %.v39
  store i64 %886, i64* %PC, align 8, !tbaa !2428
  br i1 %885, label %block_400ca7, label %block_400ccf

block_400c94:                                     ; preds = %block_400c88
  %887 = add i64 %1292, -60
  %888 = add i64 %1328, 7
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i32*
  store i32 0, i32* %889, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400c9b

block_400d97:                                     ; preds = %block_400cd6
  %890 = add i64 %496, 7
  store i64 %890, i64* %PC, align 8
  store i32 0, i32* %463, align 4
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400d9e

block_400e8f:                                     ; preds = %block_400e7e
  %891 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 8) to i64*), align 8
  store i64 %891, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %892 = add i64 %126, -40
  %893 = add i64 %164, 12
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %892 to i64*
  %895 = load i64, i64* %894, align 8
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = add i64 %126, -56
  %897 = add i64 %164, 16
  store i64 %897, i64* %PC, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = sext i32 %899 to i64
  %901 = mul nsw i64 %900, 8000
  store i64 %901, i64* %RCX, align 8, !tbaa !2428
  %902 = lshr i64 %901, 63
  %903 = add i64 %901, %895
  store i64 %903, i64* %RAX, align 8, !tbaa !2428
  %904 = icmp ult i64 %903, %895
  %905 = icmp ult i64 %903, %901
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %65, align 1, !tbaa !2432
  %908 = trunc i64 %903 to i32
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909) #12
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %66, align 1, !tbaa !2446
  %914 = xor i64 %895, %903
  %915 = lshr i64 %914, 4
  %916 = trunc i64 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %67, align 1, !tbaa !2447
  %918 = icmp eq i64 %903, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %68, align 1, !tbaa !2448
  %920 = lshr i64 %903, 63
  %921 = trunc i64 %920 to i8
  store i8 %921, i8* %69, align 1, !tbaa !2449
  %922 = lshr i64 %895, 63
  %923 = xor i64 %920, %922
  %924 = xor i64 %920, %902
  %925 = add nuw nsw i64 %923, %924
  %926 = icmp eq i64 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %70, align 1, !tbaa !2450
  %928 = add i64 %164, 30
  store i64 %928, i64* %PC, align 8
  %929 = load i32, i32* %129, align 4
  %930 = sext i32 %929 to i64
  store i64 %930, i64* %RCX, align 8, !tbaa !2428
  %931 = shl nsw i64 %930, 3
  %932 = add i64 %931, %903
  %933 = add i64 %164, 35
  store i64 %933, i64* %PC, align 8
  %934 = inttoptr i64 %932 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %76, align 1, !tbaa !2452
  store double 0.000000e+00, double* %78, align 1, !tbaa !2452
  %936 = add i64 %126, -24
  %937 = add i64 %164, 39
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX, align 8, !tbaa !2428
  %940 = add i64 %164, 43
  store i64 %940, i64* %PC, align 8
  %941 = load i32, i32* %898, align 4
  %942 = sext i32 %941 to i64
  %943 = mul nsw i64 %942, 8000
  store i64 %943, i64* %RCX, align 8, !tbaa !2428
  %944 = lshr i64 %943, 63
  %945 = add i64 %943, %939
  store i64 %945, i64* %RAX, align 8, !tbaa !2428
  %946 = icmp ult i64 %945, %939
  %947 = icmp ult i64 %945, %943
  %948 = or i1 %946, %947
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %65, align 1, !tbaa !2432
  %950 = trunc i64 %945 to i32
  %951 = and i32 %950, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951) #12
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %66, align 1, !tbaa !2446
  %956 = xor i64 %939, %945
  %957 = lshr i64 %956, 4
  %958 = trunc i64 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %67, align 1, !tbaa !2447
  %960 = icmp eq i64 %945, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %68, align 1, !tbaa !2448
  %962 = lshr i64 %945, 63
  %963 = trunc i64 %962 to i8
  store i8 %963, i8* %69, align 1, !tbaa !2449
  %964 = lshr i64 %939, 63
  %965 = xor i64 %962, %964
  %966 = xor i64 %962, %944
  %967 = add nuw nsw i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %70, align 1, !tbaa !2450
  %970 = load i64, i64* %RBP, align 8
  %971 = add i64 %970, -60
  %972 = add i64 %164, 56
  store i64 %972, i64* %PC, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = add i32 %974, 1
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RDX, align 8, !tbaa !2428
  %977 = icmp eq i32 %974, -1
  %978 = icmp eq i32 %975, 0
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %65, align 1, !tbaa !2432
  %981 = and i32 %975, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981) #12
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %66, align 1, !tbaa !2446
  %986 = xor i32 %975, %974
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %67, align 1, !tbaa !2447
  %990 = zext i1 %978 to i8
  store i8 %990, i8* %68, align 1, !tbaa !2448
  %991 = lshr i32 %975, 31
  %992 = trunc i32 %991 to i8
  store i8 %992, i8* %69, align 1, !tbaa !2449
  %993 = lshr i32 %974, 31
  %994 = xor i32 %991, %993
  %995 = add nuw nsw i32 %994, %991
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %70, align 1, !tbaa !2450
  %998 = sext i32 %975 to i64
  store i64 %998, i64* %RCX, align 8, !tbaa !2428
  %999 = shl nsw i64 %998, 3
  %1000 = add i64 %945, %999
  %1001 = add i64 %164, 67
  store i64 %1001, i64* %PC, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %1004 = add i64 %970, -24
  %1005 = add i64 %164, 71
  store i64 %1005, i64* %PC, align 8
  %1006 = inttoptr i64 %1004 to i64*
  %1007 = load i64, i64* %1006, align 8
  store i64 %1007, i64* %RAX, align 8, !tbaa !2428
  %1008 = add i64 %970, -56
  %1009 = add i64 %164, 75
  store i64 %1009, i64* %PC, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = sext i32 %1011 to i64
  %1013 = mul nsw i64 %1012, 8000
  store i64 %1013, i64* %RCX, align 8, !tbaa !2428
  %1014 = lshr i64 %1013, 63
  %1015 = add i64 %1013, %1007
  store i64 %1015, i64* %RAX, align 8, !tbaa !2428
  %1016 = icmp ult i64 %1015, %1007
  %1017 = icmp ult i64 %1015, %1013
  %1018 = or i1 %1016, %1017
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %65, align 1, !tbaa !2432
  %1020 = trunc i64 %1015 to i32
  %1021 = and i32 %1020, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021) #12
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %66, align 1, !tbaa !2446
  %1026 = xor i64 %1007, %1015
  %1027 = lshr i64 %1026, 4
  %1028 = trunc i64 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %67, align 1, !tbaa !2447
  %1030 = icmp eq i64 %1015, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %68, align 1, !tbaa !2448
  %1032 = lshr i64 %1015, 63
  %1033 = trunc i64 %1032 to i8
  store i8 %1033, i8* %69, align 1, !tbaa !2449
  %1034 = lshr i64 %1007, 63
  %1035 = xor i64 %1032, %1034
  %1036 = xor i64 %1032, %1014
  %1037 = add nuw nsw i64 %1035, %1036
  %1038 = icmp eq i64 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %70, align 1, !tbaa !2450
  %1040 = load i64, i64* %RBP, align 8
  %1041 = add i64 %1040, -60
  %1042 = add i64 %164, 89
  store i64 %1042, i64* %PC, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RCX, align 8, !tbaa !2428
  %1046 = shl nsw i64 %1045, 3
  %1047 = add i64 %1046, %1015
  %1048 = add i64 %164, 94
  store i64 %1048, i64* %PC, align 8
  %1049 = bitcast i64 %1003 to double
  %1050 = inttoptr i64 %1047 to double*
  %1051 = load double, double* %1050, align 8
  %1052 = fsub double %1049, %1051
  store double %1052, double* %79, align 1, !tbaa !2452
  store i64 0, i64* %81, align 1, !tbaa !2452
  %1053 = add i64 %1040, -32
  %1054 = add i64 %164, 98
  store i64 %1054, i64* %PC, align 8
  %1055 = inttoptr i64 %1053 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %RAX, align 8, !tbaa !2428
  %1057 = add i64 %1040, -56
  %1058 = add i64 %164, 101
  store i64 %1058, i64* %PC, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = add i32 %1060, 1
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RDX, align 8, !tbaa !2428
  %1063 = sext i32 %1061 to i64
  %1064 = mul nsw i64 %1063, 8000
  store i64 %1064, i64* %RCX, align 8, !tbaa !2428
  %1065 = lshr i64 %1064, 63
  %1066 = add i64 %1064, %1056
  store i64 %1066, i64* %RAX, align 8, !tbaa !2428
  %1067 = icmp ult i64 %1066, %1056
  %1068 = icmp ult i64 %1066, %1064
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %65, align 1, !tbaa !2432
  %1071 = trunc i64 %1066 to i32
  %1072 = and i32 %1071, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072) #12
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %66, align 1, !tbaa !2446
  %1077 = xor i64 %1056, %1066
  %1078 = lshr i64 %1077, 4
  %1079 = trunc i64 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %67, align 1, !tbaa !2447
  %1081 = icmp eq i64 %1066, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %68, align 1, !tbaa !2448
  %1083 = lshr i64 %1066, 63
  %1084 = trunc i64 %1083 to i8
  store i8 %1084, i8* %69, align 1, !tbaa !2449
  %1085 = lshr i64 %1056, 63
  %1086 = xor i64 %1083, %1085
  %1087 = xor i64 %1083, %1065
  %1088 = add nuw nsw i64 %1086, %1087
  %1089 = icmp eq i64 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %70, align 1, !tbaa !2450
  %1091 = load i64, i64* %RBP, align 8
  %1092 = add i64 %1091, -60
  %1093 = add i64 %164, 121
  store i64 %1093, i64* %PC, align 8
  %1094 = inttoptr i64 %1092 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RCX, align 8, !tbaa !2428
  %1097 = shl nsw i64 %1096, 3
  %1098 = add i64 %1097, %1066
  %1099 = add i64 %164, 126
  store i64 %1099, i64* %PC, align 8
  %1100 = load double, double* %79, align 1
  %1101 = inttoptr i64 %1098 to double*
  %1102 = load double, double* %1101, align 8
  %1103 = fadd double %1100, %1102
  store double %1103, double* %79, align 1, !tbaa !2452
  %1104 = add i64 %1091, -32
  %1105 = add i64 %164, 130
  store i64 %1105, i64* %PC, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RAX, align 8, !tbaa !2428
  %1108 = add i64 %1091, -56
  %1109 = add i64 %164, 134
  store i64 %1109, i64* %PC, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = mul nsw i64 %1112, 8000
  store i64 %1113, i64* %RCX, align 8, !tbaa !2428
  %1114 = lshr i64 %1113, 63
  %1115 = add i64 %1113, %1107
  store i64 %1115, i64* %RAX, align 8, !tbaa !2428
  %1116 = icmp ult i64 %1115, %1107
  %1117 = icmp ult i64 %1115, %1113
  %1118 = or i1 %1116, %1117
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %65, align 1, !tbaa !2432
  %1120 = trunc i64 %1115 to i32
  %1121 = and i32 %1120, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121) #12
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %66, align 1, !tbaa !2446
  %1126 = xor i64 %1107, %1115
  %1127 = lshr i64 %1126, 4
  %1128 = trunc i64 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %67, align 1, !tbaa !2447
  %1130 = icmp eq i64 %1115, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %68, align 1, !tbaa !2448
  %1132 = lshr i64 %1115, 63
  %1133 = trunc i64 %1132 to i8
  store i8 %1133, i8* %69, align 1, !tbaa !2449
  %1134 = lshr i64 %1107, 63
  %1135 = xor i64 %1132, %1134
  %1136 = xor i64 %1132, %1114
  %1137 = add nuw nsw i64 %1135, %1136
  %1138 = icmp eq i64 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %70, align 1, !tbaa !2450
  %1140 = add i64 %164, 148
  store i64 %1140, i64* %PC, align 8
  %1141 = load i32, i32* %1094, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RCX, align 8, !tbaa !2428
  %1143 = shl nsw i64 %1142, 3
  %1144 = add i64 %1143, %1115
  %1145 = add i64 %164, 153
  store i64 %1145, i64* %PC, align 8
  %1146 = inttoptr i64 %1144 to double*
  %1147 = load double, double* %1146, align 8
  %1148 = fsub double %1103, %1147
  store double %1148, double* %79, align 1, !tbaa !2452
  %1149 = load double, double* %74, align 1
  %1150 = fmul double %1149, %1148
  store double %1150, double* %74, align 1, !tbaa !2452
  %1151 = load double, double* %75, align 1
  %1152 = fsub double %1151, %1150
  store double %1152, double* %75, align 1, !tbaa !2452
  %1153 = load i64, i64* %RBP, align 8
  %1154 = add i64 %1153, -40
  %1155 = add i64 %164, 165
  store i64 %1155, i64* %PC, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = add i64 %1153, -56
  %1159 = add i64 %164, 169
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = mul nsw i64 %1162, 8000
  store i64 %1163, i64* %RCX, align 8, !tbaa !2428
  %1164 = lshr i64 %1163, 63
  %1165 = add i64 %1163, %1157
  store i64 %1165, i64* %RAX, align 8, !tbaa !2428
  %1166 = icmp ult i64 %1165, %1157
  %1167 = icmp ult i64 %1165, %1163
  %1168 = or i1 %1166, %1167
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %65, align 1, !tbaa !2432
  %1170 = trunc i64 %1165 to i32
  %1171 = and i32 %1170, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171) #12
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %66, align 1, !tbaa !2446
  %1176 = xor i64 %1157, %1165
  %1177 = lshr i64 %1176, 4
  %1178 = trunc i64 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %67, align 1, !tbaa !2447
  %1180 = icmp eq i64 %1165, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %68, align 1, !tbaa !2448
  %1182 = lshr i64 %1165, 63
  %1183 = trunc i64 %1182 to i8
  store i8 %1183, i8* %69, align 1, !tbaa !2449
  %1184 = lshr i64 %1157, 63
  %1185 = xor i64 %1182, %1184
  %1186 = xor i64 %1182, %1164
  %1187 = add nuw nsw i64 %1185, %1186
  %1188 = icmp eq i64 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %70, align 1, !tbaa !2450
  %1190 = add i64 %1153, -60
  %1191 = add i64 %164, 183
  store i64 %1191, i64* %PC, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = sext i32 %1193 to i64
  store i64 %1194, i64* %RCX, align 8, !tbaa !2428
  %1195 = shl nsw i64 %1194, 3
  %1196 = add i64 %1195, %1165
  %1197 = add i64 %164, 188
  store i64 %1197, i64* %PC, align 8
  %1198 = inttoptr i64 %1196 to double*
  store double %1152, double* %1198, align 8
  %1199 = load i64, i64* %RBP, align 8
  %1200 = add i64 %1199, -60
  %1201 = load i64, i64* %PC, align 8
  %1202 = add i64 %1201, 3
  store i64 %1202, i64* %PC, align 8
  %1203 = inttoptr i64 %1200 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = add i32 %1204, 1
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RAX, align 8, !tbaa !2428
  %1207 = icmp eq i32 %1204, -1
  %1208 = icmp eq i32 %1205, 0
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %65, align 1, !tbaa !2432
  %1211 = and i32 %1205, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211) #12
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %66, align 1, !tbaa !2446
  %1216 = xor i32 %1205, %1204
  %1217 = lshr i32 %1216, 4
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  store i8 %1219, i8* %67, align 1, !tbaa !2447
  %1220 = zext i1 %1208 to i8
  store i8 %1220, i8* %68, align 1, !tbaa !2448
  %1221 = lshr i32 %1205, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %69, align 1, !tbaa !2449
  %1223 = lshr i32 %1204, 31
  %1224 = xor i32 %1221, %1223
  %1225 = add nuw nsw i32 %1224, %1221
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %70, align 1, !tbaa !2450
  %1228 = add i64 %1201, 9
  store i64 %1228, i64* %PC, align 8
  store i32 %1205, i32* %1203, align 4
  %1229 = load i64, i64* %PC, align 8
  %1230 = add i64 %1229, -214
  store i64 %1230, i64* %PC, align 8, !tbaa !2428
  br label %block_400e7e

block_400ccf:                                     ; preds = %block_400c9b
  %1231 = add i64 %850, -56
  %1232 = add i64 %886, 7
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i32*
  store i32 1, i32* %1233, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400cd6

block_400ca7:                                     ; preds = %block_400c9b
  %1234 = add i64 %850, -48
  %1235 = add i64 %886, 4
  store i64 %1235, i64* %PC, align 8
  %1236 = inttoptr i64 %1234 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RAX, align 8, !tbaa !2428
  %1238 = add i64 %850, -52
  %1239 = add i64 %886, 8
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = sext i32 %1241 to i64
  store i64 %1242, i64* %RCX, align 8, !tbaa !2428
  %1243 = shl nsw i64 %1242, 3
  %1244 = add i64 %1243, %1237
  %1245 = add i64 %886, 13
  store i64 %1245, i64* %PC, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %71, align 1, !tbaa !2452
  store double 0.000000e+00, double* %73, align 1, !tbaa !2452
  %1248 = add i64 %850, -32
  %1249 = add i64 %886, 17
  store i64 %1249, i64* %PC, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX, align 8, !tbaa !2428
  %1252 = add i64 %886, 21
  store i64 %1252, i64* %PC, align 8
  %1253 = load i32, i32* %853, align 4
  %1254 = sext i32 %1253 to i64
  store i64 %1254, i64* %RCX, align 8, !tbaa !2428
  %1255 = shl nsw i64 %1254, 3
  %1256 = add i64 %1255, %1251
  %1257 = add i64 %886, 26
  store i64 %1257, i64* %PC, align 8
  %1258 = inttoptr i64 %1256 to i64*
  store i64 %1247, i64* %1258, align 8
  %1259 = load i64, i64* %RBP, align 8
  %1260 = add i64 %1259, -60
  %1261 = load i64, i64* %PC, align 8
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %PC, align 8
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = add i32 %1264, 1
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX, align 8, !tbaa !2428
  %1267 = icmp eq i32 %1264, -1
  %1268 = icmp eq i32 %1265, 0
  %1269 = or i1 %1267, %1268
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %65, align 1, !tbaa !2432
  %1271 = and i32 %1265, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271) #12
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %66, align 1, !tbaa !2446
  %1276 = xor i32 %1265, %1264
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %67, align 1, !tbaa !2447
  %1280 = zext i1 %1268 to i8
  store i8 %1280, i8* %68, align 1, !tbaa !2448
  %1281 = lshr i32 %1265, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %69, align 1, !tbaa !2449
  %1283 = lshr i32 %1264, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1281
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %70, align 1, !tbaa !2450
  %1288 = add i64 %1261, 9
  store i64 %1288, i64* %PC, align 8
  store i32 %1265, i32* %1263, align 4
  %1289 = load i64, i64* %PC, align 8
  %1290 = add i64 %1289, -47
  store i64 %1290, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9b

block_400c88:                                     ; preds = %block_400f6c, %block_400c60
  %1291 = phi i64 [ %121, %block_400f6c ], [ %.pre, %block_400c60 ]
  %1292 = load i64, i64* %RBP, align 8
  %1293 = add i64 %1292, -52
  %1294 = add i64 %1291, 3
  store i64 %1294, i64* %PC, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RAX, align 8, !tbaa !2428
  %1298 = add i64 %1292, -4
  %1299 = add i64 %1291, 6
  store i64 %1299, i64* %PC, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = sub i32 %1296, %1301
  %1303 = icmp ult i32 %1296, %1301
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %65, align 1, !tbaa !2432
  %1305 = and i32 %1302, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305) #12
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %66, align 1, !tbaa !2446
  %1310 = xor i32 %1301, %1296
  %1311 = xor i32 %1310, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %67, align 1, !tbaa !2447
  %1315 = icmp eq i32 %1302, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %68, align 1, !tbaa !2448
  %1317 = lshr i32 %1302, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %69, align 1, !tbaa !2449
  %1319 = lshr i32 %1296, 31
  %1320 = lshr i32 %1301, 31
  %1321 = xor i32 %1320, %1319
  %1322 = xor i32 %1317, %1319
  %1323 = add nuw nsw i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %70, align 1, !tbaa !2450
  %1326 = icmp ne i8 %1318, 0
  %1327 = xor i1 %1326, %1324
  %.v38 = select i1 %1327, i64 12, i64 759
  %1328 = add i64 %1291, %.v38
  store i64 %1328, i64* %PC, align 8, !tbaa !2428
  br i1 %1327, label %block_400c94, label %block_400f7f

block_400ce9:                                     ; preds = %block_400cf5, %block_400ce2
  %1329 = phi i64 [ %458, %block_400cf5 ], [ %.pre34, %block_400ce2 ]
  %1330 = load i64, i64* %RBP, align 8
  %1331 = add i64 %1330, -60
  %1332 = add i64 %1329, 3
  store i64 %1332, i64* %PC, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RAX, align 8, !tbaa !2428
  %1336 = add i64 %1330, -12
  %1337 = add i64 %1329, 6
  store i64 %1337, i64* %PC, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = sub i32 %1334, %1339
  %1341 = icmp ult i32 %1334, %1339
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %65, align 1, !tbaa !2432
  %1343 = and i32 %1340, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343) #12
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %66, align 1, !tbaa !2446
  %1348 = xor i32 %1339, %1334
  %1349 = xor i32 %1348, %1340
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %67, align 1, !tbaa !2447
  %1353 = icmp eq i32 %1340, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %68, align 1, !tbaa !2448
  %1355 = lshr i32 %1340, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %69, align 1, !tbaa !2449
  %1357 = lshr i32 %1334, 31
  %1358 = lshr i32 %1339, 31
  %1359 = xor i32 %1358, %1357
  %1360 = xor i32 %1355, %1357
  %1361 = add nuw nsw i32 %1360, %1359
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %70, align 1, !tbaa !2450
  %1364 = icmp ne i8 %1356, 0
  %1365 = xor i1 %1364, %1362
  %.v37 = select i1 %1365, i64 12, i64 155
  %1366 = add i64 %1329, %.v37
  store i64 %1366, i64* %PC, align 8, !tbaa !2428
  br i1 %1365, label %block_400cf5, label %block_400d84

block_400d84:                                     ; preds = %block_400ce9
  %1367 = add i64 %1330, -56
  %1368 = add i64 %1366, 8
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = add i32 %1370, 1
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX, align 8, !tbaa !2428
  %1373 = icmp eq i32 %1370, -1
  %1374 = icmp eq i32 %1371, 0
  %1375 = or i1 %1373, %1374
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %65, align 1, !tbaa !2432
  %1377 = and i32 %1371, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #12
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %66, align 1, !tbaa !2446
  %1382 = xor i32 %1371, %1370
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  store i8 %1385, i8* %67, align 1, !tbaa !2447
  %1386 = zext i1 %1374 to i8
  store i8 %1386, i8* %68, align 1, !tbaa !2448
  %1387 = lshr i32 %1371, 31
  %1388 = trunc i32 %1387 to i8
  store i8 %1388, i8* %69, align 1, !tbaa !2449
  %1389 = lshr i32 %1370, 31
  %1390 = xor i32 %1387, %1389
  %1391 = add nuw nsw i32 %1390, %1387
  %1392 = icmp eq i32 %1391, 2
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %70, align 1, !tbaa !2450
  %1394 = add i64 %1366, 14
  store i64 %1394, i64* %PC, align 8
  store i32 %1371, i32* %1369, align 4
  %1395 = load i64, i64* %PC, align 8
  %1396 = add i64 %1395, -188
  store i64 %1396, i64* %PC, align 8, !tbaa !2428
  br label %block_400cd6
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400820_rtclock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400820:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %11 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %11, align 1, !tbaa !2451
  %12 = add i64 %10, 7
  store i64 %12, i64* %PC, align 8
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  store i64 %7, i64* %6, align 8, !tbaa !2428
  %14 = add i64 %10, 8
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %7 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %17 = add i64 %7, 8
  store i64 %17, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005d8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005d8:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #12
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
  br i1 %18, label %block_4005ea, label %block_4005e8

block_4005e8:                                     ; preds = %block_4005d8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005ea

block_4005ea:                                     ; preds = %block_4005e8, %block_4005d8
  %27 = phi i64 [ %22, %block_4005d8 ], [ %.pre1, %block_4005e8 ]
  %28 = phi i64 [ %4, %block_4005d8 ], [ %.pre, %block_4005e8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d8 ], [ %26, %block_4005e8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_4006c0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006e8:
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
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %12, align 1, !tbaa !2448
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2449
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2450
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008d0_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008d0:
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
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2432
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
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
  %38 = add i64 %6, -24
  store i64 %38, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 32, i64* %RSI, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 22
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 8
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDX, align 8, !tbaa !2428
  %54 = load i64, i64* %RAX, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  %55 = add i64 %50, -639
  %56 = add i64 %50, 12
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -20
  %63 = load i32, i32* %EAX, align 4
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -16
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 5
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i8 0, i8* %13, align 1, !tbaa !2432
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #12
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %79 = icmp eq i64 %72, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %28, align 1, !tbaa !2448
  %81 = lshr i64 %72, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %79, i64 21, i64 11
  %83 = add i64 %69, %.v
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br i1 %79, label %block_400913, label %block_400909

block_400913:                                     ; preds = %block_400909, %block_4008d0
  %84 = phi i64 [ %120, %block_400909 ], [ %83, %block_4008d0 ]
  store i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 31), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 128
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %86 = add i64 %84, -723
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
  %92 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -24
  %95 = load i32, i32* %EAX, align 4
  %96 = add i64 %92, 8
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, -724
  %100 = add i64 %98, 5
  %101 = load i64, i64* %RSP, align 8, !tbaa !2428
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*
  store i64 %100, i64* %103, align 8
  store i64 %102, i64* %RSP, align 8, !tbaa !2428
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  %104 = tail call fastcc %struct.Memory* @ext_400660_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_400909:                                     ; preds = %block_4008d0
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #12
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  %116 = icmp eq i32 %110, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2448
  %118 = lshr i32 %110, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v2 = select i1 %116, i64 48, i64 10
  %120 = add i64 %83, %.v2
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_400939, label %block_400913

block_400939:                                     ; preds = %block_400909
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC, align 8
  %122 = load i64, i64* %71, align 8
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = load i64, i64* %RSP, align 8
  %124 = add i64 %123, 32
  store i64 %124, i64* %RSP, align 8, !tbaa !2428
  %125 = icmp ugt i64 %123, -33
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %13, align 1, !tbaa !2432
  %127 = trunc i64 %124 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #12
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2446
  %133 = xor i64 %124, %123
  %134 = lshr i64 %133, 4
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %25, align 1, !tbaa !2447
  %137 = icmp eq i64 %124, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %28, align 1, !tbaa !2448
  %139 = lshr i64 %124, 63
  %140 = trunc i64 %139 to i8
  store i8 %140, i8* %31, align 1, !tbaa !2449
  %141 = lshr i64 %123, 63
  %142 = xor i64 %139, %141
  %143 = add nuw nsw i64 %142, %139
  %144 = icmp eq i64 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %37, align 1, !tbaa !2450
  %146 = add i64 %120, 9
  store i64 %146, i64* %PC, align 8
  %147 = add i64 %123, 40
  %148 = inttoptr i64 %124 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RBP, align 8, !tbaa !2428
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %150 = add i64 %120, 10
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %147 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  %153 = add i64 %123, 48
  store i64 %153, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %60
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012c0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4012c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -72
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 64
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2446
  %23 = xor i64 %9, %12
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2447
  %28 = icmp eq i64 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2448
  %31 = lshr i64 %12, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = lshr i64 %9, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2450
  %40 = add i64 %8, -12
  %41 = load i32, i32* %EDI, align 4
  %42 = add i64 %11, 10
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %ESI, align 4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RDX, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %RCX, align 8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %R8, align 8
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -8
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 4
  %75 = or i32 %74, 1
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %77 = and i32 %75, 241
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77) #12
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2448
  %82 = lshr i32 %73, 27
  %83 = and i32 %82, 1
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %33, align 1, !tbaa !2449
  %85 = lshr i32 %73, 27
  %86 = and i32 %85, 1
  %87 = xor i32 %83, %86
  %88 = add nuw nsw i32 %87, %83
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %39, align 1, !tbaa !2450
  %91 = sext i32 %75 to i64
  store i64 %91, i64* %RDI, align 8, !tbaa !2428
  %92 = add i64 %70, -3210
  %93 = add i64 %70, 17
  %94 = load i64, i64* %RSP, align 8, !tbaa !2428
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  %97 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -48
  %100 = load i64, i64* %RAX, align 8
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -48
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RAX, align 8, !tbaa !2428
  %110 = add i64 %104, -8
  %111 = add i64 %106, 7
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI, align 8, !tbaa !2428
  %116 = lshr i32 %113, 28
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %15, align 1, !tbaa !2454
  %119 = and i32 %114, 240
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #12
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %124 = icmp eq i32 %114, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %30, align 1, !tbaa !2454
  %126 = lshr i32 %113, 27
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %129 = sext i32 %114 to i64
  store i64 %129, i64* %RCX, align 8, !tbaa !2428
  %130 = add i64 %109, %129
  %131 = add i64 %106, 17
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i8*
  store i8 0, i8* %132, align 1
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -36
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, 7
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %134 to i32*
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_401307

block_40131a:                                     ; preds = %block_401326, %block_401313
  %141 = phi i64 [ %742, %block_401326 ], [ %.pre18, %block_401313 ]
  %142 = load i64, i64* %RBP, align 8
  %143 = add i64 %142, -40
  %144 = add i64 %141, 3
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = add i64 %142, -8
  %149 = add i64 %141, 6
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sub i32 %146, %151
  %153 = icmp ult i32 %146, %151
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %15, align 1, !tbaa !2432
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #12
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %22, align 1, !tbaa !2446
  %160 = xor i32 %151, %146
  %161 = xor i32 %160, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %27, align 1, !tbaa !2447
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %30, align 1, !tbaa !2448
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %33, align 1, !tbaa !2449
  %169 = lshr i32 %146, 31
  %170 = lshr i32 %151, 31
  %171 = xor i32 %170, %169
  %172 = xor i32 %167, %169
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %39, align 1, !tbaa !2450
  %176 = icmp ne i8 %168, 0
  %177 = xor i1 %176, %174
  %.v21 = select i1 %177, i64 12, i64 70
  %178 = add i64 %141, %.v21
  store i64 %178, i64* %PC, align 8, !tbaa !2428
  br i1 %177, label %block_401326, label %block_401360

block_401313:                                     ; preds = %block_401307
  %179 = add i64 %325, -40
  %180 = add i64 %361, 7
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 0, i32* %181, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_40131a

block_4013dc:                                     ; preds = %block_4013e8, %block_4013c1
  %182 = phi i64 [ %578, %block_4013e8 ], [ %.pre20, %block_4013c1 ]
  %183 = load i64, i64* %RBP, align 8
  %184 = add i64 %183, -40
  %185 = add i64 %182, 3
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = add i64 %183, -8
  %190 = add i64 %182, 6
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %187, %192
  %194 = icmp ult i32 %187, %192
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %15, align 1, !tbaa !2432
  %196 = and i32 %193, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #12
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %22, align 1, !tbaa !2446
  %201 = xor i32 %192, %187
  %202 = xor i32 %201, %193
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %27, align 1, !tbaa !2447
  %206 = icmp eq i32 %193, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %30, align 1, !tbaa !2448
  %208 = lshr i32 %193, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %33, align 1, !tbaa !2449
  %210 = lshr i32 %187, 31
  %211 = lshr i32 %192, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %208, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %39, align 1, !tbaa !2450
  %217 = icmp ne i8 %209, 0
  %218 = xor i1 %217, %215
  %.v23 = select i1 %218, i64 12, i64 70
  %219 = add i64 %182, %.v23
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  br i1 %218, label %block_4013e8, label %block_401422

block_401387:                                     ; preds = %block_40137b
  %220 = add i64 %602, -24
  %221 = add i64 %638, 4
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  %224 = add i64 %602, -36
  %225 = add i64 %638, 8
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, 8000
  store i64 %229, i64* %RCX, align 8, !tbaa !2428
  %230 = lshr i64 %229, 63
  %231 = add i64 %229, %223
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = icmp ult i64 %231, %223
  %233 = icmp ult i64 %231, %229
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %15, align 1, !tbaa !2432
  %236 = trunc i64 %231 to i32
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237) #12
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %22, align 1, !tbaa !2446
  %242 = xor i64 %223, %231
  %243 = lshr i64 %242, 4
  %244 = trunc i64 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %27, align 1, !tbaa !2447
  %246 = icmp eq i64 %231, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %30, align 1, !tbaa !2448
  %248 = lshr i64 %231, 63
  %249 = trunc i64 %248 to i8
  store i8 %249, i8* %33, align 1, !tbaa !2449
  %250 = lshr i64 %223, 63
  %251 = xor i64 %248, %250
  %252 = xor i64 %248, %230
  %253 = add nuw nsw i64 %251, %252
  %254 = icmp eq i64 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %39, align 1, !tbaa !2450
  %256 = add i64 %638, 22
  store i64 %256, i64* %PC, align 8
  %257 = load i32, i32* %605, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = shl nsw i64 %258, 3
  %260 = add i64 %259, %231
  %261 = add i64 %638, 27
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %138, align 1, !tbaa !2452
  store double 0.000000e+00, double* %140, align 1, !tbaa !2452
  %264 = add i64 %638, 30
  store i64 %264, i64* %PC, align 8
  %265 = load i32, i32* %605, align 4
  %266 = shl i32 %265, 4
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDX, align 8, !tbaa !2428
  %268 = lshr i32 %265, 28
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %15, align 1, !tbaa !2454
  %271 = and i32 %266, 240
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #12
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %276 = icmp eq i32 %266, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %30, align 1, !tbaa !2454
  %278 = lshr i32 %265, 27
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -48
  %283 = add i64 %638, 37
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RSI, align 8, !tbaa !2428
  store i64 %267, i64* %RDI, align 8, !tbaa !2428
  %286 = add i64 %638, 217
  %287 = add i64 %638, 44
  %288 = load i64, i64* %RSP, align 8, !tbaa !2428
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %291 = tail call %struct.Memory* @sub_401460_print_element_renamed_(%struct.State* nonnull %0, i64 %286, %struct.Memory* %589)
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -40
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, 1
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = icmp eq i32 %297, -1
  %301 = icmp eq i32 %298, 0
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %15, align 1, !tbaa !2432
  %304 = and i32 %298, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #12
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %22, align 1, !tbaa !2446
  %309 = xor i32 %298, %297
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %27, align 1, !tbaa !2447
  %313 = zext i1 %301 to i8
  store i8 %313, i8* %30, align 1, !tbaa !2448
  %314 = lshr i32 %298, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %33, align 1, !tbaa !2449
  %316 = lshr i32 %297, 31
  %317 = xor i32 %314, %316
  %318 = add nuw nsw i32 %317, %314
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %39, align 1, !tbaa !2450
  %321 = add i64 %294, 9
  store i64 %321, i64* %PC, align 8
  store i32 %298, i32* %296, align 4
  %322 = load i64, i64* %PC, align 8
  %323 = add i64 %322, -65
  store i64 %323, i64* %PC, align 8, !tbaa !2428
  br label %block_40137b

block_401307:                                     ; preds = %block_401422, %block_4012c0
  %324 = phi i64 [ %.pre, %block_4012c0 ], [ %410, %block_401422 ]
  %MEMORY.2 = phi %struct.Memory* [ %97, %block_4012c0 ], [ %372, %block_401422 ]
  %325 = load i64, i64* %RBP, align 8
  %326 = add i64 %325, -36
  %327 = add i64 %324, 3
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = add i64 %325, -4
  %332 = add i64 %324, 6
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sub i32 %329, %334
  %336 = icmp ult i32 %329, %334
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %15, align 1, !tbaa !2432
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338) #12
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %22, align 1, !tbaa !2446
  %343 = xor i32 %334, %329
  %344 = xor i32 %343, %335
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %27, align 1, !tbaa !2447
  %348 = icmp eq i32 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %30, align 1, !tbaa !2448
  %350 = lshr i32 %335, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %33, align 1, !tbaa !2449
  %352 = lshr i32 %329, 31
  %353 = lshr i32 %334, 31
  %354 = xor i32 %353, %352
  %355 = xor i32 %350, %352
  %356 = add nuw nsw i32 %355, %354
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %39, align 1, !tbaa !2450
  %359 = icmp ne i8 %351, 0
  %360 = xor i1 %359, %357
  %.v = select i1 %360, i64 12, i64 317
  %361 = add i64 %324, %.v
  store i64 %361, i64* %PC, align 8, !tbaa !2428
  br i1 %360, label %block_401313, label %block_401444

block_401422:                                     ; preds = %block_4013dc
  %362 = add i64 %183, -48
  %363 = add i64 %219, 4
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RDI, align 8, !tbaa !2428
  %366 = load i64, i64* @stderr, align 128
  store i64 %366, i64* %RSI, align 8, !tbaa !2428
  %367 = add i64 %219, -3586
  %368 = add i64 %219, 17
  %369 = load i64, i64* %RSP, align 8, !tbaa !2428
  %370 = add i64 %369, -8
  %371 = inttoptr i64 %370 to i64*
  store i64 %368, i64* %371, align 8
  store i64 %370, i64* %RSP, align 8, !tbaa !2428
  store i64 %367, i64* %PC, align 8, !tbaa !2428
  %372 = tail call fastcc %struct.Memory* @ext_6020d0_fputs(%struct.State* nonnull %0, %struct.Memory* %463)
  %373 = load i64, i64* %RBP, align 8
  %374 = add i64 %373, -60
  %375 = load i32, i32* %EAX, align 4
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %374 to i32*
  store i32 %375, i32* %378, align 4
  %379 = load i64, i64* %RBP, align 8
  %380 = add i64 %379, -36
  %381 = load i64, i64* %PC, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = add i32 %384, 1
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RAX, align 8, !tbaa !2428
  %387 = icmp eq i32 %384, -1
  %388 = icmp eq i32 %385, 0
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %15, align 1, !tbaa !2432
  %391 = and i32 %385, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391) #12
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %22, align 1, !tbaa !2446
  %396 = xor i32 %385, %384
  %397 = lshr i32 %396, 4
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %27, align 1, !tbaa !2447
  %400 = zext i1 %388 to i8
  store i8 %400, i8* %30, align 1, !tbaa !2448
  %401 = lshr i32 %385, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %33, align 1, !tbaa !2449
  %403 = lshr i32 %384, 31
  %404 = xor i32 %401, %403
  %405 = add nuw nsw i32 %404, %401
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %39, align 1, !tbaa !2450
  %408 = add i64 %381, 9
  store i64 %408, i64* %PC, align 8
  store i32 %385, i32* %383, align 4
  %409 = load i64, i64* %PC, align 8
  %410 = add i64 %409, -312
  store i64 %410, i64* %PC, align 8, !tbaa !2428
  br label %block_401307

block_401444:                                     ; preds = %block_401307
  %411 = add i64 %325, -48
  %412 = add i64 %361, 4
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RDI, align 8, !tbaa !2428
  %415 = add i64 %361, -3652
  %416 = add i64 %361, 9
  %417 = load i64, i64* %RSP, align 8, !tbaa !2428
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %RSP, align 8, !tbaa !2428
  store i64 %415, i64* %PC, align 8, !tbaa !2428
  %420 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %421 = load i64, i64* %RSP, align 8
  %422 = load i64, i64* %PC, align 8
  %423 = add i64 %421, 64
  store i64 %423, i64* %RSP, align 8, !tbaa !2428
  %424 = icmp ugt i64 %421, -65
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %15, align 1, !tbaa !2432
  %426 = trunc i64 %423 to i32
  %427 = and i32 %426, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427) #12
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %22, align 1, !tbaa !2446
  %432 = xor i64 %423, %421
  %433 = lshr i64 %432, 4
  %434 = trunc i64 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %27, align 1, !tbaa !2447
  %436 = icmp eq i64 %423, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %30, align 1, !tbaa !2448
  %438 = lshr i64 %423, 63
  %439 = trunc i64 %438 to i8
  store i8 %439, i8* %33, align 1, !tbaa !2449
  %440 = lshr i64 %421, 63
  %441 = xor i64 %438, %440
  %442 = add nuw nsw i64 %441, %438
  %443 = icmp eq i64 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %39, align 1, !tbaa !2450
  %445 = add i64 %422, 5
  store i64 %445, i64* %PC, align 8
  %446 = add i64 %421, 72
  %447 = inttoptr i64 %423 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RBP, align 8, !tbaa !2428
  store i64 %446, i64* %RSP, align 8, !tbaa !2428
  %449 = add i64 %422, 6
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %446 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %PC, align 8, !tbaa !2428
  %452 = add i64 %421, 80
  store i64 %452, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %420

block_4013c1:                                     ; preds = %block_40137b
  %453 = add i64 %602, -48
  %454 = add i64 %638, 4
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %RDI, align 8, !tbaa !2428
  %457 = load i64, i64* @stderr, align 128
  store i64 %457, i64* %RSI, align 8, !tbaa !2428
  %458 = add i64 %638, -3489
  %459 = add i64 %638, 17
  %460 = load i64, i64* %RSP, align 8, !tbaa !2428
  %461 = add i64 %460, -8
  %462 = inttoptr i64 %461 to i64*
  store i64 %459, i64* %462, align 8
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  store i64 %458, i64* %PC, align 8, !tbaa !2428
  %463 = tail call fastcc %struct.Memory* @ext_6020d0_fputs(%struct.State* nonnull %0, %struct.Memory* %589)
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -40
  %466 = load i64, i64* %PC, align 8
  %467 = add i64 %466, 7
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %465 to i32*
  store i32 0, i32* %468, align 4
  %469 = load i64, i64* %RBP, align 8
  %470 = add i64 %469, -56
  %471 = load i32, i32* %EAX, align 4
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %470 to i32*
  store i32 %471, i32* %474, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4013dc

block_4013e8:                                     ; preds = %block_4013dc
  %475 = add i64 %183, -32
  %476 = add i64 %219, 4
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %RAX, align 8, !tbaa !2428
  %479 = add i64 %183, -36
  %480 = add i64 %219, 8
  store i64 %480, i64* %PC, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = mul nsw i64 %483, 8000
  store i64 %484, i64* %RCX, align 8, !tbaa !2428
  %485 = lshr i64 %484, 63
  %486 = add i64 %484, %478
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = icmp ult i64 %486, %478
  %488 = icmp ult i64 %486, %484
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %15, align 1, !tbaa !2432
  %491 = trunc i64 %486 to i32
  %492 = and i32 %491, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492) #12
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %22, align 1, !tbaa !2446
  %497 = xor i64 %478, %486
  %498 = lshr i64 %497, 4
  %499 = trunc i64 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %27, align 1, !tbaa !2447
  %501 = icmp eq i64 %486, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %30, align 1, !tbaa !2448
  %503 = lshr i64 %486, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %33, align 1, !tbaa !2449
  %505 = lshr i64 %478, 63
  %506 = xor i64 %503, %505
  %507 = xor i64 %503, %485
  %508 = add nuw nsw i64 %506, %507
  %509 = icmp eq i64 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %39, align 1, !tbaa !2450
  %511 = add i64 %219, 22
  store i64 %511, i64* %PC, align 8
  %512 = load i32, i32* %186, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX, align 8, !tbaa !2428
  %514 = shl nsw i64 %513, 3
  %515 = add i64 %514, %486
  %516 = add i64 %219, 27
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %138, align 1, !tbaa !2452
  store double 0.000000e+00, double* %140, align 1, !tbaa !2452
  %519 = add i64 %219, 30
  store i64 %519, i64* %PC, align 8
  %520 = load i32, i32* %186, align 4
  %521 = shl i32 %520, 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RDX, align 8, !tbaa !2428
  %523 = lshr i32 %520, 28
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %15, align 1, !tbaa !2454
  %526 = and i32 %521, 240
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #12
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %531 = icmp eq i32 %521, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %30, align 1, !tbaa !2454
  %533 = lshr i32 %520, 27
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %536 = load i64, i64* %RBP, align 8
  %537 = add i64 %536, -48
  %538 = add i64 %219, 37
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RSI, align 8, !tbaa !2428
  store i64 %522, i64* %RDI, align 8, !tbaa !2428
  %541 = add i64 %219, 120
  %542 = add i64 %219, 44
  %543 = load i64, i64* %RSP, align 8, !tbaa !2428
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %RSP, align 8, !tbaa !2428
  store i64 %541, i64* %PC, align 8, !tbaa !2428
  %546 = tail call %struct.Memory* @sub_401460_print_element_renamed_(%struct.State* nonnull %0, i64 %541, %struct.Memory* %463)
  %547 = load i64, i64* %RBP, align 8
  %548 = add i64 %547, -40
  %549 = load i64, i64* %PC, align 8
  %550 = add i64 %549, 3
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, 1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX, align 8, !tbaa !2428
  %555 = icmp eq i32 %552, -1
  %556 = icmp eq i32 %553, 0
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %15, align 1, !tbaa !2432
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #12
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %22, align 1, !tbaa !2446
  %564 = xor i32 %553, %552
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %27, align 1, !tbaa !2447
  %568 = zext i1 %556 to i8
  store i8 %568, i8* %30, align 1, !tbaa !2448
  %569 = lshr i32 %553, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %33, align 1, !tbaa !2449
  %571 = lshr i32 %552, 31
  %572 = xor i32 %569, %571
  %573 = add nuw nsw i32 %572, %569
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %39, align 1, !tbaa !2450
  %576 = add i64 %549, 9
  store i64 %576, i64* %PC, align 8
  store i32 %553, i32* %551, align 4
  %577 = load i64, i64* %PC, align 8
  %578 = add i64 %577, -65
  store i64 %578, i64* %PC, align 8, !tbaa !2428
  br label %block_4013dc

block_401360:                                     ; preds = %block_40131a
  %579 = add i64 %142, -48
  %580 = add i64 %178, 4
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %RDI, align 8, !tbaa !2428
  %583 = load i64, i64* @stderr, align 128
  store i64 %583, i64* %RSI, align 8, !tbaa !2428
  %584 = add i64 %178, -3392
  %585 = add i64 %178, 17
  %586 = load i64, i64* %RSP, align 8, !tbaa !2428
  %587 = add i64 %586, -8
  %588 = inttoptr i64 %587 to i64*
  store i64 %585, i64* %588, align 8
  store i64 %587, i64* %RSP, align 8, !tbaa !2428
  store i64 %584, i64* %PC, align 8, !tbaa !2428
  %589 = tail call fastcc %struct.Memory* @ext_6020d0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %590 = load i64, i64* %RBP, align 8
  %591 = add i64 %590, -40
  %592 = load i64, i64* %PC, align 8
  %593 = add i64 %592, 7
  store i64 %593, i64* %PC, align 8
  %594 = inttoptr i64 %591 to i32*
  store i32 0, i32* %594, align 4
  %595 = load i64, i64* %RBP, align 8
  %596 = add i64 %595, -52
  %597 = load i32, i32* %EAX, align 4
  %598 = load i64, i64* %PC, align 8
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %596 to i32*
  store i32 %597, i32* %600, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_40137b

block_40137b:                                     ; preds = %block_401360, %block_401387
  %601 = phi i64 [ %.pre19, %block_401360 ], [ %323, %block_401387 ]
  %602 = load i64, i64* %RBP, align 8
  %603 = add i64 %602, -40
  %604 = add i64 %601, 3
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX, align 8, !tbaa !2428
  %608 = add i64 %602, -8
  %609 = add i64 %601, 6
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sub i32 %606, %611
  %613 = icmp ult i32 %606, %611
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %15, align 1, !tbaa !2432
  %615 = and i32 %612, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615) #12
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  store i8 %619, i8* %22, align 1, !tbaa !2446
  %620 = xor i32 %611, %606
  %621 = xor i32 %620, %612
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %27, align 1, !tbaa !2447
  %625 = icmp eq i32 %612, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %30, align 1, !tbaa !2448
  %627 = lshr i32 %612, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %33, align 1, !tbaa !2449
  %629 = lshr i32 %606, 31
  %630 = lshr i32 %611, 31
  %631 = xor i32 %630, %629
  %632 = xor i32 %627, %629
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %39, align 1, !tbaa !2450
  %636 = icmp ne i8 %628, 0
  %637 = xor i1 %636, %634
  %.v22 = select i1 %637, i64 12, i64 70
  %638 = add i64 %601, %.v22
  store i64 %638, i64* %PC, align 8, !tbaa !2428
  br i1 %637, label %block_401387, label %block_4013c1

block_401326:                                     ; preds = %block_40131a
  %639 = add i64 %142, -16
  %640 = add i64 %178, 4
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RAX, align 8, !tbaa !2428
  %643 = add i64 %142, -36
  %644 = add i64 %178, 8
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = mul nsw i64 %647, 8000
  store i64 %648, i64* %RCX, align 8, !tbaa !2428
  %649 = lshr i64 %648, 63
  %650 = add i64 %648, %642
  store i64 %650, i64* %RAX, align 8, !tbaa !2428
  %651 = icmp ult i64 %650, %642
  %652 = icmp ult i64 %650, %648
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %15, align 1, !tbaa !2432
  %655 = trunc i64 %650 to i32
  %656 = and i32 %655, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656) #12
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %22, align 1, !tbaa !2446
  %661 = xor i64 %642, %650
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %27, align 1, !tbaa !2447
  %665 = icmp eq i64 %650, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %30, align 1, !tbaa !2448
  %667 = lshr i64 %650, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %33, align 1, !tbaa !2449
  %669 = lshr i64 %642, 63
  %670 = xor i64 %667, %669
  %671 = xor i64 %667, %649
  %672 = add nuw nsw i64 %670, %671
  %673 = icmp eq i64 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %39, align 1, !tbaa !2450
  %675 = add i64 %178, 22
  store i64 %675, i64* %PC, align 8
  %676 = load i32, i32* %145, align 4
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %RCX, align 8, !tbaa !2428
  %678 = shl nsw i64 %677, 3
  %679 = add i64 %678, %650
  %680 = add i64 %178, 27
  store i64 %680, i64* %PC, align 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %138, align 1, !tbaa !2452
  store double 0.000000e+00, double* %140, align 1, !tbaa !2452
  %683 = add i64 %178, 30
  store i64 %683, i64* %PC, align 8
  %684 = load i32, i32* %145, align 4
  %685 = shl i32 %684, 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RDX, align 8, !tbaa !2428
  %687 = lshr i32 %684, 28
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %15, align 1, !tbaa !2454
  %690 = and i32 %685, 240
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690) #12
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %22, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %695 = icmp eq i32 %685, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %30, align 1, !tbaa !2454
  %697 = lshr i32 %684, 27
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  store i8 %699, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %700 = load i64, i64* %RBP, align 8
  %701 = add i64 %700, -48
  %702 = add i64 %178, 37
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RSI, align 8, !tbaa !2428
  store i64 %686, i64* %RDI, align 8, !tbaa !2428
  %705 = add i64 %178, 314
  %706 = add i64 %178, 44
  %707 = load i64, i64* %RSP, align 8, !tbaa !2428
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %706, i64* %709, align 8
  store i64 %708, i64* %RSP, align 8, !tbaa !2428
  store i64 %705, i64* %PC, align 8, !tbaa !2428
  %710 = tail call %struct.Memory* @sub_401460_print_element_renamed_(%struct.State* nonnull %0, i64 %705, %struct.Memory* %MEMORY.2)
  %711 = load i64, i64* %RBP, align 8
  %712 = add i64 %711, -40
  %713 = load i64, i64* %PC, align 8
  %714 = add i64 %713, 3
  store i64 %714, i64* %PC, align 8
  %715 = inttoptr i64 %712 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = add i32 %716, 1
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RAX, align 8, !tbaa !2428
  %719 = icmp eq i32 %716, -1
  %720 = icmp eq i32 %717, 0
  %721 = or i1 %719, %720
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %15, align 1, !tbaa !2432
  %723 = and i32 %717, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723) #12
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %22, align 1, !tbaa !2446
  %728 = xor i32 %717, %716
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %27, align 1, !tbaa !2447
  %732 = zext i1 %720 to i8
  store i8 %732, i8* %30, align 1, !tbaa !2448
  %733 = lshr i32 %717, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %33, align 1, !tbaa !2449
  %735 = lshr i32 %716, 31
  %736 = xor i32 %733, %735
  %737 = add nuw nsw i32 %736, %733
  %738 = icmp eq i32 %737, 2
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %39, align 1, !tbaa !2450
  %740 = add i64 %713, 9
  store i64 %740, i64* %PC, align 8
  store i32 %717, i32* %715, align 4
  %741 = load i64, i64* %PC, align 8
  %742 = add i64 %741, -65
  store i64 %742, i64* %PC, align 8, !tbaa !2428
  br label %block_40131a
}

; Function Attrs: noinline
define %struct.Memory* @sub_401610___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401610:
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
  store i8 %51, i8* %43, align 1, !tbaa !2454
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2454
  store i8 0, i8* %45, align 1, !tbaa !2454
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2454
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2454
  store i8 0, i8* %48, align 1, !tbaa !2454
  %63 = add i64 %38, -4179
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #12
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
  br i1 %76, label %block_401666, label %block_401646

block_401666.loopexit:                            ; preds = %block_401650
  br label %block_401666

block_401666:                                     ; preds = %block_401666.loopexit, %block_401610
  %81 = phi i64 [ %80, %block_401610 ], [ %179, %block_401666.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401610 ], [ %149, %block_401666.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
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

block_401646:                                     ; preds = %block_401610
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401650

block_401650:                                     ; preds = %block_401650, %block_401646
  %134 = phi i64 [ 0, %block_401646 ], [ %152, %block_401650 ]
  %135 = phi i64 [ %133, %block_401646 ], [ %179, %block_401650 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401646 ], [ %149, %block_401650 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #12
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
  br i1 %169, label %block_401666.loopexit, label %block_401650
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400850_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400850:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -24
  %12 = icmp ult i64 %8, 16
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2432
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #12
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2446
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2447
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2448
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_401690__rodata_type* @seg_401690__rodata to i64), i64 24), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2452
  store i64 0, i64* %42, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %45 = add i64 %10, -577
  %46 = add i64 %10, 42
  %47 = add i64 %7, -32
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_400610_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -4
  %52 = load i32, i32* %EAX, align 4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* %RSP, align 8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %56, 16
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ugt i64 %56, -17
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %14, align 1, !tbaa !2432
  %61 = trunc i64 %58 to i32
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #12
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1, !tbaa !2446
  %67 = xor i64 %56, 16
  %68 = xor i64 %67, %58
  %69 = lshr i64 %68, 4
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1, !tbaa !2447
  %72 = icmp eq i64 %58, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %30, align 1, !tbaa !2448
  %74 = lshr i64 %58, 63
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %33, align 1, !tbaa !2449
  %76 = lshr i64 %56, 63
  %77 = xor i64 %74, %76
  %78 = add nuw nsw i64 %77, %74
  %79 = icmp eq i64 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2450
  %81 = add i64 %57, 5
  store i64 %81, i64* %PC, align 8
  %82 = add i64 %56, 24
  %83 = inttoptr i64 %58 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %RBP, align 8, !tbaa !2428
  store i64 %82, i64* %RSP, align 8, !tbaa !2428
  %85 = add i64 %57, 6
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %82 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  %88 = add i64 %56, 32
  store i64 %88, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %49
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401684__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401684:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_400890_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400890:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
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
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2432
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
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
  %43 = add i64 %42, -12
  %44 = load i32, i32* %ESI, align 4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %54 = add i64 %48, -24
  %55 = add i64 %50, 8
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -12
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %RDI, align 8, !tbaa !2428
  %64 = add i64 %57, -24
  %65 = add i64 %59, 9
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = sext i32 %62 to i128
  %69 = and i128 %68, -18446744073709551616
  %70 = sext i64 %67 to i128
  %71 = and i128 %70, -18446744073709551616
  %72 = zext i64 %63 to i128
  %73 = or i128 %69, %72
  %74 = zext i64 %67 to i128
  %75 = or i128 %71, %74
  %76 = mul nsw i128 %75, %73
  %77 = trunc i128 %76 to i64
  store i64 %77, i64* %RDI, align 8, !tbaa !2428
  %78 = sext i64 %77 to i128
  %79 = icmp ne i128 %78, %76
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %13, align 1, !tbaa !2432
  %81 = trunc i128 %76 to i32
  %82 = and i32 %81, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #12
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2448
  %87 = lshr i64 %77, 63
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %31, align 1, !tbaa !2449
  store i8 %80, i8* %37, align 1, !tbaa !2450
  %89 = add i64 %59, 13
  store i64 %89, i64* %PC, align 8
  store i64 %77, i64* %66, align 8
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -24
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RDI, align 8, !tbaa !2428
  %96 = add i64 %92, 28
  %97 = add i64 %92, 9
  %98 = load i64, i64* %RSP, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %RSP, align 8, !tbaa !2428
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  %101 = tail call %struct.Memory* @sub_4008d0_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
  %102 = load i64, i64* %RBP, align 8
  %103 = add i64 %102, -32
  %104 = load i64, i64* %RAX, align 8
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -32
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = load i64, i64* %RSP, align 8
  %115 = add i64 %114, 32
  store i64 %115, i64* %RSP, align 8, !tbaa !2428
  %116 = icmp ugt i64 %114, -33
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %13, align 1, !tbaa !2432
  %118 = trunc i64 %115 to i32
  %119 = and i32 %118, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #12
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %20, align 1, !tbaa !2446
  %124 = xor i64 %115, %114
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %25, align 1, !tbaa !2447
  %128 = icmp eq i64 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %28, align 1, !tbaa !2448
  %130 = lshr i64 %115, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %31, align 1, !tbaa !2449
  %132 = lshr i64 %114, 63
  %133 = xor i64 %130, %132
  %134 = add nuw nsw i64 %133, %130
  %135 = icmp eq i64 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %37, align 1, !tbaa !2450
  %137 = add i64 %110, 9
  store i64 %137, i64* %PC, align 8
  %138 = add i64 %114, 40
  %139 = inttoptr i64 %115 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RBP, align 8, !tbaa !2428
  store i64 %138, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %110, 10
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %138 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  %144 = add i64 %114, 48
  store i64 %144, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %101
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400680__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  store i64 ptrtoint (void ()* @callback_sub_401680___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401610___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline
define %struct.Memory* @sub_400830_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400830:
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
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400820_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %17 = load i64, i64* %16, align 1
  store i64 %17, i64* bitcast (%polybench_t_end_type* @polybench_t_end to i64*), align 8
  %18 = add i64 %15, 10
  store i64 %18, i64* %PC, align 8
  %19 = load i64, i64* %5, align 8, !tbaa !2428
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  store i64 %20, i64* %5, align 8, !tbaa !2428
  %23 = add i64 %15, 11
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %20 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  %26 = add i64 %19, 16
  store i64 %26, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006f0:
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
  store i8 %21, i8* %11, align 1, !tbaa !2454
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2454
  store i8 0, i8* %13, align 1, !tbaa !2454
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2454
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2454
  store i8 0, i8* %16, align 1, !tbaa !2454
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400728, label %block_400713

block_400713:                                     ; preds = %block_4006f0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400728

block_400728:                                     ; preds = %block_400713, %block_4006f0
  %35 = phi i64 [ %34, %block_400713 ], [ %33, %block_4006f0 ]
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

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400760_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400760_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400760_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400730___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400730___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400730___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602108_free(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400660_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_fputs(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400610_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401680___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401680___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401680___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401610___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_401610___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401610___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400950;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400950_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007f0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_flush_cache() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400770_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_alloc_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400890;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400890_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005d8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005d8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401684;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401684__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_stop() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400830;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400830_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_start() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400800;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400800_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_print() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401680___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401610___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }
attributes #12 = { nounwind }

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
!2451 = !{!2445, !2445, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2430, !2430, i64 0}
