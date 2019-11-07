; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4015a0__rodata_type = type <{ [64 x i8], [7 x i8], [51 x i8], [76 x i8] }>
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
@seg_4015a0__rodata = internal constant %seg_4015a0__rodata_type <{ [64 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
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
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401590___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401520___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4012a0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400820_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006c0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008d0_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400aa0_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bc0_kernel_adi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007f0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401170_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401370_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400770_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -72
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 64
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
  store i64 1048576, i64* %RCX, align 8, !tbaa !2428
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
  store i32 1024, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 7
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 50, i32* %63, align 4
  %64 = load i64, i64* %RCX, align 8
  %65 = load i64, i64* %PC, align 8
  store i64 %64, i64* %RDI, align 8, !tbaa !2428
  %66 = load i32, i32* %EAX, align 4
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RSI, align 8, !tbaa !2428
  %68 = add i64 %65, -240
  %69 = add i64 %65, 10
  %70 = load i64, i64* %RSP, align 8, !tbaa !2428
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %72, align 8
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %73 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %68, %struct.Memory* %2)
  %74 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -32
  %77 = load i64, i64* %RAX, align 8
  %78 = add i64 %74, 16
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, -266
  %82 = add i64 %80, 5
  %83 = load i64, i64* %RSP, align 8, !tbaa !2428
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %82, i64* %85, align 8
  store i64 %84, i64* %RSP, align 8, !tbaa !2428
  store i64 %81, i64* %PC, align 8, !tbaa !2428
  %86 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %81, %struct.Memory* %73)
  %87 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %88 = load i64, i64* %RBP, align 8
  %89 = add i64 %88, -40
  %90 = load i64, i64* %RAX, align 8
  %91 = add i64 %87, 16
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %89 to i64*
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, -287
  %95 = add i64 %93, 5
  %96 = load i64, i64* %RSP, align 8, !tbaa !2428
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %RSP, align 8, !tbaa !2428
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  %99 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %94, %struct.Memory* %86)
  %100 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -48
  %103 = load i64, i64* %RAX, align 8
  %104 = add i64 %100, 16
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, -308
  %108 = add i64 %106, 5
  %109 = load i64, i64* %RSP, align 8, !tbaa !2428
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111, align 8
  store i64 %110, i64* %RSP, align 8, !tbaa !2428
  store i64 %107, i64* %PC, align 8, !tbaa !2428
  %112 = tail call %struct.Memory* @sub_400890_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %107, %struct.Memory* %99)
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -56
  %115 = load i64, i64* %RAX, align 8
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -20
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %120 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RDI, align 8, !tbaa !2428
  %126 = add i64 %119, -32
  %127 = add i64 %121, 7
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %RSI, align 8, !tbaa !2428
  %130 = add i64 %119, -48
  %131 = add i64 %121, 11
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RDX, align 8, !tbaa !2428
  %134 = add i64 %119, -56
  %135 = add i64 %121, 15
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = add i64 %121, 211
  %139 = add i64 %121, 20
  %140 = load i64, i64* %RSP, align 8, !tbaa !2428
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  store i64 %138, i64* %PC, align 8, !tbaa !2428
  %143 = tail call %struct.Memory* @sub_400aa0_init_array_renamed_(%struct.State* nonnull %0, i64 %138, %struct.Memory* %112)
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -24
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RDI, align 8, !tbaa !2428
  %151 = add i64 %144, -20
  %152 = add i64 %146, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RSI, align 8, !tbaa !2428
  %156 = add i64 %144, -32
  %157 = add i64 %146, 10
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDX, align 8, !tbaa !2428
  %160 = add i64 %144, -48
  %161 = add i64 %146, 14
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = add i64 %144, -56
  %165 = add i64 %146, 18
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %R8, align 8, !tbaa !2428
  %168 = add i64 %146, 479
  %169 = add i64 %146, 23
  %170 = load i64, i64* %RSP, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %RSP, align 8, !tbaa !2428
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  %173 = tail call %struct.Memory* @sub_400bc0_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %168, %struct.Memory* %143)
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -20
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RDI, align 8, !tbaa !2428
  %181 = add i64 %174, -40
  %182 = add i64 %176, 7
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RSI, align 8, !tbaa !2428
  %185 = add i64 %174, -48
  %186 = add i64 %176, 11
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RDX, align 8, !tbaa !2428
  %189 = add i64 %174, -56
  %190 = add i64 %176, 15
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RCX, align 8, !tbaa !2428
  %193 = add i64 %176, 168
  %194 = add i64 %176, 20
  %195 = load i64, i64* %RSP, align 8, !tbaa !2428
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %RSP, align 8, !tbaa !2428
  store i64 %193, i64* %PC, align 8, !tbaa !2428
  %198 = tail call %struct.Memory* @sub_400aa0_init_array_renamed_(%struct.State* nonnull %0, i64 %193, %struct.Memory* %173)
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -24
  %201 = load i64, i64* %PC, align 8
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %200 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RDI, align 8, !tbaa !2428
  %206 = add i64 %199, -20
  %207 = add i64 %201, 6
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RSI, align 8, !tbaa !2428
  %211 = add i64 %199, -40
  %212 = add i64 %201, 10
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RDX, align 8, !tbaa !2428
  %215 = add i64 %199, -48
  %216 = add i64 %201, 14
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = add i64 %199, -56
  %220 = add i64 %201, 18
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %R8, align 8, !tbaa !2428
  %223 = add i64 %201, 436
  %224 = add i64 %201, 23
  %225 = load i64, i64* %RSP, align 8, !tbaa !2428
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %RSP, align 8, !tbaa !2428
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  %228 = tail call %struct.Memory* @sub_400bc0_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %223, %struct.Memory* %198)
  %229 = load i64, i64* %RBP, align 8
  %230 = add i64 %229, -20
  %231 = load i64, i64* %PC, align 8
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDI, align 8, !tbaa !2428
  %236 = add i64 %229, -32
  %237 = add i64 %231, 7
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RSI, align 8, !tbaa !2428
  %240 = add i64 %229, -40
  %241 = add i64 %231, 11
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RDX, align 8, !tbaa !2428
  %244 = add i64 %231, 1869
  %245 = add i64 %231, 16
  %246 = load i64, i64* %RSP, align 8, !tbaa !2428
  %247 = add i64 %246, -8
  %248 = inttoptr i64 %247 to i64*
  store i64 %245, i64* %248, align 8
  store i64 %247, i64* %RSP, align 8, !tbaa !2428
  store i64 %244, i64* %PC, align 8, !tbaa !2428
  %249 = tail call %struct.Memory* @sub_401170_check_FP_renamed_(%struct.State* nonnull %0, i64 %244, %struct.Memory* %228)
  %250 = load i32, i32* %EAX, align 4
  %251 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %252 = and i32 %250, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #12
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %257 = icmp eq i32 %250, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %29, align 1, !tbaa !2448
  %259 = lshr i32 %250, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %257, i64 9, i64 21
  %261 = add i64 %251, %.v
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  %262 = load i64, i64* %RBP, align 8
  br i1 %257, label %block_400a3c, label %block_400a48

block_400a3c:                                     ; preds = %block_400950
  %263 = add i64 %262, -4
  %264 = add i64 %261, 7
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 1, i32* %265, align 4
  %266 = load i64, i64* %PC, align 8
  %267 = add i64 %266, 72
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br label %block_400a8b

block_400a48:                                     ; preds = %block_400950
  %268 = add i64 %262, -20
  %269 = add i64 %261, 3
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  %273 = add i64 %262, -40
  %274 = add i64 %261, 7
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RSI, align 8, !tbaa !2428
  %277 = add i64 %261, 2136
  %278 = add i64 %261, 12
  %279 = load i64, i64* %RSP, align 8, !tbaa !2428
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %RSP, align 8, !tbaa !2428
  store i64 %277, i64* %PC, align 8, !tbaa !2428
  %282 = tail call %struct.Memory* @sub_4012a0_print_array_renamed_(%struct.State* nonnull %0, i64 %277, %struct.Memory* %249)
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -32
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %RSI, align 8, !tbaa !2428
  store i64 %288, i64* %RDI, align 8, !tbaa !2428
  %289 = add i64 %285, -1108
  %290 = add i64 %285, 12
  %291 = load i64, i64* %RSP, align 8, !tbaa !2428
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %RSP, align 8, !tbaa !2428
  store i64 %289, i64* %PC, align 8, !tbaa !2428
  %294 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %282)
  %295 = load i64, i64* %RBP, align 8
  %296 = add i64 %295, -40
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %296 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RSI, align 8, !tbaa !2428
  store i64 %300, i64* %RDI, align 8, !tbaa !2428
  %301 = add i64 %297, -1120
  %302 = add i64 %297, 12
  %303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %304 = add i64 %303, -8
  %305 = inttoptr i64 %304 to i64*
  store i64 %302, i64* %305, align 8
  store i64 %304, i64* %RSP, align 8, !tbaa !2428
  store i64 %301, i64* %PC, align 8, !tbaa !2428
  %306 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %294)
  %307 = load i64, i64* %RBP, align 8
  %308 = add i64 %307, -48
  %309 = load i64, i64* %PC, align 8
  %310 = add i64 %309, 4
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %308 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  store i64 %312, i64* %RDI, align 8, !tbaa !2428
  %313 = add i64 %309, -1132
  %314 = add i64 %309, 12
  %315 = load i64, i64* %RSP, align 8, !tbaa !2428
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %RSP, align 8, !tbaa !2428
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  %318 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %306)
  %319 = load i64, i64* %RBP, align 8
  %320 = add i64 %319, -56
  %321 = load i64, i64* %PC, align 8
  %322 = add i64 %321, 4
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %320 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RSI, align 8, !tbaa !2428
  store i64 %324, i64* %RDI, align 8, !tbaa !2428
  %325 = add i64 %321, -1144
  %326 = add i64 %321, 12
  %327 = load i64, i64* %RSP, align 8, !tbaa !2428
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %RSP, align 8, !tbaa !2428
  store i64 %325, i64* %PC, align 8, !tbaa !2428
  %330 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %318)
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -4
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %332 to i32*
  store i32 0, i32* %335, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a8b

block_400a8b:                                     ; preds = %block_400a48, %block_400a3c
  %336 = phi i64 [ %.pre, %block_400a48 ], [ %267, %block_400a3c ]
  %MEMORY.0 = phi %struct.Memory* [ %330, %block_400a48 ], [ %249, %block_400a3c ]
  %337 = load i64, i64* %RBP, align 8
  %338 = add i64 %337, -4
  %339 = add i64 %336, 3
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX, align 8, !tbaa !2428
  %343 = load i64, i64* %RSP, align 8
  %344 = add i64 %343, 64
  store i64 %344, i64* %RSP, align 8, !tbaa !2428
  %345 = icmp ugt i64 %343, -65
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %14, align 1, !tbaa !2432
  %347 = trunc i64 %344 to i32
  %348 = and i32 %347, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #12
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1, !tbaa !2446
  %353 = xor i64 %344, %343
  %354 = lshr i64 %353, 4
  %355 = trunc i64 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %26, align 1, !tbaa !2447
  %357 = icmp eq i64 %344, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %29, align 1, !tbaa !2448
  %359 = lshr i64 %344, 63
  %360 = trunc i64 %359 to i8
  store i8 %360, i8* %32, align 1, !tbaa !2449
  %361 = lshr i64 %343, 63
  %362 = xor i64 %359, %361
  %363 = add nuw nsw i64 %362, %359
  %364 = icmp eq i64 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %38, align 1, !tbaa !2450
  %366 = add i64 %336, 8
  store i64 %366, i64* %PC, align 8
  %367 = add i64 %343, 72
  %368 = inttoptr i64 %344 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RBP, align 8, !tbaa !2428
  store i64 %367, i64* %RSP, align 8, !tbaa !2428
  %370 = add i64 %336, 9
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %367 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %PC, align 8, !tbaa !2428
  %373 = add i64 %343, 80
  store i64 %373, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400aa0_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400aa0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
  %16 = add i64 %12, -12
  %17 = load i32, i32* %EDI, align 4
  %18 = add i64 %15, 6
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %RBP, align 8
  %21 = add i64 %20, -16
  %22 = load i64, i64* %RSI, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -24
  %28 = load i64, i64* %RDX, align 8
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -32
  %34 = load i64, i64* %RCX, align 8
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -36
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 7
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %49 = bitcast [32 x %union.VectorReg]* %4 to double*
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %52 = bitcast i64* %51 to double*
  %53 = bitcast %union.VectorReg* %5 to double*
  %54 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  %57 = bitcast %union.VectorReg* %6 to double*
  %58 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast i64* %59 to double*
  %61 = bitcast %union.VectorReg* %7 to double*
  %62 = bitcast %union.VectorReg* %8 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400aba

block_400bba:                                     ; preds = %block_400aba
  %63 = add i64 %441, 1
  store i64 %63, i64* %PC, align 8
  %64 = load i64, i64* %11, align 8, !tbaa !2428
  %65 = add i64 %64, 8
  %66 = inttoptr i64 %64 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %RBP, align 8, !tbaa !2428
  store i64 %65, i64* %11, align 8, !tbaa !2428
  %68 = add i64 %441, 2
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %71 = add i64 %64, 16
  store i64 %71, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400ad9:                                     ; preds = %block_400acd
  %72 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 8) to i64*), align 8
  store i64 %72, i64* %50, align 1, !tbaa !2452
  store double 0.000000e+00, double* %52, align 1, !tbaa !2452
  %73 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 16) to i64*), align 16
  store i64 %73, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %74 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 24) to i64*), align 8
  store i64 %74, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %75 = add i64 %367, -36
  %76 = add i64 %403, 29
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to double
  store double %79, double* %61, align 1, !tbaa !2452
  %80 = add i64 %403, 32
  store i64 %80, i64* %PC, align 8
  %81 = load i32, i32* %370, align 4
  %82 = add i32 %81, 1
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %RAX, align 8, !tbaa !2428
  %84 = icmp eq i32 %81, -1
  %85 = icmp eq i32 %82, 0
  %86 = or i1 %84, %85
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %43, align 1, !tbaa !2432
  %88 = and i32 %82, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #12
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %44, align 1, !tbaa !2446
  %93 = xor i32 %82, %81
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %45, align 1, !tbaa !2447
  %97 = zext i1 %85 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2448
  %98 = lshr i32 %82, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2449
  %100 = lshr i32 %81, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %98
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2450
  %105 = sitofp i32 %82 to double
  store double %105, double* %62, align 1, !tbaa !2452
  %106 = fmul double %105, %79
  %107 = bitcast i64 %74 to double
  %108 = fadd double %106, %107
  store double %108, double* %61, align 1, !tbaa !2452
  %109 = add i64 %403, 52
  store i64 %109, i64* %PC, align 8
  %110 = load i32, i32* %375, align 4
  %111 = sitofp i32 %110 to double
  store double %111, double* %57, align 1, !tbaa !2452
  %112 = fdiv double %108, %111
  store double %112, double* %61, align 1, !tbaa !2452
  %113 = add i64 %367, -16
  %114 = add i64 %403, 60
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RCX, align 8, !tbaa !2428
  %117 = add i64 %403, 64
  store i64 %117, i64* %PC, align 8
  %118 = load i32, i32* %77, align 4
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 13
  store i64 %120, i64* %RDX, align 8, !tbaa !2428
  %121 = add i64 %120, %116
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = icmp ult i64 %121, %116
  %123 = icmp ult i64 %121, %120
  %124 = or i1 %122, %123
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %43, align 1, !tbaa !2432
  %126 = trunc i64 %121 to i32
  %127 = and i32 %126, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127) #12
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %44, align 1, !tbaa !2446
  %132 = xor i64 %116, %121
  %133 = lshr i64 %132, 4
  %134 = trunc i64 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %45, align 1, !tbaa !2447
  %136 = icmp eq i64 %121, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %46, align 1, !tbaa !2448
  %138 = lshr i64 %121, 63
  %139 = trunc i64 %138 to i8
  store i8 %139, i8* %47, align 1, !tbaa !2449
  %140 = lshr i64 %116, 63
  %141 = lshr i64 %119, 50
  %142 = and i64 %141, 1
  %143 = xor i64 %138, %140
  %144 = xor i64 %138, %142
  %145 = add nuw nsw i64 %143, %144
  %146 = icmp eq i64 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %48, align 1, !tbaa !2450
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -40
  %150 = add i64 %403, 75
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RDX, align 8, !tbaa !2428
  %154 = shl nsw i64 %153, 3
  %155 = add i64 %154, %121
  %156 = add i64 %403, 80
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to double*
  store double %112, double* %157, align 8
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -36
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sitofp i32 %163 to double
  store double %164, double* %57, align 1, !tbaa !2452
  %165 = add i64 %158, -40
  %166 = add i64 %160, 8
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, 2
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = icmp ugt i32 %168, -3
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %43, align 1, !tbaa !2432
  %173 = and i32 %169, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #12
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %44, align 1, !tbaa !2446
  %178 = xor i32 %169, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %45, align 1, !tbaa !2447
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %46, align 1, !tbaa !2448
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %47, align 1, !tbaa !2449
  %186 = lshr i32 %168, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %48, align 1, !tbaa !2450
  %191 = sitofp i32 %169 to double
  store double %191, double* %61, align 1, !tbaa !2452
  %192 = fmul double %191, %164
  %193 = load double, double* %53, align 1
  %194 = fadd double %192, %193
  store double %194, double* %57, align 1, !tbaa !2452
  %195 = add i64 %158, -4
  %196 = add i64 %160, 28
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = sitofp i32 %198 to double
  store double %199, double* %53, align 1, !tbaa !2452
  %200 = fdiv double %194, %199
  store double %200, double* %57, align 1, !tbaa !2452
  %201 = add i64 %158, -24
  %202 = add i64 %160, 36
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RCX, align 8, !tbaa !2428
  %205 = add i64 %160, 40
  store i64 %205, i64* %PC, align 8
  %206 = load i32, i32* %162, align 4
  %207 = sext i32 %206 to i64
  %208 = shl nsw i64 %207, 13
  store i64 %208, i64* %RDX, align 8, !tbaa !2428
  %209 = add i64 %208, %204
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = icmp ult i64 %209, %204
  %211 = icmp ult i64 %209, %208
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %43, align 1, !tbaa !2432
  %214 = trunc i64 %209 to i32
  %215 = and i32 %214, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #12
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %44, align 1, !tbaa !2446
  %220 = xor i64 %204, %209
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %45, align 1, !tbaa !2447
  %224 = icmp eq i64 %209, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %46, align 1, !tbaa !2448
  %226 = lshr i64 %209, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %47, align 1, !tbaa !2449
  %228 = lshr i64 %204, 63
  %229 = lshr i64 %207, 50
  %230 = and i64 %229, 1
  %231 = xor i64 %226, %228
  %232 = xor i64 %226, %230
  %233 = add nuw nsw i64 %231, %232
  %234 = icmp eq i64 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %48, align 1, !tbaa !2450
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -40
  %238 = add i64 %160, 51
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %RDX, align 8, !tbaa !2428
  %242 = shl nsw i64 %241, 3
  %243 = add i64 %242, %209
  %244 = add i64 %160, 56
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to double*
  store double %200, double* %245, align 8
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -36
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 5
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sitofp i32 %251 to double
  store double %252, double* %53, align 1, !tbaa !2452
  %253 = add i64 %246, -40
  %254 = add i64 %248, 8
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, 3
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = icmp ugt i32 %256, -4
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %43, align 1, !tbaa !2432
  %261 = and i32 %257, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #12
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %44, align 1, !tbaa !2446
  %266 = xor i32 %257, %256
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %45, align 1, !tbaa !2447
  %270 = icmp eq i32 %257, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %46, align 1, !tbaa !2448
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %47, align 1, !tbaa !2449
  %274 = lshr i32 %256, 31
  %275 = xor i32 %272, %274
  %276 = add nuw nsw i32 %275, %272
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %48, align 1, !tbaa !2450
  %279 = sitofp i32 %257 to double
  store double %279, double* %57, align 1, !tbaa !2452
  %280 = fmul double %279, %252
  %281 = load double, double* %49, align 1
  %282 = fadd double %280, %281
  store double %282, double* %53, align 1, !tbaa !2452
  %283 = add i64 %246, -4
  %284 = add i64 %248, 28
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sitofp i32 %286 to double
  store double %287, double* %49, align 1, !tbaa !2452
  %288 = fdiv double %282, %287
  store double %288, double* %53, align 1, !tbaa !2452
  %289 = add i64 %246, -32
  %290 = add i64 %248, 36
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RCX, align 8, !tbaa !2428
  %293 = add i64 %248, 40
  store i64 %293, i64* %PC, align 8
  %294 = load i32, i32* %250, align 4
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 13
  store i64 %296, i64* %RDX, align 8, !tbaa !2428
  %297 = add i64 %296, %292
  store i64 %297, i64* %RCX, align 8, !tbaa !2428
  %298 = icmp ult i64 %297, %292
  %299 = icmp ult i64 %297, %296
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %43, align 1, !tbaa !2432
  %302 = trunc i64 %297 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303) #12
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %44, align 1, !tbaa !2446
  %308 = xor i64 %292, %297
  %309 = lshr i64 %308, 4
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %45, align 1, !tbaa !2447
  %312 = icmp eq i64 %297, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %46, align 1, !tbaa !2448
  %314 = lshr i64 %297, 63
  %315 = trunc i64 %314 to i8
  store i8 %315, i8* %47, align 1, !tbaa !2449
  %316 = lshr i64 %292, 63
  %317 = lshr i64 %295, 50
  %318 = and i64 %317, 1
  %319 = xor i64 %314, %316
  %320 = xor i64 %314, %318
  %321 = add nuw nsw i64 %319, %320
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %48, align 1, !tbaa !2450
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -40
  %326 = add i64 %248, 51
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %RDX, align 8, !tbaa !2428
  %330 = shl nsw i64 %329, 3
  %331 = add i64 %330, %297
  %332 = add i64 %248, 56
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to double*
  store double %288, double* %333, align 8
  %334 = load i64, i64* %RBP, align 8
  %335 = add i64 %334, -40
  %336 = load i64, i64* %PC, align 8
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %335 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = add i32 %339, 1
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX, align 8, !tbaa !2428
  %342 = icmp eq i32 %339, -1
  %343 = icmp eq i32 %340, 0
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %43, align 1, !tbaa !2432
  %346 = and i32 %340, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #12
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %44, align 1, !tbaa !2446
  %351 = xor i32 %340, %339
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %45, align 1, !tbaa !2447
  %355 = zext i1 %343 to i8
  store i8 %355, i8* %46, align 1, !tbaa !2448
  %356 = lshr i32 %340, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %47, align 1, !tbaa !2449
  %358 = lshr i32 %339, 31
  %359 = xor i32 %356, %358
  %360 = add nuw nsw i32 %359, %356
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %48, align 1, !tbaa !2450
  %363 = add i64 %336, 9
  store i64 %363, i64* %PC, align 8
  store i32 %340, i32* %338, align 4
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, -213
  store i64 %365, i64* %PC, align 8, !tbaa !2428
  br label %block_400acd

block_400acd:                                     ; preds = %block_400ac6, %block_400ad9
  %366 = phi i64 [ %.pre6, %block_400ac6 ], [ %365, %block_400ad9 ]
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -40
  %369 = add i64 %366, 3
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = add i64 %367, -4
  %374 = add i64 %366, 6
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sub i32 %371, %376
  %378 = icmp ult i32 %371, %376
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %43, align 1, !tbaa !2432
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #12
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %44, align 1, !tbaa !2446
  %385 = xor i32 %376, %371
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %45, align 1, !tbaa !2447
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %46, align 1, !tbaa !2448
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %47, align 1, !tbaa !2449
  %394 = lshr i32 %371, 31
  %395 = lshr i32 %376, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %392, %394
  %398 = add nuw nsw i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %48, align 1, !tbaa !2450
  %401 = icmp ne i8 %393, 0
  %402 = xor i1 %401, %399
  %.v = select i1 %402, i64 12, i64 218
  %403 = add i64 %366, %.v
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  br i1 %402, label %block_400ad9, label %block_400ba7

block_400aba:                                     ; preds = %block_400ba7, %block_400aa0
  %404 = phi i64 [ %471, %block_400ba7 ], [ %.pre, %block_400aa0 ]
  %405 = load i64, i64* %RBP, align 8
  %406 = add i64 %405, -36
  %407 = add i64 %404, 3
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX, align 8, !tbaa !2428
  %411 = add i64 %405, -4
  %412 = add i64 %404, 6
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = sub i32 %409, %414
  %416 = icmp ult i32 %409, %414
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %43, align 1, !tbaa !2432
  %418 = and i32 %415, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418) #12
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %44, align 1, !tbaa !2446
  %423 = xor i32 %414, %409
  %424 = xor i32 %423, %415
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %45, align 1, !tbaa !2447
  %428 = icmp eq i32 %415, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %46, align 1, !tbaa !2448
  %430 = lshr i32 %415, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %47, align 1, !tbaa !2449
  %432 = lshr i32 %409, 31
  %433 = lshr i32 %414, 31
  %434 = xor i32 %433, %432
  %435 = xor i32 %430, %432
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %48, align 1, !tbaa !2450
  %439 = icmp ne i8 %431, 0
  %440 = xor i1 %439, %437
  %.v7 = select i1 %440, i64 12, i64 256
  %441 = add i64 %404, %.v7
  store i64 %441, i64* %PC, align 8, !tbaa !2428
  br i1 %440, label %block_400ac6, label %block_400bba

block_400ba7:                                     ; preds = %block_400acd
  %442 = add i64 %367, -36
  %443 = add i64 %403, 8
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = add i32 %445, 1
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX, align 8, !tbaa !2428
  %448 = icmp eq i32 %445, -1
  %449 = icmp eq i32 %446, 0
  %450 = or i1 %448, %449
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %43, align 1, !tbaa !2432
  %452 = and i32 %446, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452) #12
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %44, align 1, !tbaa !2446
  %457 = xor i32 %446, %445
  %458 = lshr i32 %457, 4
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %45, align 1, !tbaa !2447
  %461 = zext i1 %449 to i8
  store i8 %461, i8* %46, align 1, !tbaa !2448
  %462 = lshr i32 %446, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %47, align 1, !tbaa !2449
  %464 = lshr i32 %445, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %462
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %48, align 1, !tbaa !2450
  %469 = add i64 %403, 14
  store i64 %469, i64* %PC, align 8
  store i32 %446, i32* %444, align 4
  %470 = load i64, i64* %PC, align 8
  %471 = add i64 %470, -251
  store i64 %471, i64* %PC, align 8, !tbaa !2428
  br label %block_400aba

block_400ac6:                                     ; preds = %block_400aba
  %472 = add i64 %405, -40
  %473 = add i64 %441, 7
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  store i32 0, i32* %474, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400acd
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
define %struct.Memory* @sub_4012a0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4012a0:
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
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 48
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
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -4
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 4
  %57 = or i32 %56, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %58 = and i32 %57, 241
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58) #12
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2448
  %63 = lshr i32 %55, 27
  %64 = and i32 %63, 1
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %33, align 1, !tbaa !2449
  %66 = lshr i32 %55, 27
  %67 = and i32 %66, 1
  %68 = xor i32 %64, %67
  %69 = add nuw nsw i32 %68, %64
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %39, align 1, !tbaa !2450
  %72 = sext i32 %57 to i64
  store i64 %72, i64* %RDI, align 8, !tbaa !2428
  %73 = add i64 %52, -3167
  %74 = add i64 %52, 17
  %75 = load i64, i64* %RSP, align 8, !tbaa !2428
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %RSP, align 8, !tbaa !2428
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  %78 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -32
  %81 = load i64, i64* %RAX, align 8
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -32
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = add i64 %85, -4
  %92 = add i64 %87, 7
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RCX, align 8, !tbaa !2428
  %97 = lshr i32 %94, 28
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %14, align 1, !tbaa !2454
  %100 = and i32 %95, 240
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #12
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %21, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %105 = icmp eq i32 %95, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %30, align 1, !tbaa !2454
  %107 = lshr i32 %94, 27
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %110 = sext i32 %95 to i64
  store i64 %110, i64* %RSI, align 8, !tbaa !2428
  %111 = add i64 %90, %110
  %112 = add i64 %87, 17
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i8*
  store i8 0, i8* %113, align 1
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -20
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 7
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %115 to i32*
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %121 = bitcast i64* %120 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012dc

block_4012dc:                                     ; preds = %block_401332, %block_4012a0
  %122 = phi i64 [ %.pre, %block_4012a0 ], [ %356, %block_401332 ]
  %MEMORY.0 = phi %struct.Memory* [ %78, %block_4012a0 ], [ %318, %block_401332 ]
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -20
  %125 = add i64 %122, 3
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = add i64 %123, -4
  %130 = add i64 %122, 6
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %127, %132
  %134 = icmp ult i32 %127, %132
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %14, align 1, !tbaa !2432
  %136 = and i32 %133, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #12
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %21, align 1, !tbaa !2446
  %141 = xor i32 %132, %127
  %142 = xor i32 %141, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %27, align 1, !tbaa !2447
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %30, align 1, !tbaa !2448
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %33, align 1, !tbaa !2449
  %150 = lshr i32 %127, 31
  %151 = lshr i32 %132, 31
  %152 = xor i32 %151, %150
  %153 = xor i32 %148, %150
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %39, align 1, !tbaa !2450
  %157 = icmp ne i8 %149, 0
  %158 = xor i1 %157, %155
  %.v = select i1 %158, i64 12, i64 120
  %159 = add i64 %122, %.v
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  br i1 %158, label %block_4012e8, label %block_401354

block_401354:                                     ; preds = %block_4012dc
  %160 = add i64 %123, -32
  %161 = add i64 %159, 4
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RDI, align 8, !tbaa !2428
  %164 = add i64 %159, -3412
  %165 = add i64 %159, 9
  %166 = load i64, i64* %RSP, align 8, !tbaa !2428
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %168, align 8
  store i64 %167, i64* %RSP, align 8, !tbaa !2428
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %169 = tail call fastcc %struct.Memory* @ext_602108_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %170 = load i64, i64* %RSP, align 8
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %170, 48
  store i64 %172, i64* %RSP, align 8, !tbaa !2428
  %173 = icmp ugt i64 %170, -49
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1, !tbaa !2432
  %175 = trunc i64 %172 to i32
  %176 = and i32 %175, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #12
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %21, align 1, !tbaa !2446
  %181 = xor i64 %170, 16
  %182 = xor i64 %181, %172
  %183 = lshr i64 %182, 4
  %184 = trunc i64 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %27, align 1, !tbaa !2447
  %186 = icmp eq i64 %172, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %30, align 1, !tbaa !2448
  %188 = lshr i64 %172, 63
  %189 = trunc i64 %188 to i8
  store i8 %189, i8* %33, align 1, !tbaa !2449
  %190 = lshr i64 %170, 63
  %191 = xor i64 %188, %190
  %192 = add nuw nsw i64 %191, %188
  %193 = icmp eq i64 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %39, align 1, !tbaa !2450
  %195 = add i64 %171, 5
  store i64 %195, i64* %PC, align 8
  %196 = add i64 %170, 56
  %197 = inttoptr i64 %172 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RBP, align 8, !tbaa !2428
  store i64 %196, i64* %RSP, align 8, !tbaa !2428
  %199 = add i64 %171, 6
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %196 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  %202 = add i64 %170, 64
  store i64 %202, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %169

block_4012fb:                                     ; preds = %block_4012ef
  %203 = add i64 %358, -16
  %204 = add i64 %394, 4
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = add i64 %358, -20
  %208 = add i64 %394, 8
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 13
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = add i64 %212, %206
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = icmp ult i64 %213, %206
  %215 = icmp ult i64 %213, %212
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %14, align 1, !tbaa !2432
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #12
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1, !tbaa !2446
  %224 = xor i64 %206, %213
  %225 = lshr i64 %224, 4
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %27, align 1, !tbaa !2447
  %228 = icmp eq i64 %213, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %30, align 1, !tbaa !2448
  %230 = lshr i64 %213, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %33, align 1, !tbaa !2449
  %232 = lshr i64 %206, 63
  %233 = lshr i64 %211, 50
  %234 = and i64 %233, 1
  %235 = xor i64 %230, %232
  %236 = xor i64 %230, %234
  %237 = add nuw nsw i64 %235, %236
  %238 = icmp eq i64 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %39, align 1, !tbaa !2450
  %240 = add i64 %394, 19
  store i64 %240, i64* %PC, align 8
  %241 = load i32, i32* %361, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX, align 8, !tbaa !2428
  %243 = shl nsw i64 %242, 3
  %244 = add i64 %243, %213
  %245 = add i64 %394, 24
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %119, align 1, !tbaa !2452
  store double 0.000000e+00, double* %121, align 1, !tbaa !2452
  %248 = add i64 %394, 27
  store i64 %248, i64* %PC, align 8
  %249 = load i32, i32* %361, align 4
  %250 = shl i32 %249, 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RDX, align 8, !tbaa !2428
  %252 = lshr i32 %249, 28
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %14, align 1, !tbaa !2454
  %255 = and i32 %250, 240
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #12
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %260 = icmp eq i32 %250, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1, !tbaa !2454
  %262 = lshr i32 %249, 27
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %265 = load i64, i64* %RBP, align 8
  %266 = add i64 %265, -32
  %267 = add i64 %394, 34
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RSI, align 8, !tbaa !2428
  store i64 %251, i64* %RDI, align 8, !tbaa !2428
  %270 = add i64 %394, 117
  %271 = add i64 %394, 41
  %272 = load i64, i64* %RSP, align 8, !tbaa !2428
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %RSP, align 8, !tbaa !2428
  store i64 %270, i64* %PC, align 8, !tbaa !2428
  %275 = tail call %struct.Memory* @sub_401370_print_element_renamed_(%struct.State* nonnull %0, i64 %270, %struct.Memory* %MEMORY.0)
  %276 = load i64, i64* %RBP, align 8
  %277 = add i64 %276, -24
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, 1
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = icmp eq i32 %281, -1
  %285 = icmp eq i32 %282, 0
  %286 = or i1 %284, %285
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %14, align 1, !tbaa !2432
  %288 = and i32 %282, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #12
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %21, align 1, !tbaa !2446
  %293 = xor i32 %282, %281
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  store i8 %296, i8* %27, align 1, !tbaa !2447
  %297 = zext i1 %285 to i8
  store i8 %297, i8* %30, align 1, !tbaa !2448
  %298 = lshr i32 %282, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %33, align 1, !tbaa !2449
  %300 = lshr i32 %281, 31
  %301 = xor i32 %298, %300
  %302 = add nuw nsw i32 %301, %298
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %39, align 1, !tbaa !2450
  %305 = add i64 %278, 9
  store i64 %305, i64* %PC, align 8
  store i32 %282, i32* %280, align 4
  %306 = load i64, i64* %PC, align 8
  %307 = add i64 %306, -62
  store i64 %307, i64* %PC, align 8, !tbaa !2428
  br label %block_4012ef

block_401332:                                     ; preds = %block_4012ef
  %308 = add i64 %358, -32
  %309 = add i64 %394, 4
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RDI, align 8, !tbaa !2428
  %312 = load i64, i64* @stderr, align 128
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  %313 = add i64 %394, -3346
  %314 = add i64 %394, 17
  %315 = load i64, i64* %RSP, align 8, !tbaa !2428
  %316 = add i64 %315, -8
  %317 = inttoptr i64 %316 to i64*
  store i64 %314, i64* %317, align 8
  store i64 %316, i64* %RSP, align 8, !tbaa !2428
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  %318 = tail call fastcc %struct.Memory* @ext_6020d0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %319 = load i64, i64* %RBP, align 8
  %320 = add i64 %319, -36
  %321 = load i32, i32* %EAX, align 4
  %322 = load i64, i64* %PC, align 8
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %320 to i32*
  store i32 %321, i32* %324, align 4
  %325 = load i64, i64* %RBP, align 8
  %326 = add i64 %325, -20
  %327 = load i64, i64* %PC, align 8
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %326 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, 1
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = icmp eq i32 %330, -1
  %334 = icmp eq i32 %331, 0
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %14, align 1, !tbaa !2432
  %337 = and i32 %331, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337) #12
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %21, align 1, !tbaa !2446
  %342 = xor i32 %331, %330
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %27, align 1, !tbaa !2447
  %346 = zext i1 %334 to i8
  store i8 %346, i8* %30, align 1, !tbaa !2448
  %347 = lshr i32 %331, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %33, align 1, !tbaa !2449
  %349 = lshr i32 %330, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %347
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %39, align 1, !tbaa !2450
  %354 = add i64 %327, 9
  store i64 %354, i64* %PC, align 8
  store i32 %331, i32* %329, align 4
  %355 = load i64, i64* %PC, align 8
  %356 = add i64 %355, -115
  store i64 %356, i64* %PC, align 8, !tbaa !2428
  br label %block_4012dc

block_4012ef:                                     ; preds = %block_4012e8, %block_4012fb
  %357 = phi i64 [ %.pre9, %block_4012e8 ], [ %307, %block_4012fb ]
  %358 = load i64, i64* %RBP, align 8
  %359 = add i64 %358, -24
  %360 = add i64 %357, 3
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = add i64 %358, -4
  %365 = add i64 %357, 6
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sub i32 %362, %367
  %369 = icmp ult i32 %362, %367
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %14, align 1, !tbaa !2432
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371) #12
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %21, align 1, !tbaa !2446
  %376 = xor i32 %367, %362
  %377 = xor i32 %376, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %27, align 1, !tbaa !2447
  %381 = icmp eq i32 %368, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %30, align 1, !tbaa !2448
  %383 = lshr i32 %368, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1, !tbaa !2449
  %385 = lshr i32 %362, 31
  %386 = lshr i32 %367, 31
  %387 = xor i32 %386, %385
  %388 = xor i32 %383, %385
  %389 = add nuw nsw i32 %388, %387
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %39, align 1, !tbaa !2450
  %392 = icmp ne i8 %384, 0
  %393 = xor i1 %392, %390
  %.v10 = select i1 %393, i64 12, i64 67
  %394 = add i64 %357, %.v10
  store i64 %394, i64* %PC, align 8, !tbaa !2428
  br i1 %393, label %block_4012fb, label %block_401332

block_4012e8:                                     ; preds = %block_4012dc
  %395 = add i64 %123, -24
  %396 = add i64 %159, 7
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 0, i32* %397, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_4012ef
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

; Function Attrs: noinline
define %struct.Memory* @sub_401520___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401520:
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
  %63 = add i64 %38, -3939
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
  br i1 %76, label %block_401576, label %block_401556

block_401576.loopexit:                            ; preds = %block_401560
  br label %block_401576

block_401576:                                     ; preds = %block_401576.loopexit, %block_401520
  %81 = phi i64 [ %80, %block_401520 ], [ %179, %block_401576.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401520 ], [ %149, %block_401576.loopexit ]
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

block_401556:                                     ; preds = %block_401520
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401560

block_401560:                                     ; preds = %block_401560, %block_401556
  %134 = phi i64 [ 0, %block_401556 ], [ %152, %block_401560 ]
  %135 = phi i64 [ %133, %block_401556 ], [ %179, %block_401560 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401556 ], [ %149, %block_401560 ]
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
  br i1 %169, label %block_401576.loopexit, label %block_401560
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
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 71), i64* %RSI, align 8, !tbaa !2428
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401170_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401170:
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
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -88
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 80
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #12
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
  %42 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 32) to i64*), align 16
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %43, i64* %44, align 1, !tbaa !2452
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast i64* %45 to double*
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %47 = add i64 %9, -16
  %48 = load i32, i32* %EDI, align 4
  %49 = add i64 %12, 18
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RDX, align 8
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -40
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 5
  store i64 %66, i64* %PC, align 8
  %67 = load i64, i64* %44, align 1
  %68 = inttoptr i64 %64 to i64*
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -28
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %74 = bitcast %union.VectorReg* %6 to i8*
  %75 = bitcast %union.VectorReg* %6 to i32*
  %76 = getelementptr inbounds i8, i8* %74, i64 4
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to i32*
  %80 = getelementptr inbounds i8, i8* %74, i64 12
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %83 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %84 = getelementptr inbounds i8, i8* %42, i64 4
  %85 = bitcast i8* %84 to i32*
  %86 = bitcast i64* %45 to i32*
  %87 = getelementptr inbounds i8, i8* %42, i64 12
  %88 = bitcast i8* %87 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_401197

block_40121a:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 122), i64* %RSI, align 8, !tbaa !2428
  %89 = load i64, i64* @stderr, align 128
  store i64 %89, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -28
  %92 = add i64 %340, 21
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDX, align 8, !tbaa !2428
  %96 = add i64 %90, -32
  %97 = add i64 %340, 24
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RCX, align 8, !tbaa !2428
  %101 = add i64 %90, -48
  %102 = add i64 %340, 29
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %106 = add i64 %340, 33
  store i64 %106, i64* %PC, align 8
  %107 = load i32, i32* %93, align 4
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %105, align 8, !tbaa !2428
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %110 = add i64 %340, 37
  store i64 %110, i64* %PC, align 8
  %111 = load i32, i32* %98, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %109, align 8, !tbaa !2428
  %113 = add i64 %90, -56
  %114 = add i64 %340, 42
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %82, align 1, !tbaa !2452
  %117 = bitcast i64* %78 to double*
  store double 0.000000e+00, double* %117, align 1, !tbaa !2452
  %118 = add i64 %90, -40
  %119 = add i64 %340, 47
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %121, i64* %122, align 1, !tbaa !2452
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %124 = bitcast i64* %123 to double*
  store double 0.000000e+00, double* %124, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %125 = add i64 %340, -3034
  %126 = add i64 %340, 54
  %127 = load i64, i64* %RSP, align 8, !tbaa !2428
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %RSP, align 8, !tbaa !2428
  store i64 %125, i64* %PC, align 8, !tbaa !2428
  %130 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %335)
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -4
  %133 = load i64, i64* %PC, align 8
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %132 to i32*
  store i32 0, i32* %135, align 4
  %136 = load i64, i64* %RBP, align 8
  %137 = add i64 %136, -68
  %138 = load i32, i32* %EAX, align 4
  %139 = load i64, i64* %PC, align 8
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %137 to i32*
  store i32 %138, i32* %141, align 4
  %142 = load i64, i64* %PC, align 8
  %143 = add i64 %142, 50
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br label %block_40128c

block_40125f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -32
  %146 = add i64 %340, 8
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = icmp eq i32 %148, -1
  %152 = icmp eq i32 %149, 0
  %153 = or i1 %151, %152
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %16, align 1, !tbaa !2432
  %155 = and i32 %149, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #12
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %23, align 1, !tbaa !2446
  %160 = xor i32 %149, %148
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %29, align 1, !tbaa !2447
  %164 = zext i1 %152 to i8
  store i8 %164, i8* %32, align 1, !tbaa !2448
  %165 = lshr i32 %149, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %35, align 1, !tbaa !2449
  %167 = lshr i32 %148, 31
  %168 = xor i32 %165, %167
  %169 = add nuw nsw i32 %168, %165
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %41, align 1, !tbaa !2450
  %172 = add i64 %340, 14
  store i64 %172, i64* %PC, align 8
  store i32 %149, i32* %147, align 4
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, -195
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br label %block_4011aa

block_4011b6:                                     ; preds = %block_4011aa
  %175 = add i64 %449, -16
  %176 = add i64 %485, 4
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = add i64 %449, -28
  %180 = add i64 %485, 8
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = shl nsw i64 %183, 13
  store i64 %184, i64* %RCX, align 8, !tbaa !2428
  %185 = add i64 %184, %178
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = icmp ult i64 %185, %178
  %187 = icmp ult i64 %185, %184
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %16, align 1, !tbaa !2432
  %190 = trunc i64 %185 to i32
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #12
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %23, align 1, !tbaa !2446
  %196 = xor i64 %178, %185
  %197 = lshr i64 %196, 4
  %198 = trunc i64 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %29, align 1, !tbaa !2447
  %200 = icmp eq i64 %185, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %32, align 1, !tbaa !2448
  %202 = lshr i64 %185, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %35, align 1, !tbaa !2449
  %204 = lshr i64 %178, 63
  %205 = lshr i64 %183, 50
  %206 = and i64 %205, 1
  %207 = xor i64 %202, %204
  %208 = xor i64 %202, %206
  %209 = add nuw nsw i64 %207, %208
  %210 = icmp eq i64 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %41, align 1, !tbaa !2450
  %212 = add i64 %485, 19
  store i64 %212, i64* %PC, align 8
  %213 = load i32, i32* %452, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RCX, align 8, !tbaa !2428
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %185
  %217 = add i64 %485, 24
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %220 = add i64 %449, -48
  %221 = add i64 %485, 29
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i64*
  store i64 %219, i64* %222, align 8
  %223 = load i64, i64* %RBP, align 8
  %224 = add i64 %223, -24
  %225 = load i64, i64* %PC, align 8
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = add i64 %223, -28
  %230 = add i64 %225, 8
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = shl nsw i64 %233, 13
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = add i64 %234, %228
  store i64 %235, i64* %RAX, align 8, !tbaa !2428
  %236 = icmp ult i64 %235, %228
  %237 = icmp ult i64 %235, %234
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %16, align 1, !tbaa !2432
  %240 = trunc i64 %235 to i32
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #12
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %23, align 1, !tbaa !2446
  %246 = xor i64 %228, %235
  %247 = lshr i64 %246, 4
  %248 = trunc i64 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %29, align 1, !tbaa !2447
  %250 = icmp eq i64 %235, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %32, align 1, !tbaa !2448
  %252 = lshr i64 %235, 63
  %253 = trunc i64 %252 to i8
  store i8 %253, i8* %35, align 1, !tbaa !2449
  %254 = lshr i64 %228, 63
  %255 = lshr i64 %233, 50
  %256 = and i64 %255, 1
  %257 = xor i64 %252, %254
  %258 = xor i64 %252, %256
  %259 = add nuw nsw i64 %257, %258
  %260 = icmp eq i64 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %41, align 1, !tbaa !2450
  %262 = add i64 %223, -32
  %263 = add i64 %225, 19
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = shl nsw i64 %266, 3
  %268 = add i64 %267, %235
  %269 = add i64 %225, 24
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %272 = add i64 %223, -56
  %273 = add i64 %225, 29
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i64*
  store i64 %271, i64* %274, align 8
  %275 = load i64, i64* %RBP, align 8
  %276 = add i64 %275, -48
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %281 = add i64 %275, -56
  %282 = add i64 %277, 10
  store i64 %282, i64* %PC, align 8
  %283 = bitcast i64 %280 to double
  %284 = inttoptr i64 %281 to double*
  %285 = load double, double* %284, align 8
  %286 = fsub double %283, %285
  %287 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 48) to i32*), align 16
  %288 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 52) to i32*), align 4
  %289 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 56) to i32*), align 8
  %290 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 60) to i32*), align 4
  store i32 %287, i32* %75, align 1, !tbaa !2455
  store i32 %288, i32* %77, align 1, !tbaa !2455
  store i32 %289, i32* %79, align 1, !tbaa !2455
  store i32 %290, i32* %81, align 1, !tbaa !2455
  %291 = bitcast double %286 to i64
  %292 = load i64, i64* %82, align 1
  %293 = and i64 %292, %291
  %294 = trunc i64 %293 to i32
  %295 = lshr i64 %293, 32
  %296 = trunc i64 %295 to i32
  store i32 %294, i32* %83, align 1, !tbaa !2451
  store i32 %296, i32* %85, align 1, !tbaa !2451
  store i32 0, i32* %86, align 1, !tbaa !2451
  store i32 0, i32* %88, align 1, !tbaa !2451
  %297 = add i64 %275, -64
  %298 = add i64 %277, 26
  store i64 %298, i64* %PC, align 8
  %299 = load i64, i64* %44, align 1
  %300 = inttoptr i64 %297 to i64*
  store i64 %299, i64* %300, align 8
  %301 = load i64, i64* %RBP, align 8
  %302 = add i64 %301, -64
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %302 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %46, align 1, !tbaa !2452
  %307 = add i64 %301, -40
  %308 = add i64 %303, 10
  store i64 %308, i64* %PC, align 8
  %309 = bitcast i64 %306 to double
  %310 = inttoptr i64 %307 to double*
  %311 = load double, double* %310, align 8
  %312 = fcmp uno double %309, %311
  br i1 %312, label %313, label %323

; <label>:313:                                    ; preds = %block_4011b6
  %314 = fadd double %309, %311
  %315 = bitcast double %314 to i64
  %316 = and i64 %315, 9221120237041090560
  %317 = icmp eq i64 %316, 9218868437227405312
  %318 = and i64 %315, 2251799813685247
  %319 = icmp ne i64 %318, 0
  %320 = and i1 %317, %319
  br i1 %320, label %321, label %329

; <label>:321:                                    ; preds = %313
  %322 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %308, %struct.Memory* %MEMORY.2) #13
  %.pre25 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:323:                                    ; preds = %block_4011b6
  %324 = fcmp ogt double %309, %311
  br i1 %324, label %329, label %325

; <label>:325:                                    ; preds = %323
  %326 = fcmp olt double %309, %311
  br i1 %326, label %329, label %327

; <label>:327:                                    ; preds = %325
  %328 = fcmp oeq double %309, %311
  br i1 %328, label %329, label %333

; <label>:329:                                    ; preds = %327, %325, %323, %313
  %330 = phi i8 [ 0, %323 ], [ 0, %325 ], [ 1, %327 ], [ 1, %313 ]
  %331 = phi i8 [ 0, %323 ], [ 0, %325 ], [ 0, %327 ], [ 1, %313 ]
  %332 = phi i8 [ 0, %323 ], [ 1, %325 ], [ 0, %327 ], [ 1, %313 ]
  store i8 %330, i8* %32, align 1, !tbaa !2454
  store i8 %331, i8* %23, align 1, !tbaa !2454
  store i8 %332, i8* %16, align 1, !tbaa !2454
  br label %333

; <label>:333:                                    ; preds = %329, %327
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %333, %321
  %334 = phi i64 [ %.pre25, %321 ], [ %308, %333 ]
  %335 = phi %struct.Memory* [ %322, %321 ], [ %MEMORY.2, %333 ]
  %336 = load i8, i8* %16, align 1, !tbaa !2432
  %337 = load i8, i8* %32, align 1, !tbaa !2448
  %338 = or i8 %337, %336
  %339 = icmp ne i8 %338, 0
  %.v39 = select i1 %339, i64 75, i64 6
  %340 = add i64 %334, %.v39
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  br i1 %339, label %block_40125f, label %block_40121a

block_401272:                                     ; preds = %block_4011aa
  %341 = add i64 %449, -28
  %342 = add i64 %485, 8
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX, align 8, !tbaa !2428
  %347 = icmp eq i32 %344, -1
  %348 = icmp eq i32 %345, 0
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %16, align 1, !tbaa !2432
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #12
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %23, align 1, !tbaa !2446
  %356 = xor i32 %345, %344
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %29, align 1, !tbaa !2447
  %360 = zext i1 %348 to i8
  store i8 %360, i8* %32, align 1, !tbaa !2448
  %361 = lshr i32 %345, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %35, align 1, !tbaa !2449
  %363 = lshr i32 %344, 31
  %364 = xor i32 %361, %363
  %365 = add nuw nsw i32 %364, %361
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %41, align 1, !tbaa !2450
  %368 = add i64 %485, 14
  store i64 %368, i64* %PC, align 8
  store i32 %345, i32* %343, align 4
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, -233
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  br label %block_401197

block_40128c:                                     ; preds = %block_401285, %block_40121a
  %371 = phi i64 [ %.pre26, %block_401285 ], [ %143, %block_40121a ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_401285 ], [ %130, %block_40121a ]
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -4
  %374 = add i64 %371, 3
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = load i64, i64* %RSP, align 8
  %379 = add i64 %378, 80
  store i64 %379, i64* %RSP, align 8, !tbaa !2428
  %380 = icmp ugt i64 %378, -81
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %16, align 1, !tbaa !2432
  %382 = trunc i64 %379 to i32
  %383 = and i32 %382, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383) #12
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %23, align 1, !tbaa !2446
  %388 = xor i64 %378, 16
  %389 = xor i64 %388, %379
  %390 = lshr i64 %389, 4
  %391 = trunc i64 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %29, align 1, !tbaa !2447
  %393 = icmp eq i64 %379, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %32, align 1, !tbaa !2448
  %395 = lshr i64 %379, 63
  %396 = trunc i64 %395 to i8
  store i8 %396, i8* %35, align 1, !tbaa !2449
  %397 = lshr i64 %378, 63
  %398 = xor i64 %395, %397
  %399 = add nuw nsw i64 %398, %395
  %400 = icmp eq i64 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %41, align 1, !tbaa !2450
  %402 = add i64 %371, 8
  store i64 %402, i64* %PC, align 8
  %403 = add i64 %378, 88
  %404 = inttoptr i64 %379 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RBP, align 8, !tbaa !2428
  store i64 %403, i64* %RSP, align 8, !tbaa !2428
  %406 = add i64 %371, 9
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %403 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %PC, align 8, !tbaa !2428
  %409 = add i64 %378, 96
  store i64 %409, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401197:                                     ; preds = %block_401272, %block_401170
  %410 = phi i64 [ %.pre, %block_401170 ], [ %370, %block_401272 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401170 ], [ %MEMORY.2, %block_401272 ]
  %411 = load i64, i64* %RBP, align 8
  %412 = add i64 %411, -28
  %413 = add i64 %410, 3
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RAX, align 8, !tbaa !2428
  %417 = add i64 %411, -8
  %418 = add i64 %410, 6
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = sub i32 %415, %420
  %422 = icmp ult i32 %415, %420
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %16, align 1, !tbaa !2432
  %424 = and i32 %421, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424) #12
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %23, align 1, !tbaa !2446
  %429 = xor i32 %420, %415
  %430 = xor i32 %429, %421
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %29, align 1, !tbaa !2447
  %434 = icmp eq i32 %421, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %32, align 1, !tbaa !2448
  %436 = lshr i32 %421, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %35, align 1, !tbaa !2449
  %438 = lshr i32 %415, 31
  %439 = lshr i32 %420, 31
  %440 = xor i32 %439, %438
  %441 = xor i32 %436, %438
  %442 = add nuw nsw i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %41, align 1, !tbaa !2450
  %445 = icmp ne i8 %437, 0
  %446 = xor i1 %445, %443
  %.v27 = select i1 %446, i64 12, i64 238
  %447 = add i64 %410, %.v27
  store i64 %447, i64* %PC, align 8, !tbaa !2428
  br i1 %446, label %block_4011a3, label %block_401285

block_4011aa:                                     ; preds = %block_4011a3, %block_40125f
  %448 = phi i64 [ %.pre24, %block_4011a3 ], [ %174, %block_40125f ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_4011a3 ], [ %335, %block_40125f ]
  %449 = load i64, i64* %RBP, align 8
  %450 = add i64 %449, -32
  %451 = add i64 %448, 3
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = add i64 %449, -8
  %456 = add i64 %448, 6
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sub i32 %453, %458
  %460 = icmp ult i32 %453, %458
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %16, align 1, !tbaa !2432
  %462 = and i32 %459, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #12
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %23, align 1, !tbaa !2446
  %467 = xor i32 %458, %453
  %468 = xor i32 %467, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %29, align 1, !tbaa !2447
  %472 = icmp eq i32 %459, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %32, align 1, !tbaa !2448
  %474 = lshr i32 %459, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %35, align 1, !tbaa !2449
  %476 = lshr i32 %453, 31
  %477 = lshr i32 %458, 31
  %478 = xor i32 %477, %476
  %479 = xor i32 %474, %476
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %41, align 1, !tbaa !2450
  %483 = icmp ne i8 %475, 0
  %484 = xor i1 %483, %481
  %.v = select i1 %484, i64 12, i64 200
  %485 = add i64 %448, %.v
  store i64 %485, i64* %PC, align 8, !tbaa !2428
  br i1 %484, label %block_4011b6, label %block_401272

block_401285:                                     ; preds = %block_401197
  %486 = add i64 %411, -4
  %487 = add i64 %447, 7
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %486 to i32*
  store i32 1, i32* %488, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_40128c

block_4011a3:                                     ; preds = %block_401197
  %489 = add i64 %411, -32
  %490 = add i64 %447, 7
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i32*
  store i32 0, i32* %491, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_4011aa
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401594__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401594:
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401590___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401590:
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
  store i64 add (i64 ptrtoint (%seg_4015a0__rodata_type* @seg_4015a0__rodata to i64), i64 64), i64* %RDI, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400bc0_kernel_adi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400bc0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %19 = add i64 %18, -8
  %20 = load i32, i32* %ESI, align 4
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RDX, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RCX, align 8
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* %RBP, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %R8, align 8
  %39 = load i64, i64* %PC, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -36
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %53 = bitcast [32 x %union.VectorReg]* %5 to double*
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  %57 = bitcast %union.VectorReg* %6 to double*
  %58 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast i64* %59 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400bdd

block_40116b:                                     ; preds = %block_400bdd
  %61 = add i64 %990, 1
  store i64 %61, i64* %PC, align 8
  %62 = load i64, i64* %9, align 8, !tbaa !2428
  %63 = add i64 %62, 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  store i64 %63, i64* %9, align 8, !tbaa !2428
  %66 = add i64 %990, 2
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %PC, align 8, !tbaa !2428
  %69 = add i64 %62, 16
  store i64 %69, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401093:                                     ; preds = %block_401087
  %70 = add i64 %2939, -16
  %71 = add i64 %2975, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RAX, align 8, !tbaa !2428
  %74 = add i64 %2975, 7
  store i64 %74, i64* %PC, align 8
  %75 = load i32, i32* %2947, align 4
  %76 = add i32 %75, -2
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RCX, align 8, !tbaa !2428
  %78 = icmp ult i32 %75, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2432
  %80 = and i32 %76, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80) #12
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %48, align 1, !tbaa !2446
  %85 = xor i32 %76, %75
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %49, align 1, !tbaa !2447
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %50, align 1, !tbaa !2448
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %51, align 1, !tbaa !2449
  %93 = lshr i32 %75, 31
  %94 = xor i32 %91, %93
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %52, align 1, !tbaa !2450
  %98 = add i64 %2939, -40
  %99 = add i64 %2975, 13
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %76, %101
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX, align 8, !tbaa !2428
  %104 = sext i32 %102 to i64
  %105 = shl nsw i64 %104, 13
  store i64 %105, i64* %RDX, align 8, !tbaa !2428
  %106 = add i64 %105, %73
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %107 = icmp ult i64 %106, %73
  %108 = icmp ult i64 %106, %105
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %47, align 1, !tbaa !2432
  %111 = trunc i64 %106 to i32
  %112 = and i32 %111, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #12
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %48, align 1, !tbaa !2446
  %117 = xor i64 %73, %106
  %118 = lshr i64 %117, 4
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %49, align 1, !tbaa !2447
  %121 = icmp eq i64 %106, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %50, align 1, !tbaa !2448
  %123 = lshr i64 %106, 63
  %124 = trunc i64 %123 to i8
  store i8 %124, i8* %51, align 1, !tbaa !2449
  %125 = lshr i64 %73, 63
  %126 = lshr i64 %104, 50
  %127 = and i64 %126, 1
  %128 = xor i64 %123, %125
  %129 = xor i64 %123, %127
  %130 = add nuw nsw i64 %128, %129
  %131 = icmp eq i64 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %52, align 1, !tbaa !2450
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -44
  %135 = add i64 %2975, 27
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = shl nsw i64 %138, 3
  %140 = add i64 %139, %106
  %141 = add i64 %2975, 32
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %144 = add i64 %133, -16
  %145 = add i64 %2975, 36
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = add i64 %133, -8
  %149 = add i64 %2975, 39
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RCX, align 8, !tbaa !2428
  %153 = add i64 %133, -40
  %154 = add i64 %2975, 42
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = sub i32 %151, %156
  %158 = add i32 %157, -3
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RCX, align 8, !tbaa !2428
  %160 = sext i32 %158 to i64
  %161 = shl nsw i64 %160, 13
  store i64 %161, i64* %RDX, align 8, !tbaa !2428
  %162 = add i64 %161, %147
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = icmp ult i64 %162, %147
  %164 = icmp ult i64 %162, %161
  %165 = or i1 %163, %164
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %47, align 1, !tbaa !2432
  %167 = trunc i64 %162 to i32
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168) #12
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %48, align 1, !tbaa !2446
  %173 = xor i64 %147, %162
  %174 = lshr i64 %173, 4
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %49, align 1, !tbaa !2447
  %177 = icmp eq i64 %162, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %50, align 1, !tbaa !2448
  %179 = lshr i64 %162, 63
  %180 = trunc i64 %179 to i8
  store i8 %180, i8* %51, align 1, !tbaa !2449
  %181 = lshr i64 %147, 63
  %182 = lshr i64 %160, 50
  %183 = and i64 %182, 1
  %184 = xor i64 %179, %181
  %185 = xor i64 %179, %183
  %186 = add nuw nsw i64 %184, %185
  %187 = icmp eq i64 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %52, align 1, !tbaa !2450
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -44
  %191 = add i64 %2975, 59
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %RDX, align 8, !tbaa !2428
  %195 = shl nsw i64 %194, 3
  %196 = add i64 %195, %162
  %197 = add i64 %2975, 64
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %200 = add i64 %189, -24
  %201 = add i64 %2975, 68
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %204 = add i64 %189, -8
  %205 = add i64 %2975, 71
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, -3
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = icmp ult i32 %207, 3
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %47, align 1, !tbaa !2432
  %212 = and i32 %208, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #12
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %48, align 1, !tbaa !2446
  %217 = xor i32 %208, %207
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %49, align 1, !tbaa !2447
  %221 = icmp eq i32 %208, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %50, align 1, !tbaa !2448
  %223 = lshr i32 %208, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %51, align 1, !tbaa !2449
  %225 = lshr i32 %207, 31
  %226 = xor i32 %223, %225
  %227 = add nuw nsw i32 %226, %225
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %52, align 1, !tbaa !2450
  %230 = add i64 %189, -40
  %231 = add i64 %2975, 77
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = sub i32 %208, %233
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RCX, align 8, !tbaa !2428
  %236 = sext i32 %234 to i64
  %237 = shl nsw i64 %236, 13
  store i64 %237, i64* %RDX, align 8, !tbaa !2428
  %238 = add i64 %237, %203
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = icmp ult i64 %238, %203
  %240 = icmp ult i64 %238, %237
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %47, align 1, !tbaa !2432
  %243 = trunc i64 %238 to i32
  %244 = and i32 %243, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #12
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %48, align 1, !tbaa !2446
  %249 = xor i64 %203, %238
  %250 = lshr i64 %249, 4
  %251 = trunc i64 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %49, align 1, !tbaa !2447
  %253 = icmp eq i64 %238, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %50, align 1, !tbaa !2448
  %255 = lshr i64 %238, 63
  %256 = trunc i64 %255 to i8
  store i8 %256, i8* %51, align 1, !tbaa !2449
  %257 = lshr i64 %203, 63
  %258 = lshr i64 %236, 50
  %259 = and i64 %258, 1
  %260 = xor i64 %255, %257
  %261 = xor i64 %255, %259
  %262 = add nuw nsw i64 %260, %261
  %263 = icmp eq i64 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %52, align 1, !tbaa !2450
  %265 = load i64, i64* %RBP, align 8
  %266 = add i64 %265, -44
  %267 = add i64 %2975, 91
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RDX, align 8, !tbaa !2428
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %238
  %273 = add i64 %2975, 96
  store i64 %273, i64* %PC, align 8
  %274 = load double, double* %57, align 1
  %275 = inttoptr i64 %272 to double*
  %276 = load double, double* %275, align 8
  %277 = fmul double %274, %276
  store double %277, double* %57, align 1, !tbaa !2452
  %278 = load double, double* %53, align 1
  %279 = fsub double %278, %277
  store double %279, double* %53, align 1, !tbaa !2452
  %280 = add i64 %265, -32
  %281 = add i64 %2975, 104
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = add i64 %265, -8
  %285 = add i64 %2975, 107
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, -2
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX, align 8, !tbaa !2428
  %290 = icmp ult i32 %287, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %47, align 1, !tbaa !2432
  %292 = and i32 %288, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #12
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %48, align 1, !tbaa !2446
  %297 = xor i32 %288, %287
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %49, align 1, !tbaa !2447
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %50, align 1, !tbaa !2448
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %51, align 1, !tbaa !2449
  %305 = lshr i32 %287, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %52, align 1, !tbaa !2450
  %310 = add i64 %265, -40
  %311 = add i64 %2975, 113
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = sub i32 %288, %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = sext i32 %314 to i64
  %317 = shl nsw i64 %316, 13
  store i64 %317, i64* %RDX, align 8, !tbaa !2428
  %318 = add i64 %317, %283
  store i64 %318, i64* %RAX, align 8, !tbaa !2428
  %319 = icmp ult i64 %318, %283
  %320 = icmp ult i64 %318, %317
  %321 = or i1 %319, %320
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %47, align 1, !tbaa !2432
  %323 = trunc i64 %318 to i32
  %324 = and i32 %323, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #12
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %48, align 1, !tbaa !2446
  %329 = xor i64 %283, %318
  %330 = lshr i64 %329, 4
  %331 = trunc i64 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %49, align 1, !tbaa !2447
  %333 = icmp eq i64 %318, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %50, align 1, !tbaa !2448
  %335 = lshr i64 %318, 63
  %336 = trunc i64 %335 to i8
  store i8 %336, i8* %51, align 1, !tbaa !2449
  %337 = lshr i64 %283, 63
  %338 = lshr i64 %316, 50
  %339 = and i64 %338, 1
  %340 = xor i64 %335, %337
  %341 = xor i64 %335, %339
  %342 = add nuw nsw i64 %340, %341
  %343 = icmp eq i64 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %52, align 1, !tbaa !2450
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -44
  %347 = add i64 %2975, 127
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RDX, align 8, !tbaa !2428
  %351 = shl nsw i64 %350, 3
  %352 = add i64 %351, %318
  %353 = add i64 %2975, 132
  store i64 %353, i64* %PC, align 8
  %354 = load double, double* %53, align 1
  %355 = inttoptr i64 %352 to double*
  %356 = load double, double* %355, align 8
  %357 = fdiv double %354, %356
  store double %357, double* %53, align 1, !tbaa !2452
  %358 = add i64 %345, -16
  %359 = add i64 %2975, 136
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = add i64 %345, -8
  %363 = add i64 %2975, 139
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -2
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  %368 = icmp ult i32 %365, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %47, align 1, !tbaa !2432
  %370 = and i32 %366, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370) #12
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %48, align 1, !tbaa !2446
  %375 = xor i32 %366, %365
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %49, align 1, !tbaa !2447
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %50, align 1, !tbaa !2448
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %51, align 1, !tbaa !2449
  %383 = lshr i32 %365, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %52, align 1, !tbaa !2450
  %388 = add i64 %345, -40
  %389 = add i64 %2975, 145
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sub i32 %366, %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  %394 = sext i32 %392 to i64
  %395 = shl nsw i64 %394, 13
  store i64 %395, i64* %RDX, align 8, !tbaa !2428
  %396 = add i64 %395, %361
  store i64 %396, i64* %RAX, align 8, !tbaa !2428
  %397 = icmp ult i64 %396, %361
  %398 = icmp ult i64 %396, %395
  %399 = or i1 %397, %398
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %47, align 1, !tbaa !2432
  %401 = trunc i64 %396 to i32
  %402 = and i32 %401, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #12
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %48, align 1, !tbaa !2446
  %407 = xor i64 %361, %396
  %408 = lshr i64 %407, 4
  %409 = trunc i64 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %49, align 1, !tbaa !2447
  %411 = icmp eq i64 %396, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %50, align 1, !tbaa !2448
  %413 = lshr i64 %396, 63
  %414 = trunc i64 %413 to i8
  store i8 %414, i8* %51, align 1, !tbaa !2449
  %415 = lshr i64 %361, 63
  %416 = lshr i64 %394, 50
  %417 = and i64 %416, 1
  %418 = xor i64 %413, %415
  %419 = xor i64 %413, %417
  %420 = add nuw nsw i64 %418, %419
  %421 = icmp eq i64 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %52, align 1, !tbaa !2450
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -44
  %425 = add i64 %2975, 159
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  store i64 %428, i64* %RDX, align 8, !tbaa !2428
  %429 = shl nsw i64 %428, 3
  %430 = add i64 %429, %396
  %431 = add i64 %2975, 164
  store i64 %431, i64* %PC, align 8
  %432 = load i64, i64* %54, align 1
  %433 = inttoptr i64 %430 to i64*
  store i64 %432, i64* %433, align 8
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -44
  %436 = load i64, i64* %PC, align 8
  %437 = add i64 %436, 3
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %435 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = add i32 %439, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = icmp eq i32 %439, -1
  %443 = icmp eq i32 %440, 0
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %47, align 1, !tbaa !2432
  %446 = and i32 %440, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446) #12
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %48, align 1, !tbaa !2446
  %451 = xor i32 %440, %439
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %49, align 1, !tbaa !2447
  %455 = zext i1 %443 to i8
  store i8 %455, i8* %50, align 1, !tbaa !2448
  %456 = lshr i32 %440, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %51, align 1, !tbaa !2449
  %458 = lshr i32 %439, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %456
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %52, align 1, !tbaa !2450
  %463 = add i64 %436, 9
  store i64 %463, i64* %PC, align 8
  store i32 %440, i32* %438, align 4
  %464 = load i64, i64* %PC, align 8
  %465 = add i64 %464, -185
  store i64 %465, i64* %PC, align 8, !tbaa !2428
  br label %block_401087

block_400dda:                                     ; preds = %block_400dc9
  %466 = add i64 %992, -16
  %467 = add i64 %1030, 4
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RAX, align 8, !tbaa !2428
  %470 = add i64 %992, -40
  %471 = add i64 %1030, 8
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = shl nsw i64 %474, 13
  store i64 %475, i64* %RCX, align 8, !tbaa !2428
  %476 = add i64 %475, %469
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = icmp ult i64 %476, %469
  %478 = icmp ult i64 %476, %475
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %47, align 1, !tbaa !2432
  %481 = trunc i64 %476 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #12
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %48, align 1, !tbaa !2446
  %487 = xor i64 %469, %476
  %488 = lshr i64 %487, 4
  %489 = trunc i64 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %49, align 1, !tbaa !2447
  %491 = icmp eq i64 %476, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %50, align 1, !tbaa !2448
  %493 = lshr i64 %476, 63
  %494 = trunc i64 %493 to i8
  store i8 %494, i8* %51, align 1, !tbaa !2449
  %495 = lshr i64 %469, 63
  %496 = lshr i64 %474, 50
  %497 = and i64 %496, 1
  %498 = xor i64 %493, %495
  %499 = xor i64 %493, %497
  %500 = add nuw nsw i64 %498, %499
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %52, align 1, !tbaa !2450
  %503 = add i64 %1030, 18
  store i64 %503, i64* %PC, align 8
  %504 = load i32, i32* %1000, align 4
  %505 = add i32 %504, -2
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RDX, align 8, !tbaa !2428
  %507 = icmp ult i32 %504, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %47, align 1, !tbaa !2432
  %509 = and i32 %505, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509) #12
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %48, align 1, !tbaa !2446
  %514 = xor i32 %505, %504
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %49, align 1, !tbaa !2447
  %518 = icmp eq i32 %505, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %50, align 1, !tbaa !2448
  %520 = lshr i32 %505, 31
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %51, align 1, !tbaa !2449
  %522 = lshr i32 %504, 31
  %523 = xor i32 %520, %522
  %524 = add nuw nsw i32 %523, %522
  %525 = icmp eq i32 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %52, align 1, !tbaa !2450
  %527 = load i64, i64* %RBP, align 8
  %528 = add i64 %527, -44
  %529 = add i64 %1030, 24
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sub i32 %505, %531
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RDX, align 8, !tbaa !2428
  %534 = icmp ult i32 %505, %531
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %47, align 1, !tbaa !2432
  %536 = and i32 %532, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536) #12
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %48, align 1, !tbaa !2446
  %541 = xor i32 %531, %505
  %542 = xor i32 %541, %532
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %49, align 1, !tbaa !2447
  %546 = icmp eq i32 %532, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %50, align 1, !tbaa !2448
  %548 = lshr i32 %532, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %51, align 1, !tbaa !2449
  %550 = lshr i32 %531, 31
  %551 = xor i32 %550, %520
  %552 = xor i32 %548, %520
  %553 = add nuw nsw i32 %552, %551
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %52, align 1, !tbaa !2450
  %556 = sext i32 %532 to i64
  store i64 %556, i64* %RCX, align 8, !tbaa !2428
  %557 = load i64, i64* %RAX, align 8
  %558 = shl nsw i64 %556, 3
  %559 = add i64 %557, %558
  %560 = add i64 %1030, 32
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %563 = add i64 %527, -16
  %564 = add i64 %1030, 36
  store i64 %564, i64* %PC, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %RAX, align 8, !tbaa !2428
  %567 = add i64 %527, -40
  %568 = add i64 %1030, 40
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = sext i32 %570 to i64
  %572 = shl nsw i64 %571, 13
  store i64 %572, i64* %RCX, align 8, !tbaa !2428
  %573 = add i64 %572, %566
  store i64 %573, i64* %RAX, align 8, !tbaa !2428
  %574 = icmp ult i64 %573, %566
  %575 = icmp ult i64 %573, %572
  %576 = or i1 %574, %575
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %47, align 1, !tbaa !2432
  %578 = trunc i64 %573 to i32
  %579 = and i32 %578, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579) #12
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %48, align 1, !tbaa !2446
  %584 = xor i64 %566, %573
  %585 = lshr i64 %584, 4
  %586 = trunc i64 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %49, align 1, !tbaa !2447
  %588 = icmp eq i64 %573, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %50, align 1, !tbaa !2448
  %590 = lshr i64 %573, 63
  %591 = trunc i64 %590 to i8
  store i8 %591, i8* %51, align 1, !tbaa !2449
  %592 = lshr i64 %566, 63
  %593 = lshr i64 %571, 50
  %594 = and i64 %593, 1
  %595 = xor i64 %590, %592
  %596 = xor i64 %590, %594
  %597 = add nuw nsw i64 %595, %596
  %598 = icmp eq i64 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %52, align 1, !tbaa !2450
  %600 = load i64, i64* %RBP, align 8
  %601 = add i64 %600, -8
  %602 = add i64 %1030, 50
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, -2
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RDX, align 8, !tbaa !2428
  %607 = icmp ult i32 %604, 2
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %47, align 1, !tbaa !2432
  %609 = and i32 %605, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609) #12
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %48, align 1, !tbaa !2446
  %614 = xor i32 %605, %604
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %49, align 1, !tbaa !2447
  %618 = icmp eq i32 %605, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %50, align 1, !tbaa !2448
  %620 = lshr i32 %605, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %51, align 1, !tbaa !2449
  %622 = lshr i32 %604, 31
  %623 = xor i32 %620, %622
  %624 = add nuw nsw i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %52, align 1, !tbaa !2450
  %627 = add i64 %600, -44
  %628 = add i64 %1030, 56
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sub i32 %605, %630
  %632 = icmp eq i32 %631, 0
  %633 = zext i1 %632 to i8
  %634 = lshr i32 %631, 31
  %635 = add i32 %631, -1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RDX, align 8, !tbaa !2428
  store i8 %633, i8* %47, align 1, !tbaa !2432
  %637 = and i32 %635, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637) #12
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %48, align 1, !tbaa !2446
  %642 = xor i32 %635, %631
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %49, align 1, !tbaa !2447
  %646 = icmp eq i32 %635, 0
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %50, align 1, !tbaa !2448
  %648 = lshr i32 %635, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %51, align 1, !tbaa !2449
  %650 = xor i32 %648, %634
  %651 = add nuw nsw i32 %650, %634
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %52, align 1, !tbaa !2450
  %654 = sext i32 %635 to i64
  store i64 %654, i64* %RCX, align 8, !tbaa !2428
  %655 = load i64, i64* %RAX, align 8
  %656 = shl nsw i64 %654, 3
  %657 = add i64 %655, %656
  %658 = add i64 %1030, 67
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %661 = load i64, i64* %RBP, align 8
  %662 = add i64 %661, -24
  %663 = add i64 %1030, 71
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = add i64 %661, -40
  %667 = add i64 %1030, 75
  store i64 %667, i64* %PC, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  %671 = shl nsw i64 %670, 13
  store i64 %671, i64* %RCX, align 8, !tbaa !2428
  %672 = add i64 %671, %665
  store i64 %672, i64* %RAX, align 8, !tbaa !2428
  %673 = icmp ult i64 %672, %665
  %674 = icmp ult i64 %672, %671
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %47, align 1, !tbaa !2432
  %677 = trunc i64 %672 to i32
  %678 = and i32 %677, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678) #12
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %48, align 1, !tbaa !2446
  %683 = xor i64 %665, %672
  %684 = lshr i64 %683, 4
  %685 = trunc i64 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %49, align 1, !tbaa !2447
  %687 = icmp eq i64 %672, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %50, align 1, !tbaa !2448
  %689 = lshr i64 %672, 63
  %690 = trunc i64 %689 to i8
  store i8 %690, i8* %51, align 1, !tbaa !2449
  %691 = lshr i64 %665, 63
  %692 = lshr i64 %670, 50
  %693 = and i64 %692, 1
  %694 = xor i64 %689, %691
  %695 = xor i64 %689, %693
  %696 = add nuw nsw i64 %694, %695
  %697 = icmp eq i64 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %52, align 1, !tbaa !2450
  %699 = add i64 %661, -8
  %700 = add i64 %1030, 85
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RDX, align 8, !tbaa !2428
  %704 = add i64 %661, -44
  %705 = add i64 %1030, 88
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = sub i32 %702, %707
  %709 = lshr i32 %708, 31
  %710 = add i32 %708, -3
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX, align 8, !tbaa !2428
  %712 = icmp ult i32 %708, 3
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %47, align 1, !tbaa !2432
  %714 = and i32 %710, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #12
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %48, align 1, !tbaa !2446
  %719 = xor i32 %710, %708
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %49, align 1, !tbaa !2447
  %723 = icmp eq i32 %710, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %50, align 1, !tbaa !2448
  %725 = lshr i32 %710, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %51, align 1, !tbaa !2449
  %727 = xor i32 %725, %709
  %728 = add nuw nsw i32 %727, %709
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %52, align 1, !tbaa !2450
  %731 = sext i32 %710 to i64
  store i64 %731, i64* %RCX, align 8, !tbaa !2428
  %732 = load i64, i64* %RAX, align 8
  %733 = shl nsw i64 %731, 3
  %734 = add i64 %732, %733
  %735 = add i64 %1030, 99
  store i64 %735, i64* %PC, align 8
  %736 = load double, double* %57, align 1
  %737 = inttoptr i64 %734 to double*
  %738 = load double, double* %737, align 8
  %739 = fmul double %736, %738
  store double %739, double* %57, align 1, !tbaa !2452
  %740 = load double, double* %53, align 1
  %741 = fsub double %740, %739
  store double %741, double* %53, align 1, !tbaa !2452
  %742 = load i64, i64* %RBP, align 8
  %743 = add i64 %742, -32
  %744 = add i64 %1030, 107
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %RAX, align 8, !tbaa !2428
  %747 = add i64 %742, -40
  %748 = add i64 %1030, 111
  store i64 %748, i64* %PC, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = sext i32 %750 to i64
  %752 = shl nsw i64 %751, 13
  store i64 %752, i64* %RCX, align 8, !tbaa !2428
  %753 = add i64 %752, %746
  store i64 %753, i64* %RAX, align 8, !tbaa !2428
  %754 = icmp ult i64 %753, %746
  %755 = icmp ult i64 %753, %752
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %47, align 1, !tbaa !2432
  %758 = trunc i64 %753 to i32
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759) #12
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %48, align 1, !tbaa !2446
  %764 = xor i64 %746, %753
  %765 = lshr i64 %764, 4
  %766 = trunc i64 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %49, align 1, !tbaa !2447
  %768 = icmp eq i64 %753, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %50, align 1, !tbaa !2448
  %770 = lshr i64 %753, 63
  %771 = trunc i64 %770 to i8
  store i8 %771, i8* %51, align 1, !tbaa !2449
  %772 = lshr i64 %746, 63
  %773 = lshr i64 %751, 50
  %774 = and i64 %773, 1
  %775 = xor i64 %770, %772
  %776 = xor i64 %770, %774
  %777 = add nuw nsw i64 %775, %776
  %778 = icmp eq i64 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %52, align 1, !tbaa !2450
  %780 = add i64 %742, -8
  %781 = add i64 %1030, 121
  store i64 %781, i64* %PC, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = add i32 %783, -3
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RDX, align 8, !tbaa !2428
  %786 = icmp ult i32 %783, 3
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %47, align 1, !tbaa !2432
  %788 = and i32 %784, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788) #12
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %48, align 1, !tbaa !2446
  %793 = xor i32 %784, %783
  %794 = lshr i32 %793, 4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  store i8 %796, i8* %49, align 1, !tbaa !2447
  %797 = icmp eq i32 %784, 0
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %50, align 1, !tbaa !2448
  %799 = lshr i32 %784, 31
  %800 = trunc i32 %799 to i8
  store i8 %800, i8* %51, align 1, !tbaa !2449
  %801 = lshr i32 %783, 31
  %802 = xor i32 %799, %801
  %803 = add nuw nsw i32 %802, %801
  %804 = icmp eq i32 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %52, align 1, !tbaa !2450
  %806 = load i64, i64* %RBP, align 8
  %807 = add i64 %806, -44
  %808 = add i64 %1030, 127
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sub i32 %784, %810
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RDX, align 8, !tbaa !2428
  %813 = icmp ult i32 %784, %810
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %47, align 1, !tbaa !2432
  %815 = and i32 %811, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815) #12
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %48, align 1, !tbaa !2446
  %820 = xor i32 %810, %784
  %821 = xor i32 %820, %811
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  store i8 %824, i8* %49, align 1, !tbaa !2447
  %825 = icmp eq i32 %811, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %50, align 1, !tbaa !2448
  %827 = lshr i32 %811, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %51, align 1, !tbaa !2449
  %829 = lshr i32 %810, 31
  %830 = xor i32 %829, %799
  %831 = xor i32 %827, %799
  %832 = add nuw nsw i32 %831, %830
  %833 = icmp eq i32 %832, 2
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %52, align 1, !tbaa !2450
  %835 = sext i32 %811 to i64
  store i64 %835, i64* %RCX, align 8, !tbaa !2428
  %836 = load i64, i64* %RAX, align 8
  %837 = shl nsw i64 %835, 3
  %838 = add i64 %836, %837
  %839 = add i64 %1030, 135
  store i64 %839, i64* %PC, align 8
  %840 = load double, double* %53, align 1
  %841 = inttoptr i64 %838 to double*
  %842 = load double, double* %841, align 8
  %843 = fdiv double %840, %842
  store double %843, double* %53, align 1, !tbaa !2452
  %844 = add i64 %806, -16
  %845 = add i64 %1030, 139
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = add i64 %806, -40
  %849 = add i64 %1030, 143
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = sext i32 %851 to i64
  %853 = shl nsw i64 %852, 13
  store i64 %853, i64* %RCX, align 8, !tbaa !2428
  %854 = add i64 %853, %847
  store i64 %854, i64* %RAX, align 8, !tbaa !2428
  %855 = icmp ult i64 %854, %847
  %856 = icmp ult i64 %854, %853
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %47, align 1, !tbaa !2432
  %859 = trunc i64 %854 to i32
  %860 = and i32 %859, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860) #12
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %48, align 1, !tbaa !2446
  %865 = xor i64 %847, %854
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %49, align 1, !tbaa !2447
  %869 = icmp eq i64 %854, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %50, align 1, !tbaa !2448
  %871 = lshr i64 %854, 63
  %872 = trunc i64 %871 to i8
  store i8 %872, i8* %51, align 1, !tbaa !2449
  %873 = lshr i64 %847, 63
  %874 = lshr i64 %852, 50
  %875 = and i64 %874, 1
  %876 = xor i64 %871, %873
  %877 = xor i64 %871, %875
  %878 = add nuw nsw i64 %876, %877
  %879 = icmp eq i64 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %52, align 1, !tbaa !2450
  %881 = load i64, i64* %RBP, align 8
  %882 = add i64 %881, -8
  %883 = add i64 %1030, 153
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RDX, align 8, !tbaa !2428
  %887 = add i64 %881, -44
  %888 = add i64 %1030, 156
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sub i32 %885, %890
  %892 = lshr i32 %891, 31
  %893 = add i32 %891, -2
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX, align 8, !tbaa !2428
  %895 = icmp ult i32 %891, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %47, align 1, !tbaa !2432
  %897 = and i32 %893, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897) #12
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %48, align 1, !tbaa !2446
  %902 = xor i32 %893, %891
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %49, align 1, !tbaa !2447
  %906 = icmp eq i32 %893, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %50, align 1, !tbaa !2448
  %908 = lshr i32 %893, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %51, align 1, !tbaa !2449
  %910 = xor i32 %908, %892
  %911 = add nuw nsw i32 %910, %892
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %52, align 1, !tbaa !2450
  %914 = sext i32 %893 to i64
  store i64 %914, i64* %RCX, align 8, !tbaa !2428
  %915 = load i64, i64* %RAX, align 8
  %916 = shl nsw i64 %914, 3
  %917 = add i64 %915, %916
  %918 = add i64 %1030, 167
  store i64 %918, i64* %PC, align 8
  %919 = load i64, i64* %54, align 1
  %920 = inttoptr i64 %917 to i64*
  store i64 %919, i64* %920, align 8
  %921 = load i64, i64* %RBP, align 8
  %922 = add i64 %921, -44
  %923 = load i64, i64* %PC, align 8
  %924 = add i64 %923, 3
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %922 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = add i32 %926, 1
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RAX, align 8, !tbaa !2428
  %929 = icmp eq i32 %926, -1
  %930 = icmp eq i32 %927, 0
  %931 = or i1 %929, %930
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %47, align 1, !tbaa !2432
  %933 = and i32 %927, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933) #12
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %48, align 1, !tbaa !2446
  %938 = xor i32 %927, %926
  %939 = lshr i32 %938, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  store i8 %941, i8* %49, align 1, !tbaa !2447
  %942 = zext i1 %930 to i8
  store i8 %942, i8* %50, align 1, !tbaa !2448
  %943 = lshr i32 %927, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %51, align 1, !tbaa !2449
  %945 = lshr i32 %926, 31
  %946 = xor i32 %943, %945
  %947 = add nuw nsw i32 %946, %943
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %52, align 1, !tbaa !2450
  %950 = add i64 %923, 9
  store i64 %950, i64* %PC, align 8
  store i32 %927, i32* %925, align 4
  %951 = load i64, i64* %PC, align 8
  %952 = add i64 %951, -193
  store i64 %952, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc9

block_400bdd:                                     ; preds = %block_401158, %block_400bc0
  %953 = phi i64 [ %1849, %block_401158 ], [ %.pre, %block_400bc0 ]
  %954 = load i64, i64* %RBP, align 8
  %955 = add i64 %954, -36
  %956 = add i64 %953, 3
  store i64 %956, i64* %PC, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RAX, align 8, !tbaa !2428
  %960 = add i64 %954, -4
  %961 = add i64 %953, 6
  store i64 %961, i64* %PC, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = sub i32 %958, %963
  %965 = icmp ult i32 %958, %963
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %47, align 1, !tbaa !2432
  %967 = and i32 %964, 255
  %968 = tail call i32 @llvm.ctpop.i32(i32 %967) #12
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %48, align 1, !tbaa !2446
  %972 = xor i32 %963, %958
  %973 = xor i32 %972, %964
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %49, align 1, !tbaa !2447
  %977 = icmp eq i32 %964, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %50, align 1, !tbaa !2448
  %979 = lshr i32 %964, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %51, align 1, !tbaa !2449
  %981 = lshr i32 %958, 31
  %982 = lshr i32 %963, 31
  %983 = xor i32 %982, %981
  %984 = xor i32 %979, %981
  %985 = add nuw nsw i32 %984, %983
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %52, align 1, !tbaa !2450
  %988 = icmp ne i8 %980, 0
  %989 = xor i1 %988, %986
  %.v87 = select i1 %989, i64 12, i64 1422
  %990 = add i64 %953, %.v87
  store i64 %990, i64* %PC, align 8, !tbaa !2428
  br i1 %989, label %block_400be9, label %block_40116b

block_400dc9:                                     ; preds = %block_400dc2, %block_400dda
  %991 = phi i64 [ %.pre80, %block_400dc2 ], [ %952, %block_400dda ]
  %992 = load i64, i64* %RBP, align 8
  %993 = add i64 %992, -44
  %994 = add i64 %991, 3
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to i32*
  %996 = load i32, i32* %995, align 4
  %997 = zext i32 %996 to i64
  store i64 %997, i64* %RAX, align 8, !tbaa !2428
  %998 = add i64 %992, -8
  %999 = add i64 %991, 6
  store i64 %999, i64* %PC, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, -2
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RCX, align 8, !tbaa !2428
  %1004 = lshr i32 %1002, 31
  %1005 = sub i32 %996, %1002
  %1006 = icmp ult i32 %996, %1002
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %47, align 1, !tbaa !2432
  %1008 = and i32 %1005, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008) #12
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %48, align 1, !tbaa !2446
  %1013 = xor i32 %1002, %996
  %1014 = xor i32 %1013, %1005
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  store i8 %1017, i8* %49, align 1, !tbaa !2447
  %1018 = icmp eq i32 %1005, 0
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %50, align 1, !tbaa !2448
  %1020 = lshr i32 %1005, 31
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, i8* %51, align 1, !tbaa !2449
  %1022 = lshr i32 %996, 31
  %1023 = xor i32 %1004, %1022
  %1024 = xor i32 %1020, %1022
  %1025 = add nuw nsw i32 %1024, %1023
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %52, align 1, !tbaa !2450
  %1028 = icmp ne i8 %1021, 0
  %1029 = xor i1 %1028, %1026
  %.v85 = select i1 %1029, i64 17, i64 198
  %1030 = add i64 %991, %.v85
  store i64 %1030, i64* %PC, align 8, !tbaa !2428
  br i1 %1029, label %block_400dda, label %block_400e8f

block_400e8f:                                     ; preds = %block_400dc9
  %1031 = add i64 %992, -40
  %1032 = add i64 %1030, 8
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = add i32 %1034, 1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX, align 8, !tbaa !2428
  %1037 = icmp eq i32 %1034, -1
  %1038 = icmp eq i32 %1035, 0
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %47, align 1, !tbaa !2432
  %1041 = and i32 %1035, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041) #12
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %48, align 1, !tbaa !2446
  %1046 = xor i32 %1035, %1034
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %49, align 1, !tbaa !2447
  %1050 = zext i1 %1038 to i8
  store i8 %1050, i8* %50, align 1, !tbaa !2448
  %1051 = lshr i32 %1035, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %51, align 1, !tbaa !2449
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1051
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %52, align 1, !tbaa !2450
  %1058 = add i64 %1030, 14
  store i64 %1058, i64* %PC, align 8
  store i32 %1035, i32* %1033, align 4
  %1059 = load i64, i64* %PC, align 8
  %1060 = add i64 %1059, -231
  store i64 %1060, i64* %PC, align 8, !tbaa !2428
  br label %block_400db6

block_400dc2:                                     ; preds = %block_400db6
  %1061 = add i64 %1182, -44
  %1062 = add i64 %1218, 7
  store i64 %1062, i64* %PC, align 8
  %1063 = inttoptr i64 %1061 to i32*
  store i32 0, i32* %1063, align 4
  %.pre80 = load i64, i64* %PC, align 8
  br label %block_400dc9

block_400ff7:                                     ; preds = %block_400ff7.preheader, %block_401003
  %1064 = phi i64 [ %1819, %block_401003 ], [ %.pre79, %block_400ff7.preheader ]
  %1065 = load i64, i64* %RBP, align 8
  %1066 = add i64 %1065, -44
  %1067 = add i64 %1064, 3
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX, align 8, !tbaa !2428
  %1071 = add i64 %1065, -8
  %1072 = add i64 %1064, 6
  store i64 %1072, i64* %PC, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = sub i32 %1069, %1074
  %1076 = icmp ult i32 %1069, %1074
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %47, align 1, !tbaa !2432
  %1078 = and i32 %1075, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078) #12
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %48, align 1, !tbaa !2446
  %1083 = xor i32 %1074, %1069
  %1084 = xor i32 %1083, %1075
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  store i8 %1087, i8* %49, align 1, !tbaa !2447
  %1088 = icmp eq i32 %1075, 0
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %50, align 1, !tbaa !2448
  %1090 = lshr i32 %1075, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %51, align 1, !tbaa !2449
  %1092 = lshr i32 %1069, 31
  %1093 = lshr i32 %1074, 31
  %1094 = xor i32 %1093, %1092
  %1095 = xor i32 %1090, %1092
  %1096 = add nuw nsw i32 %1095, %1094
  %1097 = icmp eq i32 %1096, 2
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %52, align 1, !tbaa !2450
  %1099 = icmp ne i8 %1091, 0
  %1100 = xor i1 %1099, %1097
  %.v91 = select i1 %1100, i64 12, i64 113
  %1101 = add i64 %1064, %.v91
  store i64 %1101, i64* %PC, align 8, !tbaa !2428
  br i1 %1100, label %block_401003, label %block_401068

block_400d3e:                                     ; preds = %block_400d4a, %block_400d37
  %1102 = phi i64 [ %1637, %block_400d4a ], [ %.pre73, %block_400d37 ]
  %1103 = load i64, i64* %RBP, align 8
  %1104 = add i64 %1103, -40
  %1105 = add i64 %1102, 3
  store i64 %1105, i64* %PC, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RAX, align 8, !tbaa !2428
  %1109 = add i64 %1103, -8
  %1110 = add i64 %1102, 6
  store i64 %1110, i64* %PC, align 8
  %1111 = inttoptr i64 %1109 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = sub i32 %1107, %1112
  %1114 = icmp ult i32 %1107, %1112
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %47, align 1, !tbaa !2432
  %1116 = and i32 %1113, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116) #12
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %48, align 1, !tbaa !2446
  %1121 = xor i32 %1112, %1107
  %1122 = xor i32 %1121, %1113
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %49, align 1, !tbaa !2447
  %1126 = icmp eq i32 %1113, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %50, align 1, !tbaa !2448
  %1128 = lshr i32 %1113, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %51, align 1, !tbaa !2449
  %1130 = lshr i32 %1107, 31
  %1131 = lshr i32 %1112, 31
  %1132 = xor i32 %1131, %1130
  %1133 = xor i32 %1128, %1130
  %1134 = add nuw nsw i32 %1133, %1132
  %1135 = icmp eq i32 %1134, 2
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %52, align 1, !tbaa !2450
  %1137 = icmp ne i8 %1129, 0
  %1138 = xor i1 %1137, %1135
  %.v89 = select i1 %1138, i64 12, i64 113
  %1139 = add i64 %1102, %.v89
  store i64 %1139, i64* %PC, align 8, !tbaa !2428
  br i1 %1138, label %block_400d4a, label %block_400daf

block_400d37:                                     ; preds = %block_400bf0
  %1140 = add i64 %1398, 7
  store i64 %1140, i64* %PC, align 8
  store i32 0, i32* %1365, align 4
  %.pre73 = load i64, i64* %PC, align 8
  br label %block_400d3e

block_40106f:                                     ; preds = %block_401068, %block_401145
  %1141 = phi i64 [ %.pre77, %block_401068 ], [ %1251, %block_401145 ]
  %1142 = load i64, i64* %RBP, align 8
  %1143 = add i64 %1142, -40
  %1144 = add i64 %1141, 3
  store i64 %1144, i64* %PC, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX, align 8, !tbaa !2428
  %1148 = add i64 %1142, -8
  %1149 = add i64 %1141, 6
  store i64 %1149, i64* %PC, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = add i32 %1151, -2
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RCX, align 8, !tbaa !2428
  %1154 = lshr i32 %1152, 31
  %1155 = sub i32 %1146, %1152
  %1156 = icmp ult i32 %1146, %1152
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %47, align 1, !tbaa !2432
  %1158 = and i32 %1155, 255
  %1159 = tail call i32 @llvm.ctpop.i32(i32 %1158) #12
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = xor i8 %1161, 1
  store i8 %1162, i8* %48, align 1, !tbaa !2446
  %1163 = xor i32 %1152, %1146
  %1164 = xor i32 %1163, %1155
  %1165 = lshr i32 %1164, 4
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %49, align 1, !tbaa !2447
  %1168 = icmp eq i32 %1155, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %50, align 1, !tbaa !2448
  %1170 = lshr i32 %1155, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %51, align 1, !tbaa !2449
  %1172 = lshr i32 %1146, 31
  %1173 = xor i32 %1154, %1172
  %1174 = xor i32 %1170, %1172
  %1175 = add nuw nsw i32 %1174, %1173
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %52, align 1, !tbaa !2450
  %1178 = icmp ne i8 %1171, 0
  %1179 = xor i1 %1178, %1176
  %.v82 = select i1 %1179, i64 17, i64 233
  %1180 = add i64 %1141, %.v82
  store i64 %1180, i64* %PC, align 8, !tbaa !2428
  br i1 %1179, label %block_401080, label %block_401158

block_400db6:                                     ; preds = %block_400daf, %block_400e8f
  %1181 = phi i64 [ %.pre74, %block_400daf ], [ %1060, %block_400e8f ]
  %1182 = load i64, i64* %RBP, align 8
  %1183 = add i64 %1182, -40
  %1184 = add i64 %1181, 3
  store i64 %1184, i64* %PC, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX, align 8, !tbaa !2428
  %1188 = add i64 %1182, -8
  %1189 = add i64 %1181, 6
  store i64 %1189, i64* %PC, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = sub i32 %1186, %1191
  %1193 = icmp ult i32 %1186, %1191
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %47, align 1, !tbaa !2432
  %1195 = and i32 %1192, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195) #12
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %48, align 1, !tbaa !2446
  %1200 = xor i32 %1191, %1186
  %1201 = xor i32 %1200, %1192
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %49, align 1, !tbaa !2447
  %1205 = icmp eq i32 %1192, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %50, align 1, !tbaa !2448
  %1207 = lshr i32 %1192, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %51, align 1, !tbaa !2449
  %1209 = lshr i32 %1186, 31
  %1210 = lshr i32 %1191, 31
  %1211 = xor i32 %1210, %1209
  %1212 = xor i32 %1207, %1209
  %1213 = add nuw nsw i32 %1212, %1211
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %52, align 1, !tbaa !2450
  %1216 = icmp ne i8 %1208, 0
  %1217 = xor i1 %1216, %1214
  %.v90 = select i1 %1217, i64 12, i64 236
  %1218 = add i64 %1181, %.v90
  store i64 %1218, i64* %PC, align 8, !tbaa !2428
  br i1 %1217, label %block_400dc2, label %block_400ea2

block_400bfc:                                     ; preds = %block_400bf0
  %1219 = add i64 %1362, -44
  %1220 = add i64 %1398, 7
  store i64 %1220, i64* %PC, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 1, i32* %1221, align 4
  %.pre81 = load i64, i64* %PC, align 8
  br label %block_400c03

block_401145:                                     ; preds = %block_401087
  %1222 = add i64 %2939, -40
  %1223 = add i64 %2975, 8
  store i64 %1223, i64* %PC, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, 1
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX, align 8, !tbaa !2428
  %1228 = icmp eq i32 %1225, -1
  %1229 = icmp eq i32 %1226, 0
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %47, align 1, !tbaa !2432
  %1232 = and i32 %1226, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232) #12
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %48, align 1, !tbaa !2446
  %1237 = xor i32 %1226, %1225
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %49, align 1, !tbaa !2447
  %1241 = zext i1 %1229 to i8
  store i8 %1241, i8* %50, align 1, !tbaa !2448
  %1242 = lshr i32 %1226, 31
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %51, align 1, !tbaa !2449
  %1244 = lshr i32 %1225, 31
  %1245 = xor i32 %1242, %1244
  %1246 = add nuw nsw i32 %1245, %1242
  %1247 = icmp eq i32 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %52, align 1, !tbaa !2450
  %1249 = add i64 %2975, 14
  store i64 %1249, i64* %PC, align 8
  store i32 %1226, i32* %1224, align 4
  %1250 = load i64, i64* %PC, align 8
  %1251 = add i64 %1250, -228
  store i64 %1251, i64* %PC, align 8, !tbaa !2428
  br label %block_40106f

block_401068:                                     ; preds = %block_400ff7
  %1252 = add i64 %1065, -40
  %1253 = add i64 %1101, 7
  store i64 %1253, i64* %PC, align 8
  %1254 = inttoptr i64 %1252 to i32*
  store i32 0, i32* %1254, align 4
  %.pre77 = load i64, i64* %PC, align 8
  br label %block_40106f

block_400daf:                                     ; preds = %block_400d3e
  %1255 = add i64 %1139, 7
  store i64 %1255, i64* %PC, align 8
  store i32 0, i32* %1106, align 4
  %.pre74 = load i64, i64* %PC, align 8
  br label %block_400db6

block_400fdd:                                     ; preds = %block_400ebc
  %1256 = add i64 %2977, -40
  %1257 = add i64 %3013, 8
  store i64 %1257, i64* %PC, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = add i32 %1259, 1
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX, align 8, !tbaa !2428
  %1262 = icmp eq i32 %1259, -1
  %1263 = icmp eq i32 %1260, 0
  %1264 = or i1 %1262, %1263
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %47, align 1, !tbaa !2432
  %1266 = and i32 %1260, 255
  %1267 = tail call i32 @llvm.ctpop.i32(i32 %1266) #12
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  store i8 %1270, i8* %48, align 1, !tbaa !2446
  %1271 = xor i32 %1260, %1259
  %1272 = lshr i32 %1271, 4
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  store i8 %1274, i8* %49, align 1, !tbaa !2447
  %1275 = zext i1 %1263 to i8
  store i8 %1275, i8* %50, align 1, !tbaa !2448
  %1276 = lshr i32 %1260, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %51, align 1, !tbaa !2449
  %1278 = lshr i32 %1259, 31
  %1279 = xor i32 %1276, %1278
  %1280 = add nuw nsw i32 %1279, %1276
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %52, align 1, !tbaa !2450
  %1283 = add i64 %3013, 14
  store i64 %1283, i64* %PC, align 8
  store i32 %1260, i32* %1258, align 4
  %1284 = load i64, i64* %PC, align 8
  %1285 = add i64 %1284, -322
  store i64 %1285, i64* %PC, align 8, !tbaa !2428
  br label %block_400ea9

block_400d24:                                     ; preds = %block_400c03
  %1286 = add i64 %3015, -40
  %1287 = add i64 %3051, 8
  store i64 %1287, i64* %PC, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = add i32 %1289, 1
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RAX, align 8, !tbaa !2428
  %1292 = icmp eq i32 %1289, -1
  %1293 = icmp eq i32 %1290, 0
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %47, align 1, !tbaa !2432
  %1296 = and i32 %1290, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296) #12
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %48, align 1, !tbaa !2446
  %1301 = xor i32 %1290, %1289
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %49, align 1, !tbaa !2447
  %1305 = zext i1 %1293 to i8
  store i8 %1305, i8* %50, align 1, !tbaa !2448
  %1306 = lshr i32 %1290, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %51, align 1, !tbaa !2449
  %1308 = lshr i32 %1289, 31
  %1309 = xor i32 %1306, %1308
  %1310 = add nuw nsw i32 %1309, %1306
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %52, align 1, !tbaa !2450
  %1313 = add i64 %3051, 14
  store i64 %1313, i64* %PC, align 8
  store i32 %1290, i32* %1288, align 4
  %1314 = load i64, i64* %PC, align 8
  %1315 = add i64 %1314, -322
  store i64 %1315, i64* %PC, align 8, !tbaa !2428
  br label %block_400bf0

block_400be9:                                     ; preds = %block_400bdd
  %1316 = add i64 %954, -40
  %1317 = add i64 %990, 7
  store i64 %1317, i64* %PC, align 8
  %1318 = inttoptr i64 %1316 to i32*
  store i32 0, i32* %1318, align 4
  %.pre72 = load i64, i64* %PC, align 8
  br label %block_400bf0

block_400ea2:                                     ; preds = %block_400db6
  %1319 = add i64 %1218, 7
  store i64 %1319, i64* %PC, align 8
  store i32 1, i32* %1185, align 4
  %.pre75 = load i64, i64* %PC, align 8
  br label %block_400ea9

block_400ea9:                                     ; preds = %block_400ea2, %block_400fdd
  %1320 = phi i64 [ %.pre75, %block_400ea2 ], [ %1285, %block_400fdd ]
  %1321 = load i64, i64* %RBP, align 8
  %1322 = add i64 %1321, -40
  %1323 = add i64 %1320, 3
  store i64 %1323, i64* %PC, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX, align 8, !tbaa !2428
  %1327 = add i64 %1321, -8
  %1328 = add i64 %1320, 6
  store i64 %1328, i64* %PC, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = sub i32 %1325, %1330
  %1332 = icmp ult i32 %1325, %1330
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %47, align 1, !tbaa !2432
  %1334 = and i32 %1331, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334) #12
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %48, align 1, !tbaa !2446
  %1339 = xor i32 %1330, %1325
  %1340 = xor i32 %1339, %1331
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %49, align 1, !tbaa !2447
  %1344 = icmp eq i32 %1331, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %50, align 1, !tbaa !2448
  %1346 = lshr i32 %1331, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %51, align 1, !tbaa !2449
  %1348 = lshr i32 %1325, 31
  %1349 = lshr i32 %1330, 31
  %1350 = xor i32 %1349, %1348
  %1351 = xor i32 %1346, %1348
  %1352 = add nuw nsw i32 %1351, %1350
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %52, align 1, !tbaa !2450
  %1355 = icmp ne i8 %1347, 0
  %1356 = xor i1 %1355, %1353
  %.v = select i1 %1356, i64 12, i64 327
  %1357 = add i64 %1320, %.v
  %1358 = add i64 %1321, -44
  %1359 = add i64 %1357, 7
  store i64 %1359, i64* %PC, align 8
  %1360 = inttoptr i64 %1358 to i32*
  store i32 0, i32* %1360, align 4
  %.pre79 = load i64, i64* %PC, align 8
  br i1 %1356, label %block_400ebc.preheader, label %block_400ff7.preheader

block_400ff7.preheader:                           ; preds = %block_400ea9
  br label %block_400ff7

block_400ebc.preheader:                           ; preds = %block_400ea9
  br label %block_400ebc

block_400bf0:                                     ; preds = %block_400be9, %block_400d24
  %1361 = phi i64 [ %.pre72, %block_400be9 ], [ %1315, %block_400d24 ]
  %1362 = load i64, i64* %RBP, align 8
  %1363 = add i64 %1362, -40
  %1364 = add i64 %1361, 3
  store i64 %1364, i64* %PC, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX, align 8, !tbaa !2428
  %1368 = add i64 %1362, -8
  %1369 = add i64 %1361, 6
  store i64 %1369, i64* %PC, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = sub i32 %1366, %1371
  %1373 = icmp ult i32 %1366, %1371
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %47, align 1, !tbaa !2432
  %1375 = and i32 %1372, 255
  %1376 = tail call i32 @llvm.ctpop.i32(i32 %1375) #12
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  store i8 %1379, i8* %48, align 1, !tbaa !2446
  %1380 = xor i32 %1371, %1366
  %1381 = xor i32 %1380, %1372
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %49, align 1, !tbaa !2447
  %1385 = icmp eq i32 %1372, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %50, align 1, !tbaa !2448
  %1387 = lshr i32 %1372, 31
  %1388 = trunc i32 %1387 to i8
  store i8 %1388, i8* %51, align 1, !tbaa !2449
  %1389 = lshr i32 %1366, 31
  %1390 = lshr i32 %1371, 31
  %1391 = xor i32 %1390, %1389
  %1392 = xor i32 %1387, %1389
  %1393 = add nuw nsw i32 %1392, %1391
  %1394 = icmp eq i32 %1393, 2
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %52, align 1, !tbaa !2450
  %1396 = icmp ne i8 %1388, 0
  %1397 = xor i1 %1396, %1394
  %.v88 = select i1 %1397, i64 12, i64 327
  %1398 = add i64 %1361, %.v88
  store i64 %1398, i64* %PC, align 8, !tbaa !2428
  br i1 %1397, label %block_400bfc, label %block_400d37

block_400d4a:                                     ; preds = %block_400d3e
  %1399 = add i64 %1103, -16
  %1400 = add i64 %1139, 4
  store i64 %1400, i64* %PC, align 8
  %1401 = inttoptr i64 %1399 to i64*
  %1402 = load i64, i64* %1401, align 8
  store i64 %1402, i64* %RAX, align 8, !tbaa !2428
  %1403 = add i64 %1139, 8
  store i64 %1403, i64* %PC, align 8
  %1404 = load i32, i32* %1106, align 4
  %1405 = sext i32 %1404 to i64
  %1406 = shl nsw i64 %1405, 13
  store i64 %1406, i64* %RCX, align 8, !tbaa !2428
  %1407 = add i64 %1406, %1402
  store i64 %1407, i64* %RAX, align 8, !tbaa !2428
  %1408 = icmp ult i64 %1407, %1402
  %1409 = icmp ult i64 %1407, %1406
  %1410 = or i1 %1408, %1409
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %47, align 1, !tbaa !2432
  %1412 = trunc i64 %1407 to i32
  %1413 = and i32 %1412, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413) #12
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %48, align 1, !tbaa !2446
  %1418 = xor i64 %1402, %1407
  %1419 = lshr i64 %1418, 4
  %1420 = trunc i64 %1419 to i8
  %1421 = and i8 %1420, 1
  store i8 %1421, i8* %49, align 1, !tbaa !2447
  %1422 = icmp eq i64 %1407, 0
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %50, align 1, !tbaa !2448
  %1424 = lshr i64 %1407, 63
  %1425 = trunc i64 %1424 to i8
  store i8 %1425, i8* %51, align 1, !tbaa !2449
  %1426 = lshr i64 %1402, 63
  %1427 = lshr i64 %1405, 50
  %1428 = and i64 %1427, 1
  %1429 = xor i64 %1424, %1426
  %1430 = xor i64 %1424, %1428
  %1431 = add nuw nsw i64 %1429, %1430
  %1432 = icmp eq i64 %1431, 2
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %52, align 1, !tbaa !2450
  %1434 = add i64 %1139, 18
  store i64 %1434, i64* %PC, align 8
  %1435 = load i32, i32* %1111, align 4
  %1436 = add i32 %1435, -1
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RDX, align 8, !tbaa !2428
  %1438 = icmp eq i32 %1435, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %47, align 1, !tbaa !2432
  %1440 = and i32 %1436, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440) #12
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %48, align 1, !tbaa !2446
  %1445 = xor i32 %1436, %1435
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %49, align 1, !tbaa !2447
  %1449 = icmp eq i32 %1436, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %50, align 1, !tbaa !2448
  %1451 = lshr i32 %1436, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %51, align 1, !tbaa !2449
  %1453 = lshr i32 %1435, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1453
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %52, align 1, !tbaa !2450
  %1458 = sext i32 %1436 to i64
  store i64 %1458, i64* %RCX, align 8, !tbaa !2428
  %1459 = shl nsw i64 %1458, 3
  %1460 = add i64 %1407, %1459
  %1461 = add i64 %1139, 29
  store i64 %1461, i64* %PC, align 8
  %1462 = inttoptr i64 %1460 to i64*
  %1463 = load i64, i64* %1462, align 8
  store i64 %1463, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1464 = load i64, i64* %RBP, align 8
  %1465 = add i64 %1464, -32
  %1466 = add i64 %1139, 33
  store i64 %1466, i64* %PC, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RAX, align 8, !tbaa !2428
  %1469 = add i64 %1464, -40
  %1470 = add i64 %1139, 37
  store i64 %1470, i64* %PC, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = shl nsw i64 %1473, 13
  store i64 %1474, i64* %RCX, align 8, !tbaa !2428
  %1475 = add i64 %1474, %1468
  store i64 %1475, i64* %RAX, align 8, !tbaa !2428
  %1476 = icmp ult i64 %1475, %1468
  %1477 = icmp ult i64 %1475, %1474
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %47, align 1, !tbaa !2432
  %1480 = trunc i64 %1475 to i32
  %1481 = and i32 %1480, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481) #12
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %48, align 1, !tbaa !2446
  %1486 = xor i64 %1468, %1475
  %1487 = lshr i64 %1486, 4
  %1488 = trunc i64 %1487 to i8
  %1489 = and i8 %1488, 1
  store i8 %1489, i8* %49, align 1, !tbaa !2447
  %1490 = icmp eq i64 %1475, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %50, align 1, !tbaa !2448
  %1492 = lshr i64 %1475, 63
  %1493 = trunc i64 %1492 to i8
  store i8 %1493, i8* %51, align 1, !tbaa !2449
  %1494 = lshr i64 %1468, 63
  %1495 = lshr i64 %1473, 50
  %1496 = and i64 %1495, 1
  %1497 = xor i64 %1492, %1494
  %1498 = xor i64 %1492, %1496
  %1499 = add nuw nsw i64 %1497, %1498
  %1500 = icmp eq i64 %1499, 2
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %52, align 1, !tbaa !2450
  %1502 = add i64 %1464, -8
  %1503 = add i64 %1139, 47
  store i64 %1503, i64* %PC, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = add i32 %1505, -1
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RDX, align 8, !tbaa !2428
  %1508 = icmp eq i32 %1505, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %47, align 1, !tbaa !2432
  %1510 = and i32 %1506, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510) #12
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %48, align 1, !tbaa !2446
  %1515 = xor i32 %1506, %1505
  %1516 = lshr i32 %1515, 4
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  store i8 %1518, i8* %49, align 1, !tbaa !2447
  %1519 = icmp eq i32 %1506, 0
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %50, align 1, !tbaa !2448
  %1521 = lshr i32 %1506, 31
  %1522 = trunc i32 %1521 to i8
  store i8 %1522, i8* %51, align 1, !tbaa !2449
  %1523 = lshr i32 %1505, 31
  %1524 = xor i32 %1521, %1523
  %1525 = add nuw nsw i32 %1524, %1523
  %1526 = icmp eq i32 %1525, 2
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %52, align 1, !tbaa !2450
  %1528 = sext i32 %1506 to i64
  store i64 %1528, i64* %RCX, align 8, !tbaa !2428
  %1529 = shl nsw i64 %1528, 3
  %1530 = add i64 %1475, %1529
  %1531 = add i64 %1139, 58
  store i64 %1531, i64* %PC, align 8
  %1532 = load double, double* %53, align 1
  %1533 = inttoptr i64 %1530 to double*
  %1534 = load double, double* %1533, align 8
  %1535 = fdiv double %1532, %1534
  store double %1535, double* %53, align 1, !tbaa !2452
  %1536 = load i64, i64* %RBP, align 8
  %1537 = add i64 %1536, -16
  %1538 = add i64 %1139, 62
  store i64 %1538, i64* %PC, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX, align 8, !tbaa !2428
  %1541 = add i64 %1536, -40
  %1542 = add i64 %1139, 66
  store i64 %1542, i64* %PC, align 8
  %1543 = inttoptr i64 %1541 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = shl nsw i64 %1545, 13
  store i64 %1546, i64* %RCX, align 8, !tbaa !2428
  %1547 = add i64 %1546, %1540
  store i64 %1547, i64* %RAX, align 8, !tbaa !2428
  %1548 = icmp ult i64 %1547, %1540
  %1549 = icmp ult i64 %1547, %1546
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %47, align 1, !tbaa !2432
  %1552 = trunc i64 %1547 to i32
  %1553 = and i32 %1552, 255
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553) #12
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %48, align 1, !tbaa !2446
  %1558 = xor i64 %1540, %1547
  %1559 = lshr i64 %1558, 4
  %1560 = trunc i64 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %49, align 1, !tbaa !2447
  %1562 = icmp eq i64 %1547, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %50, align 1, !tbaa !2448
  %1564 = lshr i64 %1547, 63
  %1565 = trunc i64 %1564 to i8
  store i8 %1565, i8* %51, align 1, !tbaa !2449
  %1566 = lshr i64 %1540, 63
  %1567 = lshr i64 %1545, 50
  %1568 = and i64 %1567, 1
  %1569 = xor i64 %1564, %1566
  %1570 = xor i64 %1564, %1568
  %1571 = add nuw nsw i64 %1569, %1570
  %1572 = icmp eq i64 %1571, 2
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %52, align 1, !tbaa !2450
  %1574 = add i64 %1536, -8
  %1575 = add i64 %1139, 76
  store i64 %1575, i64* %PC, align 8
  %1576 = inttoptr i64 %1574 to i32*
  %1577 = load i32, i32* %1576, align 4
  %1578 = add i32 %1577, -1
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RDX, align 8, !tbaa !2428
  %1580 = icmp eq i32 %1577, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %47, align 1, !tbaa !2432
  %1582 = and i32 %1578, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582) #12
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %48, align 1, !tbaa !2446
  %1587 = xor i32 %1578, %1577
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %49, align 1, !tbaa !2447
  %1591 = icmp eq i32 %1578, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %50, align 1, !tbaa !2448
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  store i8 %1594, i8* %51, align 1, !tbaa !2449
  %1595 = lshr i32 %1577, 31
  %1596 = xor i32 %1593, %1595
  %1597 = add nuw nsw i32 %1596, %1595
  %1598 = icmp eq i32 %1597, 2
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %52, align 1, !tbaa !2450
  %1600 = sext i32 %1578 to i64
  store i64 %1600, i64* %RCX, align 8, !tbaa !2428
  %1601 = shl nsw i64 %1600, 3
  %1602 = add i64 %1547, %1601
  %1603 = add i64 %1139, 87
  store i64 %1603, i64* %PC, align 8
  %1604 = load i64, i64* %54, align 1
  %1605 = inttoptr i64 %1602 to i64*
  store i64 %1604, i64* %1605, align 8
  %1606 = load i64, i64* %RBP, align 8
  %1607 = add i64 %1606, -40
  %1608 = load i64, i64* %PC, align 8
  %1609 = add i64 %1608, 3
  store i64 %1609, i64* %PC, align 8
  %1610 = inttoptr i64 %1607 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = add i32 %1611, 1
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RAX, align 8, !tbaa !2428
  %1614 = icmp eq i32 %1611, -1
  %1615 = icmp eq i32 %1612, 0
  %1616 = or i1 %1614, %1615
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %47, align 1, !tbaa !2432
  %1618 = and i32 %1612, 255
  %1619 = tail call i32 @llvm.ctpop.i32(i32 %1618) #12
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  store i8 %1622, i8* %48, align 1, !tbaa !2446
  %1623 = xor i32 %1612, %1611
  %1624 = lshr i32 %1623, 4
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  store i8 %1626, i8* %49, align 1, !tbaa !2447
  %1627 = zext i1 %1615 to i8
  store i8 %1627, i8* %50, align 1, !tbaa !2448
  %1628 = lshr i32 %1612, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %51, align 1, !tbaa !2449
  %1630 = lshr i32 %1611, 31
  %1631 = xor i32 %1628, %1630
  %1632 = add nuw nsw i32 %1631, %1628
  %1633 = icmp eq i32 %1632, 2
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %52, align 1, !tbaa !2450
  %1635 = add i64 %1608, 9
  store i64 %1635, i64* %PC, align 8
  store i32 %1612, i32* %1610, align 4
  %1636 = load i64, i64* %PC, align 8
  %1637 = add i64 %1636, -108
  store i64 %1637, i64* %PC, align 8, !tbaa !2428
  br label %block_400d3e

block_401003:                                     ; preds = %block_400ff7
  %1638 = add i64 %1065, -16
  %1639 = add i64 %1101, 4
  store i64 %1639, i64* %PC, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RAX, align 8, !tbaa !2428
  %1642 = add i64 %1101, 7
  store i64 %1642, i64* %PC, align 8
  %1643 = load i32, i32* %1073, align 4
  %1644 = add i32 %1643, -1
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RCX, align 8, !tbaa !2428
  %1646 = sext i32 %1644 to i64
  %1647 = shl nsw i64 %1646, 13
  store i64 %1647, i64* %RDX, align 8, !tbaa !2428
  %1648 = add i64 %1647, %1641
  store i64 %1648, i64* %RAX, align 8, !tbaa !2428
  %1649 = icmp ult i64 %1648, %1641
  %1650 = icmp ult i64 %1648, %1647
  %1651 = or i1 %1649, %1650
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %47, align 1, !tbaa !2432
  %1653 = trunc i64 %1648 to i32
  %1654 = and i32 %1653, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654) #12
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %48, align 1, !tbaa !2446
  %1659 = xor i64 %1641, %1648
  %1660 = lshr i64 %1659, 4
  %1661 = trunc i64 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %49, align 1, !tbaa !2447
  %1663 = icmp eq i64 %1648, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %50, align 1, !tbaa !2448
  %1665 = lshr i64 %1648, 63
  %1666 = trunc i64 %1665 to i8
  store i8 %1666, i8* %51, align 1, !tbaa !2449
  %1667 = lshr i64 %1641, 63
  %1668 = lshr i64 %1646, 50
  %1669 = and i64 %1668, 1
  %1670 = xor i64 %1665, %1667
  %1671 = xor i64 %1665, %1669
  %1672 = add nuw nsw i64 %1670, %1671
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %52, align 1, !tbaa !2450
  %1675 = load i64, i64* %RBP, align 8
  %1676 = add i64 %1675, -44
  %1677 = add i64 %1101, 24
  store i64 %1677, i64* %PC, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sext i32 %1679 to i64
  store i64 %1680, i64* %RDX, align 8, !tbaa !2428
  %1681 = shl nsw i64 %1680, 3
  %1682 = add i64 %1681, %1648
  %1683 = add i64 %1101, 29
  store i64 %1683, i64* %PC, align 8
  %1684 = inttoptr i64 %1682 to i64*
  %1685 = load i64, i64* %1684, align 8
  store i64 %1685, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1686 = add i64 %1675, -32
  %1687 = add i64 %1101, 33
  store i64 %1687, i64* %PC, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RAX, align 8, !tbaa !2428
  %1690 = add i64 %1675, -8
  %1691 = add i64 %1101, 36
  store i64 %1691, i64* %PC, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = add i32 %1693, -1
  %1695 = zext i32 %1694 to i64
  store i64 %1695, i64* %RCX, align 8, !tbaa !2428
  %1696 = sext i32 %1694 to i64
  %1697 = shl nsw i64 %1696, 13
  store i64 %1697, i64* %RDX, align 8, !tbaa !2428
  %1698 = add i64 %1697, %1689
  store i64 %1698, i64* %RAX, align 8, !tbaa !2428
  %1699 = icmp ult i64 %1698, %1689
  %1700 = icmp ult i64 %1698, %1697
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %47, align 1, !tbaa !2432
  %1703 = trunc i64 %1698 to i32
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704) #12
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %48, align 1, !tbaa !2446
  %1709 = xor i64 %1689, %1698
  %1710 = lshr i64 %1709, 4
  %1711 = trunc i64 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %49, align 1, !tbaa !2447
  %1713 = icmp eq i64 %1698, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %50, align 1, !tbaa !2448
  %1715 = lshr i64 %1698, 63
  %1716 = trunc i64 %1715 to i8
  store i8 %1716, i8* %51, align 1, !tbaa !2449
  %1717 = lshr i64 %1689, 63
  %1718 = lshr i64 %1696, 50
  %1719 = and i64 %1718, 1
  %1720 = xor i64 %1715, %1717
  %1721 = xor i64 %1715, %1719
  %1722 = add nuw nsw i64 %1720, %1721
  %1723 = icmp eq i64 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %52, align 1, !tbaa !2450
  %1725 = load i64, i64* %RBP, align 8
  %1726 = add i64 %1725, -44
  %1727 = add i64 %1101, 53
  store i64 %1727, i64* %PC, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = sext i32 %1729 to i64
  store i64 %1730, i64* %RDX, align 8, !tbaa !2428
  %1731 = shl nsw i64 %1730, 3
  %1732 = add i64 %1731, %1698
  %1733 = add i64 %1101, 58
  store i64 %1733, i64* %PC, align 8
  %1734 = load double, double* %53, align 1
  %1735 = inttoptr i64 %1732 to double*
  %1736 = load double, double* %1735, align 8
  %1737 = fdiv double %1734, %1736
  store double %1737, double* %53, align 1, !tbaa !2452
  %1738 = add i64 %1725, -16
  %1739 = add i64 %1101, 62
  store i64 %1739, i64* %PC, align 8
  %1740 = inttoptr i64 %1738 to i64*
  %1741 = load i64, i64* %1740, align 8
  store i64 %1741, i64* %RAX, align 8, !tbaa !2428
  %1742 = add i64 %1725, -8
  %1743 = add i64 %1101, 65
  store i64 %1743, i64* %PC, align 8
  %1744 = inttoptr i64 %1742 to i32*
  %1745 = load i32, i32* %1744, align 4
  %1746 = add i32 %1745, -1
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RCX, align 8, !tbaa !2428
  %1748 = sext i32 %1746 to i64
  %1749 = shl nsw i64 %1748, 13
  store i64 %1749, i64* %RDX, align 8, !tbaa !2428
  %1750 = add i64 %1749, %1741
  store i64 %1750, i64* %RAX, align 8, !tbaa !2428
  %1751 = icmp ult i64 %1750, %1741
  %1752 = icmp ult i64 %1750, %1749
  %1753 = or i1 %1751, %1752
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %47, align 1, !tbaa !2432
  %1755 = trunc i64 %1750 to i32
  %1756 = and i32 %1755, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756) #12
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %48, align 1, !tbaa !2446
  %1761 = xor i64 %1741, %1750
  %1762 = lshr i64 %1761, 4
  %1763 = trunc i64 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %49, align 1, !tbaa !2447
  %1765 = icmp eq i64 %1750, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %50, align 1, !tbaa !2448
  %1767 = lshr i64 %1750, 63
  %1768 = trunc i64 %1767 to i8
  store i8 %1768, i8* %51, align 1, !tbaa !2449
  %1769 = lshr i64 %1741, 63
  %1770 = lshr i64 %1748, 50
  %1771 = and i64 %1770, 1
  %1772 = xor i64 %1767, %1769
  %1773 = xor i64 %1767, %1771
  %1774 = add nuw nsw i64 %1772, %1773
  %1775 = icmp eq i64 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %52, align 1, !tbaa !2450
  %1777 = load i64, i64* %RBP, align 8
  %1778 = add i64 %1777, -44
  %1779 = add i64 %1101, 82
  store i64 %1779, i64* %PC, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = sext i32 %1781 to i64
  store i64 %1782, i64* %RDX, align 8, !tbaa !2428
  %1783 = shl nsw i64 %1782, 3
  %1784 = add i64 %1783, %1750
  %1785 = add i64 %1101, 87
  store i64 %1785, i64* %PC, align 8
  %1786 = load i64, i64* %54, align 1
  %1787 = inttoptr i64 %1784 to i64*
  store i64 %1786, i64* %1787, align 8
  %1788 = load i64, i64* %RBP, align 8
  %1789 = add i64 %1788, -44
  %1790 = load i64, i64* %PC, align 8
  %1791 = add i64 %1790, 3
  store i64 %1791, i64* %PC, align 8
  %1792 = inttoptr i64 %1789 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = add i32 %1793, 1
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RAX, align 8, !tbaa !2428
  %1796 = icmp eq i32 %1793, -1
  %1797 = icmp eq i32 %1794, 0
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %47, align 1, !tbaa !2432
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800) #12
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %48, align 1, !tbaa !2446
  %1805 = xor i32 %1794, %1793
  %1806 = lshr i32 %1805, 4
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %49, align 1, !tbaa !2447
  %1809 = zext i1 %1797 to i8
  store i8 %1809, i8* %50, align 1, !tbaa !2448
  %1810 = lshr i32 %1794, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %51, align 1, !tbaa !2449
  %1812 = lshr i32 %1793, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %52, align 1, !tbaa !2450
  %1817 = add i64 %1790, 9
  store i64 %1817, i64* %PC, align 8
  store i32 %1794, i32* %1792, align 4
  %1818 = load i64, i64* %PC, align 8
  %1819 = add i64 %1818, -108
  store i64 %1819, i64* %PC, align 8, !tbaa !2428
  br label %block_400ff7

block_401158:                                     ; preds = %block_40106f
  %1820 = add i64 %1142, -36
  %1821 = add i64 %1180, 8
  store i64 %1821, i64* %PC, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = add i32 %1823, 1
  %1825 = zext i32 %1824 to i64
  store i64 %1825, i64* %RAX, align 8, !tbaa !2428
  %1826 = icmp eq i32 %1823, -1
  %1827 = icmp eq i32 %1824, 0
  %1828 = or i1 %1826, %1827
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %47, align 1, !tbaa !2432
  %1830 = and i32 %1824, 255
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1830) #12
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  %1834 = xor i8 %1833, 1
  store i8 %1834, i8* %48, align 1, !tbaa !2446
  %1835 = xor i32 %1824, %1823
  %1836 = lshr i32 %1835, 4
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  store i8 %1838, i8* %49, align 1, !tbaa !2447
  %1839 = zext i1 %1827 to i8
  store i8 %1839, i8* %50, align 1, !tbaa !2448
  %1840 = lshr i32 %1824, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %51, align 1, !tbaa !2449
  %1842 = lshr i32 %1823, 31
  %1843 = xor i32 %1840, %1842
  %1844 = add nuw nsw i32 %1843, %1840
  %1845 = icmp eq i32 %1844, 2
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %52, align 1, !tbaa !2450
  %1847 = add i64 %1180, 14
  store i64 %1847, i64* %PC, align 8
  store i32 %1824, i32* %1822, align 4
  %1848 = load i64, i64* %PC, align 8
  %1849 = add i64 %1848, -1417
  store i64 %1849, i64* %PC, align 8, !tbaa !2428
  br label %block_400bdd

block_400ec8:                                     ; preds = %block_400ebc
  %1850 = add i64 %2977, -16
  %1851 = add i64 %3013, 4
  store i64 %1851, i64* %PC, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %RAX, align 8, !tbaa !2428
  %1854 = add i64 %2977, -40
  %1855 = add i64 %3013, 8
  store i64 %1855, i64* %PC, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = sext i32 %1857 to i64
  %1859 = shl nsw i64 %1858, 13
  store i64 %1859, i64* %RCX, align 8, !tbaa !2428
  %1860 = add i64 %1859, %1853
  store i64 %1860, i64* %RAX, align 8, !tbaa !2428
  %1861 = icmp ult i64 %1860, %1853
  %1862 = icmp ult i64 %1860, %1859
  %1863 = or i1 %1861, %1862
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %47, align 1, !tbaa !2432
  %1865 = trunc i64 %1860 to i32
  %1866 = and i32 %1865, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866) #12
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %48, align 1, !tbaa !2446
  %1871 = xor i64 %1853, %1860
  %1872 = lshr i64 %1871, 4
  %1873 = trunc i64 %1872 to i8
  %1874 = and i8 %1873, 1
  store i8 %1874, i8* %49, align 1, !tbaa !2447
  %1875 = icmp eq i64 %1860, 0
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %50, align 1, !tbaa !2448
  %1877 = lshr i64 %1860, 63
  %1878 = trunc i64 %1877 to i8
  store i8 %1878, i8* %51, align 1, !tbaa !2449
  %1879 = lshr i64 %1853, 63
  %1880 = lshr i64 %1858, 50
  %1881 = and i64 %1880, 1
  %1882 = xor i64 %1877, %1879
  %1883 = xor i64 %1877, %1881
  %1884 = add nuw nsw i64 %1882, %1883
  %1885 = icmp eq i64 %1884, 2
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %52, align 1, !tbaa !2450
  %1887 = add i64 %3013, 19
  store i64 %1887, i64* %PC, align 8
  %1888 = load i32, i32* %2980, align 4
  %1889 = sext i32 %1888 to i64
  store i64 %1889, i64* %RCX, align 8, !tbaa !2428
  %1890 = shl nsw i64 %1889, 3
  %1891 = add i64 %1890, %1860
  %1892 = add i64 %3013, 24
  store i64 %1892, i64* %PC, align 8
  %1893 = inttoptr i64 %1891 to i64*
  %1894 = load i64, i64* %1893, align 8
  store i64 %1894, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %1895 = add i64 %3013, 28
  store i64 %1895, i64* %PC, align 8
  %1896 = load i64, i64* %1852, align 8
  store i64 %1896, i64* %RAX, align 8, !tbaa !2428
  %1897 = add i64 %3013, 31
  store i64 %1897, i64* %PC, align 8
  %1898 = load i32, i32* %1856, align 4
  %1899 = add i32 %1898, -1
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RDX, align 8, !tbaa !2428
  %1901 = sext i32 %1899 to i64
  %1902 = shl nsw i64 %1901, 13
  store i64 %1902, i64* %RCX, align 8, !tbaa !2428
  %1903 = add i64 %1902, %1896
  store i64 %1903, i64* %RAX, align 8, !tbaa !2428
  %1904 = icmp ult i64 %1903, %1896
  %1905 = icmp ult i64 %1903, %1902
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %47, align 1, !tbaa !2432
  %1908 = trunc i64 %1903 to i32
  %1909 = and i32 %1908, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909) #12
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %48, align 1, !tbaa !2446
  %1914 = xor i64 %1896, %1903
  %1915 = lshr i64 %1914, 4
  %1916 = trunc i64 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %49, align 1, !tbaa !2447
  %1918 = icmp eq i64 %1903, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %50, align 1, !tbaa !2448
  %1920 = lshr i64 %1903, 63
  %1921 = trunc i64 %1920 to i8
  store i8 %1921, i8* %51, align 1, !tbaa !2449
  %1922 = lshr i64 %1896, 63
  %1923 = lshr i64 %1901, 50
  %1924 = and i64 %1923, 1
  %1925 = xor i64 %1920, %1922
  %1926 = xor i64 %1920, %1924
  %1927 = add nuw nsw i64 %1925, %1926
  %1928 = icmp eq i64 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %52, align 1, !tbaa !2450
  %1930 = load i64, i64* %RBP, align 8
  %1931 = add i64 %1930, -44
  %1932 = add i64 %3013, 48
  store i64 %1932, i64* %PC, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = sext i32 %1934 to i64
  store i64 %1935, i64* %RCX, align 8, !tbaa !2428
  %1936 = shl nsw i64 %1935, 3
  %1937 = add i64 %1936, %1903
  %1938 = add i64 %3013, 53
  store i64 %1938, i64* %PC, align 8
  %1939 = inttoptr i64 %1937 to i64*
  %1940 = load i64, i64* %1939, align 8
  store i64 %1940, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %1941 = add i64 %1930, -24
  %1942 = add i64 %3013, 57
  store i64 %1942, i64* %PC, align 8
  %1943 = inttoptr i64 %1941 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RAX, align 8, !tbaa !2428
  %1945 = add i64 %1930, -40
  %1946 = add i64 %3013, 61
  store i64 %1946, i64* %PC, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  %1950 = shl nsw i64 %1949, 13
  store i64 %1950, i64* %RCX, align 8, !tbaa !2428
  %1951 = add i64 %1950, %1944
  store i64 %1951, i64* %RAX, align 8, !tbaa !2428
  %1952 = icmp ult i64 %1951, %1944
  %1953 = icmp ult i64 %1951, %1950
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %47, align 1, !tbaa !2432
  %1956 = trunc i64 %1951 to i32
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957) #12
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %48, align 1, !tbaa !2446
  %1962 = xor i64 %1944, %1951
  %1963 = lshr i64 %1962, 4
  %1964 = trunc i64 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %49, align 1, !tbaa !2447
  %1966 = icmp eq i64 %1951, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %50, align 1, !tbaa !2448
  %1968 = lshr i64 %1951, 63
  %1969 = trunc i64 %1968 to i8
  store i8 %1969, i8* %51, align 1, !tbaa !2449
  %1970 = lshr i64 %1944, 63
  %1971 = lshr i64 %1949, 50
  %1972 = and i64 %1971, 1
  %1973 = xor i64 %1968, %1970
  %1974 = xor i64 %1968, %1972
  %1975 = add nuw nsw i64 %1973, %1974
  %1976 = icmp eq i64 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %52, align 1, !tbaa !2450
  %1978 = add i64 %3013, 72
  store i64 %1978, i64* %PC, align 8
  %1979 = load i32, i32* %1933, align 4
  %1980 = sext i32 %1979 to i64
  store i64 %1980, i64* %RCX, align 8, !tbaa !2428
  %1981 = shl nsw i64 %1980, 3
  %1982 = add i64 %1981, %1951
  %1983 = add i64 %3013, 77
  store i64 %1983, i64* %PC, align 8
  %1984 = bitcast i64 %1940 to double
  %1985 = inttoptr i64 %1982 to double*
  %1986 = load double, double* %1985, align 8
  %1987 = fmul double %1984, %1986
  store double %1987, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %59, align 1, !tbaa !2452
  %1988 = add i64 %1930, -32
  %1989 = add i64 %3013, 81
  store i64 %1989, i64* %PC, align 8
  %1990 = inttoptr i64 %1988 to i64*
  %1991 = load i64, i64* %1990, align 8
  store i64 %1991, i64* %RAX, align 8, !tbaa !2428
  %1992 = load i64, i64* %RBP, align 8
  %1993 = add i64 %1992, -40
  %1994 = add i64 %3013, 84
  store i64 %1994, i64* %PC, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = add i32 %1996, -1
  %1998 = zext i32 %1997 to i64
  store i64 %1998, i64* %RDX, align 8, !tbaa !2428
  %1999 = sext i32 %1997 to i64
  %2000 = shl nsw i64 %1999, 13
  store i64 %2000, i64* %RCX, align 8, !tbaa !2428
  %2001 = add i64 %2000, %1991
  store i64 %2001, i64* %RAX, align 8, !tbaa !2428
  %2002 = icmp ult i64 %2001, %1991
  %2003 = icmp ult i64 %2001, %2000
  %2004 = or i1 %2002, %2003
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %47, align 1, !tbaa !2432
  %2006 = trunc i64 %2001 to i32
  %2007 = and i32 %2006, 255
  %2008 = tail call i32 @llvm.ctpop.i32(i32 %2007) #12
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  store i8 %2011, i8* %48, align 1, !tbaa !2446
  %2012 = xor i64 %1991, %2001
  %2013 = lshr i64 %2012, 4
  %2014 = trunc i64 %2013 to i8
  %2015 = and i8 %2014, 1
  store i8 %2015, i8* %49, align 1, !tbaa !2447
  %2016 = icmp eq i64 %2001, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %50, align 1, !tbaa !2448
  %2018 = lshr i64 %2001, 63
  %2019 = trunc i64 %2018 to i8
  store i8 %2019, i8* %51, align 1, !tbaa !2449
  %2020 = lshr i64 %1991, 63
  %2021 = lshr i64 %1999, 50
  %2022 = and i64 %2021, 1
  %2023 = xor i64 %2018, %2020
  %2024 = xor i64 %2018, %2022
  %2025 = add nuw nsw i64 %2023, %2024
  %2026 = icmp eq i64 %2025, 2
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %52, align 1, !tbaa !2450
  %2028 = add i64 %1992, -44
  %2029 = add i64 %3013, 101
  store i64 %2029, i64* %PC, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = sext i32 %2031 to i64
  store i64 %2032, i64* %RCX, align 8, !tbaa !2428
  %2033 = shl nsw i64 %2032, 3
  %2034 = add i64 %2033, %2001
  %2035 = add i64 %3013, 106
  store i64 %2035, i64* %PC, align 8
  %2036 = load double, double* %57, align 1
  %2037 = inttoptr i64 %2034 to double*
  %2038 = load double, double* %2037, align 8
  %2039 = fdiv double %2036, %2038
  store double %2039, double* %57, align 1, !tbaa !2452
  %2040 = load double, double* %53, align 1
  %2041 = fsub double %2040, %2039
  store double %2041, double* %53, align 1, !tbaa !2452
  %2042 = load i64, i64* %RBP, align 8
  %2043 = add i64 %2042, -16
  %2044 = add i64 %3013, 114
  store i64 %2044, i64* %PC, align 8
  %2045 = inttoptr i64 %2043 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RAX, align 8, !tbaa !2428
  %2047 = add i64 %2042, -40
  %2048 = add i64 %3013, 118
  store i64 %2048, i64* %PC, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = sext i32 %2050 to i64
  %2052 = shl nsw i64 %2051, 13
  store i64 %2052, i64* %RCX, align 8, !tbaa !2428
  %2053 = add i64 %2052, %2046
  store i64 %2053, i64* %RAX, align 8, !tbaa !2428
  %2054 = icmp ult i64 %2053, %2046
  %2055 = icmp ult i64 %2053, %2052
  %2056 = or i1 %2054, %2055
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %47, align 1, !tbaa !2432
  %2058 = trunc i64 %2053 to i32
  %2059 = and i32 %2058, 255
  %2060 = tail call i32 @llvm.ctpop.i32(i32 %2059) #12
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  %2063 = xor i8 %2062, 1
  store i8 %2063, i8* %48, align 1, !tbaa !2446
  %2064 = xor i64 %2046, %2053
  %2065 = lshr i64 %2064, 4
  %2066 = trunc i64 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %49, align 1, !tbaa !2447
  %2068 = icmp eq i64 %2053, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %50, align 1, !tbaa !2448
  %2070 = lshr i64 %2053, 63
  %2071 = trunc i64 %2070 to i8
  store i8 %2071, i8* %51, align 1, !tbaa !2449
  %2072 = lshr i64 %2046, 63
  %2073 = lshr i64 %2051, 50
  %2074 = and i64 %2073, 1
  %2075 = xor i64 %2070, %2072
  %2076 = xor i64 %2070, %2074
  %2077 = add nuw nsw i64 %2075, %2076
  %2078 = icmp eq i64 %2077, 2
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %52, align 1, !tbaa !2450
  %2080 = add i64 %2042, -44
  %2081 = add i64 %3013, 129
  store i64 %2081, i64* %PC, align 8
  %2082 = inttoptr i64 %2080 to i32*
  %2083 = load i32, i32* %2082, align 4
  %2084 = sext i32 %2083 to i64
  store i64 %2084, i64* %RCX, align 8, !tbaa !2428
  %2085 = shl nsw i64 %2084, 3
  %2086 = add i64 %2085, %2053
  %2087 = add i64 %3013, 134
  store i64 %2087, i64* %PC, align 8
  %2088 = inttoptr i64 %2086 to double*
  store double %2041, double* %2088, align 8
  %2089 = load i64, i64* %RBP, align 8
  %2090 = add i64 %2089, -32
  %2091 = load i64, i64* %PC, align 8
  %2092 = add i64 %2091, 4
  store i64 %2092, i64* %PC, align 8
  %2093 = inttoptr i64 %2090 to i64*
  %2094 = load i64, i64* %2093, align 8
  store i64 %2094, i64* %RAX, align 8, !tbaa !2428
  %2095 = add i64 %2089, -40
  %2096 = add i64 %2091, 8
  store i64 %2096, i64* %PC, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = sext i32 %2098 to i64
  %2100 = shl nsw i64 %2099, 13
  store i64 %2100, i64* %RCX, align 8, !tbaa !2428
  %2101 = add i64 %2100, %2094
  store i64 %2101, i64* %RAX, align 8, !tbaa !2428
  %2102 = icmp ult i64 %2101, %2094
  %2103 = icmp ult i64 %2101, %2100
  %2104 = or i1 %2102, %2103
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %47, align 1, !tbaa !2432
  %2106 = trunc i64 %2101 to i32
  %2107 = and i32 %2106, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107) #12
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %48, align 1, !tbaa !2446
  %2112 = xor i64 %2094, %2101
  %2113 = lshr i64 %2112, 4
  %2114 = trunc i64 %2113 to i8
  %2115 = and i8 %2114, 1
  store i8 %2115, i8* %49, align 1, !tbaa !2447
  %2116 = icmp eq i64 %2101, 0
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %50, align 1, !tbaa !2448
  %2118 = lshr i64 %2101, 63
  %2119 = trunc i64 %2118 to i8
  store i8 %2119, i8* %51, align 1, !tbaa !2449
  %2120 = lshr i64 %2094, 63
  %2121 = lshr i64 %2099, 50
  %2122 = and i64 %2121, 1
  %2123 = xor i64 %2118, %2120
  %2124 = xor i64 %2118, %2122
  %2125 = add nuw nsw i64 %2123, %2124
  %2126 = icmp eq i64 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %52, align 1, !tbaa !2450
  %2128 = add i64 %2089, -44
  %2129 = add i64 %2091, 19
  store i64 %2129, i64* %PC, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = sext i32 %2131 to i64
  store i64 %2132, i64* %RCX, align 8, !tbaa !2428
  %2133 = shl nsw i64 %2132, 3
  %2134 = add i64 %2133, %2101
  %2135 = add i64 %2091, 24
  store i64 %2135, i64* %PC, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %2138 = add i64 %2089, -24
  %2139 = add i64 %2091, 28
  store i64 %2139, i64* %PC, align 8
  %2140 = inttoptr i64 %2138 to i64*
  %2141 = load i64, i64* %2140, align 8
  store i64 %2141, i64* %RAX, align 8, !tbaa !2428
  %2142 = add i64 %2091, 32
  store i64 %2142, i64* %PC, align 8
  %2143 = load i32, i32* %2097, align 4
  %2144 = sext i32 %2143 to i64
  %2145 = shl nsw i64 %2144, 13
  store i64 %2145, i64* %RCX, align 8, !tbaa !2428
  %2146 = add i64 %2145, %2141
  store i64 %2146, i64* %RAX, align 8, !tbaa !2428
  %2147 = icmp ult i64 %2146, %2141
  %2148 = icmp ult i64 %2146, %2145
  %2149 = or i1 %2147, %2148
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %47, align 1, !tbaa !2432
  %2151 = trunc i64 %2146 to i32
  %2152 = and i32 %2151, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152) #12
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %48, align 1, !tbaa !2446
  %2157 = xor i64 %2141, %2146
  %2158 = lshr i64 %2157, 4
  %2159 = trunc i64 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %49, align 1, !tbaa !2447
  %2161 = icmp eq i64 %2146, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %50, align 1, !tbaa !2448
  %2163 = lshr i64 %2146, 63
  %2164 = trunc i64 %2163 to i8
  store i8 %2164, i8* %51, align 1, !tbaa !2449
  %2165 = lshr i64 %2141, 63
  %2166 = lshr i64 %2144, 50
  %2167 = and i64 %2166, 1
  %2168 = xor i64 %2163, %2165
  %2169 = xor i64 %2163, %2167
  %2170 = add nuw nsw i64 %2168, %2169
  %2171 = icmp eq i64 %2170, 2
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %52, align 1, !tbaa !2450
  %2173 = load i64, i64* %RBP, align 8
  %2174 = add i64 %2173, -44
  %2175 = add i64 %2091, 43
  store i64 %2175, i64* %PC, align 8
  %2176 = inttoptr i64 %2174 to i32*
  %2177 = load i32, i32* %2176, align 4
  %2178 = sext i32 %2177 to i64
  store i64 %2178, i64* %RCX, align 8, !tbaa !2428
  %2179 = shl nsw i64 %2178, 3
  %2180 = add i64 %2179, %2146
  %2181 = add i64 %2091, 48
  store i64 %2181, i64* %PC, align 8
  %2182 = inttoptr i64 %2180 to i64*
  %2183 = load i64, i64* %2182, align 8
  store i64 %2183, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %2184 = add i64 %2173, -24
  %2185 = add i64 %2091, 52
  store i64 %2185, i64* %PC, align 8
  %2186 = inttoptr i64 %2184 to i64*
  %2187 = load i64, i64* %2186, align 8
  store i64 %2187, i64* %RAX, align 8, !tbaa !2428
  %2188 = add i64 %2173, -40
  %2189 = add i64 %2091, 56
  store i64 %2189, i64* %PC, align 8
  %2190 = inttoptr i64 %2188 to i32*
  %2191 = load i32, i32* %2190, align 4
  %2192 = sext i32 %2191 to i64
  %2193 = shl nsw i64 %2192, 13
  store i64 %2193, i64* %RCX, align 8, !tbaa !2428
  %2194 = add i64 %2193, %2187
  store i64 %2194, i64* %RAX, align 8, !tbaa !2428
  %2195 = icmp ult i64 %2194, %2187
  %2196 = icmp ult i64 %2194, %2193
  %2197 = or i1 %2195, %2196
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %47, align 1, !tbaa !2432
  %2199 = trunc i64 %2194 to i32
  %2200 = and i32 %2199, 255
  %2201 = tail call i32 @llvm.ctpop.i32(i32 %2200) #12
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %48, align 1, !tbaa !2446
  %2205 = xor i64 %2187, %2194
  %2206 = lshr i64 %2205, 4
  %2207 = trunc i64 %2206 to i8
  %2208 = and i8 %2207, 1
  store i8 %2208, i8* %49, align 1, !tbaa !2447
  %2209 = icmp eq i64 %2194, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %50, align 1, !tbaa !2448
  %2211 = lshr i64 %2194, 63
  %2212 = trunc i64 %2211 to i8
  store i8 %2212, i8* %51, align 1, !tbaa !2449
  %2213 = lshr i64 %2187, 63
  %2214 = lshr i64 %2192, 50
  %2215 = and i64 %2214, 1
  %2216 = xor i64 %2211, %2213
  %2217 = xor i64 %2211, %2215
  %2218 = add nuw nsw i64 %2216, %2217
  %2219 = icmp eq i64 %2218, 2
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %52, align 1, !tbaa !2450
  %2221 = add i64 %2091, 67
  store i64 %2221, i64* %PC, align 8
  %2222 = load i32, i32* %2176, align 4
  %2223 = sext i32 %2222 to i64
  store i64 %2223, i64* %RCX, align 8, !tbaa !2428
  %2224 = shl nsw i64 %2223, 3
  %2225 = add i64 %2224, %2194
  %2226 = add i64 %2091, 72
  store i64 %2226, i64* %PC, align 8
  %2227 = bitcast i64 %2183 to double
  %2228 = inttoptr i64 %2225 to double*
  %2229 = load double, double* %2228, align 8
  %2230 = fmul double %2227, %2229
  store double %2230, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %59, align 1, !tbaa !2452
  %2231 = add i64 %2173, -32
  %2232 = add i64 %2091, 76
  store i64 %2232, i64* %PC, align 8
  %2233 = inttoptr i64 %2231 to i64*
  %2234 = load i64, i64* %2233, align 8
  store i64 %2234, i64* %RAX, align 8, !tbaa !2428
  %2235 = load i64, i64* %RBP, align 8
  %2236 = add i64 %2235, -40
  %2237 = add i64 %2091, 79
  store i64 %2237, i64* %PC, align 8
  %2238 = inttoptr i64 %2236 to i32*
  %2239 = load i32, i32* %2238, align 4
  %2240 = add i32 %2239, -1
  %2241 = zext i32 %2240 to i64
  store i64 %2241, i64* %RDX, align 8, !tbaa !2428
  %2242 = sext i32 %2240 to i64
  %2243 = shl nsw i64 %2242, 13
  store i64 %2243, i64* %RCX, align 8, !tbaa !2428
  %2244 = add i64 %2243, %2234
  store i64 %2244, i64* %RAX, align 8, !tbaa !2428
  %2245 = icmp ult i64 %2244, %2234
  %2246 = icmp ult i64 %2244, %2243
  %2247 = or i1 %2245, %2246
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %47, align 1, !tbaa !2432
  %2249 = trunc i64 %2244 to i32
  %2250 = and i32 %2249, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250) #12
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %48, align 1, !tbaa !2446
  %2255 = xor i64 %2234, %2244
  %2256 = lshr i64 %2255, 4
  %2257 = trunc i64 %2256 to i8
  %2258 = and i8 %2257, 1
  store i8 %2258, i8* %49, align 1, !tbaa !2447
  %2259 = icmp eq i64 %2244, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %50, align 1, !tbaa !2448
  %2261 = lshr i64 %2244, 63
  %2262 = trunc i64 %2261 to i8
  store i8 %2262, i8* %51, align 1, !tbaa !2449
  %2263 = lshr i64 %2234, 63
  %2264 = lshr i64 %2242, 50
  %2265 = and i64 %2264, 1
  %2266 = xor i64 %2261, %2263
  %2267 = xor i64 %2261, %2265
  %2268 = add nuw nsw i64 %2266, %2267
  %2269 = icmp eq i64 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %52, align 1, !tbaa !2450
  %2271 = add i64 %2235, -44
  %2272 = add i64 %2091, 96
  store i64 %2272, i64* %PC, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = sext i32 %2274 to i64
  store i64 %2275, i64* %RCX, align 8, !tbaa !2428
  %2276 = shl nsw i64 %2275, 3
  %2277 = add i64 %2276, %2244
  %2278 = add i64 %2091, 101
  store i64 %2278, i64* %PC, align 8
  %2279 = load double, double* %57, align 1
  %2280 = inttoptr i64 %2277 to double*
  %2281 = load double, double* %2280, align 8
  %2282 = fdiv double %2279, %2281
  store double %2282, double* %57, align 1, !tbaa !2452
  %2283 = load double, double* %53, align 1
  %2284 = fsub double %2283, %2282
  store double %2284, double* %53, align 1, !tbaa !2452
  %2285 = load i64, i64* %RBP, align 8
  %2286 = add i64 %2285, -32
  %2287 = add i64 %2091, 109
  store i64 %2287, i64* %PC, align 8
  %2288 = inttoptr i64 %2286 to i64*
  %2289 = load i64, i64* %2288, align 8
  store i64 %2289, i64* %RAX, align 8, !tbaa !2428
  %2290 = add i64 %2285, -40
  %2291 = add i64 %2091, 113
  store i64 %2291, i64* %PC, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = sext i32 %2293 to i64
  %2295 = shl nsw i64 %2294, 13
  store i64 %2295, i64* %RCX, align 8, !tbaa !2428
  %2296 = add i64 %2295, %2289
  store i64 %2296, i64* %RAX, align 8, !tbaa !2428
  %2297 = icmp ult i64 %2296, %2289
  %2298 = icmp ult i64 %2296, %2295
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %47, align 1, !tbaa !2432
  %2301 = trunc i64 %2296 to i32
  %2302 = and i32 %2301, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302) #12
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %48, align 1, !tbaa !2446
  %2307 = xor i64 %2289, %2296
  %2308 = lshr i64 %2307, 4
  %2309 = trunc i64 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %49, align 1, !tbaa !2447
  %2311 = icmp eq i64 %2296, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %50, align 1, !tbaa !2448
  %2313 = lshr i64 %2296, 63
  %2314 = trunc i64 %2313 to i8
  store i8 %2314, i8* %51, align 1, !tbaa !2449
  %2315 = lshr i64 %2289, 63
  %2316 = lshr i64 %2294, 50
  %2317 = and i64 %2316, 1
  %2318 = xor i64 %2313, %2315
  %2319 = xor i64 %2313, %2317
  %2320 = add nuw nsw i64 %2318, %2319
  %2321 = icmp eq i64 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %52, align 1, !tbaa !2450
  %2323 = add i64 %2285, -44
  %2324 = add i64 %2091, 124
  store i64 %2324, i64* %PC, align 8
  %2325 = inttoptr i64 %2323 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = sext i32 %2326 to i64
  store i64 %2327, i64* %RCX, align 8, !tbaa !2428
  %2328 = shl nsw i64 %2327, 3
  %2329 = add i64 %2328, %2296
  %2330 = add i64 %2091, 129
  store i64 %2330, i64* %PC, align 8
  %2331 = inttoptr i64 %2329 to double*
  store double %2284, double* %2331, align 8
  %2332 = load i64, i64* %RBP, align 8
  %2333 = add i64 %2332, -44
  %2334 = load i64, i64* %PC, align 8
  %2335 = add i64 %2334, 3
  store i64 %2335, i64* %PC, align 8
  %2336 = inttoptr i64 %2333 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = add i32 %2337, 1
  %2339 = zext i32 %2338 to i64
  store i64 %2339, i64* %RAX, align 8, !tbaa !2428
  %2340 = icmp eq i32 %2337, -1
  %2341 = icmp eq i32 %2338, 0
  %2342 = or i1 %2340, %2341
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %47, align 1, !tbaa !2432
  %2344 = and i32 %2338, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344) #12
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %48, align 1, !tbaa !2446
  %2349 = xor i32 %2338, %2337
  %2350 = lshr i32 %2349, 4
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %49, align 1, !tbaa !2447
  %2353 = zext i1 %2341 to i8
  store i8 %2353, i8* %50, align 1, !tbaa !2448
  %2354 = lshr i32 %2338, 31
  %2355 = trunc i32 %2354 to i8
  store i8 %2355, i8* %51, align 1, !tbaa !2449
  %2356 = lshr i32 %2337, 31
  %2357 = xor i32 %2354, %2356
  %2358 = add nuw nsw i32 %2357, %2354
  %2359 = icmp eq i32 %2358, 2
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %52, align 1, !tbaa !2450
  %2361 = add i64 %2334, 9
  store i64 %2361, i64* %PC, align 8
  store i32 %2338, i32* %2336, align 4
  %2362 = load i64, i64* %PC, align 8
  %2363 = add i64 %2362, -284
  store i64 %2363, i64* %PC, align 8, !tbaa !2428
  br label %block_400ebc

block_400c0f:                                     ; preds = %block_400c03
  %2364 = add i64 %3015, -16
  %2365 = add i64 %3051, 4
  store i64 %2365, i64* %PC, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RAX, align 8, !tbaa !2428
  %2368 = add i64 %3015, -40
  %2369 = add i64 %3051, 8
  store i64 %2369, i64* %PC, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = sext i32 %2371 to i64
  %2373 = shl nsw i64 %2372, 13
  store i64 %2373, i64* %RCX, align 8, !tbaa !2428
  %2374 = add i64 %2373, %2367
  store i64 %2374, i64* %RAX, align 8, !tbaa !2428
  %2375 = icmp ult i64 %2374, %2367
  %2376 = icmp ult i64 %2374, %2373
  %2377 = or i1 %2375, %2376
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %47, align 1, !tbaa !2432
  %2379 = trunc i64 %2374 to i32
  %2380 = and i32 %2379, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380) #12
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %48, align 1, !tbaa !2446
  %2385 = xor i64 %2367, %2374
  %2386 = lshr i64 %2385, 4
  %2387 = trunc i64 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %49, align 1, !tbaa !2447
  %2389 = icmp eq i64 %2374, 0
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %50, align 1, !tbaa !2448
  %2391 = lshr i64 %2374, 63
  %2392 = trunc i64 %2391 to i8
  store i8 %2392, i8* %51, align 1, !tbaa !2449
  %2393 = lshr i64 %2367, 63
  %2394 = lshr i64 %2372, 50
  %2395 = and i64 %2394, 1
  %2396 = xor i64 %2391, %2393
  %2397 = xor i64 %2391, %2395
  %2398 = add nuw nsw i64 %2396, %2397
  %2399 = icmp eq i64 %2398, 2
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %52, align 1, !tbaa !2450
  %2401 = add i64 %3051, 19
  store i64 %2401, i64* %PC, align 8
  %2402 = load i32, i32* %3018, align 4
  %2403 = sext i32 %2402 to i64
  store i64 %2403, i64* %RCX, align 8, !tbaa !2428
  %2404 = shl nsw i64 %2403, 3
  %2405 = add i64 %2404, %2374
  %2406 = add i64 %3051, 24
  store i64 %2406, i64* %PC, align 8
  %2407 = inttoptr i64 %2405 to i64*
  %2408 = load i64, i64* %2407, align 8
  store i64 %2408, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %2409 = add i64 %3051, 28
  store i64 %2409, i64* %PC, align 8
  %2410 = load i64, i64* %2366, align 8
  store i64 %2410, i64* %RAX, align 8, !tbaa !2428
  %2411 = add i64 %3051, 32
  store i64 %2411, i64* %PC, align 8
  %2412 = load i32, i32* %2370, align 4
  %2413 = sext i32 %2412 to i64
  %2414 = shl nsw i64 %2413, 13
  store i64 %2414, i64* %RCX, align 8, !tbaa !2428
  %2415 = add i64 %2414, %2410
  store i64 %2415, i64* %RAX, align 8, !tbaa !2428
  %2416 = icmp ult i64 %2415, %2410
  %2417 = icmp ult i64 %2415, %2414
  %2418 = or i1 %2416, %2417
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %47, align 1, !tbaa !2432
  %2420 = trunc i64 %2415 to i32
  %2421 = and i32 %2420, 255
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421) #12
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %48, align 1, !tbaa !2446
  %2426 = xor i64 %2410, %2415
  %2427 = lshr i64 %2426, 4
  %2428 = trunc i64 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %49, align 1, !tbaa !2447
  %2430 = icmp eq i64 %2415, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %50, align 1, !tbaa !2448
  %2432 = lshr i64 %2415, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %51, align 1, !tbaa !2449
  %2434 = lshr i64 %2410, 63
  %2435 = lshr i64 %2413, 50
  %2436 = and i64 %2435, 1
  %2437 = xor i64 %2432, %2434
  %2438 = xor i64 %2432, %2436
  %2439 = add nuw nsw i64 %2437, %2438
  %2440 = icmp eq i64 %2439, 2
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %52, align 1, !tbaa !2450
  %2442 = load i64, i64* %RBP, align 8
  %2443 = add i64 %2442, -44
  %2444 = add i64 %3051, 42
  store i64 %2444, i64* %PC, align 8
  %2445 = inttoptr i64 %2443 to i32*
  %2446 = load i32, i32* %2445, align 4
  %2447 = add i32 %2446, -1
  %2448 = zext i32 %2447 to i64
  store i64 %2448, i64* %RDX, align 8, !tbaa !2428
  %2449 = icmp eq i32 %2446, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %47, align 1, !tbaa !2432
  %2451 = and i32 %2447, 255
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451) #12
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  store i8 %2455, i8* %48, align 1, !tbaa !2446
  %2456 = xor i32 %2447, %2446
  %2457 = lshr i32 %2456, 4
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %49, align 1, !tbaa !2447
  %2460 = icmp eq i32 %2447, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %50, align 1, !tbaa !2448
  %2462 = lshr i32 %2447, 31
  %2463 = trunc i32 %2462 to i8
  store i8 %2463, i8* %51, align 1, !tbaa !2449
  %2464 = lshr i32 %2446, 31
  %2465 = xor i32 %2462, %2464
  %2466 = add nuw nsw i32 %2465, %2464
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %52, align 1, !tbaa !2450
  %2469 = sext i32 %2447 to i64
  store i64 %2469, i64* %RCX, align 8, !tbaa !2428
  %2470 = shl nsw i64 %2469, 3
  %2471 = add i64 %2415, %2470
  %2472 = add i64 %3051, 53
  store i64 %2472, i64* %PC, align 8
  %2473 = inttoptr i64 %2471 to i64*
  %2474 = load i64, i64* %2473, align 8
  store i64 %2474, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %2475 = add i64 %2442, -24
  %2476 = add i64 %3051, 57
  store i64 %2476, i64* %PC, align 8
  %2477 = inttoptr i64 %2475 to i64*
  %2478 = load i64, i64* %2477, align 8
  store i64 %2478, i64* %RAX, align 8, !tbaa !2428
  %2479 = add i64 %2442, -40
  %2480 = add i64 %3051, 61
  store i64 %2480, i64* %PC, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  %2483 = sext i32 %2482 to i64
  %2484 = shl nsw i64 %2483, 13
  store i64 %2484, i64* %RCX, align 8, !tbaa !2428
  %2485 = add i64 %2484, %2478
  store i64 %2485, i64* %RAX, align 8, !tbaa !2428
  %2486 = icmp ult i64 %2485, %2478
  %2487 = icmp ult i64 %2485, %2484
  %2488 = or i1 %2486, %2487
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %47, align 1, !tbaa !2432
  %2490 = trunc i64 %2485 to i32
  %2491 = and i32 %2490, 255
  %2492 = tail call i32 @llvm.ctpop.i32(i32 %2491) #12
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  store i8 %2495, i8* %48, align 1, !tbaa !2446
  %2496 = xor i64 %2478, %2485
  %2497 = lshr i64 %2496, 4
  %2498 = trunc i64 %2497 to i8
  %2499 = and i8 %2498, 1
  store i8 %2499, i8* %49, align 1, !tbaa !2447
  %2500 = icmp eq i64 %2485, 0
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %50, align 1, !tbaa !2448
  %2502 = lshr i64 %2485, 63
  %2503 = trunc i64 %2502 to i8
  store i8 %2503, i8* %51, align 1, !tbaa !2449
  %2504 = lshr i64 %2478, 63
  %2505 = lshr i64 %2483, 50
  %2506 = and i64 %2505, 1
  %2507 = xor i64 %2502, %2504
  %2508 = xor i64 %2502, %2506
  %2509 = add nuw nsw i64 %2507, %2508
  %2510 = icmp eq i64 %2509, 2
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %52, align 1, !tbaa !2450
  %2512 = load i64, i64* %RBP, align 8
  %2513 = add i64 %2512, -44
  %2514 = add i64 %3051, 72
  store i64 %2514, i64* %PC, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = sext i32 %2516 to i64
  store i64 %2517, i64* %RCX, align 8, !tbaa !2428
  %2518 = shl nsw i64 %2517, 3
  %2519 = add i64 %2518, %2485
  %2520 = add i64 %3051, 77
  store i64 %2520, i64* %PC, align 8
  %2521 = bitcast i64 %2474 to double
  %2522 = inttoptr i64 %2519 to double*
  %2523 = load double, double* %2522, align 8
  %2524 = fmul double %2521, %2523
  store double %2524, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %59, align 1, !tbaa !2452
  %2525 = add i64 %2512, -32
  %2526 = add i64 %3051, 81
  store i64 %2526, i64* %PC, align 8
  %2527 = inttoptr i64 %2525 to i64*
  %2528 = load i64, i64* %2527, align 8
  store i64 %2528, i64* %RAX, align 8, !tbaa !2428
  %2529 = add i64 %2512, -40
  %2530 = add i64 %3051, 85
  store i64 %2530, i64* %PC, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = sext i32 %2532 to i64
  %2534 = shl nsw i64 %2533, 13
  store i64 %2534, i64* %RCX, align 8, !tbaa !2428
  %2535 = add i64 %2534, %2528
  store i64 %2535, i64* %RAX, align 8, !tbaa !2428
  %2536 = icmp ult i64 %2535, %2528
  %2537 = icmp ult i64 %2535, %2534
  %2538 = or i1 %2536, %2537
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %47, align 1, !tbaa !2432
  %2540 = trunc i64 %2535 to i32
  %2541 = and i32 %2540, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541) #12
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %48, align 1, !tbaa !2446
  %2546 = xor i64 %2528, %2535
  %2547 = lshr i64 %2546, 4
  %2548 = trunc i64 %2547 to i8
  %2549 = and i8 %2548, 1
  store i8 %2549, i8* %49, align 1, !tbaa !2447
  %2550 = icmp eq i64 %2535, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %50, align 1, !tbaa !2448
  %2552 = lshr i64 %2535, 63
  %2553 = trunc i64 %2552 to i8
  store i8 %2553, i8* %51, align 1, !tbaa !2449
  %2554 = lshr i64 %2528, 63
  %2555 = lshr i64 %2533, 50
  %2556 = and i64 %2555, 1
  %2557 = xor i64 %2552, %2554
  %2558 = xor i64 %2552, %2556
  %2559 = add nuw nsw i64 %2557, %2558
  %2560 = icmp eq i64 %2559, 2
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %52, align 1, !tbaa !2450
  %2562 = add i64 %3051, 95
  store i64 %2562, i64* %PC, align 8
  %2563 = load i32, i32* %2515, align 4
  %2564 = add i32 %2563, -1
  %2565 = zext i32 %2564 to i64
  store i64 %2565, i64* %RDX, align 8, !tbaa !2428
  %2566 = icmp eq i32 %2563, 0
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %47, align 1, !tbaa !2432
  %2568 = and i32 %2564, 255
  %2569 = tail call i32 @llvm.ctpop.i32(i32 %2568) #12
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  store i8 %2572, i8* %48, align 1, !tbaa !2446
  %2573 = xor i32 %2564, %2563
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %49, align 1, !tbaa !2447
  %2577 = icmp eq i32 %2564, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %50, align 1, !tbaa !2448
  %2579 = lshr i32 %2564, 31
  %2580 = trunc i32 %2579 to i8
  store i8 %2580, i8* %51, align 1, !tbaa !2449
  %2581 = lshr i32 %2563, 31
  %2582 = xor i32 %2579, %2581
  %2583 = add nuw nsw i32 %2582, %2581
  %2584 = icmp eq i32 %2583, 2
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %52, align 1, !tbaa !2450
  %2586 = sext i32 %2564 to i64
  store i64 %2586, i64* %RCX, align 8, !tbaa !2428
  %2587 = shl nsw i64 %2586, 3
  %2588 = add i64 %2535, %2587
  %2589 = add i64 %3051, 106
  store i64 %2589, i64* %PC, align 8
  %2590 = load double, double* %57, align 1
  %2591 = inttoptr i64 %2588 to double*
  %2592 = load double, double* %2591, align 8
  %2593 = fdiv double %2590, %2592
  store double %2593, double* %57, align 1, !tbaa !2452
  %2594 = load double, double* %53, align 1
  %2595 = fsub double %2594, %2593
  store double %2595, double* %53, align 1, !tbaa !2452
  %2596 = load i64, i64* %RBP, align 8
  %2597 = add i64 %2596, -16
  %2598 = add i64 %3051, 114
  store i64 %2598, i64* %PC, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RAX, align 8, !tbaa !2428
  %2601 = add i64 %2596, -40
  %2602 = add i64 %3051, 118
  store i64 %2602, i64* %PC, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = sext i32 %2604 to i64
  %2606 = shl nsw i64 %2605, 13
  store i64 %2606, i64* %RCX, align 8, !tbaa !2428
  %2607 = add i64 %2606, %2600
  store i64 %2607, i64* %RAX, align 8, !tbaa !2428
  %2608 = icmp ult i64 %2607, %2600
  %2609 = icmp ult i64 %2607, %2606
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %47, align 1, !tbaa !2432
  %2612 = trunc i64 %2607 to i32
  %2613 = and i32 %2612, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613) #12
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %48, align 1, !tbaa !2446
  %2618 = xor i64 %2600, %2607
  %2619 = lshr i64 %2618, 4
  %2620 = trunc i64 %2619 to i8
  %2621 = and i8 %2620, 1
  store i8 %2621, i8* %49, align 1, !tbaa !2447
  %2622 = icmp eq i64 %2607, 0
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %50, align 1, !tbaa !2448
  %2624 = lshr i64 %2607, 63
  %2625 = trunc i64 %2624 to i8
  store i8 %2625, i8* %51, align 1, !tbaa !2449
  %2626 = lshr i64 %2600, 63
  %2627 = lshr i64 %2605, 50
  %2628 = and i64 %2627, 1
  %2629 = xor i64 %2624, %2626
  %2630 = xor i64 %2624, %2628
  %2631 = add nuw nsw i64 %2629, %2630
  %2632 = icmp eq i64 %2631, 2
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %52, align 1, !tbaa !2450
  %2634 = add i64 %2596, -44
  %2635 = add i64 %3051, 129
  store i64 %2635, i64* %PC, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = sext i32 %2637 to i64
  store i64 %2638, i64* %RCX, align 8, !tbaa !2428
  %2639 = shl nsw i64 %2638, 3
  %2640 = add i64 %2639, %2607
  %2641 = add i64 %3051, 134
  store i64 %2641, i64* %PC, align 8
  %2642 = inttoptr i64 %2640 to double*
  store double %2595, double* %2642, align 8
  %2643 = load i64, i64* %RBP, align 8
  %2644 = add i64 %2643, -32
  %2645 = load i64, i64* %PC, align 8
  %2646 = add i64 %2645, 4
  store i64 %2646, i64* %PC, align 8
  %2647 = inttoptr i64 %2644 to i64*
  %2648 = load i64, i64* %2647, align 8
  store i64 %2648, i64* %RAX, align 8, !tbaa !2428
  %2649 = add i64 %2643, -40
  %2650 = add i64 %2645, 8
  store i64 %2650, i64* %PC, align 8
  %2651 = inttoptr i64 %2649 to i32*
  %2652 = load i32, i32* %2651, align 4
  %2653 = sext i32 %2652 to i64
  %2654 = shl nsw i64 %2653, 13
  store i64 %2654, i64* %RCX, align 8, !tbaa !2428
  %2655 = add i64 %2654, %2648
  store i64 %2655, i64* %RAX, align 8, !tbaa !2428
  %2656 = icmp ult i64 %2655, %2648
  %2657 = icmp ult i64 %2655, %2654
  %2658 = or i1 %2656, %2657
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %47, align 1, !tbaa !2432
  %2660 = trunc i64 %2655 to i32
  %2661 = and i32 %2660, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661) #12
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %48, align 1, !tbaa !2446
  %2666 = xor i64 %2648, %2655
  %2667 = lshr i64 %2666, 4
  %2668 = trunc i64 %2667 to i8
  %2669 = and i8 %2668, 1
  store i8 %2669, i8* %49, align 1, !tbaa !2447
  %2670 = icmp eq i64 %2655, 0
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %50, align 1, !tbaa !2448
  %2672 = lshr i64 %2655, 63
  %2673 = trunc i64 %2672 to i8
  store i8 %2673, i8* %51, align 1, !tbaa !2449
  %2674 = lshr i64 %2648, 63
  %2675 = lshr i64 %2653, 50
  %2676 = and i64 %2675, 1
  %2677 = xor i64 %2672, %2674
  %2678 = xor i64 %2672, %2676
  %2679 = add nuw nsw i64 %2677, %2678
  %2680 = icmp eq i64 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %52, align 1, !tbaa !2450
  %2682 = add i64 %2643, -44
  %2683 = add i64 %2645, 19
  store i64 %2683, i64* %PC, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sext i32 %2685 to i64
  store i64 %2686, i64* %RCX, align 8, !tbaa !2428
  %2687 = shl nsw i64 %2686, 3
  %2688 = add i64 %2687, %2655
  %2689 = add i64 %2645, 24
  store i64 %2689, i64* %PC, align 8
  %2690 = inttoptr i64 %2688 to i64*
  %2691 = load i64, i64* %2690, align 8
  store i64 %2691, i64* %54, align 1, !tbaa !2452
  store double 0.000000e+00, double* %56, align 1, !tbaa !2452
  %2692 = add i64 %2643, -24
  %2693 = add i64 %2645, 28
  store i64 %2693, i64* %PC, align 8
  %2694 = inttoptr i64 %2692 to i64*
  %2695 = load i64, i64* %2694, align 8
  store i64 %2695, i64* %RAX, align 8, !tbaa !2428
  %2696 = add i64 %2645, 32
  store i64 %2696, i64* %PC, align 8
  %2697 = load i32, i32* %2651, align 4
  %2698 = sext i32 %2697 to i64
  %2699 = shl nsw i64 %2698, 13
  store i64 %2699, i64* %RCX, align 8, !tbaa !2428
  %2700 = add i64 %2699, %2695
  store i64 %2700, i64* %RAX, align 8, !tbaa !2428
  %2701 = icmp ult i64 %2700, %2695
  %2702 = icmp ult i64 %2700, %2699
  %2703 = or i1 %2701, %2702
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %47, align 1, !tbaa !2432
  %2705 = trunc i64 %2700 to i32
  %2706 = and i32 %2705, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706) #12
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %48, align 1, !tbaa !2446
  %2711 = xor i64 %2695, %2700
  %2712 = lshr i64 %2711, 4
  %2713 = trunc i64 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %49, align 1, !tbaa !2447
  %2715 = icmp eq i64 %2700, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %50, align 1, !tbaa !2448
  %2717 = lshr i64 %2700, 63
  %2718 = trunc i64 %2717 to i8
  store i8 %2718, i8* %51, align 1, !tbaa !2449
  %2719 = lshr i64 %2695, 63
  %2720 = lshr i64 %2698, 50
  %2721 = and i64 %2720, 1
  %2722 = xor i64 %2717, %2719
  %2723 = xor i64 %2717, %2721
  %2724 = add nuw nsw i64 %2722, %2723
  %2725 = icmp eq i64 %2724, 2
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %52, align 1, !tbaa !2450
  %2727 = load i64, i64* %RBP, align 8
  %2728 = add i64 %2727, -44
  %2729 = add i64 %2645, 43
  store i64 %2729, i64* %PC, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = sext i32 %2731 to i64
  store i64 %2732, i64* %RCX, align 8, !tbaa !2428
  %2733 = shl nsw i64 %2732, 3
  %2734 = add i64 %2733, %2700
  %2735 = add i64 %2645, 48
  store i64 %2735, i64* %PC, align 8
  %2736 = inttoptr i64 %2734 to i64*
  %2737 = load i64, i64* %2736, align 8
  store i64 %2737, i64* %58, align 1, !tbaa !2452
  store double 0.000000e+00, double* %60, align 1, !tbaa !2452
  %2738 = add i64 %2727, -24
  %2739 = add i64 %2645, 52
  store i64 %2739, i64* %PC, align 8
  %2740 = inttoptr i64 %2738 to i64*
  %2741 = load i64, i64* %2740, align 8
  store i64 %2741, i64* %RAX, align 8, !tbaa !2428
  %2742 = add i64 %2727, -40
  %2743 = add i64 %2645, 56
  store i64 %2743, i64* %PC, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = sext i32 %2745 to i64
  %2747 = shl nsw i64 %2746, 13
  store i64 %2747, i64* %RCX, align 8, !tbaa !2428
  %2748 = add i64 %2747, %2741
  store i64 %2748, i64* %RAX, align 8, !tbaa !2428
  %2749 = icmp ult i64 %2748, %2741
  %2750 = icmp ult i64 %2748, %2747
  %2751 = or i1 %2749, %2750
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %47, align 1, !tbaa !2432
  %2753 = trunc i64 %2748 to i32
  %2754 = and i32 %2753, 255
  %2755 = tail call i32 @llvm.ctpop.i32(i32 %2754) #12
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  %2758 = xor i8 %2757, 1
  store i8 %2758, i8* %48, align 1, !tbaa !2446
  %2759 = xor i64 %2741, %2748
  %2760 = lshr i64 %2759, 4
  %2761 = trunc i64 %2760 to i8
  %2762 = and i8 %2761, 1
  store i8 %2762, i8* %49, align 1, !tbaa !2447
  %2763 = icmp eq i64 %2748, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %50, align 1, !tbaa !2448
  %2765 = lshr i64 %2748, 63
  %2766 = trunc i64 %2765 to i8
  store i8 %2766, i8* %51, align 1, !tbaa !2449
  %2767 = lshr i64 %2741, 63
  %2768 = lshr i64 %2746, 50
  %2769 = and i64 %2768, 1
  %2770 = xor i64 %2765, %2767
  %2771 = xor i64 %2765, %2769
  %2772 = add nuw nsw i64 %2770, %2771
  %2773 = icmp eq i64 %2772, 2
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %52, align 1, !tbaa !2450
  %2775 = add i64 %2645, 67
  store i64 %2775, i64* %PC, align 8
  %2776 = load i32, i32* %2730, align 4
  %2777 = sext i32 %2776 to i64
  store i64 %2777, i64* %RCX, align 8, !tbaa !2428
  %2778 = shl nsw i64 %2777, 3
  %2779 = add i64 %2778, %2748
  %2780 = add i64 %2645, 72
  store i64 %2780, i64* %PC, align 8
  %2781 = bitcast i64 %2737 to double
  %2782 = inttoptr i64 %2779 to double*
  %2783 = load double, double* %2782, align 8
  %2784 = fmul double %2781, %2783
  store double %2784, double* %57, align 1, !tbaa !2452
  store i64 0, i64* %59, align 1, !tbaa !2452
  %2785 = add i64 %2727, -32
  %2786 = add i64 %2645, 76
  store i64 %2786, i64* %PC, align 8
  %2787 = inttoptr i64 %2785 to i64*
  %2788 = load i64, i64* %2787, align 8
  store i64 %2788, i64* %RAX, align 8, !tbaa !2428
  %2789 = load i64, i64* %RBP, align 8
  %2790 = add i64 %2789, -40
  %2791 = add i64 %2645, 80
  store i64 %2791, i64* %PC, align 8
  %2792 = inttoptr i64 %2790 to i32*
  %2793 = load i32, i32* %2792, align 4
  %2794 = sext i32 %2793 to i64
  %2795 = shl nsw i64 %2794, 13
  store i64 %2795, i64* %RCX, align 8, !tbaa !2428
  %2796 = add i64 %2795, %2788
  store i64 %2796, i64* %RAX, align 8, !tbaa !2428
  %2797 = icmp ult i64 %2796, %2788
  %2798 = icmp ult i64 %2796, %2795
  %2799 = or i1 %2797, %2798
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %47, align 1, !tbaa !2432
  %2801 = trunc i64 %2796 to i32
  %2802 = and i32 %2801, 255
  %2803 = tail call i32 @llvm.ctpop.i32(i32 %2802) #12
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  store i8 %2806, i8* %48, align 1, !tbaa !2446
  %2807 = xor i64 %2788, %2796
  %2808 = lshr i64 %2807, 4
  %2809 = trunc i64 %2808 to i8
  %2810 = and i8 %2809, 1
  store i8 %2810, i8* %49, align 1, !tbaa !2447
  %2811 = icmp eq i64 %2796, 0
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %50, align 1, !tbaa !2448
  %2813 = lshr i64 %2796, 63
  %2814 = trunc i64 %2813 to i8
  store i8 %2814, i8* %51, align 1, !tbaa !2449
  %2815 = lshr i64 %2788, 63
  %2816 = lshr i64 %2794, 50
  %2817 = and i64 %2816, 1
  %2818 = xor i64 %2813, %2815
  %2819 = xor i64 %2813, %2817
  %2820 = add nuw nsw i64 %2818, %2819
  %2821 = icmp eq i64 %2820, 2
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %52, align 1, !tbaa !2450
  %2823 = add i64 %2789, -44
  %2824 = add i64 %2645, 90
  store i64 %2824, i64* %PC, align 8
  %2825 = inttoptr i64 %2823 to i32*
  %2826 = load i32, i32* %2825, align 4
  %2827 = add i32 %2826, -1
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RDX, align 8, !tbaa !2428
  %2829 = icmp eq i32 %2826, 0
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %47, align 1, !tbaa !2432
  %2831 = and i32 %2827, 255
  %2832 = tail call i32 @llvm.ctpop.i32(i32 %2831) #12
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  store i8 %2835, i8* %48, align 1, !tbaa !2446
  %2836 = xor i32 %2827, %2826
  %2837 = lshr i32 %2836, 4
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  store i8 %2839, i8* %49, align 1, !tbaa !2447
  %2840 = icmp eq i32 %2827, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %50, align 1, !tbaa !2448
  %2842 = lshr i32 %2827, 31
  %2843 = trunc i32 %2842 to i8
  store i8 %2843, i8* %51, align 1, !tbaa !2449
  %2844 = lshr i32 %2826, 31
  %2845 = xor i32 %2842, %2844
  %2846 = add nuw nsw i32 %2845, %2844
  %2847 = icmp eq i32 %2846, 2
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %52, align 1, !tbaa !2450
  %2849 = sext i32 %2827 to i64
  store i64 %2849, i64* %RCX, align 8, !tbaa !2428
  %2850 = shl nsw i64 %2849, 3
  %2851 = add i64 %2796, %2850
  %2852 = add i64 %2645, 101
  store i64 %2852, i64* %PC, align 8
  %2853 = load double, double* %57, align 1
  %2854 = inttoptr i64 %2851 to double*
  %2855 = load double, double* %2854, align 8
  %2856 = fdiv double %2853, %2855
  store double %2856, double* %57, align 1, !tbaa !2452
  %2857 = load double, double* %53, align 1
  %2858 = fsub double %2857, %2856
  store double %2858, double* %53, align 1, !tbaa !2452
  %2859 = load i64, i64* %RBP, align 8
  %2860 = add i64 %2859, -32
  %2861 = add i64 %2645, 109
  store i64 %2861, i64* %PC, align 8
  %2862 = inttoptr i64 %2860 to i64*
  %2863 = load i64, i64* %2862, align 8
  store i64 %2863, i64* %RAX, align 8, !tbaa !2428
  %2864 = add i64 %2859, -40
  %2865 = add i64 %2645, 113
  store i64 %2865, i64* %PC, align 8
  %2866 = inttoptr i64 %2864 to i32*
  %2867 = load i32, i32* %2866, align 4
  %2868 = sext i32 %2867 to i64
  %2869 = shl nsw i64 %2868, 13
  store i64 %2869, i64* %RCX, align 8, !tbaa !2428
  %2870 = add i64 %2869, %2863
  store i64 %2870, i64* %RAX, align 8, !tbaa !2428
  %2871 = icmp ult i64 %2870, %2863
  %2872 = icmp ult i64 %2870, %2869
  %2873 = or i1 %2871, %2872
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %47, align 1, !tbaa !2432
  %2875 = trunc i64 %2870 to i32
  %2876 = and i32 %2875, 255
  %2877 = tail call i32 @llvm.ctpop.i32(i32 %2876) #12
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  %2880 = xor i8 %2879, 1
  store i8 %2880, i8* %48, align 1, !tbaa !2446
  %2881 = xor i64 %2863, %2870
  %2882 = lshr i64 %2881, 4
  %2883 = trunc i64 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %49, align 1, !tbaa !2447
  %2885 = icmp eq i64 %2870, 0
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %50, align 1, !tbaa !2448
  %2887 = lshr i64 %2870, 63
  %2888 = trunc i64 %2887 to i8
  store i8 %2888, i8* %51, align 1, !tbaa !2449
  %2889 = lshr i64 %2863, 63
  %2890 = lshr i64 %2868, 50
  %2891 = and i64 %2890, 1
  %2892 = xor i64 %2887, %2889
  %2893 = xor i64 %2887, %2891
  %2894 = add nuw nsw i64 %2892, %2893
  %2895 = icmp eq i64 %2894, 2
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %52, align 1, !tbaa !2450
  %2897 = add i64 %2859, -44
  %2898 = add i64 %2645, 124
  store i64 %2898, i64* %PC, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = sext i32 %2900 to i64
  store i64 %2901, i64* %RCX, align 8, !tbaa !2428
  %2902 = shl nsw i64 %2901, 3
  %2903 = add i64 %2902, %2870
  %2904 = add i64 %2645, 129
  store i64 %2904, i64* %PC, align 8
  %2905 = inttoptr i64 %2903 to double*
  store double %2858, double* %2905, align 8
  %2906 = load i64, i64* %RBP, align 8
  %2907 = add i64 %2906, -44
  %2908 = load i64, i64* %PC, align 8
  %2909 = add i64 %2908, 3
  store i64 %2909, i64* %PC, align 8
  %2910 = inttoptr i64 %2907 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = add i32 %2911, 1
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RAX, align 8, !tbaa !2428
  %2914 = icmp eq i32 %2911, -1
  %2915 = icmp eq i32 %2912, 0
  %2916 = or i1 %2914, %2915
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %47, align 1, !tbaa !2432
  %2918 = and i32 %2912, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918) #12
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %48, align 1, !tbaa !2446
  %2923 = xor i32 %2912, %2911
  %2924 = lshr i32 %2923, 4
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %49, align 1, !tbaa !2447
  %2927 = zext i1 %2915 to i8
  store i8 %2927, i8* %50, align 1, !tbaa !2448
  %2928 = lshr i32 %2912, 31
  %2929 = trunc i32 %2928 to i8
  store i8 %2929, i8* %51, align 1, !tbaa !2449
  %2930 = lshr i32 %2911, 31
  %2931 = xor i32 %2928, %2930
  %2932 = add nuw nsw i32 %2931, %2928
  %2933 = icmp eq i32 %2932, 2
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %52, align 1, !tbaa !2450
  %2935 = add i64 %2908, 9
  store i64 %2935, i64* %PC, align 8
  store i32 %2912, i32* %2910, align 4
  %2936 = load i64, i64* %PC, align 8
  %2937 = add i64 %2936, -284
  store i64 %2937, i64* %PC, align 8, !tbaa !2428
  br label %block_400c03

block_401087:                                     ; preds = %block_401080, %block_401093
  %2938 = phi i64 [ %.pre78, %block_401080 ], [ %465, %block_401093 ]
  %2939 = load i64, i64* %RBP, align 8
  %2940 = add i64 %2939, -44
  %2941 = add i64 %2938, 3
  store i64 %2941, i64* %PC, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RAX, align 8, !tbaa !2428
  %2945 = add i64 %2939, -8
  %2946 = add i64 %2938, 6
  store i64 %2946, i64* %PC, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = sub i32 %2943, %2948
  %2950 = icmp ult i32 %2943, %2948
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %47, align 1, !tbaa !2432
  %2952 = and i32 %2949, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952) #12
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %48, align 1, !tbaa !2446
  %2957 = xor i32 %2948, %2943
  %2958 = xor i32 %2957, %2949
  %2959 = lshr i32 %2958, 4
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  store i8 %2961, i8* %49, align 1, !tbaa !2447
  %2962 = icmp eq i32 %2949, 0
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %50, align 1, !tbaa !2448
  %2964 = lshr i32 %2949, 31
  %2965 = trunc i32 %2964 to i8
  store i8 %2965, i8* %51, align 1, !tbaa !2449
  %2966 = lshr i32 %2943, 31
  %2967 = lshr i32 %2948, 31
  %2968 = xor i32 %2967, %2966
  %2969 = xor i32 %2964, %2966
  %2970 = add nuw nsw i32 %2969, %2968
  %2971 = icmp eq i32 %2970, 2
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %52, align 1, !tbaa !2450
  %2973 = icmp ne i8 %2965, 0
  %2974 = xor i1 %2973, %2971
  %.v83 = select i1 %2974, i64 12, i64 190
  %2975 = add i64 %2938, %.v83
  store i64 %2975, i64* %PC, align 8, !tbaa !2428
  br i1 %2974, label %block_401093, label %block_401145

block_400ebc:                                     ; preds = %block_400ebc.preheader, %block_400ec8
  %2976 = phi i64 [ %2363, %block_400ec8 ], [ %.pre79, %block_400ebc.preheader ]
  %2977 = load i64, i64* %RBP, align 8
  %2978 = add i64 %2977, -44
  %2979 = add i64 %2976, 3
  store i64 %2979, i64* %PC, align 8
  %2980 = inttoptr i64 %2978 to i32*
  %2981 = load i32, i32* %2980, align 4
  %2982 = zext i32 %2981 to i64
  store i64 %2982, i64* %RAX, align 8, !tbaa !2428
  %2983 = add i64 %2977, -8
  %2984 = add i64 %2976, 6
  store i64 %2984, i64* %PC, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = sub i32 %2981, %2986
  %2988 = icmp ult i32 %2981, %2986
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %47, align 1, !tbaa !2432
  %2990 = and i32 %2987, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990) #12
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %48, align 1, !tbaa !2446
  %2995 = xor i32 %2986, %2981
  %2996 = xor i32 %2995, %2987
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %49, align 1, !tbaa !2447
  %3000 = icmp eq i32 %2987, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %50, align 1, !tbaa !2448
  %3002 = lshr i32 %2987, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %51, align 1, !tbaa !2449
  %3004 = lshr i32 %2981, 31
  %3005 = lshr i32 %2986, 31
  %3006 = xor i32 %3005, %3004
  %3007 = xor i32 %3002, %3004
  %3008 = add nuw nsw i32 %3007, %3006
  %3009 = icmp eq i32 %3008, 2
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %52, align 1, !tbaa !2450
  %3011 = icmp ne i8 %3003, 0
  %3012 = xor i1 %3011, %3009
  %.v84 = select i1 %3012, i64 12, i64 289
  %3013 = add i64 %2976, %.v84
  store i64 %3013, i64* %PC, align 8, !tbaa !2428
  br i1 %3012, label %block_400ec8, label %block_400fdd

block_400c03:                                     ; preds = %block_400c0f, %block_400bfc
  %3014 = phi i64 [ %2937, %block_400c0f ], [ %.pre81, %block_400bfc ]
  %3015 = load i64, i64* %RBP, align 8
  %3016 = add i64 %3015, -44
  %3017 = add i64 %3014, 3
  store i64 %3017, i64* %PC, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RAX, align 8, !tbaa !2428
  %3021 = add i64 %3015, -8
  %3022 = add i64 %3014, 6
  store i64 %3022, i64* %PC, align 8
  %3023 = inttoptr i64 %3021 to i32*
  %3024 = load i32, i32* %3023, align 4
  %3025 = sub i32 %3019, %3024
  %3026 = icmp ult i32 %3019, %3024
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %47, align 1, !tbaa !2432
  %3028 = and i32 %3025, 255
  %3029 = tail call i32 @llvm.ctpop.i32(i32 %3028) #12
  %3030 = trunc i32 %3029 to i8
  %3031 = and i8 %3030, 1
  %3032 = xor i8 %3031, 1
  store i8 %3032, i8* %48, align 1, !tbaa !2446
  %3033 = xor i32 %3024, %3019
  %3034 = xor i32 %3033, %3025
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %49, align 1, !tbaa !2447
  %3038 = icmp eq i32 %3025, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %50, align 1, !tbaa !2448
  %3040 = lshr i32 %3025, 31
  %3041 = trunc i32 %3040 to i8
  store i8 %3041, i8* %51, align 1, !tbaa !2449
  %3042 = lshr i32 %3019, 31
  %3043 = lshr i32 %3024, 31
  %3044 = xor i32 %3043, %3042
  %3045 = xor i32 %3040, %3042
  %3046 = add nuw nsw i32 %3045, %3044
  %3047 = icmp eq i32 %3046, 2
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %52, align 1, !tbaa !2450
  %3049 = icmp ne i8 %3041, 0
  %3050 = xor i1 %3049, %3047
  %.v86 = select i1 %3050, i64 12, i64 289
  %3051 = add i64 %3014, %.v86
  store i64 %3051, i64* %PC, align 8, !tbaa !2428
  br i1 %3050, label %block_400c0f, label %block_400d24

block_401080:                                     ; preds = %block_40106f
  %3052 = add i64 %1142, -44
  %3053 = add i64 %1180, 7
  store i64 %3053, i64* %PC, align 8
  %3054 = inttoptr i64 %3052 to i32*
  store i32 0, i32* %3054, align 4
  %.pre78 = load i64, i64* %PC, align 8
  br label %block_401087
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401370_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401370:
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
  store i64 ptrtoint (void ()* @callback_sub_401590___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401520___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define internal fastcc %struct.Memory* @ext_400610_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401590___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401590___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401590___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401520___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_401520___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401520___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005d8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
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
define dllexport void @polybench_alloc_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400890;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
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
define dllexport void @polybench_timer_stop() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400830;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #12
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
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401594;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_401594__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401520___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401590___libc_csu_fini()
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
attributes #13 = { alwaysinline nobuiltin nounwind }

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
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
