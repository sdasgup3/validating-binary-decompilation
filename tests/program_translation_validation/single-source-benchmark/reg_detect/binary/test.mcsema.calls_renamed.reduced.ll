; ModuleID = '/tmp/tmpq_7ne1g7-target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4014a0__rodata_type = type <{ [32 x i8], [7 x i8], [51 x i8], [4 x i8], [76 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602060__bss_type = type <{ [8 x i8], [8 x i8] }>
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
@stderr = external local_unnamed_addr global i64, align 32
@seg_4014a0__rodata = internal constant %seg_4014a0__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [4 x i8] c"%d \00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006d0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006a0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006d0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006a0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401490___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401420___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400ea0_kernel_reg_detect_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4011f0_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401320_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a80_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006e0_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400790_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400630_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400560__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400840_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400760_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b50_kernel_reg_detect_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400660_register_tm_clones(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400660:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299736, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6299736
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
  store i8 %21, i8* %11, align 1, !tbaa !2432
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %13, align 1, !tbaa !2432
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2432
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2432
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %.v, %9
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400698, label %block_400683

block_400698:                                     ; preds = %block_400683, %block_400660
  %34 = phi i64 [ %41, %block_400683 ], [ %33, %block_400660 ]
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %37 = add i64 %34, 2
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %5 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = add i64 %5, 8
  store i64 %40, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400683:                                     ; preds = %block_400660
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2433
  store i8 1, i8* %12, align 1, !tbaa !2447
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2451
  %41 = add i64 %33, 21
  store i64 %41, i64* %PC, align 8, !tbaa !2428
  br label %block_400698
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400620__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400620:
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
define %struct.Memory* @sub_400560__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400560:
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
  store i8 0, i8* %5, align 1, !tbaa !2433
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #10
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2447
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2451
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400572, label %block_400570

block_400570:                                     ; preds = %block_400560
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400572

block_400572:                                     ; preds = %block_400570, %block_400560
  %27 = phi i64 [ %22, %block_400560 ], [ %.pre1, %block_400570 ]
  %28 = phi i64 [ %4, %block_400560 ], [ %.pre, %block_400570 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400560 ], [ %26, %block_400570 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2433
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2447
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2451
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
define %struct.Memory* @sub_4006e0_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006e0:
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
  store i8 %12, i8* %13, align 1, !tbaa !2433
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2451
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
  %48 = add i64 %43, -326
  %49 = add i64 %43, 9
  %50 = load i64, i64* %RSP, align 8, !tbaa !2428
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  store i64 %48, i64* %PC, align 8, !tbaa !2428
  %53 = tail call fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %54 = load i64, i64* %PC, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %56, align 1, !tbaa !2452
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
  br label %block_400712

block_40071e:                                     ; preds = %block_400712
  %76 = add i64 %198, 8
  store i64 %76, i64* %PC, align 8
  %77 = load i32, i32* %165, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RCX, align 8, !tbaa !2428
  %79 = shl nsw i64 %78, 3
  %80 = add i64 %79, %202
  %81 = add i64 %198, 13
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %66, align 1, !tbaa !2453
  store double 0.000000e+00, double* %75, align 1, !tbaa !2453
  %84 = add i64 %162, -32
  %85 = add i64 %198, 18
  store i64 %85, i64* %PC, align 8
  %86 = bitcast i64 %83 to double
  %87 = inttoptr i64 %84 to double*
  %88 = load double, double* %87, align 8
  %89 = fadd double %86, %88
  store double %89, double* %74, align 1, !tbaa !2453
  store i64 0, i64* %55, align 1, !tbaa !2453
  %90 = add i64 %198, 23
  store i64 %90, i64* %PC, align 8
  store double %89, double* %87, align 8
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -20
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, 1
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RAX, align 8, !tbaa !2428
  %99 = icmp eq i32 %96, -1
  %100 = icmp eq i32 %97, 0
  %101 = or i1 %99, %100
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %13, align 1, !tbaa !2433
  %103 = and i32 %97, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #10
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %20, align 1, !tbaa !2447
  %108 = xor i32 %97, %96
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %25, align 1, !tbaa !2451
  %112 = zext i1 %100 to i8
  store i8 %112, i8* %28, align 1, !tbaa !2448
  %113 = lshr i32 %97, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %31, align 1, !tbaa !2449
  %115 = lshr i32 %96, 31
  %116 = xor i32 %113, %115
  %117 = add nuw nsw i32 %116, %113
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %37, align 1, !tbaa !2450
  %120 = add i64 %93, 9
  store i64 %120, i64* %PC, align 8
  store i32 %97, i32* %95, align 4
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, -44
  store i64 %122, i64* %PC, align 8, !tbaa !2428
  br label %block_400712

block_400743:                                     ; preds = %block_400712
  store i64 %202, i64* %RDI, align 8, !tbaa !2428
  %123 = add i64 %198, -435
  %124 = add i64 %198, 12
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %129 = load i64, i64* %RSP, align 8
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %129, 32
  store i64 %131, i64* %RSP, align 8, !tbaa !2428
  %132 = icmp ugt i64 %129, -33
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %13, align 1, !tbaa !2433
  %134 = trunc i64 %131 to i32
  %135 = and i32 %134, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #10
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %20, align 1, !tbaa !2447
  %140 = xor i64 %131, %129
  %141 = lshr i64 %140, 4
  %142 = trunc i64 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %25, align 1, !tbaa !2451
  %144 = icmp eq i64 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %28, align 1, !tbaa !2448
  %146 = lshr i64 %131, 63
  %147 = trunc i64 %146 to i8
  store i8 %147, i8* %31, align 1, !tbaa !2449
  %148 = lshr i64 %129, 63
  %149 = xor i64 %146, %148
  %150 = add nuw nsw i64 %149, %146
  %151 = icmp eq i64 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %37, align 1, !tbaa !2450
  %153 = add i64 %130, 5
  store i64 %153, i64* %PC, align 8
  %154 = add i64 %129, 40
  %155 = inttoptr i64 %131 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RBP, align 8, !tbaa !2428
  store i64 %154, i64* %RSP, align 8, !tbaa !2428
  %157 = add i64 %130, 6
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %154 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  %160 = add i64 %129, 48
  store i64 %160, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %128

block_400712:                                     ; preds = %block_40071e, %block_4006e0
  %161 = phi i64 [ %122, %block_40071e ], [ %.pre, %block_4006e0 ]
  %162 = load i64, i64* %RBP, align 8
  %163 = add i64 %162, -20
  %164 = add i64 %161, 3
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RAX, align 8, !tbaa !2428
  %168 = add i64 %162, -4
  %169 = add i64 %161, 6
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = sub i32 %166, %171
  %173 = icmp ult i32 %166, %171
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %13, align 1, !tbaa !2433
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #10
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %20, align 1, !tbaa !2447
  %180 = xor i32 %171, %166
  %181 = xor i32 %180, %172
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %25, align 1, !tbaa !2451
  %185 = icmp eq i32 %172, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %28, align 1, !tbaa !2448
  %187 = lshr i32 %172, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %31, align 1, !tbaa !2449
  %189 = lshr i32 %166, 31
  %190 = lshr i32 %171, 31
  %191 = xor i32 %190, %189
  %192 = xor i32 %187, %189
  %193 = add nuw nsw i32 %192, %191
  %194 = icmp eq i32 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %37, align 1, !tbaa !2450
  %196 = icmp ne i8 %188, 0
  %197 = xor i1 %196, %194
  %.v = select i1 %197, i64 12, i64 49
  %198 = add i64 %.v, %161
  %199 = add i64 %162, -16
  %200 = add i64 %198, 4
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RAX, align 8, !tbaa !2428
  br i1 %197, label %block_40071e, label %block_400743
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0_frame_dummy(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4006d0:
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
  %13 = tail call %struct.Memory* @sub_400660_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_401420___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_401420:
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
  store i8 %51, i8* %43, align 1, !tbaa !2432
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %45, align 1, !tbaa !2432
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2432
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2432
  store i8 0, i8* %48, align 1, !tbaa !2432
  %63 = add i64 %38, -3803
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400560__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2433
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2447
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2448
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2451
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %.v, %69
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401476, label %block_401456

block_401476.loopexit:                            ; preds = %block_401460
  br label %block_401476

block_401476:                                     ; preds = %block_401476.loopexit, %block_401420
  %81 = phi i64 [ %80, %block_401420 ], [ %179, %block_401476.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401420 ], [ %149, %block_401476.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2433
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2447
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2451
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

block_401456:                                     ; preds = %block_401420
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2433
  store i8 1, i8* %44, align 1, !tbaa !2447
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2451
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401460

block_401460:                                     ; preds = %block_401460, %block_401456
  %134 = phi i64 [ 0, %block_401456 ], [ %152, %block_401460 ]
  %135 = phi i64 [ %133, %block_401456 ], [ %179, %block_401460 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401456 ], [ %149, %block_401460 ]
  %136 = load i64, i64* %R15, align 8
  store i64 %136, i64* %RDX, align 8, !tbaa !2428
  %137 = load i64, i64* %R14, align 8
  store i64 %137, i64* %RSI, align 8, !tbaa !2428
  %138 = load i32, i32* %R13D, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2428
  %140 = load i64, i64* %R12, align 8
  %141 = shl i64 %134, 3
  %142 = add i64 %140, %141
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
  store i8 %157, i8* %43, align 1, !tbaa !2433
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2447
  %164 = xor i64 %154, %152
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2451
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2448
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2449
  %173 = lshr i64 %154, 63
  %174 = xor i64 %173, %153
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2450
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %.v2, %151
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401476.loopexit, label %block_401460
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b50_kernel_reg_detect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400b50:
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
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
  %13 = add i64 %9, 16
  %14 = add i64 %12, 7
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %RAX, align 8, !tbaa !2428
  %17 = add i64 %9, 8
  %18 = add i64 %12, 11
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %R10, align 8, !tbaa !2428
  %21 = add i64 %9, -12
  %22 = load i32, i32* %EDI, align 4
  %23 = add i64 %12, 14
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI, align 4
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -12
  %33 = load i32, i32* %EDX, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -24
  %39 = load i64, i64* %RCX, align 8
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -32
  %45 = load i64, i64* %R8, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -40
  %51 = load i64, i64* %R9, align 8
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -48
  %57 = load i64, i64* %R10, align 8
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -56
  %63 = load i64, i64* %RAX, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -60
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b80

block_400dff:                                     ; preds = %block_400e10, %block_400df9
  %78 = phi i64 [ %1342, %block_400e10 ], [ %.pre47, %block_400df9 ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -64
  %81 = add i64 %78, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = add i64 %79, -8
  %86 = add i64 %78, 6
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %88, -1
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = lshr i32 %89, 31
  %92 = sub i32 %83, %89
  %93 = icmp ult i32 %83, %89
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %72, align 1, !tbaa !2433
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #10
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %73, align 1, !tbaa !2447
  %100 = xor i32 %89, %83
  %101 = xor i32 %100, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %74, align 1, !tbaa !2451
  %105 = icmp eq i32 %92, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %75, align 1, !tbaa !2448
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %76, align 1, !tbaa !2449
  %109 = lshr i32 %83, 31
  %110 = xor i32 %91, %109
  %111 = xor i32 %107, %109
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %77, align 1, !tbaa !2450
  %115 = icmp ne i8 %108, 0
  %116 = xor i1 %115, %113
  %.demorgan58 = or i1 %105, %116
  %.v59 = select i1 %.demorgan58, i64 17, i64 107
  %117 = add i64 %.v59, %78
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan58, label %block_400e10, label %block_400e6a

block_400e7d:                                     ; preds = %block_400de8
  %118 = add i64 %185, -60
  %119 = add i64 %223, 8
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, 1
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = icmp eq i32 %121, -1
  %125 = icmp eq i32 %122, 0
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %72, align 1, !tbaa !2433
  %128 = and i32 %122, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #10
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %73, align 1, !tbaa !2447
  %133 = xor i32 %122, %121
  %134 = lshr i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %74, align 1, !tbaa !2451
  %137 = zext i1 %125 to i8
  store i8 %137, i8* %75, align 1, !tbaa !2448
  %138 = lshr i32 %122, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %76, align 1, !tbaa !2449
  %140 = lshr i32 %121, 31
  %141 = xor i32 %138, %140
  %142 = add nuw nsw i32 %141, %138
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %77, align 1, !tbaa !2450
  %145 = add i64 %223, 14
  store i64 %145, i64* %PC, align 8
  store i32 %122, i32* %120, align 4
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, -779
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  br label %block_400b80

block_400df9:                                     ; preds = %block_400de8
  %148 = add i64 %223, 3
  store i64 %148, i64* %PC, align 8
  %149 = load i32, i32* %188, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX, align 8, !tbaa !2428
  %151 = add i64 %185, -64
  %152 = add i64 %223, 6
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 %149, i32* %153, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_400dff

block_400e6a:                                     ; preds = %block_400dff
  %154 = add i64 %79, -68
  %155 = add i64 %117, 8
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, 1
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RAX, align 8, !tbaa !2428
  %160 = icmp eq i32 %157, -1
  %161 = icmp eq i32 %158, 0
  %162 = or i1 %160, %161
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %72, align 1, !tbaa !2433
  %164 = and i32 %158, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #10
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %73, align 1, !tbaa !2447
  %169 = xor i32 %158, %157
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %74, align 1, !tbaa !2451
  %173 = zext i1 %161 to i8
  store i8 %173, i8* %75, align 1, !tbaa !2448
  %174 = lshr i32 %158, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %76, align 1, !tbaa !2449
  %176 = lshr i32 %157, 31
  %177 = xor i32 %174, %176
  %178 = add nuw nsw i32 %177, %174
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %77, align 1, !tbaa !2450
  %181 = add i64 %117, 14
  store i64 %181, i64* %PC, align 8
  store i32 %158, i32* %156, align 4
  %182 = load i64, i64* %PC, align 8
  %183 = add i64 %182, -144
  store i64 %183, i64* %PC, align 8, !tbaa !2428
  br label %block_400de8

block_400de8:                                     ; preds = %block_400de1, %block_400e6a
  %184 = phi i64 [ %.pre46, %block_400de1 ], [ %183, %block_400e6a ]
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -68
  %187 = add i64 %184, 3
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = add i64 %185, -8
  %192 = add i64 %184, 6
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %194, -1
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RCX, align 8, !tbaa !2428
  %197 = lshr i32 %195, 31
  %198 = sub i32 %189, %195
  %199 = icmp ult i32 %189, %195
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %72, align 1, !tbaa !2433
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #10
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %73, align 1, !tbaa !2447
  %206 = xor i32 %195, %189
  %207 = xor i32 %206, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %74, align 1, !tbaa !2451
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %75, align 1, !tbaa !2448
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %76, align 1, !tbaa !2449
  %215 = lshr i32 %189, 31
  %216 = xor i32 %197, %215
  %217 = xor i32 %213, %215
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %77, align 1, !tbaa !2450
  %221 = icmp ne i8 %214, 0
  %222 = xor i1 %221, %219
  %.demorgan57 = or i1 %211, %222
  %.v60 = select i1 %.demorgan57, i64 17, i64 149
  %223 = add i64 %.v60, %184
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan57, label %block_400df9, label %block_400e7d

block_400c59:                                     ; preds = %block_400c48
  %224 = add i64 %269, 3
  store i64 %224, i64* %PC, align 8
  %225 = load i32, i32* %234, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RAX, align 8, !tbaa !2428
  %227 = add i64 %231, -64
  %228 = add i64 %269, 6
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  store i32 %225, i32* %229, align 4
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_400c5f

block_400c48:                                     ; preds = %block_400d92, %block_400c41
  %230 = phi i64 [ %1372, %block_400d92 ], [ %.pre42, %block_400c41 ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -68
  %233 = add i64 %230, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = add i64 %231, -8
  %238 = add i64 %230, 6
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, -1
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RCX, align 8, !tbaa !2428
  %243 = lshr i32 %241, 31
  %244 = sub i32 %235, %241
  %245 = icmp ult i32 %235, %241
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %72, align 1, !tbaa !2433
  %247 = and i32 %244, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247) #10
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %73, align 1, !tbaa !2447
  %252 = xor i32 %241, %235
  %253 = xor i32 %252, %244
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %74, align 1, !tbaa !2451
  %257 = icmp eq i32 %244, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %75, align 1, !tbaa !2448
  %259 = lshr i32 %244, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %76, align 1, !tbaa !2449
  %261 = lshr i32 %235, 31
  %262 = xor i32 %243, %261
  %263 = xor i32 %259, %261
  %264 = add nuw nsw i32 %263, %262
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %77, align 1, !tbaa !2450
  %267 = icmp ne i8 %260, 0
  %268 = xor i1 %267, %265
  %.demorgan51 = or i1 %257, %268
  %.v63 = select i1 %.demorgan51, i64 17, i64 349
  %269 = add i64 %.v63, %230
  store i64 %269, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan51, label %block_400c59, label %block_400da5

block_400bd3:                                     ; preds = %block_400bc2
  %270 = add i64 %534, -24
  %271 = add i64 %572, 4
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i64*
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = add i64 %534, -68
  %275 = add i64 %572, 8
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = mul nsw i64 %278, 24
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = lshr i64 %279, 63
  %281 = add i64 %279, %273
  store i64 %281, i64* %RAX, align 8, !tbaa !2428
  %282 = icmp ult i64 %281, %273
  %283 = icmp ult i64 %281, %279
  %284 = or i1 %282, %283
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %72, align 1, !tbaa !2433
  %286 = trunc i64 %281 to i32
  %287 = and i32 %286, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287) #10
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %73, align 1, !tbaa !2447
  %292 = xor i64 %279, %273
  %293 = xor i64 %292, %281
  %294 = lshr i64 %293, 4
  %295 = trunc i64 %294 to i8
  %296 = and i8 %295, 1
  store i8 %296, i8* %74, align 1, !tbaa !2451
  %297 = icmp eq i64 %281, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %75, align 1, !tbaa !2448
  %299 = lshr i64 %281, 63
  %300 = trunc i64 %299 to i8
  store i8 %300, i8* %76, align 1, !tbaa !2449
  %301 = lshr i64 %273, 63
  %302 = xor i64 %299, %301
  %303 = xor i64 %299, %280
  %304 = add nuw nsw i64 %302, %303
  %305 = icmp eq i64 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %77, align 1, !tbaa !2450
  %307 = add i64 %534, -64
  %308 = add i64 %572, 19
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RCX, align 8, !tbaa !2428
  %312 = shl nsw i64 %311, 2
  %313 = add i64 %312, %281
  %314 = add i64 %572, 22
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RDX, align 8, !tbaa !2428
  %318 = add i64 %534, -48
  %319 = add i64 %572, 26
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = add i64 %572, 30
  store i64 %322, i64* %PC, align 8
  %323 = load i32, i32* %276, align 4
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %324, 1536
  store i64 %325, i64* %RCX, align 8, !tbaa !2428
  %326 = lshr i64 %325, 63
  %327 = add i64 %325, %321
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = icmp ult i64 %327, %321
  %329 = icmp ult i64 %327, %325
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %72, align 1, !tbaa !2433
  %332 = trunc i64 %327 to i32
  %333 = and i32 %332, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #10
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %73, align 1, !tbaa !2447
  %338 = xor i64 %327, %321
  %339 = lshr i64 %338, 4
  %340 = trunc i64 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %74, align 1, !tbaa !2451
  %342 = icmp eq i64 %327, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %75, align 1, !tbaa !2448
  %344 = lshr i64 %327, 63
  %345 = trunc i64 %344 to i8
  store i8 %345, i8* %76, align 1, !tbaa !2449
  %346 = lshr i64 %321, 63
  %347 = xor i64 %344, %346
  %348 = xor i64 %344, %326
  %349 = add nuw nsw i64 %347, %348
  %350 = icmp eq i64 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %77, align 1, !tbaa !2450
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -64
  %354 = add i64 %572, 44
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = shl nsw i64 %357, 8
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = add i64 %358, %327
  store i64 %359, i64* %RAX, align 8, !tbaa !2428
  %360 = icmp ult i64 %359, %327
  %361 = icmp ult i64 %359, %358
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %72, align 1, !tbaa !2433
  %364 = trunc i64 %359 to i32
  %365 = and i32 %364, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #10
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %73, align 1, !tbaa !2447
  %370 = xor i64 %359, %327
  %371 = lshr i64 %370, 4
  %372 = trunc i64 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %74, align 1, !tbaa !2451
  %374 = icmp eq i64 %359, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %75, align 1, !tbaa !2448
  %376 = lshr i64 %359, 63
  %377 = trunc i64 %376 to i8
  store i8 %377, i8* %76, align 1, !tbaa !2449
  %378 = lshr i64 %357, 55
  %379 = and i64 %378, 1
  %380 = xor i64 %376, %344
  %381 = xor i64 %376, %379
  %382 = add nuw nsw i64 %380, %381
  %383 = icmp eq i64 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %77, align 1, !tbaa !2450
  %385 = add i64 %352, -72
  %386 = add i64 %572, 55
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  store i64 %389, i64* %RCX, align 8, !tbaa !2428
  %390 = shl nsw i64 %389, 2
  %391 = add i64 %390, %359
  %392 = add i64 %572, 58
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  store i32 %316, i32* %393, align 4
  %394 = load i64, i64* %RBP, align 8
  %395 = add i64 %394, -72
  %396 = load i64, i64* %PC, align 8
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %395 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %399, 1
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RAX, align 8, !tbaa !2428
  %402 = icmp eq i32 %399, -1
  %403 = icmp eq i32 %400, 0
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %72, align 1, !tbaa !2433
  %406 = and i32 %400, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406) #10
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %73, align 1, !tbaa !2447
  %411 = xor i32 %400, %399
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %74, align 1, !tbaa !2451
  %415 = zext i1 %403 to i8
  store i8 %415, i8* %75, align 1, !tbaa !2448
  %416 = lshr i32 %400, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %76, align 1, !tbaa !2449
  %418 = lshr i32 %399, 31
  %419 = xor i32 %416, %418
  %420 = add nuw nsw i32 %419, %416
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %77, align 1, !tbaa !2450
  %423 = add i64 %396, 9
  store i64 %423, i64* %PC, align 8
  store i32 %400, i32* %398, align 4
  %424 = load i64, i64* %PC, align 8
  %425 = add i64 %424, -84
  store i64 %425, i64* %PC, align 8, !tbaa !2428
  br label %block_400bc2

block_400d45:                                     ; preds = %block_400cb5
  %426 = load i32, i32* %783, align 4
  %427 = add i32 %426, -1
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RDX, align 8, !tbaa !2428
  %429 = icmp eq i32 %426, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %72, align 1, !tbaa !2433
  %431 = and i32 %427, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431) #10
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %73, align 1, !tbaa !2447
  %436 = xor i32 %427, %426
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %74, align 1, !tbaa !2451
  %440 = icmp eq i32 %427, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %75, align 1, !tbaa !2448
  %442 = lshr i32 %427, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %76, align 1, !tbaa !2449
  %444 = lshr i32 %426, 31
  %445 = xor i32 %442, %444
  %446 = add nuw nsw i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %77, align 1, !tbaa !2450
  %449 = sext i32 %427 to i64
  store i64 %449, i64* %RCX, align 8, !tbaa !2428
  %450 = shl nsw i64 %449, 2
  %451 = add i64 %450, %856
  %452 = add i64 %813, 41
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RDX, align 8, !tbaa !2428
  %456 = add i64 %775, -32
  %457 = add i64 %813, 45
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RAX, align 8, !tbaa !2428
  %460 = add i64 %813, 49
  store i64 %460, i64* %PC, align 8
  %461 = load i32, i32* %820, align 4
  %462 = sext i32 %461 to i64
  %463 = mul nsw i64 %462, 24
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = lshr i64 %463, 63
  %465 = add i64 %463, %459
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = icmp ult i64 %465, %459
  %467 = icmp ult i64 %465, %463
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %72, align 1, !tbaa !2433
  %470 = trunc i64 %465 to i32
  %471 = and i32 %470, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #10
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %73, align 1, !tbaa !2447
  %476 = xor i64 %463, %459
  %477 = xor i64 %476, %465
  %478 = lshr i64 %477, 4
  %479 = trunc i64 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %74, align 1, !tbaa !2451
  %481 = icmp eq i64 %465, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %75, align 1, !tbaa !2448
  %483 = lshr i64 %465, 63
  %484 = trunc i64 %483 to i8
  store i8 %484, i8* %76, align 1, !tbaa !2449
  %485 = lshr i64 %459, 63
  %486 = xor i64 %483, %485
  %487 = xor i64 %483, %464
  %488 = add nuw nsw i64 %486, %487
  %489 = icmp eq i64 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %77, align 1, !tbaa !2450
  %491 = load i64, i64* %RBP, align 8
  %492 = add i64 %491, -64
  %493 = add i64 %813, 60
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %RCX, align 8, !tbaa !2428
  %497 = shl nsw i64 %496, 2
  %498 = add i64 %497, %465
  %499 = add i64 %813, 63
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 %454, i32* %500, align 4
  %501 = load i64, i64* %RBP, align 8
  %502 = add i64 %501, -64
  %503 = load i64, i64* %PC, align 8
  %504 = add i64 %503, 3
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %502 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = add i32 %506, 1
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RAX, align 8, !tbaa !2428
  %509 = icmp eq i32 %506, -1
  %510 = icmp eq i32 %507, 0
  %511 = or i1 %509, %510
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %72, align 1, !tbaa !2433
  %513 = and i32 %507, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513) #10
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %73, align 1, !tbaa !2447
  %518 = xor i32 %507, %506
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %74, align 1, !tbaa !2451
  %522 = zext i1 %510 to i8
  store i8 %522, i8* %75, align 1, !tbaa !2448
  %523 = lshr i32 %507, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %76, align 1, !tbaa !2449
  %525 = lshr i32 %506, 31
  %526 = xor i32 %523, %525
  %527 = add nuw nsw i32 %526, %523
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %77, align 1, !tbaa !2450
  %530 = add i64 %503, 9
  store i64 %530, i64* %PC, align 8
  store i32 %507, i32* %505, align 4
  %531 = load i64, i64* %PC, align 8
  %532 = add i64 %531, -302
  store i64 %532, i64* %PC, align 8, !tbaa !2428
  br label %block_400c5f

block_400bc2:                                     ; preds = %block_400bbb, %block_400bd3
  %533 = phi i64 [ %.pre41, %block_400bbb ], [ %425, %block_400bd3 ]
  %534 = load i64, i64* %RBP, align 8
  %535 = add i64 %534, -72
  %536 = add i64 %533, 3
  store i64 %536, i64* %PC, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RAX, align 8, !tbaa !2428
  %540 = add i64 %534, -12
  %541 = add i64 %533, 6
  store i64 %541, i64* %PC, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = add i32 %543, -1
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RCX, align 8, !tbaa !2428
  %546 = lshr i32 %544, 31
  %547 = sub i32 %538, %544
  %548 = icmp ult i32 %538, %544
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %72, align 1, !tbaa !2433
  %550 = and i32 %547, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550) #10
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %73, align 1, !tbaa !2447
  %555 = xor i32 %544, %538
  %556 = xor i32 %555, %547
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %74, align 1, !tbaa !2451
  %560 = icmp eq i32 %547, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %75, align 1, !tbaa !2448
  %562 = lshr i32 %547, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %76, align 1, !tbaa !2449
  %564 = lshr i32 %538, 31
  %565 = xor i32 %546, %564
  %566 = xor i32 %562, %564
  %567 = add nuw nsw i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %77, align 1, !tbaa !2450
  %570 = icmp ne i8 %563, 0
  %571 = xor i1 %570, %568
  %.demorgan49 = or i1 %560, %571
  %.v = select i1 %.demorgan49, i64 17, i64 89
  %572 = add i64 %.v, %533
  store i64 %572, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan49, label %block_400bd3, label %block_400c1b

block_400c41:                                     ; preds = %block_400b93
  %573 = add i64 %1123, 7
  store i64 %573, i64* %PC, align 8
  store i32 0, i32* %1088, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_400c48

block_400c70:                                     ; preds = %block_400c5f
  %574 = add i64 %914, -48
  %575 = add i64 %952, 4
  store i64 %575, i64* %PC, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %RAX, align 8, !tbaa !2428
  %578 = add i64 %914, -68
  %579 = add i64 %952, 8
  store i64 %579, i64* %PC, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  %583 = mul nsw i64 %582, 1536
  store i64 %583, i64* %RCX, align 8, !tbaa !2428
  %584 = lshr i64 %583, 63
  %585 = add i64 %583, %577
  store i64 %585, i64* %RAX, align 8, !tbaa !2428
  %586 = icmp ult i64 %585, %577
  %587 = icmp ult i64 %585, %583
  %588 = or i1 %586, %587
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %72, align 1, !tbaa !2433
  %590 = trunc i64 %585 to i32
  %591 = and i32 %590, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591) #10
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %73, align 1, !tbaa !2447
  %596 = xor i64 %585, %577
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %74, align 1, !tbaa !2451
  %600 = icmp eq i64 %585, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %75, align 1, !tbaa !2448
  %602 = lshr i64 %585, 63
  %603 = trunc i64 %602 to i8
  store i8 %603, i8* %76, align 1, !tbaa !2449
  %604 = lshr i64 %577, 63
  %605 = xor i64 %602, %604
  %606 = xor i64 %602, %584
  %607 = add nuw nsw i64 %605, %606
  %608 = icmp eq i64 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %77, align 1, !tbaa !2450
  %610 = add i64 %952, 22
  store i64 %610, i64* %PC, align 8
  %611 = load i32, i32* %917, align 4
  %612 = sext i32 %611 to i64
  %613 = shl nsw i64 %612, 8
  store i64 %613, i64* %RCX, align 8, !tbaa !2428
  %614 = add i64 %613, %585
  store i64 %614, i64* %RAX, align 8, !tbaa !2428
  %615 = icmp ult i64 %614, %585
  %616 = icmp ult i64 %614, %613
  %617 = or i1 %615, %616
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %72, align 1, !tbaa !2433
  %619 = trunc i64 %614 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620) #10
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %73, align 1, !tbaa !2447
  %625 = xor i64 %614, %585
  %626 = lshr i64 %625, 4
  %627 = trunc i64 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %74, align 1, !tbaa !2451
  %629 = icmp eq i64 %614, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %75, align 1, !tbaa !2448
  %631 = lshr i64 %614, 63
  %632 = trunc i64 %631 to i8
  store i8 %632, i8* %76, align 1, !tbaa !2449
  %633 = lshr i64 %612, 55
  %634 = and i64 %633, 1
  %635 = xor i64 %631, %602
  %636 = xor i64 %631, %634
  %637 = add nuw nsw i64 %635, %636
  %638 = icmp eq i64 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %77, align 1, !tbaa !2450
  %640 = inttoptr i64 %614 to i32*
  %641 = add i64 %952, 31
  store i64 %641, i64* %PC, align 8
  %642 = load i32, i32* %640, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX, align 8, !tbaa !2428
  %644 = add i64 %914, -56
  %645 = add i64 %952, 35
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = add i64 %952, 39
  store i64 %648, i64* %PC, align 8
  %649 = load i32, i32* %580, align 4
  %650 = sext i32 %649 to i64
  %651 = mul nsw i64 %650, 1536
  store i64 %651, i64* %RCX, align 8, !tbaa !2428
  %652 = lshr i64 %651, 63
  %653 = add i64 %651, %647
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = icmp ult i64 %653, %647
  %655 = icmp ult i64 %653, %651
  %656 = or i1 %654, %655
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %72, align 1, !tbaa !2433
  %658 = trunc i64 %653 to i32
  %659 = and i32 %658, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659) #10
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %73, align 1, !tbaa !2447
  %664 = xor i64 %653, %647
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %74, align 1, !tbaa !2451
  %668 = icmp eq i64 %653, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %75, align 1, !tbaa !2448
  %670 = lshr i64 %653, 63
  %671 = trunc i64 %670 to i8
  store i8 %671, i8* %76, align 1, !tbaa !2449
  %672 = lshr i64 %647, 63
  %673 = xor i64 %670, %672
  %674 = xor i64 %670, %652
  %675 = add nuw nsw i64 %673, %674
  %676 = icmp eq i64 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %77, align 1, !tbaa !2450
  %678 = add i64 %952, 53
  store i64 %678, i64* %PC, align 8
  %679 = load i32, i32* %917, align 4
  %680 = sext i32 %679 to i64
  %681 = shl nsw i64 %680, 8
  store i64 %681, i64* %RCX, align 8, !tbaa !2428
  %682 = add i64 %681, %653
  store i64 %682, i64* %RAX, align 8, !tbaa !2428
  %683 = icmp ult i64 %682, %653
  %684 = icmp ult i64 %682, %681
  %685 = or i1 %683, %684
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %72, align 1, !tbaa !2433
  %687 = trunc i64 %682 to i32
  %688 = and i32 %687, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688) #10
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %73, align 1, !tbaa !2447
  %693 = xor i64 %682, %653
  %694 = lshr i64 %693, 4
  %695 = trunc i64 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %74, align 1, !tbaa !2451
  %697 = icmp eq i64 %682, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %75, align 1, !tbaa !2448
  %699 = lshr i64 %682, 63
  %700 = trunc i64 %699 to i8
  store i8 %700, i8* %76, align 1, !tbaa !2449
  %701 = lshr i64 %680, 55
  %702 = and i64 %701, 1
  %703 = xor i64 %699, %670
  %704 = xor i64 %699, %702
  %705 = add nuw nsw i64 %703, %704
  %706 = icmp eq i64 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %77, align 1, !tbaa !2450
  %708 = inttoptr i64 %682 to i32*
  %709 = add i64 %952, 62
  store i64 %709, i64* %PC, align 8
  store i32 %642, i32* %708, align 4
  %710 = load i64, i64* %RBP, align 8
  %711 = add i64 %710, -72
  %712 = load i64, i64* %PC, align 8
  %713 = add i64 %712, 7
  store i64 %713, i64* %PC, align 8
  %714 = inttoptr i64 %711 to i32*
  store i32 1, i32* %714, align 4
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_400cb5

block_400dbd:                                     ; preds = %block_400dac
  %715 = add i64 %954, -32
  %716 = add i64 %992, 4
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RAX, align 8, !tbaa !2428
  %719 = add i64 %992, 8
  store i64 %719, i64* %PC, align 8
  %720 = load i32, i32* %957, align 4
  %721 = sext i32 %720 to i64
  store i64 %721, i64* %RCX, align 8, !tbaa !2428
  %722 = shl nsw i64 %721, 2
  %723 = add i64 %722, %718
  %724 = add i64 %992, 11
  store i64 %724, i64* %PC, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDX, align 8, !tbaa !2428
  %728 = add i64 %954, -40
  %729 = add i64 %992, 15
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RAX, align 8, !tbaa !2428
  %732 = add i64 %992, 19
  store i64 %732, i64* %PC, align 8
  %733 = load i32, i32* %957, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX, align 8, !tbaa !2428
  %735 = shl nsw i64 %734, 2
  %736 = add i64 %735, %731
  %737 = add i64 %992, 22
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %736 to i32*
  store i32 %726, i32* %738, align 4
  %739 = load i64, i64* %RBP, align 8
  %740 = add i64 %739, -64
  %741 = load i64, i64* %PC, align 8
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, 1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RAX, align 8, !tbaa !2428
  %747 = icmp eq i32 %744, -1
  %748 = icmp eq i32 %745, 0
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %72, align 1, !tbaa !2433
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751) #10
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %73, align 1, !tbaa !2447
  %756 = xor i32 %745, %744
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %74, align 1, !tbaa !2451
  %760 = zext i1 %748 to i8
  store i8 %760, i8* %75, align 1, !tbaa !2448
  %761 = lshr i32 %745, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %76, align 1, !tbaa !2449
  %763 = lshr i32 %744, 31
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %761
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %77, align 1, !tbaa !2450
  %768 = add i64 %741, 9
  store i64 %768, i64* %PC, align 8
  store i32 %745, i32* %743, align 4
  %769 = load i64, i64* %PC, align 8
  %770 = add i64 %769, -48
  store i64 %770, i64* %PC, align 8, !tbaa !2428
  br label %block_400dac

block_400bbb:                                     ; preds = %block_400baa
  %771 = add i64 %994, -72
  %772 = add i64 %1032, 7
  store i64 %772, i64* %PC, align 8
  %773 = inttoptr i64 %771 to i32*
  store i32 0, i32* %773, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400bc2

block_400cb5:                                     ; preds = %block_400cc6, %block_400c70
  %774 = phi i64 [ %1618, %block_400cc6 ], [ %.pre44, %block_400c70 ]
  %775 = load i64, i64* %RBP, align 8
  %776 = add i64 %775, -72
  %777 = add i64 %774, 3
  store i64 %777, i64* %PC, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX, align 8, !tbaa !2428
  %781 = add i64 %775, -12
  %782 = add i64 %774, 6
  store i64 %782, i64* %PC, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = add i32 %784, -1
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RCX, align 8, !tbaa !2428
  %787 = lshr i32 %785, 31
  %788 = sub i32 %779, %785
  %789 = icmp ult i32 %779, %785
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %72, align 1, !tbaa !2433
  %791 = and i32 %788, 255
  %792 = tail call i32 @llvm.ctpop.i32(i32 %791) #10
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, i8* %73, align 1, !tbaa !2447
  %796 = xor i32 %785, %779
  %797 = xor i32 %796, %788
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  store i8 %800, i8* %74, align 1, !tbaa !2451
  %801 = icmp eq i32 %788, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %75, align 1, !tbaa !2448
  %803 = lshr i32 %788, 31
  %804 = trunc i32 %803 to i8
  store i8 %804, i8* %76, align 1, !tbaa !2449
  %805 = lshr i32 %779, 31
  %806 = xor i32 %787, %805
  %807 = xor i32 %803, %805
  %808 = add nuw nsw i32 %807, %806
  %809 = icmp eq i32 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %77, align 1, !tbaa !2450
  %811 = icmp ne i8 %804, 0
  %812 = xor i1 %811, %809
  %.demorgan53 = or i1 %801, %812
  %.v54 = select i1 %.demorgan53, i64 17, i64 144
  %813 = add i64 %.v54, %774
  %814 = add i64 %775, -56
  %815 = add i64 %813, 4
  store i64 %815, i64* %PC, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RAX, align 8, !tbaa !2428
  %818 = add i64 %775, -68
  %819 = add i64 %813, 8
  store i64 %819, i64* %PC, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  %823 = mul nsw i64 %822, 1536
  store i64 %823, i64* %RCX, align 8, !tbaa !2428
  %824 = lshr i64 %823, 63
  %825 = add i64 %823, %817
  store i64 %825, i64* %RAX, align 8, !tbaa !2428
  %826 = icmp ult i64 %825, %817
  %827 = icmp ult i64 %825, %823
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %72, align 1, !tbaa !2433
  %830 = trunc i64 %825 to i32
  %831 = and i32 %830, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831) #10
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %73, align 1, !tbaa !2447
  %836 = xor i64 %825, %817
  %837 = lshr i64 %836, 4
  %838 = trunc i64 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %74, align 1, !tbaa !2451
  %840 = icmp eq i64 %825, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %75, align 1, !tbaa !2448
  %842 = lshr i64 %825, 63
  %843 = trunc i64 %842 to i8
  store i8 %843, i8* %76, align 1, !tbaa !2449
  %844 = lshr i64 %817, 63
  %845 = xor i64 %842, %844
  %846 = xor i64 %842, %824
  %847 = add nuw nsw i64 %845, %846
  %848 = icmp eq i64 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %77, align 1, !tbaa !2450
  %850 = add i64 %775, -64
  %851 = add i64 %813, 22
  store i64 %851, i64* %PC, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = sext i32 %853 to i64
  %855 = shl nsw i64 %854, 8
  store i64 %855, i64* %RCX, align 8, !tbaa !2428
  %856 = add i64 %855, %825
  store i64 %856, i64* %RAX, align 8, !tbaa !2428
  %857 = icmp ult i64 %856, %825
  %858 = icmp ult i64 %856, %855
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %72, align 1, !tbaa !2433
  %861 = trunc i64 %856 to i32
  %862 = and i32 %861, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862) #10
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %73, align 1, !tbaa !2447
  %867 = xor i64 %856, %825
  %868 = lshr i64 %867, 4
  %869 = trunc i64 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %74, align 1, !tbaa !2451
  %871 = icmp eq i64 %856, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %75, align 1, !tbaa !2448
  %873 = lshr i64 %856, 63
  %874 = trunc i64 %873 to i8
  store i8 %874, i8* %76, align 1, !tbaa !2449
  %875 = lshr i64 %854, 55
  %876 = and i64 %875, 1
  %877 = xor i64 %873, %842
  %878 = xor i64 %873, %876
  %879 = add nuw nsw i64 %877, %878
  %880 = icmp eq i64 %879, 2
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %77, align 1, !tbaa !2450
  %882 = add i64 %813, 32
  store i64 %882, i64* %PC, align 8
  br i1 %.demorgan53, label %block_400cc6, label %block_400d45

block_400c2e:                                     ; preds = %block_400baa
  %883 = add i64 %994, -68
  %884 = add i64 %1032, 8
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = add i32 %886, 1
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX, align 8, !tbaa !2428
  %889 = icmp eq i32 %886, -1
  %890 = icmp eq i32 %887, 0
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %72, align 1, !tbaa !2433
  %893 = and i32 %887, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893) #10
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %73, align 1, !tbaa !2447
  %898 = xor i32 %887, %886
  %899 = lshr i32 %898, 4
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %74, align 1, !tbaa !2451
  %902 = zext i1 %890 to i8
  store i8 %902, i8* %75, align 1, !tbaa !2448
  %903 = lshr i32 %887, 31
  %904 = trunc i32 %903 to i8
  store i8 %904, i8* %76, align 1, !tbaa !2449
  %905 = lshr i32 %886, 31
  %906 = xor i32 %903, %905
  %907 = add nuw nsw i32 %906, %903
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %77, align 1, !tbaa !2450
  %910 = add i64 %1032, 14
  store i64 %910, i64* %PC, align 8
  store i32 %887, i32* %885, align 4
  %911 = load i64, i64* %PC, align 8
  %912 = add i64 %911, -169
  store i64 %912, i64* %PC, align 8, !tbaa !2428
  br label %block_400b93

block_400c5f:                                     ; preds = %block_400d45, %block_400c59
  %913 = phi i64 [ %532, %block_400d45 ], [ %.pre43, %block_400c59 ]
  %914 = load i64, i64* %RBP, align 8
  %915 = add i64 %914, -64
  %916 = add i64 %913, 3
  store i64 %916, i64* %PC, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX, align 8, !tbaa !2428
  %920 = add i64 %914, -8
  %921 = add i64 %913, 6
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, -1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RCX, align 8, !tbaa !2428
  %926 = lshr i32 %924, 31
  %927 = sub i32 %918, %924
  %928 = icmp ult i32 %918, %924
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %72, align 1, !tbaa !2433
  %930 = and i32 %927, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930) #10
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %73, align 1, !tbaa !2447
  %935 = xor i32 %924, %918
  %936 = xor i32 %935, %927
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %74, align 1, !tbaa !2451
  %940 = icmp eq i32 %927, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %75, align 1, !tbaa !2448
  %942 = lshr i32 %927, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %76, align 1, !tbaa !2449
  %944 = lshr i32 %918, 31
  %945 = xor i32 %926, %944
  %946 = xor i32 %942, %944
  %947 = add nuw nsw i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %77, align 1, !tbaa !2450
  %950 = icmp ne i8 %943, 0
  %951 = xor i1 %950, %948
  %.demorgan52 = or i1 %940, %951
  %.v55 = select i1 %.demorgan52, i64 17, i64 307
  %952 = add i64 %.v55, %913
  store i64 %952, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan52, label %block_400c70, label %block_400d92

block_400dac:                                     ; preds = %block_400da5, %block_400dbd
  %953 = phi i64 [ %.pre45, %block_400da5 ], [ %770, %block_400dbd ]
  %954 = load i64, i64* %RBP, align 8
  %955 = add i64 %954, -64
  %956 = add i64 %953, 3
  store i64 %956, i64* %PC, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RAX, align 8, !tbaa !2428
  %960 = add i64 %954, -8
  %961 = add i64 %953, 6
  store i64 %961, i64* %PC, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = add i32 %963, -1
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RCX, align 8, !tbaa !2428
  %966 = lshr i32 %964, 31
  %967 = sub i32 %958, %964
  %968 = icmp ult i32 %958, %964
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %72, align 1, !tbaa !2433
  %970 = and i32 %967, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970) #10
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %73, align 1, !tbaa !2447
  %975 = xor i32 %964, %958
  %976 = xor i32 %975, %967
  %977 = lshr i32 %976, 4
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  store i8 %979, i8* %74, align 1, !tbaa !2451
  %980 = icmp eq i32 %967, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %75, align 1, !tbaa !2448
  %982 = lshr i32 %967, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %76, align 1, !tbaa !2449
  %984 = lshr i32 %958, 31
  %985 = xor i32 %966, %984
  %986 = xor i32 %982, %984
  %987 = add nuw nsw i32 %986, %985
  %988 = icmp eq i32 %987, 2
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %77, align 1, !tbaa !2450
  %990 = icmp ne i8 %983, 0
  %991 = xor i1 %990, %988
  %.demorgan56 = or i1 %980, %991
  %.v64 = select i1 %.demorgan56, i64 17, i64 53
  %992 = add i64 %.v64, %953
  store i64 %992, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan56, label %block_400dbd, label %block_400de1

block_400baa:                                     ; preds = %block_400c1b, %block_400ba4
  %993 = phi i64 [ %1080, %block_400c1b ], [ %.pre40, %block_400ba4 ]
  %994 = load i64, i64* %RBP, align 8
  %995 = add i64 %994, -64
  %996 = add i64 %993, 3
  store i64 %996, i64* %PC, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = add i64 %994, -8
  %1001 = add i64 %993, 6
  store i64 %1001, i64* %PC, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1003, -1
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RCX, align 8, !tbaa !2428
  %1006 = lshr i32 %1004, 31
  %1007 = sub i32 %998, %1004
  %1008 = icmp ult i32 %998, %1004
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %72, align 1, !tbaa !2433
  %1010 = and i32 %1007, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010) #10
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %73, align 1, !tbaa !2447
  %1015 = xor i32 %1004, %998
  %1016 = xor i32 %1015, %1007
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %74, align 1, !tbaa !2451
  %1020 = icmp eq i32 %1007, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %75, align 1, !tbaa !2448
  %1022 = lshr i32 %1007, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %76, align 1, !tbaa !2449
  %1024 = lshr i32 %998, 31
  %1025 = xor i32 %1006, %1024
  %1026 = xor i32 %1022, %1024
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %77, align 1, !tbaa !2450
  %1030 = icmp ne i8 %1023, 0
  %1031 = xor i1 %1030, %1028
  %.demorgan48 = or i1 %1020, %1031
  %.v50 = select i1 %.demorgan48, i64 17, i64 132
  %1032 = add i64 %.v50, %993
  store i64 %1032, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan48, label %block_400bbb, label %block_400c2e

block_400da5:                                     ; preds = %block_400c48
  %1033 = add i64 %231, -64
  %1034 = add i64 %269, 7
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 0, i32* %1035, align 4
  %.pre45 = load i64, i64* %PC, align 8
  br label %block_400dac

block_400ba4:                                     ; preds = %block_400b93
  %1036 = add i64 %1123, 3
  store i64 %1036, i64* %PC, align 8
  %1037 = load i32, i32* %1088, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX, align 8, !tbaa !2428
  %1039 = add i64 %1085, -64
  %1040 = add i64 %1123, 6
  store i64 %1040, i64* %PC, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 %1037, i32* %1041, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400baa

block_400e90:                                     ; preds = %block_400b80
  %1042 = add i64 %1656, 1
  store i64 %1042, i64* %PC, align 8
  %1043 = load i64, i64* %8, align 8, !tbaa !2428
  %1044 = add i64 %1043, 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RBP, align 8, !tbaa !2428
  store i64 %1044, i64* %8, align 8, !tbaa !2428
  %1047 = add i64 %1656, 2
  store i64 %1047, i64* %PC, align 8
  %1048 = inttoptr i64 %1044 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %PC, align 8, !tbaa !2428
  %1050 = add i64 %1043, 16
  store i64 %1050, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400c1b:                                     ; preds = %block_400bc2
  %1051 = add i64 %534, -64
  %1052 = add i64 %572, 8
  store i64 %1052, i64* %PC, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = add i32 %1054, 1
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RAX, align 8, !tbaa !2428
  %1057 = icmp eq i32 %1054, -1
  %1058 = icmp eq i32 %1055, 0
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %72, align 1, !tbaa !2433
  %1061 = and i32 %1055, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061) #10
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %73, align 1, !tbaa !2447
  %1066 = xor i32 %1055, %1054
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %74, align 1, !tbaa !2451
  %1070 = zext i1 %1058 to i8
  store i8 %1070, i8* %75, align 1, !tbaa !2448
  %1071 = lshr i32 %1055, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %76, align 1, !tbaa !2449
  %1073 = lshr i32 %1054, 31
  %1074 = xor i32 %1071, %1073
  %1075 = add nuw nsw i32 %1074, %1071
  %1076 = icmp eq i32 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %77, align 1, !tbaa !2450
  %1078 = add i64 %572, 14
  store i64 %1078, i64* %PC, align 8
  store i32 %1055, i32* %1053, align 4
  %1079 = load i64, i64* %PC, align 8
  %1080 = add i64 %1079, -127
  store i64 %1080, i64* %PC, align 8, !tbaa !2428
  br label %block_400baa

block_400de1:                                     ; preds = %block_400dac
  %1081 = add i64 %954, -68
  %1082 = add i64 %992, 7
  store i64 %1082, i64* %PC, align 8
  %1083 = inttoptr i64 %1081 to i32*
  store i32 1, i32* %1083, align 4
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_400de8

block_400b93:                                     ; preds = %block_400b8c, %block_400c2e
  %1084 = phi i64 [ %.pre39, %block_400b8c ], [ %912, %block_400c2e ]
  %1085 = load i64, i64* %RBP, align 8
  %1086 = add i64 %1085, -68
  %1087 = add i64 %1084, 3
  store i64 %1087, i64* %PC, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX, align 8, !tbaa !2428
  %1091 = add i64 %1085, -8
  %1092 = add i64 %1084, 6
  store i64 %1092, i64* %PC, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = add i32 %1094, -1
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RCX, align 8, !tbaa !2428
  %1097 = lshr i32 %1095, 31
  %1098 = sub i32 %1089, %1095
  %1099 = icmp ult i32 %1089, %1095
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %72, align 1, !tbaa !2433
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101) #10
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %73, align 1, !tbaa !2447
  %1106 = xor i32 %1095, %1089
  %1107 = xor i32 %1106, %1098
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %74, align 1, !tbaa !2451
  %1111 = icmp eq i32 %1098, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %75, align 1, !tbaa !2448
  %1113 = lshr i32 %1098, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %76, align 1, !tbaa !2449
  %1115 = lshr i32 %1089, 31
  %1116 = xor i32 %1097, %1115
  %1117 = xor i32 %1113, %1115
  %1118 = add nuw nsw i32 %1117, %1116
  %1119 = icmp eq i32 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %77, align 1, !tbaa !2450
  %1121 = icmp ne i8 %1114, 0
  %1122 = xor i1 %1121, %1119
  %.demorgan = or i1 %1111, %1122
  %.v62 = select i1 %.demorgan, i64 17, i64 174
  %1123 = add i64 %.v62, %1084
  store i64 %1123, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400ba4, label %block_400c41

block_400e10:                                     ; preds = %block_400dff
  %1124 = add i64 %79, -40
  %1125 = add i64 %117, 4
  store i64 %1125, i64* %PC, align 8
  %1126 = inttoptr i64 %1124 to i64*
  %1127 = load i64, i64* %1126, align 8
  store i64 %1127, i64* %RAX, align 8, !tbaa !2428
  %1128 = add i64 %79, -68
  %1129 = add i64 %117, 7
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = add i32 %1131, -1
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RCX, align 8, !tbaa !2428
  %1134 = sext i32 %1132 to i64
  %1135 = mul nsw i64 %1134, 24
  store i64 %1135, i64* %RDX, align 8, !tbaa !2428
  %1136 = lshr i64 %1135, 63
  %1137 = add i64 %1135, %1127
  store i64 %1137, i64* %RAX, align 8, !tbaa !2428
  %1138 = icmp ult i64 %1137, %1127
  %1139 = icmp ult i64 %1137, %1135
  %1140 = or i1 %1138, %1139
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %72, align 1, !tbaa !2433
  %1142 = trunc i64 %1137 to i32
  %1143 = and i32 %1142, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143) #10
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %73, align 1, !tbaa !2447
  %1148 = xor i64 %1135, %1127
  %1149 = xor i64 %1148, %1137
  %1150 = lshr i64 %1149, 4
  %1151 = trunc i64 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %74, align 1, !tbaa !2451
  %1153 = icmp eq i64 %1137, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %75, align 1, !tbaa !2448
  %1155 = lshr i64 %1137, 63
  %1156 = trunc i64 %1155 to i8
  store i8 %1156, i8* %76, align 1, !tbaa !2449
  %1157 = lshr i64 %1127, 63
  %1158 = xor i64 %1155, %1157
  %1159 = xor i64 %1155, %1136
  %1160 = add nuw nsw i64 %1158, %1159
  %1161 = icmp eq i64 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %77, align 1, !tbaa !2450
  %1163 = add i64 %117, 23
  store i64 %1163, i64* %PC, align 8
  %1164 = load i32, i32* %82, align 4
  %1165 = add i32 %1164, -1
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RCX, align 8, !tbaa !2428
  %1167 = icmp eq i32 %1164, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %72, align 1, !tbaa !2433
  %1169 = and i32 %1165, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169) #10
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %73, align 1, !tbaa !2447
  %1174 = xor i32 %1165, %1164
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %74, align 1, !tbaa !2451
  %1178 = icmp eq i32 %1165, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %75, align 1, !tbaa !2448
  %1180 = lshr i32 %1165, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %76, align 1, !tbaa !2449
  %1182 = lshr i32 %1164, 31
  %1183 = xor i32 %1180, %1182
  %1184 = add nuw nsw i32 %1183, %1182
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %77, align 1, !tbaa !2450
  %1187 = sext i32 %1165 to i64
  store i64 %1187, i64* %RDX, align 8, !tbaa !2428
  %1188 = shl nsw i64 %1187, 2
  %1189 = add i64 %1188, %1137
  %1190 = add i64 %117, 32
  store i64 %1190, i64* %PC, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RCX, align 8, !tbaa !2428
  %1194 = add i64 %79, -32
  %1195 = add i64 %117, 36
  store i64 %1195, i64* %PC, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RAX, align 8, !tbaa !2428
  %1198 = add i64 %117, 40
  store i64 %1198, i64* %PC, align 8
  %1199 = load i32, i32* %1130, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = mul nsw i64 %1200, 24
  store i64 %1201, i64* %RDX, align 8, !tbaa !2428
  %1202 = lshr i64 %1201, 63
  %1203 = add i64 %1201, %1197
  store i64 %1203, i64* %RAX, align 8, !tbaa !2428
  %1204 = icmp ult i64 %1203, %1197
  %1205 = icmp ult i64 %1203, %1201
  %1206 = or i1 %1204, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %72, align 1, !tbaa !2433
  %1208 = trunc i64 %1203 to i32
  %1209 = and i32 %1208, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209) #10
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %73, align 1, !tbaa !2447
  %1214 = xor i64 %1201, %1197
  %1215 = xor i64 %1214, %1203
  %1216 = lshr i64 %1215, 4
  %1217 = trunc i64 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %74, align 1, !tbaa !2451
  %1219 = icmp eq i64 %1203, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %75, align 1, !tbaa !2448
  %1221 = lshr i64 %1203, 63
  %1222 = trunc i64 %1221 to i8
  store i8 %1222, i8* %76, align 1, !tbaa !2449
  %1223 = lshr i64 %1197, 63
  %1224 = xor i64 %1221, %1223
  %1225 = xor i64 %1221, %1202
  %1226 = add nuw nsw i64 %1224, %1225
  %1227 = icmp eq i64 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %77, align 1, !tbaa !2450
  %1229 = load i64, i64* %RBP, align 8
  %1230 = add i64 %1229, -64
  %1231 = add i64 %117, 51
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RDX, align 8, !tbaa !2428
  %1235 = shl nsw i64 %1234, 2
  %1236 = add i64 %1235, %1203
  %1237 = add i64 %117, 54
  store i64 %1237, i64* %PC, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = add i32 %1239, %1192
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RCX, align 8, !tbaa !2428
  %1242 = icmp ult i32 %1240, %1192
  %1243 = icmp ult i32 %1240, %1239
  %1244 = or i1 %1242, %1243
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %72, align 1, !tbaa !2433
  %1246 = and i32 %1240, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246) #10
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %73, align 1, !tbaa !2447
  %1251 = xor i32 %1239, %1192
  %1252 = xor i32 %1251, %1240
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %74, align 1, !tbaa !2451
  %1256 = icmp eq i32 %1240, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %75, align 1, !tbaa !2448
  %1258 = lshr i32 %1240, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %76, align 1, !tbaa !2449
  %1260 = lshr i32 %1192, 31
  %1261 = lshr i32 %1239, 31
  %1262 = xor i32 %1258, %1260
  %1263 = xor i32 %1258, %1261
  %1264 = add nuw nsw i32 %1262, %1263
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %77, align 1, !tbaa !2450
  %1267 = add i64 %1229, -40
  %1268 = add i64 %117, 58
  store i64 %1268, i64* %PC, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RAX, align 8, !tbaa !2428
  %1271 = add i64 %1229, -68
  %1272 = add i64 %117, 62
  store i64 %1272, i64* %PC, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = sext i32 %1274 to i64
  %1276 = mul nsw i64 %1275, 24
  store i64 %1276, i64* %RDX, align 8, !tbaa !2428
  %1277 = lshr i64 %1276, 63
  %1278 = add i64 %1276, %1270
  store i64 %1278, i64* %RAX, align 8, !tbaa !2428
  %1279 = icmp ult i64 %1278, %1270
  %1280 = icmp ult i64 %1278, %1276
  %1281 = or i1 %1279, %1280
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %72, align 1, !tbaa !2433
  %1283 = trunc i64 %1278 to i32
  %1284 = and i32 %1283, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284) #10
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %73, align 1, !tbaa !2447
  %1289 = xor i64 %1276, %1270
  %1290 = xor i64 %1289, %1278
  %1291 = lshr i64 %1290, 4
  %1292 = trunc i64 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %74, align 1, !tbaa !2451
  %1294 = icmp eq i64 %1278, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %75, align 1, !tbaa !2448
  %1296 = lshr i64 %1278, 63
  %1297 = trunc i64 %1296 to i8
  store i8 %1297, i8* %76, align 1, !tbaa !2449
  %1298 = lshr i64 %1270, 63
  %1299 = xor i64 %1296, %1298
  %1300 = xor i64 %1296, %1277
  %1301 = add nuw nsw i64 %1299, %1300
  %1302 = icmp eq i64 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %77, align 1, !tbaa !2450
  %1304 = add i64 %117, 73
  store i64 %1304, i64* %PC, align 8
  %1305 = load i32, i32* %1232, align 4
  %1306 = sext i32 %1305 to i64
  store i64 %1306, i64* %RDX, align 8, !tbaa !2428
  %1307 = shl nsw i64 %1306, 2
  %1308 = add i64 %1307, %1278
  %1309 = add i64 %117, 76
  store i64 %1309, i64* %PC, align 8
  %1310 = inttoptr i64 %1308 to i32*
  store i32 %1240, i32* %1310, align 4
  %1311 = load i64, i64* %RBP, align 8
  %1312 = add i64 %1311, -64
  %1313 = load i64, i64* %PC, align 8
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1312 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = add i32 %1316, 1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX, align 8, !tbaa !2428
  %1319 = icmp eq i32 %1316, -1
  %1320 = icmp eq i32 %1317, 0
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %72, align 1, !tbaa !2433
  %1323 = and i32 %1317, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323) #10
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %73, align 1, !tbaa !2447
  %1328 = xor i32 %1317, %1316
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %74, align 1, !tbaa !2451
  %1332 = zext i1 %1320 to i8
  store i8 %1332, i8* %75, align 1, !tbaa !2448
  %1333 = lshr i32 %1317, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %76, align 1, !tbaa !2449
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1333, %1335
  %1337 = add nuw nsw i32 %1336, %1333
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %77, align 1, !tbaa !2450
  %1340 = add i64 %1313, 9
  store i64 %1340, i64* %PC, align 8
  store i32 %1317, i32* %1315, align 4
  %1341 = load i64, i64* %PC, align 8
  %1342 = add i64 %1341, -102
  store i64 %1342, i64* %PC, align 8, !tbaa !2428
  br label %block_400dff

block_400d92:                                     ; preds = %block_400c5f
  %1343 = add i64 %914, -68
  %1344 = add i64 %952, 8
  store i64 %1344, i64* %PC, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, 1
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX, align 8, !tbaa !2428
  %1349 = icmp eq i32 %1346, -1
  %1350 = icmp eq i32 %1347, 0
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %72, align 1, !tbaa !2433
  %1353 = and i32 %1347, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353) #10
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %73, align 1, !tbaa !2447
  %1358 = xor i32 %1347, %1346
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %74, align 1, !tbaa !2451
  %1362 = zext i1 %1350 to i8
  store i8 %1362, i8* %75, align 1, !tbaa !2448
  %1363 = lshr i32 %1347, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %76, align 1, !tbaa !2449
  %1365 = lshr i32 %1346, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1363
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %77, align 1, !tbaa !2450
  %1370 = add i64 %952, 14
  store i64 %1370, i64* %PC, align 8
  store i32 %1347, i32* %1345, align 4
  %1371 = load i64, i64* %PC, align 8
  %1372 = add i64 %1371, -344
  store i64 %1372, i64* %PC, align 8, !tbaa !2428
  br label %block_400c48

block_400b8c:                                     ; preds = %block_400b80
  %1373 = add i64 %1620, -68
  %1374 = add i64 %1656, 7
  store i64 %1374, i64* %PC, align 8
  %1375 = inttoptr i64 %1373 to i32*
  store i32 0, i32* %1375, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400b93

block_400cc6:                                     ; preds = %block_400cb5
  %1376 = load i32, i32* %778, align 4
  %1377 = add i32 %1376, -1
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RDX, align 8, !tbaa !2428
  %1379 = icmp eq i32 %1376, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %72, align 1, !tbaa !2433
  %1381 = and i32 %1377, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381) #10
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %73, align 1, !tbaa !2447
  %1386 = xor i32 %1377, %1376
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %74, align 1, !tbaa !2451
  %1390 = icmp eq i32 %1377, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %75, align 1, !tbaa !2448
  %1392 = lshr i32 %1377, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %76, align 1, !tbaa !2449
  %1394 = lshr i32 %1376, 31
  %1395 = xor i32 %1392, %1394
  %1396 = add nuw nsw i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %77, align 1, !tbaa !2450
  %1399 = sext i32 %1377 to i64
  store i64 %1399, i64* %RCX, align 8, !tbaa !2428
  %1400 = shl nsw i64 %1399, 2
  %1401 = add i64 %1400, %856
  %1402 = add i64 %813, 41
  store i64 %1402, i64* %PC, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RDX, align 8, !tbaa !2428
  %1406 = add i64 %775, -48
  %1407 = add i64 %813, 45
  store i64 %1407, i64* %PC, align 8
  %1408 = inttoptr i64 %1406 to i64*
  %1409 = load i64, i64* %1408, align 8
  store i64 %1409, i64* %RAX, align 8, !tbaa !2428
  %1410 = add i64 %813, 49
  store i64 %1410, i64* %PC, align 8
  %1411 = load i32, i32* %820, align 4
  %1412 = sext i32 %1411 to i64
  %1413 = mul nsw i64 %1412, 1536
  store i64 %1413, i64* %RCX, align 8, !tbaa !2428
  %1414 = lshr i64 %1413, 63
  %1415 = add i64 %1413, %1409
  store i64 %1415, i64* %RAX, align 8, !tbaa !2428
  %1416 = icmp ult i64 %1415, %1409
  %1417 = icmp ult i64 %1415, %1413
  %1418 = or i1 %1416, %1417
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %72, align 1, !tbaa !2433
  %1420 = trunc i64 %1415 to i32
  %1421 = and i32 %1420, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421) #10
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %73, align 1, !tbaa !2447
  %1426 = xor i64 %1415, %1409
  %1427 = lshr i64 %1426, 4
  %1428 = trunc i64 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %74, align 1, !tbaa !2451
  %1430 = icmp eq i64 %1415, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %75, align 1, !tbaa !2448
  %1432 = lshr i64 %1415, 63
  %1433 = trunc i64 %1432 to i8
  store i8 %1433, i8* %76, align 1, !tbaa !2449
  %1434 = lshr i64 %1409, 63
  %1435 = xor i64 %1432, %1434
  %1436 = xor i64 %1432, %1414
  %1437 = add nuw nsw i64 %1435, %1436
  %1438 = icmp eq i64 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %77, align 1, !tbaa !2450
  %1440 = load i64, i64* %RBP, align 8
  %1441 = add i64 %1440, -64
  %1442 = add i64 %813, 63
  store i64 %1442, i64* %PC, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = shl nsw i64 %1445, 8
  store i64 %1446, i64* %RCX, align 8, !tbaa !2428
  %1447 = add i64 %1446, %1415
  store i64 %1447, i64* %RAX, align 8, !tbaa !2428
  %1448 = icmp ult i64 %1447, %1415
  %1449 = icmp ult i64 %1447, %1446
  %1450 = or i1 %1448, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %72, align 1, !tbaa !2433
  %1452 = trunc i64 %1447 to i32
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453) #10
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %73, align 1, !tbaa !2447
  %1458 = xor i64 %1447, %1415
  %1459 = lshr i64 %1458, 4
  %1460 = trunc i64 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %74, align 1, !tbaa !2451
  %1462 = icmp eq i64 %1447, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %75, align 1, !tbaa !2448
  %1464 = lshr i64 %1447, 63
  %1465 = trunc i64 %1464 to i8
  store i8 %1465, i8* %76, align 1, !tbaa !2449
  %1466 = lshr i64 %1445, 55
  %1467 = and i64 %1466, 1
  %1468 = xor i64 %1464, %1432
  %1469 = xor i64 %1464, %1467
  %1470 = add nuw nsw i64 %1468, %1469
  %1471 = icmp eq i64 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %77, align 1, !tbaa !2450
  %1473 = add i64 %1440, -72
  %1474 = add i64 %813, 74
  store i64 %1474, i64* %PC, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = sext i32 %1476 to i64
  store i64 %1477, i64* %RCX, align 8, !tbaa !2428
  %1478 = shl nsw i64 %1477, 2
  %1479 = add i64 %1478, %1447
  %1480 = add i64 %813, 77
  store i64 %1480, i64* %PC, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, %1404
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RDX, align 8, !tbaa !2428
  %1485 = icmp ult i32 %1483, %1404
  %1486 = icmp ult i32 %1483, %1482
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %72, align 1, !tbaa !2433
  %1489 = and i32 %1483, 255
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489) #10
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %73, align 1, !tbaa !2447
  %1494 = xor i32 %1482, %1404
  %1495 = xor i32 %1494, %1483
  %1496 = lshr i32 %1495, 4
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  store i8 %1498, i8* %74, align 1, !tbaa !2451
  %1499 = icmp eq i32 %1483, 0
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %75, align 1, !tbaa !2448
  %1501 = lshr i32 %1483, 31
  %1502 = trunc i32 %1501 to i8
  store i8 %1502, i8* %76, align 1, !tbaa !2449
  %1503 = lshr i32 %1404, 31
  %1504 = lshr i32 %1482, 31
  %1505 = xor i32 %1501, %1503
  %1506 = xor i32 %1501, %1504
  %1507 = add nuw nsw i32 %1505, %1506
  %1508 = icmp eq i32 %1507, 2
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %77, align 1, !tbaa !2450
  %1510 = add i64 %1440, -56
  %1511 = add i64 %813, 81
  store i64 %1511, i64* %PC, align 8
  %1512 = inttoptr i64 %1510 to i64*
  %1513 = load i64, i64* %1512, align 8
  store i64 %1513, i64* %RAX, align 8, !tbaa !2428
  %1514 = add i64 %1440, -68
  %1515 = add i64 %813, 85
  store i64 %1515, i64* %PC, align 8
  %1516 = inttoptr i64 %1514 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = sext i32 %1517 to i64
  %1519 = mul nsw i64 %1518, 1536
  store i64 %1519, i64* %RCX, align 8, !tbaa !2428
  %1520 = lshr i64 %1519, 63
  %1521 = add i64 %1519, %1513
  store i64 %1521, i64* %RAX, align 8, !tbaa !2428
  %1522 = icmp ult i64 %1521, %1513
  %1523 = icmp ult i64 %1521, %1519
  %1524 = or i1 %1522, %1523
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %72, align 1, !tbaa !2433
  %1526 = trunc i64 %1521 to i32
  %1527 = and i32 %1526, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #10
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %73, align 1, !tbaa !2447
  %1532 = xor i64 %1521, %1513
  %1533 = lshr i64 %1532, 4
  %1534 = trunc i64 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %74, align 1, !tbaa !2451
  %1536 = icmp eq i64 %1521, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %75, align 1, !tbaa !2448
  %1538 = lshr i64 %1521, 63
  %1539 = trunc i64 %1538 to i8
  store i8 %1539, i8* %76, align 1, !tbaa !2449
  %1540 = lshr i64 %1513, 63
  %1541 = xor i64 %1538, %1540
  %1542 = xor i64 %1538, %1520
  %1543 = add nuw nsw i64 %1541, %1542
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %77, align 1, !tbaa !2450
  %1546 = add i64 %813, 99
  store i64 %1546, i64* %PC, align 8
  %1547 = load i32, i32* %1443, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = shl nsw i64 %1548, 8
  store i64 %1549, i64* %RCX, align 8, !tbaa !2428
  %1550 = add i64 %1549, %1521
  store i64 %1550, i64* %RAX, align 8, !tbaa !2428
  %1551 = icmp ult i64 %1550, %1521
  %1552 = icmp ult i64 %1550, %1549
  %1553 = or i1 %1551, %1552
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %72, align 1, !tbaa !2433
  %1555 = trunc i64 %1550 to i32
  %1556 = and i32 %1555, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556) #10
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %73, align 1, !tbaa !2447
  %1561 = xor i64 %1550, %1521
  %1562 = lshr i64 %1561, 4
  %1563 = trunc i64 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %74, align 1, !tbaa !2451
  %1565 = icmp eq i64 %1550, 0
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %75, align 1, !tbaa !2448
  %1567 = lshr i64 %1550, 63
  %1568 = trunc i64 %1567 to i8
  store i8 %1568, i8* %76, align 1, !tbaa !2449
  %1569 = lshr i64 %1548, 55
  %1570 = and i64 %1569, 1
  %1571 = xor i64 %1567, %1538
  %1572 = xor i64 %1567, %1570
  %1573 = add nuw nsw i64 %1571, %1572
  %1574 = icmp eq i64 %1573, 2
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %77, align 1, !tbaa !2450
  %1576 = load i64, i64* %RBP, align 8
  %1577 = add i64 %1576, -72
  %1578 = add i64 %813, 110
  store i64 %1578, i64* %PC, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = sext i32 %1580 to i64
  store i64 %1581, i64* %RCX, align 8, !tbaa !2428
  %1582 = shl nsw i64 %1581, 2
  %1583 = add i64 %1582, %1550
  %1584 = load i32, i32* %EDX, align 4
  %1585 = add i64 %813, 113
  store i64 %1585, i64* %PC, align 8
  %1586 = inttoptr i64 %1583 to i32*
  store i32 %1584, i32* %1586, align 4
  %1587 = load i64, i64* %RBP, align 8
  %1588 = add i64 %1587, -72
  %1589 = load i64, i64* %PC, align 8
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC, align 8
  %1591 = inttoptr i64 %1588 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, 1
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RAX, align 8, !tbaa !2428
  %1595 = icmp eq i32 %1592, -1
  %1596 = icmp eq i32 %1593, 0
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %72, align 1, !tbaa !2433
  %1599 = and i32 %1593, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599) #10
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %73, align 1, !tbaa !2447
  %1604 = xor i32 %1593, %1592
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %74, align 1, !tbaa !2451
  %1608 = zext i1 %1596 to i8
  store i8 %1608, i8* %75, align 1, !tbaa !2448
  %1609 = lshr i32 %1593, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %76, align 1, !tbaa !2449
  %1611 = lshr i32 %1592, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1609
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %77, align 1, !tbaa !2450
  %1616 = add i64 %1589, 9
  store i64 %1616, i64* %PC, align 8
  store i32 %1593, i32* %1591, align 4
  %1617 = load i64, i64* %PC, align 8
  %1618 = add i64 %1617, -139
  store i64 %1618, i64* %PC, align 8, !tbaa !2428
  br label %block_400cb5

block_400b80:                                     ; preds = %block_400e7d, %block_400b50
  %1619 = phi i64 [ %147, %block_400e7d ], [ %.pre, %block_400b50 ]
  %1620 = load i64, i64* %RBP, align 8
  %1621 = add i64 %1620, -60
  %1622 = add i64 %1619, 3
  store i64 %1622, i64* %PC, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX, align 8, !tbaa !2428
  %1626 = add i64 %1620, -4
  %1627 = add i64 %1619, 6
  store i64 %1627, i64* %PC, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sub i32 %1624, %1629
  %1631 = icmp ult i32 %1624, %1629
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %72, align 1, !tbaa !2433
  %1633 = and i32 %1630, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633) #10
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %73, align 1, !tbaa !2447
  %1638 = xor i32 %1629, %1624
  %1639 = xor i32 %1638, %1630
  %1640 = lshr i32 %1639, 4
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  store i8 %1642, i8* %74, align 1, !tbaa !2451
  %1643 = icmp eq i32 %1630, 0
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %75, align 1, !tbaa !2448
  %1645 = lshr i32 %1630, 31
  %1646 = trunc i32 %1645 to i8
  store i8 %1646, i8* %76, align 1, !tbaa !2449
  %1647 = lshr i32 %1624, 31
  %1648 = lshr i32 %1629, 31
  %1649 = xor i32 %1648, %1647
  %1650 = xor i32 %1645, %1647
  %1651 = add nuw nsw i32 %1650, %1649
  %1652 = icmp eq i32 %1651, 2
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %77, align 1, !tbaa !2450
  %1654 = icmp ne i8 %1646, 0
  %1655 = xor i1 %1654, %1652
  %.v61 = select i1 %1655, i64 12, i64 784
  %1656 = add i64 %.v61, %1619
  store i64 %1656, i64* %PC, align 8, !tbaa !2428
  br i1 %1655, label %block_400b8c, label %block_400e90
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007a0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4007a0:
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
  %14 = tail call %struct.Memory* @sub_400790_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400840_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400840:
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
  store i8 %12, i8* %13, align 1, !tbaa !2433
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2451
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
  %60 = tail call fastcc %struct.Memory* @ext_602108_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
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
  store i8 0, i8* %13, align 1, !tbaa !2433
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %79 = icmp eq i64 %72, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %28, align 1, !tbaa !2448
  %81 = lshr i64 %72, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v = select i1 %79, i64 21, i64 11
  %83 = add i64 %.v, %69
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br i1 %79, label %block_400883, label %block_400879

block_400883:                                     ; preds = %block_400879, %block_400840
  %84 = phi i64 [ %120, %block_400879 ], [ %83, %block_400840 ]
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 32
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %86 = add i64 %84, -707
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_4005c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
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
  %104 = tail call fastcc %struct.Memory* @ext_6020c8_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_400879:                                     ; preds = %block_400840
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2433
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #10
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
  %116 = icmp eq i32 %110, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2448
  %118 = lshr i32 %110, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2449
  store i8 0, i8* %37, align 1, !tbaa !2450
  %.v2 = select i1 %116, i64 48, i64 10
  %120 = add i64 %.v2, %83
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_4008a9, label %block_400883

block_4008a9:                                     ; preds = %block_400879
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC, align 8
  %122 = load i64, i64* %71, align 8
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = load i64, i64* %RSP, align 8
  %124 = add i64 %123, 32
  store i64 %124, i64* %RSP, align 8, !tbaa !2428
  %125 = icmp ugt i64 %123, -33
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %13, align 1, !tbaa !2433
  %127 = trunc i64 %124 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #10
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2447
  %133 = xor i64 %124, %123
  %134 = lshr i64 %133, 4
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %25, align 1, !tbaa !2451
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
define %struct.Memory* @sub_4007c0_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007c0:
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
  store i8 %13, i8* %14, align 1, !tbaa !2433
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2447
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2451
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
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2453
  store i64 0, i64* %42, align 1, !tbaa !2453
  store i8 1, i8* %AL, align 1, !tbaa !2432
  %45 = add i64 %10, -545
  %46 = add i64 %10, 42
  %47 = add i64 %7, -32
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_6020e0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  store i8 %60, i8* %14, align 1, !tbaa !2433
  %61 = trunc i64 %58 to i32
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #10
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1, !tbaa !2447
  %67 = xor i64 %56, 16
  %68 = xor i64 %67, %58
  %69 = lshr i64 %68, 4
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1, !tbaa !2451
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
define %struct.Memory* @sub_4005f0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005f0:
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
  store i8 0, i8* %3, align 1, !tbaa !2433
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2447
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2448
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2449
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2450
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2451
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
  store i8 0, i8* %3, align 1, !tbaa !2433
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2447
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2448
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2451
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
  store i64 ptrtoint (void ()* @callback_sub_401490___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401420___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline
define %struct.Memory* @sub_400770_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400770:
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
  %14 = tail call %struct.Memory* @sub_400760_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_400790_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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
define %struct.Memory* @sub_4006a0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4006a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2433
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2447
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2451
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
  br i1 %12, label %block_4006a9, label %block_4006c0

block_4006c0:                                     ; preds = %block_4006a0
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

block_4006a9:                                     ; preds = %block_4006a0
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
  %36 = tail call %struct.Memory* @sub_400630_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
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
define %struct.Memory* @sub_401494__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401494:
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
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2433
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2447
  store i8 %10, i8* %11, align 1, !tbaa !2451
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
define %struct.Memory* @sub_400a80_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a80:
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
  %12 = add i64 %8, -12
  %13 = load i32, i32* %EDI, align 4
  %14 = add i64 %11, 6
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %RBP, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI, align 8
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX, align 8
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -32
  %30 = load i64, i64* %RCX, align 8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -36
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %35 to i32*
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a9a

block_400a9a:                                     ; preds = %block_400b32, %block_400a80
  %45 = phi i64 [ %.pre, %block_400a80 ], [ %435, %block_400b32 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a80 ], [ %MEMORY.1, %block_400b32 ]
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -36
  %48 = add i64 %45, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RAX, align 8, !tbaa !2428
  %52 = add i64 %46, -4
  %53 = add i64 %45, 6
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %50, %55
  %57 = icmp ult i32 %50, %55
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %39, align 1, !tbaa !2433
  %59 = and i32 %56, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #10
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %40, align 1, !tbaa !2447
  %64 = xor i32 %55, %50
  %65 = xor i32 %64, %56
  %66 = lshr i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %41, align 1, !tbaa !2451
  %69 = icmp eq i32 %56, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %42, align 1, !tbaa !2448
  %71 = lshr i32 %56, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %43, align 1, !tbaa !2449
  %73 = lshr i32 %50, 31
  %74 = lshr i32 %55, 31
  %75 = xor i32 %74, %73
  %76 = xor i32 %71, %73
  %77 = add nuw nsw i32 %76, %75
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %44, align 1, !tbaa !2450
  %80 = icmp ne i8 %72, 0
  %81 = xor i1 %80, %78
  %.v11 = select i1 %81, i64 12, i64 171
  %82 = add i64 %.v11, %45
  store i64 %82, i64* %PC, align 8, !tbaa !2428
  br i1 %81, label %block_400aa6, label %block_400b45

block_400ab9:                                     ; preds = %block_400aad
  %83 = add i64 %473, 3
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %474 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX, align 8, !tbaa !2428
  %88 = icmp eq i32 %85, -1
  %89 = icmp eq i32 %86, 0
  %90 = or i1 %88, %89
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %39, align 1, !tbaa !2433
  %92 = and i32 %86, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #10
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %40, align 1, !tbaa !2447
  %97 = xor i32 %86, %85
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %41, align 1, !tbaa !2451
  %101 = zext i1 %89 to i8
  store i8 %101, i8* %42, align 1, !tbaa !2448
  %102 = lshr i32 %86, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %43, align 1, !tbaa !2449
  %104 = lshr i32 %85, 31
  %105 = xor i32 %102, %104
  %106 = add nuw nsw i32 %105, %102
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %44, align 1, !tbaa !2450
  %109 = add i64 %473, 9
  store i64 %109, i64* %PC, align 8
  %110 = load i32, i32* %440, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RCX, align 8, !tbaa !2428
  %113 = sext i32 %86 to i64
  %114 = sext i32 %111 to i64
  %115 = mul nsw i64 %114, %113
  %116 = trunc i64 %115 to i32
  %117 = and i64 %115, 4294967295
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = shl i64 %115, 32
  %119 = ashr exact i64 %118, 32
  %120 = icmp ne i64 %119, %115
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %39, align 1, !tbaa !2433
  %122 = and i32 %116, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #10
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %40, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %42, align 1, !tbaa !2448
  %127 = lshr i32 %116, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %43, align 1, !tbaa !2449
  store i8 %121, i8* %44, align 1, !tbaa !2450
  %129 = add i64 %437, -16
  %130 = add i64 %473, 19
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RDX, align 8, !tbaa !2428
  %133 = add i64 %473, 23
  store i64 %133, i64* %PC, align 8
  %134 = load i32, i32* %84, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 24
  store i64 %136, i64* %RSI, align 8, !tbaa !2428
  %137 = lshr i64 %136, 63
  %138 = add i64 %136, %132
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = icmp ult i64 %138, %132
  %140 = icmp ult i64 %138, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %39, align 1, !tbaa !2433
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #10
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %40, align 1, !tbaa !2447
  %149 = xor i64 %136, %132
  %150 = xor i64 %149, %138
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %41, align 1, !tbaa !2451
  %154 = icmp eq i64 %138, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %42, align 1, !tbaa !2448
  %156 = lshr i64 %138, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %43, align 1, !tbaa !2449
  %158 = lshr i64 %132, 63
  %159 = xor i64 %156, %158
  %160 = xor i64 %156, %137
  %161 = add nuw nsw i64 %159, %160
  %162 = icmp eq i64 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %44, align 1, !tbaa !2450
  %164 = add i64 %473, 34
  store i64 %164, i64* %PC, align 8
  %165 = load i32, i32* %440, align 4
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %RSI, align 8, !tbaa !2428
  %167 = shl nsw i64 %166, 2
  %168 = add i64 %167, %138
  %169 = add i64 %473, 37
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  store i32 %116, i32* %170, align 4
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -36
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = add i64 %171, -40
  %179 = add i64 %173, 6
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = sub i32 %176, %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = icmp ult i32 %176, %181
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %39, align 1, !tbaa !2433
  %186 = and i32 %182, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #10
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %40, align 1, !tbaa !2447
  %191 = xor i32 %181, %176
  %192 = xor i32 %191, %182
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %41, align 1, !tbaa !2451
  %196 = icmp eq i32 %182, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %42, align 1, !tbaa !2448
  %198 = lshr i32 %182, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %43, align 1, !tbaa !2449
  %200 = lshr i32 %176, 31
  %201 = lshr i32 %181, 31
  %202 = xor i32 %201, %200
  %203 = xor i32 %198, %200
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %44, align 1, !tbaa !2450
  %207 = sext i32 %182 to i64
  %208 = lshr i64 %207, 32
  store i64 %208, i64* %RDX, align 8, !tbaa !2428
  %209 = add i64 %171, -4
  %210 = add i64 %173, 10
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = shl nuw i64 %208, 32
  %215 = or i64 %214, %183
  %216 = sdiv i64 %215, %213
  %217 = shl i64 %216, 32
  %218 = ashr exact i64 %217, 32
  %219 = icmp eq i64 %216, %218
  br i1 %219, label %222, label %220

; <label>:220:                                    ; preds = %block_400ab9
  %221 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %MEMORY.1) #13
  %.pre5 = load i64, i64* %RBP, align 8
  %.pre6 = load i64, i64* %PC, align 8
  %.pre7 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:222:                                    ; preds = %block_400ab9
  %223 = srem i64 %215, %213
  %224 = and i64 %216, 4294967295
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = and i64 %223, 4294967295
  store i64 %225, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2433
  store i8 0, i8* %40, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %226 = trunc i64 %216 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %222, %220
  %227 = phi i32 [ %.pre7, %220 ], [ %226, %222 ]
  %228 = phi i64 [ %.pre6, %220 ], [ %210, %222 ]
  %229 = phi i64 [ %.pre5, %220 ], [ %171, %222 ]
  %230 = phi %struct.Memory* [ %221, %220 ], [ %MEMORY.1, %222 ]
  %231 = add i64 %229, -24
  %232 = add i64 %228, 4
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RSI, align 8, !tbaa !2428
  %235 = add i64 %229, -36
  %236 = add i64 %228, 8
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = mul nsw i64 %239, 24
  store i64 %240, i64* %RDI, align 8, !tbaa !2428
  %241 = lshr i64 %240, 63
  %242 = add i64 %240, %234
  store i64 %242, i64* %RSI, align 8, !tbaa !2428
  %243 = icmp ult i64 %242, %234
  %244 = icmp ult i64 %242, %240
  %245 = or i1 %243, %244
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %39, align 1, !tbaa !2433
  %247 = trunc i64 %242 to i32
  %248 = and i32 %247, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248) #10
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %40, align 1, !tbaa !2447
  %253 = xor i64 %240, %234
  %254 = xor i64 %253, %242
  %255 = lshr i64 %254, 4
  %256 = trunc i64 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %41, align 1, !tbaa !2451
  %258 = icmp eq i64 %242, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %42, align 1, !tbaa !2448
  %260 = lshr i64 %242, 63
  %261 = trunc i64 %260 to i8
  store i8 %261, i8* %43, align 1, !tbaa !2449
  %262 = lshr i64 %234, 63
  %263 = xor i64 %260, %262
  %264 = xor i64 %260, %241
  %265 = add nuw nsw i64 %263, %264
  %266 = icmp eq i64 %265, 2
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %44, align 1, !tbaa !2450
  %268 = add i64 %229, -40
  %269 = add i64 %228, 19
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  %273 = shl nsw i64 %272, 2
  %274 = add i64 %273, %242
  %275 = add i64 %228, 22
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 %227, i32* %276, align 4
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -36
  %279 = load i64, i64* %PC, align 8
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = add i64 %277, -40
  %285 = add i64 %279, 6
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, -1
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX, align 8, !tbaa !2428
  %290 = sext i32 %282 to i64
  %291 = sext i32 %288 to i64
  %292 = mul nsw i64 %291, %290
  %293 = trunc i64 %292 to i32
  %294 = and i64 %292, 4294967295
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = shl i64 %292, 32
  %296 = ashr exact i64 %295, 32
  %297 = icmp ne i64 %296, %292
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %39, align 1, !tbaa !2433
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #10
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %40, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %42, align 1, !tbaa !2448
  %304 = lshr i32 %293, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %43, align 1, !tbaa !2449
  store i8 %298, i8* %44, align 1, !tbaa !2450
  %306 = lshr i64 %296, 32
  store i64 %306, i64* %RDX, align 8, !tbaa !2428
  %307 = add i64 %277, -4
  %308 = add i64 %279, 16
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = shl nuw i64 %306, 32
  %313 = or i64 %312, %294
  %314 = sdiv i64 %313, %311
  %315 = shl i64 %314, 32
  %316 = ashr exact i64 %315, 32
  %317 = icmp eq i64 %314, %316
  br i1 %317, label %320, label %318

; <label>:318:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %319 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %308, %struct.Memory* %230) #13
  %.pre8 = load i64, i64* %RBP, align 8
  %.pre9 = load i64, i64* %PC, align 8
  %.pre10 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:320:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %321 = srem i64 %313, %311
  %322 = and i64 %314, 4294967295
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = and i64 %321, 4294967295
  store i64 %323, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2433
  store i8 0, i8* %40, align 1, !tbaa !2447
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %324 = trunc i64 %314 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %320, %318
  %325 = phi i32 [ %.pre10, %318 ], [ %324, %320 ]
  %326 = phi i64 [ %.pre9, %318 ], [ %308, %320 ]
  %327 = phi i64 [ %.pre8, %318 ], [ %277, %320 ]
  %328 = phi %struct.Memory* [ %319, %318 ], [ %230, %320 ]
  %329 = add i64 %327, -32
  %330 = add i64 %326, 4
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RSI, align 8, !tbaa !2428
  %333 = add i64 %327, -36
  %334 = add i64 %326, 8
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = mul nsw i64 %337, 24
  store i64 %338, i64* %RDI, align 8, !tbaa !2428
  %339 = lshr i64 %338, 63
  %340 = add i64 %338, %332
  store i64 %340, i64* %RSI, align 8, !tbaa !2428
  %341 = icmp ult i64 %340, %332
  %342 = icmp ult i64 %340, %338
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %39, align 1, !tbaa !2433
  %345 = trunc i64 %340 to i32
  %346 = and i32 %345, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #10
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %40, align 1, !tbaa !2447
  %351 = xor i64 %338, %332
  %352 = xor i64 %351, %340
  %353 = lshr i64 %352, 4
  %354 = trunc i64 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %41, align 1, !tbaa !2451
  %356 = icmp eq i64 %340, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %42, align 1, !tbaa !2448
  %358 = lshr i64 %340, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %43, align 1, !tbaa !2449
  %360 = lshr i64 %332, 63
  %361 = xor i64 %358, %360
  %362 = xor i64 %358, %339
  %363 = add nuw nsw i64 %361, %362
  %364 = icmp eq i64 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %44, align 1, !tbaa !2450
  %366 = add i64 %327, -40
  %367 = add i64 %326, 19
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RDI, align 8, !tbaa !2428
  %371 = shl nsw i64 %370, 2
  %372 = add i64 %371, %340
  %373 = add i64 %326, 22
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i32*
  store i32 %325, i32* %374, align 4
  %375 = load i64, i64* %RBP, align 8
  %376 = add i64 %375, -40
  %377 = load i64, i64* %PC, align 8
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, 1
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX, align 8, !tbaa !2428
  %383 = icmp eq i32 %380, -1
  %384 = icmp eq i32 %381, 0
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %39, align 1, !tbaa !2433
  %387 = and i32 %381, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387) #10
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %40, align 1, !tbaa !2447
  %392 = xor i32 %381, %380
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %41, align 1, !tbaa !2451
  %396 = zext i1 %384 to i8
  store i8 %396, i8* %42, align 1, !tbaa !2448
  %397 = lshr i32 %381, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %43, align 1, !tbaa !2449
  %399 = lshr i32 %380, 31
  %400 = xor i32 %397, %399
  %401 = add nuw nsw i32 %400, %397
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %44, align 1, !tbaa !2450
  %404 = add i64 %377, 9
  store i64 %404, i64* %PC, align 8
  store i32 %381, i32* %379, align 4
  %405 = load i64, i64* %PC, align 8
  %406 = add i64 %405, -128
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  br label %block_400aad

block_400b32:                                     ; preds = %block_400aad
  %407 = add i64 %473, 8
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %474 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = add i32 %409, 1
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RAX, align 8, !tbaa !2428
  %412 = icmp eq i32 %409, -1
  %413 = icmp eq i32 %410, 0
  %414 = or i1 %412, %413
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %39, align 1, !tbaa !2433
  %416 = and i32 %410, 255
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416) #10
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %40, align 1, !tbaa !2447
  %421 = xor i32 %410, %409
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %41, align 1, !tbaa !2451
  %425 = zext i1 %413 to i8
  store i8 %425, i8* %42, align 1, !tbaa !2448
  %426 = lshr i32 %410, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %43, align 1, !tbaa !2449
  %428 = lshr i32 %409, 31
  %429 = xor i32 %426, %428
  %430 = add nuw nsw i32 %429, %426
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %44, align 1, !tbaa !2450
  %433 = add i64 %473, 14
  store i64 %433, i64* %PC, align 8
  store i32 %410, i32* %408, align 4
  %434 = load i64, i64* %PC, align 8
  %435 = add i64 %434, -166
  store i64 %435, i64* %PC, align 8, !tbaa !2428
  br label %block_400a9a

block_400aad:                                     ; preds = %block_400aa6, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %436 = phi i64 [ %.pre4, %block_400aa6 ], [ %406, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400aa6 ], [ %328, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -40
  %439 = add i64 %436, 3
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RAX, align 8, !tbaa !2428
  %443 = add i64 %437, -4
  %444 = add i64 %436, 6
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = sub i32 %441, %446
  %448 = icmp ult i32 %441, %446
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %39, align 1, !tbaa !2433
  %450 = and i32 %447, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450) #10
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %40, align 1, !tbaa !2447
  %455 = xor i32 %446, %441
  %456 = xor i32 %455, %447
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %41, align 1, !tbaa !2451
  %460 = icmp eq i32 %447, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %42, align 1, !tbaa !2448
  %462 = lshr i32 %447, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %43, align 1, !tbaa !2449
  %464 = lshr i32 %441, 31
  %465 = lshr i32 %446, 31
  %466 = xor i32 %465, %464
  %467 = xor i32 %462, %464
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %44, align 1, !tbaa !2450
  %471 = icmp ne i8 %463, 0
  %472 = xor i1 %471, %469
  %.v = select i1 %472, i64 12, i64 133
  %473 = add i64 %.v, %436
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  %474 = add i64 %437, -36
  br i1 %472, label %block_400ab9, label %block_400b32

block_400aa6:                                     ; preds = %block_400a9a
  %475 = add i64 %46, -40
  %476 = add i64 %82, 7
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 0, i32* %477, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400aad

block_400b45:                                     ; preds = %block_400a9a
  %478 = add i64 %82, 1
  store i64 %478, i64* %PC, align 8
  %479 = load i64, i64* %7, align 8, !tbaa !2428
  %480 = add i64 %479, 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RBP, align 8, !tbaa !2428
  store i64 %480, i64* %7, align 8, !tbaa !2428
  %483 = add i64 %82, 2
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %480 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %PC, align 8, !tbaa !2428
  %486 = add i64 %479, 16
  store i64 %486, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400790_rtclock(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400790:
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
  store <4 x i32> zeroinitializer, <4 x i32>* %11, align 1, !tbaa !2452
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
define %struct.Memory* @sub_401320_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401320:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -56
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 48
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2433
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2447
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2451
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
  %42 = add i64 %9, -12
  %43 = load i32, i32* %EDI, align 4
  %44 = add i64 %12, 10
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %RSI, align 8
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -20
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401336

block_4013df:                                     ; preds = %block_401349
  %59 = add i64 %206, -20
  %60 = add i64 %242, 8
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RAX, align 8, !tbaa !2428
  %65 = icmp eq i32 %62, -1
  %66 = icmp eq i32 %63, 0
  %67 = or i1 %65, %66
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %16, align 1, !tbaa !2433
  %69 = and i32 %63, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #10
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %23, align 1, !tbaa !2447
  %74 = xor i32 %63, %62
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %29, align 1, !tbaa !2451
  %78 = zext i1 %66 to i8
  store i8 %78, i8* %32, align 1, !tbaa !2448
  %79 = lshr i32 %63, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %35, align 1, !tbaa !2449
  %81 = lshr i32 %62, 31
  %82 = xor i32 %79, %81
  %83 = add nuw nsw i32 %82, %79
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %41, align 1, !tbaa !2450
  %86 = add i64 %242, 14
  store i64 %86, i64* %PC, align 8
  store i32 %63, i32* %61, align 4
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, -183
  store i64 %88, i64* %PC, align 8, !tbaa !2428
  br label %block_401336

block_401336:                                     ; preds = %block_4013df, %block_401320
  %89 = phi i64 [ %.pre, %block_401320 ], [ %88, %block_4013df ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401320 ], [ %MEMORY.2, %block_4013df ]
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -20
  %92 = add i64 %89, 3
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = add i64 %90, -4
  %97 = add i64 %89, 6
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = icmp ult i32 %94, %99
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %16, align 1, !tbaa !2433
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #10
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %23, align 1, !tbaa !2447
  %108 = xor i32 %99, %94
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %29, align 1, !tbaa !2451
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %32, align 1, !tbaa !2448
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %35, align 1, !tbaa !2449
  %117 = lshr i32 %94, 31
  %118 = lshr i32 %99, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %115, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %41, align 1, !tbaa !2450
  %124 = icmp ne i8 %116, 0
  %125 = xor i1 %124, %122
  %.v9 = select i1 %125, i64 12, i64 188
  %126 = add i64 %.v9, %89
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  br i1 %125, label %block_401342, label %block_4013f2

block_4013cc:                                     ; preds = %block_4013b0, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %127 = phi i64 [ %403, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre8, %block_4013b0 ]
  %MEMORY.1 = phi %struct.Memory* [ %393, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %410, %block_4013b0 ]
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -24
  %130 = add i64 %127, 8
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %132, 1
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX, align 8, !tbaa !2428
  %135 = icmp eq i32 %132, -1
  %136 = icmp eq i32 %133, 0
  %137 = or i1 %135, %136
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %16, align 1, !tbaa !2433
  %139 = and i32 %133, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #10
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %23, align 1, !tbaa !2447
  %144 = xor i32 %133, %132
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %29, align 1, !tbaa !2451
  %148 = zext i1 %136 to i8
  store i8 %148, i8* %32, align 1, !tbaa !2448
  %149 = lshr i32 %133, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %35, align 1, !tbaa !2449
  %151 = lshr i32 %132, 31
  %152 = xor i32 %149, %151
  %153 = add nuw nsw i32 %152, %149
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %41, align 1, !tbaa !2450
  %156 = add i64 %127, 14
  store i64 %156, i64* %PC, align 8
  store i32 %133, i32* %131, align 4
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, -145
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  br label %block_401349

block_4013f2:                                     ; preds = %block_401336
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %159 = load i64, i64* @stderr, align 32
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %160 = add i64 %126, -3634
  %161 = add i64 %126, 25
  %162 = load i64, i64* %RSP, align 8, !tbaa !2428
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %RSP, align 8, !tbaa !2428
  store i64 %160, i64* %PC, align 8, !tbaa !2428
  %165 = tail call fastcc %struct.Memory* @ext_4005c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %166 = load i64, i64* %RBP, align 8
  %167 = add i64 %166, -40
  %168 = load i32, i32* %EAX, align 4
  %169 = load i64, i64* %PC, align 8
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %167 to i32*
  store i32 %168, i32* %171, align 4
  %172 = load i64, i64* %RSP, align 8
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %172, 48
  store i64 %174, i64* %RSP, align 8, !tbaa !2428
  %175 = icmp ugt i64 %172, -49
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %16, align 1, !tbaa !2433
  %177 = trunc i64 %174 to i32
  %178 = and i32 %177, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #10
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %23, align 1, !tbaa !2447
  %183 = xor i64 %172, 16
  %184 = xor i64 %183, %174
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %29, align 1, !tbaa !2451
  %188 = icmp eq i64 %174, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %32, align 1, !tbaa !2448
  %190 = lshr i64 %174, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %35, align 1, !tbaa !2449
  %192 = lshr i64 %172, 63
  %193 = xor i64 %190, %192
  %194 = add nuw nsw i64 %193, %190
  %195 = icmp eq i64 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %41, align 1, !tbaa !2450
  %197 = add i64 %173, 5
  store i64 %197, i64* %PC, align 8
  %198 = add i64 %172, 56
  %199 = inttoptr i64 %174 to i64*
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %RBP, align 8, !tbaa !2428
  store i64 %198, i64* %RSP, align 8, !tbaa !2428
  %201 = add i64 %173, 6
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %198 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %PC, align 8, !tbaa !2428
  %204 = add i64 %172, 64
  store i64 %204, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %165

block_401349:                                     ; preds = %block_401342, %block_4013cc
  %205 = phi i64 [ %.pre5, %block_401342 ], [ %158, %block_4013cc ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401342 ], [ %MEMORY.1, %block_4013cc ]
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -24
  %208 = add i64 %205, 3
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = add i64 %206, -4
  %213 = add i64 %205, 6
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = sub i32 %210, %215
  %217 = icmp ult i32 %210, %215
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %16, align 1, !tbaa !2433
  %219 = and i32 %216, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #10
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %23, align 1, !tbaa !2447
  %224 = xor i32 %215, %210
  %225 = xor i32 %224, %216
  %226 = lshr i32 %225, 4
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %29, align 1, !tbaa !2451
  %229 = icmp eq i32 %216, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %32, align 1, !tbaa !2448
  %231 = lshr i32 %216, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %35, align 1, !tbaa !2449
  %233 = lshr i32 %210, 31
  %234 = lshr i32 %215, 31
  %235 = xor i32 %234, %233
  %236 = xor i32 %231, %233
  %237 = add nuw nsw i32 %236, %235
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %41, align 1, !tbaa !2450
  %240 = icmp ne i8 %232, 0
  %241 = xor i1 %240, %238
  %.v = select i1 %241, i64 12, i64 150
  %242 = add i64 %.v, %205
  store i64 %242, i64* %PC, align 8, !tbaa !2428
  br i1 %241, label %block_401355, label %block_4013df

block_401355:                                     ; preds = %block_401349
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %243 = load i64, i64* @stderr, align 32
  store i64 %243, i64* %RDI, align 8, !tbaa !2428
  %244 = add i64 %206, -16
  %245 = add i64 %242, 22
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = add i64 %206, -20
  %249 = add i64 %242, 26
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = mul nsw i64 %252, 24
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = lshr i64 %253, 63
  %255 = add i64 %253, %247
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = icmp ult i64 %255, %247
  %257 = icmp ult i64 %255, %253
  %258 = or i1 %256, %257
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %16, align 1, !tbaa !2433
  %260 = trunc i64 %255 to i32
  %261 = and i32 %260, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #10
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %23, align 1, !tbaa !2447
  %266 = xor i64 %253, %247
  %267 = xor i64 %266, %255
  %268 = lshr i64 %267, 4
  %269 = trunc i64 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %29, align 1, !tbaa !2451
  %271 = icmp eq i64 %255, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %32, align 1, !tbaa !2448
  %273 = lshr i64 %255, 63
  %274 = trunc i64 %273 to i8
  store i8 %274, i8* %35, align 1, !tbaa !2449
  %275 = lshr i64 %247, 63
  %276 = xor i64 %273, %275
  %277 = xor i64 %273, %254
  %278 = add nuw nsw i64 %276, %277
  %279 = icmp eq i64 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %41, align 1, !tbaa !2450
  %281 = add i64 %242, 37
  store i64 %281, i64* %PC, align 8
  %282 = load i32, i32* %209, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX, align 8, !tbaa !2428
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %284, %255
  %286 = add i64 %242, 40
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %290 = add i64 %242, -3477
  %291 = add i64 %242, 47
  %292 = load i64, i64* %RSP, align 8, !tbaa !2428
  %293 = add i64 %292, -8
  %294 = inttoptr i64 %293 to i64*
  store i64 %291, i64* %294, align 8
  store i64 %293, i64* %RSP, align 8, !tbaa !2428
  store i64 %290, i64* %PC, align 8, !tbaa !2428
  %295 = tail call fastcc %struct.Memory* @ext_4005c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %296 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %297 = load i64, i64* %RBP, align 8
  %298 = add i64 %297, -20
  %299 = add i64 %296, 9
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %57, align 8, !tbaa !2428
  %303 = add i64 %297, -4
  %304 = add i64 %296, 14
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %301 to i64
  %308 = sext i32 %306 to i64
  %309 = mul nsw i64 %308, %307
  %310 = trunc i64 %309 to i32
  %311 = and i64 %309, 4294967295
  store i64 %311, i64* %57, align 8, !tbaa !2428
  %312 = shl i64 %309, 32
  %313 = ashr exact i64 %312, 32
  %314 = icmp ne i64 %313, %309
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %16, align 1, !tbaa !2433
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #10
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %321 = lshr i32 %310, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %35, align 1, !tbaa !2449
  store i8 %315, i8* %41, align 1, !tbaa !2450
  %323 = add i64 %297, -24
  %324 = add i64 %296, 18
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, %310
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %57, align 8, !tbaa !2428
  %329 = icmp ult i32 %327, %310
  %330 = icmp ult i32 %327, %326
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %16, align 1, !tbaa !2433
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #10
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %23, align 1, !tbaa !2447
  %338 = xor i32 %326, %310
  %339 = xor i32 %338, %327
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %29, align 1, !tbaa !2451
  %343 = icmp eq i32 %327, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %32, align 1, !tbaa !2448
  %345 = lshr i32 %327, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %35, align 1, !tbaa !2449
  %347 = lshr i32 %326, 31
  %348 = xor i32 %345, %321
  %349 = xor i32 %345, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %41, align 1, !tbaa !2450
  %353 = add i64 %297, -28
  %354 = load i32, i32* %EAX, align 4
  %355 = add i64 %296, 21
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %353 to i32*
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %R8D, align 4
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC, align 8
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -32
  %362 = load i32, i32* %EDX, align 4
  %363 = add i64 %359, 6
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %361 to i32*
  store i32 %362, i32* %364, align 4
  %365 = load i64, i64* %PC, align 8
  %366 = load i32, i32* %EAX, align 8, !tbaa !2452
  %367 = sext i32 %366 to i64
  %368 = lshr i64 %367, 32
  store i64 %368, i64* %58, align 8, !tbaa !2428
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -32
  %371 = add i64 %365, 5
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %57, align 8, !tbaa !2428
  %375 = add i64 %365, 8
  store i64 %375, i64* %PC, align 8
  %376 = zext i32 %366 to i64
  %377 = sext i32 %373 to i64
  %378 = shl nuw i64 %368, 32
  %379 = or i64 %378, %376
  %380 = sdiv i64 %379, %377
  %381 = shl i64 %380, 32
  %382 = ashr exact i64 %381, 32
  %383 = icmp eq i64 %380, %382
  br i1 %383, label %386, label %384

; <label>:384:                                    ; preds = %block_401355
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %295) #13
  %.pre6 = load i32, i32* %EDX, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:386:                                    ; preds = %block_401355
  %387 = srem i64 %379, %377
  %388 = and i64 %380, 4294967295
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = and i64 %387, 4294967295
  store i64 %389, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2433
  store i8 0, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %390 = trunc i64 %387 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %386, %384
  %391 = phi i64 [ %.pre7, %384 ], [ %375, %386 ]
  %392 = phi i32 [ %.pre6, %384 ], [ %390, %386 ]
  %393 = phi %struct.Memory* [ %385, %384 ], [ %295, %386 ]
  store i8 0, i8* %16, align 1, !tbaa !2433
  %394 = and i32 %392, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394) #10
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  %399 = icmp eq i32 %392, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %32, align 1, !tbaa !2448
  %401 = lshr i32 %392, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v10 = select i1 %399, i64 9, i64 37
  %403 = add i64 %.v10, %391
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  br i1 %399, label %block_4013b0, label %block_4013cc

block_4013b0:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %404 = load i64, i64* @stderr, align 32
  store i64 %404, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %405 = add i64 %403, -3568
  %406 = add i64 %403, 25
  %407 = load i64, i64* %RSP, align 8, !tbaa !2428
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %RSP, align 8, !tbaa !2428
  store i64 %405, i64* %PC, align 8, !tbaa !2428
  %410 = tail call fastcc %struct.Memory* @ext_4005c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %393)
  %411 = load i64, i64* %RBP, align 8
  %412 = add i64 %411, -36
  %413 = load i32, i32* %EAX, align 4
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %412 to i32*
  store i32 %413, i32* %416, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4013cc

block_401342:                                     ; preds = %block_401336
  %417 = add i64 %90, -24
  %418 = add i64 %126, 7
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 0, i32* %419, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401349
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
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
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %9, -129
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4006e0_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4011f0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #6 {
block_4011f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %var_2_43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 8) to i64*), align 8
  %var_2_45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %var_2_43, i64* %var_2_45, align 1
  %var_2_4144 = load i64, i64* %RBP, align 8
  %var_2_4155 = add i64 %var_2_4144, -28
  %var_2_4176 = inttoptr i64 %var_2_4155 to i32*
  %var_2_4187 = load i32, i32* %var_2_4176, align 4
  %var_2_4208 = add i64 %var_2_4144, -8
  %var_2_4229 = inttoptr i64 %var_2_4208 to i32*
  %var_2_42310 = load i32, i32* %var_2_4229, align 4
  %var_2_42411 = sub i32 %var_2_4187, %var_2_42310
  %var_2_43912 = lshr i32 %var_2_42411, 31
  %var_2_44113 = lshr i32 %var_2_4187, 31
  %var_2_44214 = lshr i32 %var_2_42310, 31
  %var_2_44315 = xor i32 %var_2_44214, %var_2_44113
  %var_2_44416 = xor i32 %var_2_43912, %var_2_44113
  %var_2_44517 = add nuw nsw i32 %var_2_44416, %var_2_44315
  %var_2_44618 = icmp eq i32 %var_2_44517, 2
  %var_2_44819 = icmp ne i32 %var_2_43912, 0
  %var_2_44920 = xor i1 %var_2_44819, %var_2_44618
  br i1 %var_2_44920, label %block_401223.preheader, label %block_40130c

block_401223.preheader:                           ; preds = %block_4011f0
  br label %block_401223

block_401236:                                     ; preds = %block_401236.preheader, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge
  %MEMORY.236 = phi %struct.Memory* [ %var_2_338, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge ], [ %MEMORY.121, %block_401236.preheader ]
  %var_2_45235 = phi i64 [ %var_2_452.pre, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge ], [ %var_2_4529, %block_401236.preheader ]
  %var_2_305 = add i64 %var_2_45235, -64
  %var_2_306 = load i64, i64* %PC, align 8
  %var_4_3 = inttoptr i64 %var_2_305 to double*
  %var_2_3092 = load double, double* %var_4_3, align 8
  %var_2_310 = add i64 %var_2_45235, -40
  %var_2_311 = add i64 %var_2_306, 10
  %var_2_313 = inttoptr i64 %var_2_310 to double*
  %var_2_314 = load double, double* %var_2_313, align 8
  %var_2_315 = fcmp uno double %var_2_3092, %var_2_314
  br i1 %var_2_315, label %var_2_316, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

var_2_316:                                        ; preds = %block_401236
  %var_2_317 = fadd double %var_2_3092, %var_2_314
  %var_2_318 = bitcast double %var_2_317 to i64
  %var_2_319 = and i64 %var_2_318, 9221120237041090560
  %var_2_320 = icmp eq i64 %var_2_319, 9218868437227405312
  %var_2_321 = and i64 %var_2_318, 2251799813685247
  %var_2_322 = icmp ne i64 %var_2_321, 0
  %var_2_323 = and i1 %var_2_320, %var_2_322
  br i1 %var_2_323, label %var_2_324, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

var_2_324:                                        ; preds = %var_2_316
  %var_2_325 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_311, %struct.Memory* %MEMORY.236) #13
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %var_2_324, %var_2_316, %block_401236
  %var_2_338 = phi %struct.Memory* [ %var_2_325, %var_2_324 ], [ %MEMORY.236, %var_2_316 ], [ %MEMORY.236, %block_401236 ]
  %var_2_339 = load i8, i8* %var_2_16, align 1
  %var_2_340 = load i8, i8* %var_2_32, align 1
  %var_2_341 = or i8 %var_2_340, %var_2_339
  %var_2_342 = icmp eq i8 %var_2_341, 0
  br i1 %var_2_342, label %block_40130c.loopexit, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %var_2_452.pre = load i64, i64* %RBP, align 8
  %var_2_453 = add i64 %var_2_452.pre, -32
  %var_2_455 = inttoptr i64 %var_2_453 to i32*
  %var_2_456 = load i32, i32* %var_2_455, align 4
  %var_2_458 = add i64 %var_2_452.pre, -8
  %var_2_460 = inttoptr i64 %var_2_458 to i32*
  %var_2_461 = load i32, i32* %var_2_460, align 4
  %var_2_462 = sub i32 %var_2_456, %var_2_461
  %var_2_477 = lshr i32 %var_2_462, 31
  %var_2_479 = lshr i32 %var_2_456, 31
  %var_2_480 = lshr i32 %var_2_461, 31
  %var_2_481 = xor i32 %var_2_480, %var_2_479
  %var_2_482 = xor i32 %var_2_477, %var_2_479
  %var_2_483 = add nuw nsw i32 %var_2_482, %var_2_481
  %var_2_484 = icmp eq i32 %var_2_483, 2
  %var_2_486 = icmp ne i32 %var_2_477, 0
  %var_2_487 = xor i1 %var_2_486, %var_2_484
  br i1 %var_2_487, label %block_401236, label %block_401217.loopexit.loopexit

block_40130c.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  br label %block_40130c

block_40130c.loopexit17:                          ; preds = %block_401217.loopexit
  br label %block_40130c

block_40130c:                                     ; preds = %block_40130c.loopexit17, %block_40130c.loopexit, %block_4011f0
; Matched:\<badref\>:  ret %struct.Memory* %2
; ret %struct.Memory* %2
ret %struct.Memory* %2


block_401217.loopexit.loopexit:                   ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_40122a_crit_edge
  br label %block_401217.loopexit

block_401217.loopexit:                            ; preds = %block_401217.loopexit.loopexit, %block_401223
  %var_2_452.lcssa = phi i64 [ %var_2_4529, %block_401223 ], [ %var_2_452.pre, %block_401217.loopexit.loopexit ]
  %MEMORY.2.lcssa = phi %struct.Memory* [ %MEMORY.121, %block_401223 ], [ %var_2_338, %block_401217.loopexit.loopexit ]
  %var_2_461.lcssa = phi i32 [ %var_2_46124, %block_401223 ], [ %var_2_461, %block_401217.loopexit.loopexit ]
  %var_2_480.lcssa = phi i32 [ %var_2_48028, %block_401223 ], [ %var_2_480, %block_401217.loopexit.loopexit ]
  %var_2_415 = add i64 %var_2_452.lcssa, -28
  %var_2_417 = inttoptr i64 %var_2_415 to i32*
  %var_2_418 = load i32, i32* %var_2_417, align 4
  %var_2_424 = sub i32 %var_2_418, %var_2_461.lcssa
  %var_2_439 = lshr i32 %var_2_424, 31
  %var_2_441 = lshr i32 %var_2_418, 31
  %var_2_443 = xor i32 %var_2_441, %var_2_480.lcssa
  %var_2_444 = xor i32 %var_2_439, %var_2_441
  %var_2_445 = add nuw nsw i32 %var_2_444, %var_2_443
  %var_2_446 = icmp eq i32 %var_2_445, 2
  %var_2_448 = icmp ne i32 %var_2_439, 0
  %var_2_449 = xor i1 %var_2_448, %var_2_446
  br i1 %var_2_449, label %block_401223, label %block_40130c.loopexit17

block_401223:                                     ; preds = %block_401223.preheader, %block_401217.loopexit
  %var_2_4529 = phi i64 [ %var_2_452.lcssa, %block_401217.loopexit ], [ %var_2_4144, %block_401223.preheader ]
  %MEMORY.121 = phi %struct.Memory* [ %MEMORY.2.lcssa, %block_401217.loopexit ], [ %2, %block_401223.preheader ]
  %var_2_45319 = add i64 %var_2_4529, -32
  %var_2_45520 = inttoptr i64 %var_2_45319 to i32*
  %var_2_45621 = load i32, i32* %var_2_45520, align 4
  %var_2_45822 = add i64 %var_2_4529, -8
  %var_2_46023 = inttoptr i64 %var_2_45822 to i32*
  %var_2_46124 = load i32, i32* %var_2_46023, align 4
  %var_2_46225 = sub i32 %var_2_45621, %var_2_46124
  %var_2_47726 = lshr i32 %var_2_46225, 31
  %var_2_47927 = lshr i32 %var_2_45621, 31
  %var_2_48028 = lshr i32 %var_2_46124, 31
  %var_2_48129 = xor i32 %var_2_48028, %var_2_47927
  %var_2_48230 = xor i32 %var_2_47726, %var_2_47927
  %var_2_48331 = add nuw nsw i32 %var_2_48230, %var_2_48129
  %var_2_48432 = icmp eq i32 %var_2_48331, 2
  %var_2_48633 = icmp ne i32 %var_2_47726, 0
  %var_2_48734 = xor i1 %var_2_48633, %var_2_48432
  br i1 %var_2_48734, label %block_401236.preheader, label %block_401217.loopexit

block_401236.preheader:                           ; preds = %block_401223
  br label %block_401236
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400630_deregister_tm_clones(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400658:
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
  store i64 6299736, i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !2433
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2447
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2451
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

; Function Attrs: noinline
define %struct.Memory* @sub_400800_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400800:
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
  store i8 %12, i8* %13, align 1, !tbaa !2433
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2447
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2451
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
  store i8 %80, i8* %13, align 1, !tbaa !2433
  %81 = trunc i128 %76 to i32
  %82 = and i32 %81, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #10
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %20, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2451
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
  %101 = tail call %struct.Memory* @sub_400840_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
  store i8 %117, i8* %13, align 1, !tbaa !2433
  %118 = trunc i64 %115 to i32
  %119 = and i32 %118, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #10
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %20, align 1, !tbaa !2447
  %124 = xor i64 %115, %114
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %25, align 1, !tbaa !2451
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

; Function Attrs: noinline
define %struct.Memory* @sub_4008c0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4008c0:
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
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
  store i8 %13, i8* %14, align 1, !tbaa !2433
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2447
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2451
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
  store i64 36, i64* %RCX, align 8, !tbaa !2428
  store i64 4, i64* %RAX, align 8, !tbaa !2428
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
  store i32 10000, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 7
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 6, i32* %63, align 4
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -28
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 64, i32* %68, align 4
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
  %78 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %73, %struct.Memory* %2)
  %79 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
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
  %91 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %86, %struct.Memory* %78)
  %92 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
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
  %104 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %99, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
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
  %117 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %112, %struct.Memory* %104)
  %118 = load i64, i64* %PC, align 8
  store i64 2304, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
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
  %130 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %125, %struct.Memory* %117)
  %131 = load i64, i64* %PC, align 8
  store i64 2304, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
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
  %143 = tail call %struct.Memory* @sub_400800_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %138, %struct.Memory* %130)
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -80
  %146 = load i64, i64* %RAX, align 8
  %147 = load i64, i64* %PC, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149, align 8
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -24
  %152 = load i64, i64* %PC, align 8
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RDI, align 8, !tbaa !2428
  %157 = add i64 %150, -40
  %158 = add i64 %152, 7
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %157 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %RSI, align 8, !tbaa !2428
  %161 = add i64 %150, -48
  %162 = add i64 %152, 11
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RDX, align 8, !tbaa !2428
  %165 = add i64 %150, -56
  %166 = add i64 %152, 15
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RCX, align 8, !tbaa !2428
  %169 = add i64 %152, 274
  %170 = add i64 %152, 20
  %171 = load i64, i64* %RSP, align 8, !tbaa !2428
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %RSP, align 8, !tbaa !2428
  store i64 %169, i64* %PC, align 8, !tbaa !2428
  %174 = tail call %struct.Memory* @sub_400a80_init_array_renamed_(%struct.State* nonnull %0, i64 %169, %struct.Memory* %143)
  %175 = load i64, i64* %RBP, align 8
  %176 = add i64 %175, -20
  %177 = load i64, i64* %PC, align 8
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %176 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RDI, align 8, !tbaa !2428
  %182 = add i64 %175, -24
  %183 = add i64 %177, 6
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RSI, align 8, !tbaa !2428
  %187 = add i64 %175, -28
  %188 = add i64 %177, 9
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RDX, align 8, !tbaa !2428
  %192 = add i64 %175, -40
  %193 = add i64 %177, 13
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RCX, align 8, !tbaa !2428
  %196 = add i64 %175, -48
  %197 = add i64 %177, 17
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %R8, align 8, !tbaa !2428
  %200 = add i64 %175, -56
  %201 = add i64 %177, 21
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %R9, align 8, !tbaa !2428
  %204 = add i64 %175, -72
  %205 = add i64 %177, 25
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  %208 = add i64 %175, -80
  %209 = add i64 %177, 29
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %R10, align 8, !tbaa !2428
  %212 = bitcast i64* %RSP to i64**
  %213 = load i64*, i64** %212, align 8
  %214 = add i64 %177, 33
  store i64 %214, i64* %PC, align 8
  store i64 %207, i64* %213, align 8
  %215 = load i64, i64* %RSP, align 8
  %216 = add i64 %215, 8
  %217 = load i64, i64* %R10, align 8
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, 5
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220, align 8
  %221 = load i64, i64* %PC, align 8
  %222 = add i64 %221, 424
  %223 = add i64 %221, 5
  %224 = load i64, i64* %RSP, align 8, !tbaa !2428
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %RSP, align 8, !tbaa !2428
  store i64 %222, i64* %PC, align 8, !tbaa !2428
  %227 = tail call %struct.Memory* @sub_400b50_kernel_reg_detect_renamed_(%struct.State* nonnull %0, i64 %222, %struct.Memory* %174)
  %228 = load i64, i64* %RBP, align 8
  %229 = add i64 %228, -24
  %230 = load i64, i64* %PC, align 8
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RDI, align 8, !tbaa !2428
  %235 = add i64 %228, -40
  %236 = add i64 %230, 7
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RSI, align 8, !tbaa !2428
  %239 = add i64 %228, -48
  %240 = add i64 %230, 11
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDX, align 8, !tbaa !2428
  %243 = add i64 %228, -64
  %244 = add i64 %230, 15
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = add i64 %230, 211
  %248 = add i64 %230, 20
  %249 = load i64, i64* %RSP, align 8, !tbaa !2428
  %250 = add i64 %249, -8
  %251 = inttoptr i64 %250 to i64*
  store i64 %248, i64* %251, align 8
  store i64 %250, i64* %RSP, align 8, !tbaa !2428
  store i64 %247, i64* %PC, align 8, !tbaa !2428
  %252 = tail call %struct.Memory* @sub_400a80_init_array_renamed_(%struct.State* nonnull %0, i64 %247, %struct.Memory* %227)
  %253 = load i64, i64* %RBP, align 8
  %254 = add i64 %253, -20
  %255 = load i64, i64* %PC, align 8
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RDI, align 8, !tbaa !2428
  %260 = add i64 %253, -24
  %261 = add i64 %255, 6
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RSI, align 8, !tbaa !2428
  %265 = add i64 %253, -28
  %266 = add i64 %255, 9
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX, align 8, !tbaa !2428
  %270 = add i64 %253, -40
  %271 = add i64 %255, 13
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i64*
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %RCX, align 8, !tbaa !2428
  %274 = add i64 %253, -48
  %275 = add i64 %255, 17
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %R8, align 8, !tbaa !2428
  %278 = add i64 %253, -64
  %279 = add i64 %255, 21
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %R9, align 8, !tbaa !2428
  %282 = add i64 %253, -72
  %283 = add i64 %255, 25
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = add i64 %253, -80
  %287 = add i64 %255, 29
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %R10, align 8, !tbaa !2428
  %290 = load i64*, i64** %212, align 8
  %291 = add i64 %255, 33
  store i64 %291, i64* %PC, align 8
  store i64 %285, i64* %290, align 8
  %292 = load i64, i64* %RSP, align 8
  %293 = add i64 %292, 8
  %294 = load i64, i64* %R10, align 8
  %295 = load i64, i64* %PC, align 8
  %296 = add i64 %295, 5
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %293 to i64*
  store i64 %294, i64* %297, align 8
  %298 = load i64, i64* %PC, align 8
  %299 = add i64 %298, 1209
  %300 = add i64 %298, 5
  %301 = load i64, i64* %RSP, align 8, !tbaa !2428
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %300, i64* %303, align 8
  store i64 %302, i64* %RSP, align 8, !tbaa !2428
  store i64 %299, i64* %PC, align 8, !tbaa !2428
  %304 = tail call %struct.Memory* @sub_400ea0_kernel_reg_detect_StrictFP_renamed_(%struct.State* nonnull %0, i64 %299, %struct.Memory* %252)
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -24
  %307 = load i64, i64* %PC, align 8
  %308 = add i64 %307, 3
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %306 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RDI, align 8, !tbaa !2428
  %312 = add i64 %305, -56
  %313 = add i64 %307, 7
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i64*
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %RSI, align 8, !tbaa !2428
  %316 = add i64 %305, -64
  %317 = add i64 %307, 11
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RDX, align 8, !tbaa !2428
  %320 = add i64 %307, 2052
  %321 = add i64 %307, 16
  %322 = load i64, i64* %RSP, align 8, !tbaa !2428
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %321, i64* %324, align 8
  store i64 %323, i64* %RSP, align 8, !tbaa !2428
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  %325 = tail call %struct.Memory* @sub_4011f0_check_FP_renamed_(%struct.State* nonnull %0, i64 %320, %struct.Memory* %304)
  %326 = load i32, i32* %EAX, align 4
  %327 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2433
  %328 = and i32 %326, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #10
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %21, align 1, !tbaa !2447
  store i8 0, i8* %26, align 1, !tbaa !2451
  %333 = icmp eq i32 %326, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %29, align 1, !tbaa !2448
  %335 = lshr i32 %326, 31
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %333, i64 9, i64 21
  %337 = add i64 %.v, %327
  store i64 %337, i64* %PC, align 8, !tbaa !2428
  %338 = load i64, i64* %RBP, align 8
  br i1 %333, label %block_400a05, label %block_400a11

block_400a6c:                                     ; preds = %block_400a05, %block_400a11
  %339 = phi i64 [ %.pre, %block_400a11 ], [ %473, %block_400a05 ]
  %MEMORY.0 = phi %struct.Memory* [ %463, %block_400a11 ], [ %325, %block_400a05 ]
  %340 = load i64, i64* %RBP, align 8
  %341 = add i64 %340, -4
  %342 = add i64 %339, 3
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX, align 8, !tbaa !2428
  %346 = load i64, i64* %RSP, align 8
  %347 = add i64 %346, 96
  store i64 %347, i64* %RSP, align 8, !tbaa !2428
  %348 = icmp ugt i64 %346, -97
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %14, align 1, !tbaa !2433
  %350 = trunc i64 %347 to i32
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #10
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1, !tbaa !2447
  %356 = xor i64 %347, %346
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %26, align 1, !tbaa !2451
  %360 = icmp eq i64 %347, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %29, align 1, !tbaa !2448
  %362 = lshr i64 %347, 63
  %363 = trunc i64 %362 to i8
  store i8 %363, i8* %32, align 1, !tbaa !2449
  %364 = lshr i64 %346, 63
  %365 = xor i64 %362, %364
  %366 = add nuw nsw i64 %365, %362
  %367 = icmp eq i64 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %38, align 1, !tbaa !2450
  %369 = add i64 %339, 8
  store i64 %369, i64* %PC, align 8
  %370 = add i64 %346, 104
  %371 = inttoptr i64 %347 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RBP, align 8, !tbaa !2428
  store i64 %370, i64* %RSP, align 8, !tbaa !2428
  %373 = add i64 %339, 9
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %370 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %PC, align 8, !tbaa !2428
  %376 = add i64 %346, 112
  store i64 %376, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a11:                                     ; preds = %block_4008c0
  %377 = add i64 %338, -24
  %378 = add i64 %337, 3
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RDI, align 8, !tbaa !2428
  %382 = add i64 %338, -64
  %383 = add i64 %337, 7
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %RSI, align 8, !tbaa !2428
  %386 = add i64 %337, 2319
  %387 = add i64 %337, 12
  %388 = load i64, i64* %RSP, align 8, !tbaa !2428
  %389 = add i64 %388, -8
  %390 = inttoptr i64 %389 to i64*
  store i64 %387, i64* %390, align 8
  store i64 %389, i64* %RSP, align 8, !tbaa !2428
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  %391 = tail call %struct.Memory* @sub_401320_print_array_renamed_(%struct.State* nonnull %0, i64 %386, %struct.Memory* %325)
  %392 = load i64, i64* %RBP, align 8
  %393 = add i64 %392, -40
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RSI, align 8, !tbaa !2428
  store i64 %397, i64* %RDI, align 8, !tbaa !2428
  %398 = add i64 %394, -1165
  %399 = add i64 %394, 12
  %400 = load i64, i64* %RSP, align 8, !tbaa !2428
  %401 = add i64 %400, -8
  %402 = inttoptr i64 %401 to i64*
  store i64 %399, i64* %402, align 8
  store i64 %401, i64* %RSP, align 8, !tbaa !2428
  store i64 %398, i64* %PC, align 8, !tbaa !2428
  %403 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %391)
  %404 = load i64, i64* %RBP, align 8
  %405 = add i64 %404, -48
  %406 = load i64, i64* %PC, align 8
  %407 = add i64 %406, 4
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %405 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RSI, align 8, !tbaa !2428
  store i64 %409, i64* %RDI, align 8, !tbaa !2428
  %410 = add i64 %406, -1177
  %411 = add i64 %406, 12
  %412 = load i64, i64* %RSP, align 8, !tbaa !2428
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414, align 8
  store i64 %413, i64* %RSP, align 8, !tbaa !2428
  store i64 %410, i64* %PC, align 8, !tbaa !2428
  %415 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %403)
  %416 = load i64, i64* %RBP, align 8
  %417 = add i64 %416, -56
  %418 = load i64, i64* %PC, align 8
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RSI, align 8, !tbaa !2428
  store i64 %421, i64* %RDI, align 8, !tbaa !2428
  %422 = add i64 %418, -1189
  %423 = add i64 %418, 12
  %424 = load i64, i64* %RSP, align 8, !tbaa !2428
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %RSP, align 8, !tbaa !2428
  store i64 %422, i64* %PC, align 8, !tbaa !2428
  %427 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %415)
  %428 = load i64, i64* %RBP, align 8
  %429 = add i64 %428, -64
  %430 = load i64, i64* %PC, align 8
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC, align 8
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RSI, align 8, !tbaa !2428
  store i64 %433, i64* %RDI, align 8, !tbaa !2428
  %434 = add i64 %430, -1201
  %435 = add i64 %430, 12
  %436 = load i64, i64* %RSP, align 8, !tbaa !2428
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %RSP, align 8, !tbaa !2428
  store i64 %434, i64* %PC, align 8, !tbaa !2428
  %439 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %427)
  %440 = load i64, i64* %RBP, align 8
  %441 = add i64 %440, -72
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %441 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RSI, align 8, !tbaa !2428
  store i64 %445, i64* %RDI, align 8, !tbaa !2428
  %446 = add i64 %442, -1213
  %447 = add i64 %442, 12
  %448 = load i64, i64* %RSP, align 8, !tbaa !2428
  %449 = add i64 %448, -8
  %450 = inttoptr i64 %449 to i64*
  store i64 %447, i64* %450, align 8
  store i64 %449, i64* %RSP, align 8, !tbaa !2428
  store i64 %446, i64* %PC, align 8, !tbaa !2428
  %451 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %439)
  %452 = load i64, i64* %RBP, align 8
  %453 = add i64 %452, -80
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RSI, align 8, !tbaa !2428
  store i64 %457, i64* %RDI, align 8, !tbaa !2428
  %458 = add i64 %454, -1225
  %459 = add i64 %454, 12
  %460 = load i64, i64* %RSP, align 8, !tbaa !2428
  %461 = add i64 %460, -8
  %462 = inttoptr i64 %461 to i64*
  store i64 %459, i64* %462, align 8
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  store i64 %458, i64* %PC, align 8, !tbaa !2428
  %463 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %451)
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -4
  %466 = load i64, i64* %PC, align 8
  %467 = add i64 %466, 7
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %465 to i32*
  store i32 0, i32* %468, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a6c

block_400a05:                                     ; preds = %block_4008c0
  %469 = add i64 %338, -4
  %470 = add i64 %337, 7
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  store i32 1, i32* %471, align 4
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, 96
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6c
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ea0_kernel_reg_detect_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400ea0:
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
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
  %13 = add i64 %9, 16
  %14 = add i64 %12, 7
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %RAX, align 8, !tbaa !2428
  %17 = add i64 %9, 8
  %18 = add i64 %12, 11
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %R10, align 8, !tbaa !2428
  %21 = add i64 %9, -12
  %22 = load i32, i32* %EDI, align 4
  %23 = add i64 %12, 14
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI, align 4
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -12
  %33 = load i32, i32* %EDX, align 4
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -24
  %39 = load i64, i64* %RCX, align 8
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -32
  %45 = load i64, i64* %R8, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -40
  %51 = load i64, i64* %R9, align 8
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -48
  %57 = load i64, i64* %R10, align 8
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -56
  %63 = load i64, i64* %RAX, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -60
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i32*
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ed0

block_400efa:                                     ; preds = %block_400f6b, %block_400ef4
  %78 = phi i64 [ %193, %block_400f6b ], [ %.pre40, %block_400ef4 ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -64
  %81 = add i64 %78, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = add i64 %79, -8
  %86 = add i64 %78, 6
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %88, -1
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = lshr i32 %89, 31
  %92 = sub i32 %83, %89
  %93 = icmp ult i32 %83, %89
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %72, align 1, !tbaa !2433
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #10
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %73, align 1, !tbaa !2447
  %100 = xor i32 %89, %83
  %101 = xor i32 %100, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %74, align 1, !tbaa !2451
  %105 = icmp eq i32 %92, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %75, align 1, !tbaa !2448
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %76, align 1, !tbaa !2449
  %109 = lshr i32 %83, 31
  %110 = xor i32 %91, %109
  %111 = xor i32 %107, %109
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %77, align 1, !tbaa !2450
  %115 = icmp ne i8 %108, 0
  %116 = xor i1 %115, %113
  %.demorgan48 = or i1 %105, %116
  %.v50 = select i1 %.demorgan48, i64 17, i64 132
  %117 = add i64 %.v50, %78
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan48, label %block_400f0b, label %block_400f7e

block_400ef4:                                     ; preds = %block_400ee3
  %118 = add i64 %163, 3
  store i64 %118, i64* %PC, align 8
  %119 = load i32, i32* %128, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %121 = add i64 %125, -64
  %122 = add i64 %163, 6
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %121 to i32*
  store i32 %119, i32* %123, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400efa

block_400ee3:                                     ; preds = %block_400f7e, %block_400edc
  %124 = phi i64 [ %757, %block_400f7e ], [ %.pre39, %block_400edc ]
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -68
  %127 = add i64 %124, 3
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %125, -8
  %132 = add i64 %124, 6
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = add i32 %134, -1
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RCX, align 8, !tbaa !2428
  %137 = lshr i32 %135, 31
  %138 = sub i32 %129, %135
  %139 = icmp ult i32 %129, %135
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %72, align 1, !tbaa !2433
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #10
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %73, align 1, !tbaa !2447
  %146 = xor i32 %135, %129
  %147 = xor i32 %146, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %74, align 1, !tbaa !2451
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %75, align 1, !tbaa !2448
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %76, align 1, !tbaa !2449
  %155 = lshr i32 %129, 31
  %156 = xor i32 %137, %155
  %157 = xor i32 %153, %155
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %77, align 1, !tbaa !2450
  %161 = icmp ne i8 %154, 0
  %162 = xor i1 %161, %159
  %.demorgan = or i1 %151, %162
  %.v62 = select i1 %.demorgan, i64 17, i64 174
  %163 = add i64 %.v62, %124
  store i64 %163, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400ef4, label %block_400f91

block_400f6b:                                     ; preds = %block_400f12
  %164 = add i64 %1305, -64
  %165 = add i64 %1343, 8
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, 1
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX, align 8, !tbaa !2428
  %170 = icmp eq i32 %167, -1
  %171 = icmp eq i32 %168, 0
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %72, align 1, !tbaa !2433
  %174 = and i32 %168, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #10
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %73, align 1, !tbaa !2447
  %179 = xor i32 %168, %167
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %74, align 1, !tbaa !2451
  %183 = zext i1 %171 to i8
  store i8 %183, i8* %75, align 1, !tbaa !2448
  %184 = lshr i32 %168, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %76, align 1, !tbaa !2449
  %186 = lshr i32 %167, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %184
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %77, align 1, !tbaa !2450
  %191 = add i64 %1343, 14
  store i64 %191, i64* %PC, align 8
  store i32 %168, i32* %166, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, -127
  store i64 %193, i64* %PC, align 8, !tbaa !2428
  br label %block_400efa

block_4011e0:                                     ; preds = %block_400ed0
  %194 = add i64 %273, 1
  store i64 %194, i64* %PC, align 8
  %195 = load i64, i64* %8, align 8, !tbaa !2428
  %196 = add i64 %195, 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RBP, align 8, !tbaa !2428
  store i64 %196, i64* %8, align 8, !tbaa !2428
  %199 = add i64 %273, 2
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %196 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  %202 = add i64 %195, 16
  store i64 %202, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4010e2:                                     ; preds = %block_400faf
  %203 = add i64 %683, -68
  %204 = add i64 %721, 8
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = add i32 %206, 1
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = icmp eq i32 %206, -1
  %210 = icmp eq i32 %207, 0
  %211 = or i1 %209, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %72, align 1, !tbaa !2433
  %213 = and i32 %207, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213) #10
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %73, align 1, !tbaa !2447
  %218 = xor i32 %207, %206
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %74, align 1, !tbaa !2451
  %222 = zext i1 %210 to i8
  store i8 %222, i8* %75, align 1, !tbaa !2448
  %223 = lshr i32 %207, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %76, align 1, !tbaa !2449
  %225 = lshr i32 %206, 31
  %226 = xor i32 %223, %225
  %227 = add nuw nsw i32 %226, %223
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %77, align 1, !tbaa !2450
  %230 = add i64 %721, 14
  store i64 %230, i64* %PC, align 8
  store i32 %207, i32* %205, align 4
  %231 = load i64, i64* %PC, align 8
  %232 = add i64 %231, -344
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br label %block_400f98

block_400edc:                                     ; preds = %block_400ed0
  %233 = add i64 %237, -68
  %234 = add i64 %273, 7
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 0, i32* %235, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400ee3

block_400ed0:                                     ; preds = %block_4011cd, %block_400ea0
  %236 = phi i64 [ %343, %block_4011cd ], [ %.pre, %block_400ea0 ]
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -60
  %239 = add i64 %236, 3
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = add i64 %237, -4
  %244 = add i64 %236, 6
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sub i32 %241, %246
  %248 = icmp ult i32 %241, %246
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %72, align 1, !tbaa !2433
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #10
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %73, align 1, !tbaa !2447
  %255 = xor i32 %246, %241
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %74, align 1, !tbaa !2451
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %75, align 1, !tbaa !2448
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %76, align 1, !tbaa !2449
  %264 = lshr i32 %241, 31
  %265 = lshr i32 %246, 31
  %266 = xor i32 %265, %264
  %267 = xor i32 %262, %264
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %77, align 1, !tbaa !2450
  %271 = icmp ne i8 %263, 0
  %272 = xor i1 %271, %269
  %.v61 = select i1 %272, i64 12, i64 784
  %273 = add i64 %.v61, %236
  store i64 %273, i64* %PC, align 8, !tbaa !2428
  br i1 %272, label %block_400edc, label %block_4011e0

block_40114f:                                     ; preds = %block_401160, %block_401149
  %274 = phi i64 [ %568, %block_401160 ], [ %.pre47, %block_401149 ]
  %275 = load i64, i64* %RBP, align 8
  %276 = add i64 %275, -64
  %277 = add i64 %274, 3
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = add i64 %275, -8
  %282 = add i64 %274, 6
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = add i32 %284, -1
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RCX, align 8, !tbaa !2428
  %287 = lshr i32 %285, 31
  %288 = sub i32 %279, %285
  %289 = icmp ult i32 %279, %285
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %72, align 1, !tbaa !2433
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #10
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %73, align 1, !tbaa !2447
  %296 = xor i32 %285, %279
  %297 = xor i32 %296, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %74, align 1, !tbaa !2451
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %75, align 1, !tbaa !2448
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %76, align 1, !tbaa !2449
  %305 = lshr i32 %279, 31
  %306 = xor i32 %287, %305
  %307 = xor i32 %303, %305
  %308 = add nuw nsw i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %77, align 1, !tbaa !2450
  %311 = icmp ne i8 %304, 0
  %312 = xor i1 %311, %309
  %.demorgan58 = or i1 %301, %312
  %.v59 = select i1 %.demorgan58, i64 17, i64 107
  %313 = add i64 %.v59, %274
  store i64 %313, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan58, label %block_401160, label %block_4011ba

block_4011cd:                                     ; preds = %block_401138
  %314 = add i64 %600, -60
  %315 = add i64 %638, 8
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = add i32 %317, 1
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX, align 8, !tbaa !2428
  %320 = icmp eq i32 %317, -1
  %321 = icmp eq i32 %318, 0
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %72, align 1, !tbaa !2433
  %324 = and i32 %318, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #10
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %73, align 1, !tbaa !2447
  %329 = xor i32 %318, %317
  %330 = lshr i32 %329, 4
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %74, align 1, !tbaa !2451
  %333 = zext i1 %321 to i8
  store i8 %333, i8* %75, align 1, !tbaa !2448
  %334 = lshr i32 %318, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %76, align 1, !tbaa !2449
  %336 = lshr i32 %317, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %334
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %77, align 1, !tbaa !2450
  %341 = add i64 %638, 14
  store i64 %341, i64* %PC, align 8
  store i32 %318, i32* %316, align 4
  %342 = load i64, i64* %PC, align 8
  %343 = add i64 %342, -779
  store i64 %343, i64* %PC, align 8, !tbaa !2428
  br label %block_400ed0

block_401149:                                     ; preds = %block_401138
  %344 = add i64 %638, 3
  store i64 %344, i64* %PC, align 8
  %345 = load i32, i32* %603, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX, align 8, !tbaa !2428
  %347 = add i64 %600, -64
  %348 = add i64 %638, 6
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %347 to i32*
  store i32 %345, i32* %349, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_40114f

block_401160:                                     ; preds = %block_40114f
  %350 = add i64 %275, -40
  %351 = add i64 %313, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %275, -68
  %355 = add i64 %313, 7
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = add i32 %357, -1
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = sext i32 %358 to i64
  %361 = mul nsw i64 %360, 24
  store i64 %361, i64* %RDX, align 8, !tbaa !2428
  %362 = lshr i64 %361, 63
  %363 = add i64 %361, %353
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = icmp ult i64 %363, %353
  %365 = icmp ult i64 %363, %361
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %72, align 1, !tbaa !2433
  %368 = trunc i64 %363 to i32
  %369 = and i32 %368, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #10
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %73, align 1, !tbaa !2447
  %374 = xor i64 %361, %353
  %375 = xor i64 %374, %363
  %376 = lshr i64 %375, 4
  %377 = trunc i64 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %74, align 1, !tbaa !2451
  %379 = icmp eq i64 %363, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %75, align 1, !tbaa !2448
  %381 = lshr i64 %363, 63
  %382 = trunc i64 %381 to i8
  store i8 %382, i8* %76, align 1, !tbaa !2449
  %383 = lshr i64 %353, 63
  %384 = xor i64 %381, %383
  %385 = xor i64 %381, %362
  %386 = add nuw nsw i64 %384, %385
  %387 = icmp eq i64 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %77, align 1, !tbaa !2450
  %389 = add i64 %313, 23
  store i64 %389, i64* %PC, align 8
  %390 = load i32, i32* %278, align 4
  %391 = add i32 %390, -1
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX, align 8, !tbaa !2428
  %393 = icmp eq i32 %390, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %72, align 1, !tbaa !2433
  %395 = and i32 %391, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #10
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %73, align 1, !tbaa !2447
  %400 = xor i32 %391, %390
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %74, align 1, !tbaa !2451
  %404 = icmp eq i32 %391, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %75, align 1, !tbaa !2448
  %406 = lshr i32 %391, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %76, align 1, !tbaa !2449
  %408 = lshr i32 %390, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %408
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %77, align 1, !tbaa !2450
  %413 = sext i32 %391 to i64
  store i64 %413, i64* %RDX, align 8, !tbaa !2428
  %414 = shl nsw i64 %413, 2
  %415 = add i64 %414, %363
  %416 = add i64 %313, 32
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = add i64 %275, -32
  %421 = add i64 %313, 36
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  %424 = add i64 %313, 40
  store i64 %424, i64* %PC, align 8
  %425 = load i32, i32* %356, align 4
  %426 = sext i32 %425 to i64
  %427 = mul nsw i64 %426, 24
  store i64 %427, i64* %RDX, align 8, !tbaa !2428
  %428 = lshr i64 %427, 63
  %429 = add i64 %427, %423
  store i64 %429, i64* %RAX, align 8, !tbaa !2428
  %430 = icmp ult i64 %429, %423
  %431 = icmp ult i64 %429, %427
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %72, align 1, !tbaa !2433
  %434 = trunc i64 %429 to i32
  %435 = and i32 %434, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #10
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %73, align 1, !tbaa !2447
  %440 = xor i64 %427, %423
  %441 = xor i64 %440, %429
  %442 = lshr i64 %441, 4
  %443 = trunc i64 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %74, align 1, !tbaa !2451
  %445 = icmp eq i64 %429, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %75, align 1, !tbaa !2448
  %447 = lshr i64 %429, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %76, align 1, !tbaa !2449
  %449 = lshr i64 %423, 63
  %450 = xor i64 %447, %449
  %451 = xor i64 %447, %428
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %77, align 1, !tbaa !2450
  %455 = load i64, i64* %RBP, align 8
  %456 = add i64 %455, -64
  %457 = add i64 %313, 51
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %RDX, align 8, !tbaa !2428
  %461 = shl nsw i64 %460, 2
  %462 = add i64 %461, %429
  %463 = add i64 %313, 54
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, %418
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RCX, align 8, !tbaa !2428
  %468 = icmp ult i32 %466, %418
  %469 = icmp ult i32 %466, %465
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %72, align 1, !tbaa !2433
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472) #10
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %73, align 1, !tbaa !2447
  %477 = xor i32 %465, %418
  %478 = xor i32 %477, %466
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %74, align 1, !tbaa !2451
  %482 = icmp eq i32 %466, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %75, align 1, !tbaa !2448
  %484 = lshr i32 %466, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %76, align 1, !tbaa !2449
  %486 = lshr i32 %418, 31
  %487 = lshr i32 %465, 31
  %488 = xor i32 %484, %486
  %489 = xor i32 %484, %487
  %490 = add nuw nsw i32 %488, %489
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %77, align 1, !tbaa !2450
  %493 = add i64 %455, -40
  %494 = add i64 %313, 58
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX, align 8, !tbaa !2428
  %497 = add i64 %455, -68
  %498 = add i64 %313, 62
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  %502 = mul nsw i64 %501, 24
  store i64 %502, i64* %RDX, align 8, !tbaa !2428
  %503 = lshr i64 %502, 63
  %504 = add i64 %502, %496
  store i64 %504, i64* %RAX, align 8, !tbaa !2428
  %505 = icmp ult i64 %504, %496
  %506 = icmp ult i64 %504, %502
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %72, align 1, !tbaa !2433
  %509 = trunc i64 %504 to i32
  %510 = and i32 %509, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510) #10
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %73, align 1, !tbaa !2447
  %515 = xor i64 %502, %496
  %516 = xor i64 %515, %504
  %517 = lshr i64 %516, 4
  %518 = trunc i64 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %74, align 1, !tbaa !2451
  %520 = icmp eq i64 %504, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %75, align 1, !tbaa !2448
  %522 = lshr i64 %504, 63
  %523 = trunc i64 %522 to i8
  store i8 %523, i8* %76, align 1, !tbaa !2449
  %524 = lshr i64 %496, 63
  %525 = xor i64 %522, %524
  %526 = xor i64 %522, %503
  %527 = add nuw nsw i64 %525, %526
  %528 = icmp eq i64 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %77, align 1, !tbaa !2450
  %530 = add i64 %313, 73
  store i64 %530, i64* %PC, align 8
  %531 = load i32, i32* %458, align 4
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %RDX, align 8, !tbaa !2428
  %533 = shl nsw i64 %532, 2
  %534 = add i64 %533, %504
  %535 = add i64 %313, 76
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  store i32 %466, i32* %536, align 4
  %537 = load i64, i64* %RBP, align 8
  %538 = add i64 %537, -64
  %539 = load i64, i64* %PC, align 8
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %538 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, 1
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX, align 8, !tbaa !2428
  %545 = icmp eq i32 %542, -1
  %546 = icmp eq i32 %543, 0
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %72, align 1, !tbaa !2433
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549) #10
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %73, align 1, !tbaa !2447
  %554 = xor i32 %543, %542
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %74, align 1, !tbaa !2451
  %558 = zext i1 %546 to i8
  store i8 %558, i8* %75, align 1, !tbaa !2448
  %559 = lshr i32 %543, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %76, align 1, !tbaa !2449
  %561 = lshr i32 %542, 31
  %562 = xor i32 %559, %561
  %563 = add nuw nsw i32 %562, %559
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %77, align 1, !tbaa !2450
  %566 = add i64 %539, 9
  store i64 %566, i64* %PC, align 8
  store i32 %543, i32* %541, align 4
  %567 = load i64, i64* %PC, align 8
  %568 = add i64 %567, -102
  store i64 %568, i64* %PC, align 8, !tbaa !2428
  br label %block_40114f

block_4011ba:                                     ; preds = %block_40114f
  %569 = add i64 %275, -68
  %570 = add i64 %313, 8
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX, align 8, !tbaa !2428
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %72, align 1, !tbaa !2433
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579) #10
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %73, align 1, !tbaa !2447
  %584 = xor i32 %573, %572
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %74, align 1, !tbaa !2451
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %75, align 1, !tbaa !2448
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %76, align 1, !tbaa !2449
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %77, align 1, !tbaa !2450
  %596 = add i64 %313, 14
  store i64 %596, i64* %PC, align 8
  store i32 %573, i32* %571, align 4
  %597 = load i64, i64* %PC, align 8
  %598 = add i64 %597, -144
  store i64 %598, i64* %PC, align 8, !tbaa !2428
  br label %block_401138

block_401138:                                     ; preds = %block_401131, %block_4011ba
  %599 = phi i64 [ %.pre46, %block_401131 ], [ %598, %block_4011ba ]
  %600 = load i64, i64* %RBP, align 8
  %601 = add i64 %600, -68
  %602 = add i64 %599, 3
  store i64 %602, i64* %PC, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX, align 8, !tbaa !2428
  %606 = add i64 %600, -8
  %607 = add i64 %599, 6
  store i64 %607, i64* %PC, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = add i32 %609, -1
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RCX, align 8, !tbaa !2428
  %612 = lshr i32 %610, 31
  %613 = sub i32 %604, %610
  %614 = icmp ult i32 %604, %610
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %72, align 1, !tbaa !2433
  %616 = and i32 %613, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616) #10
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %73, align 1, !tbaa !2447
  %621 = xor i32 %610, %604
  %622 = xor i32 %621, %613
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %74, align 1, !tbaa !2451
  %626 = icmp eq i32 %613, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %75, align 1, !tbaa !2448
  %628 = lshr i32 %613, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %76, align 1, !tbaa !2449
  %630 = lshr i32 %604, 31
  %631 = xor i32 %612, %630
  %632 = xor i32 %628, %630
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %77, align 1, !tbaa !2450
  %636 = icmp ne i8 %629, 0
  %637 = xor i1 %636, %634
  %.demorgan57 = or i1 %626, %637
  %.v60 = select i1 %.demorgan57, i64 17, i64 149
  %638 = add i64 %.v60, %599
  store i64 %638, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan57, label %block_401149, label %block_4011cd

block_401131:                                     ; preds = %block_4010fc
  %639 = add i64 %643, -68
  %640 = add i64 %681, 7
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %639 to i32*
  store i32 1, i32* %641, align 4
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_401138

block_4010fc:                                     ; preds = %block_4010f5, %block_40110d
  %642 = phi i64 [ %.pre45, %block_4010f5 ], [ %1541, %block_40110d ]
  %643 = load i64, i64* %RBP, align 8
  %644 = add i64 %643, -64
  %645 = add i64 %642, 3
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX, align 8, !tbaa !2428
  %649 = add i64 %643, -8
  %650 = add i64 %642, 6
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = add i32 %652, -1
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RCX, align 8, !tbaa !2428
  %655 = lshr i32 %653, 31
  %656 = sub i32 %647, %653
  %657 = icmp ult i32 %647, %653
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %72, align 1, !tbaa !2433
  %659 = and i32 %656, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659) #10
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %73, align 1, !tbaa !2447
  %664 = xor i32 %653, %647
  %665 = xor i32 %664, %656
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %74, align 1, !tbaa !2451
  %669 = icmp eq i32 %656, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %75, align 1, !tbaa !2448
  %671 = lshr i32 %656, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %76, align 1, !tbaa !2449
  %673 = lshr i32 %647, 31
  %674 = xor i32 %655, %673
  %675 = xor i32 %671, %673
  %676 = add nuw nsw i32 %675, %674
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %77, align 1, !tbaa !2450
  %679 = icmp ne i8 %672, 0
  %680 = xor i1 %679, %677
  %.demorgan56 = or i1 %669, %680
  %.v64 = select i1 %.demorgan56, i64 17, i64 53
  %681 = add i64 %.v64, %642
  store i64 %681, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan56, label %block_40110d, label %block_401131

block_400faf:                                     ; preds = %block_401095, %block_400fa9
  %682 = phi i64 [ %1303, %block_401095 ], [ %.pre43, %block_400fa9 ]
  %683 = load i64, i64* %RBP, align 8
  %684 = add i64 %683, -64
  %685 = add i64 %682, 3
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  %689 = add i64 %683, -8
  %690 = add i64 %682, 6
  store i64 %690, i64* %PC, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = add i32 %692, -1
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RCX, align 8, !tbaa !2428
  %695 = lshr i32 %693, 31
  %696 = sub i32 %687, %693
  %697 = icmp ult i32 %687, %693
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %72, align 1, !tbaa !2433
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699) #10
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %73, align 1, !tbaa !2447
  %704 = xor i32 %693, %687
  %705 = xor i32 %704, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %74, align 1, !tbaa !2451
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %75, align 1, !tbaa !2448
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %76, align 1, !tbaa !2449
  %713 = lshr i32 %687, 31
  %714 = xor i32 %695, %713
  %715 = xor i32 %711, %713
  %716 = add nuw nsw i32 %715, %714
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %77, align 1, !tbaa !2450
  %719 = icmp ne i8 %712, 0
  %720 = xor i1 %719, %717
  %.demorgan52 = or i1 %709, %720
  %.v55 = select i1 %.demorgan52, i64 17, i64 307
  %721 = add i64 %.v55, %682
  store i64 %721, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan52, label %block_400fc0, label %block_4010e2

block_400fa9:                                     ; preds = %block_400f98
  %722 = add i64 %797, 3
  store i64 %722, i64* %PC, align 8
  %723 = load i32, i32* %762, align 4
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX, align 8, !tbaa !2428
  %725 = add i64 %759, -64
  %726 = add i64 %797, 6
  store i64 %726, i64* %PC, align 8
  %727 = inttoptr i64 %725 to i32*
  store i32 %723, i32* %727, align 4
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_400faf

block_400f7e:                                     ; preds = %block_400efa
  %728 = add i64 %79, -68
  %729 = add i64 %117, 8
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, 1
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RAX, align 8, !tbaa !2428
  %734 = icmp eq i32 %731, -1
  %735 = icmp eq i32 %732, 0
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %72, align 1, !tbaa !2433
  %738 = and i32 %732, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738) #10
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %73, align 1, !tbaa !2447
  %743 = xor i32 %732, %731
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %74, align 1, !tbaa !2451
  %747 = zext i1 %735 to i8
  store i8 %747, i8* %75, align 1, !tbaa !2448
  %748 = lshr i32 %732, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %76, align 1, !tbaa !2449
  %750 = lshr i32 %731, 31
  %751 = xor i32 %748, %750
  %752 = add nuw nsw i32 %751, %748
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %77, align 1, !tbaa !2450
  %755 = add i64 %117, 14
  store i64 %755, i64* %PC, align 8
  store i32 %732, i32* %730, align 4
  %756 = load i64, i64* %PC, align 8
  %757 = add i64 %756, -169
  store i64 %757, i64* %PC, align 8, !tbaa !2428
  br label %block_400ee3

block_400f98:                                     ; preds = %block_400f91, %block_4010e2
  %758 = phi i64 [ %.pre42, %block_400f91 ], [ %232, %block_4010e2 ]
  %759 = load i64, i64* %RBP, align 8
  %760 = add i64 %759, -68
  %761 = add i64 %758, 3
  store i64 %761, i64* %PC, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX, align 8, !tbaa !2428
  %765 = add i64 %759, -8
  %766 = add i64 %758, 6
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = add i32 %768, -1
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RCX, align 8, !tbaa !2428
  %771 = lshr i32 %769, 31
  %772 = sub i32 %763, %769
  %773 = icmp ult i32 %763, %769
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %72, align 1, !tbaa !2433
  %775 = and i32 %772, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775) #10
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %73, align 1, !tbaa !2447
  %780 = xor i32 %769, %763
  %781 = xor i32 %780, %772
  %782 = lshr i32 %781, 4
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %74, align 1, !tbaa !2451
  %785 = icmp eq i32 %772, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %75, align 1, !tbaa !2448
  %787 = lshr i32 %772, 31
  %788 = trunc i32 %787 to i8
  store i8 %788, i8* %76, align 1, !tbaa !2449
  %789 = lshr i32 %763, 31
  %790 = xor i32 %771, %789
  %791 = xor i32 %787, %789
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %77, align 1, !tbaa !2450
  %795 = icmp ne i8 %788, 0
  %796 = xor i1 %795, %793
  %.demorgan51 = or i1 %785, %796
  %.v63 = select i1 %.demorgan51, i64 17, i64 349
  %797 = add i64 %.v63, %758
  store i64 %797, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan51, label %block_400fa9, label %block_4010f5

block_401016:                                     ; preds = %block_401005
  %798 = load i32, i32* %1549, align 4
  %799 = add i32 %798, -1
  %800 = zext i32 %799 to i64
  store i64 %800, i64* %RDX, align 8, !tbaa !2428
  %801 = icmp eq i32 %798, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %72, align 1, !tbaa !2433
  %803 = and i32 %799, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803) #10
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %73, align 1, !tbaa !2447
  %808 = xor i32 %799, %798
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %74, align 1, !tbaa !2451
  %812 = icmp eq i32 %799, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %75, align 1, !tbaa !2448
  %814 = lshr i32 %799, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %76, align 1, !tbaa !2449
  %816 = lshr i32 %798, 31
  %817 = xor i32 %814, %816
  %818 = add nuw nsw i32 %817, %816
  %819 = icmp eq i32 %818, 2
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %77, align 1, !tbaa !2450
  %821 = sext i32 %799 to i64
  store i64 %821, i64* %RCX, align 8, !tbaa !2428
  %822 = shl nsw i64 %821, 2
  %823 = add i64 %822, %1627
  %824 = add i64 %1584, 41
  store i64 %824, i64* %PC, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RDX, align 8, !tbaa !2428
  %828 = add i64 %1546, -48
  %829 = add i64 %1584, 45
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX, align 8, !tbaa !2428
  %832 = add i64 %1584, 49
  store i64 %832, i64* %PC, align 8
  %833 = load i32, i32* %1591, align 4
  %834 = sext i32 %833 to i64
  %835 = mul nsw i64 %834, 1536
  store i64 %835, i64* %RCX, align 8, !tbaa !2428
  %836 = lshr i64 %835, 63
  %837 = add i64 %835, %831
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = icmp ult i64 %837, %831
  %839 = icmp ult i64 %837, %835
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %72, align 1, !tbaa !2433
  %842 = trunc i64 %837 to i32
  %843 = and i32 %842, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843) #10
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %73, align 1, !tbaa !2447
  %848 = xor i64 %837, %831
  %849 = lshr i64 %848, 4
  %850 = trunc i64 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %74, align 1, !tbaa !2451
  %852 = icmp eq i64 %837, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %75, align 1, !tbaa !2448
  %854 = lshr i64 %837, 63
  %855 = trunc i64 %854 to i8
  store i8 %855, i8* %76, align 1, !tbaa !2449
  %856 = lshr i64 %831, 63
  %857 = xor i64 %854, %856
  %858 = xor i64 %854, %836
  %859 = add nuw nsw i64 %857, %858
  %860 = icmp eq i64 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %77, align 1, !tbaa !2450
  %862 = load i64, i64* %RBP, align 8
  %863 = add i64 %862, -64
  %864 = add i64 %1584, 63
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  %868 = shl nsw i64 %867, 8
  store i64 %868, i64* %RCX, align 8, !tbaa !2428
  %869 = add i64 %868, %837
  store i64 %869, i64* %RAX, align 8, !tbaa !2428
  %870 = icmp ult i64 %869, %837
  %871 = icmp ult i64 %869, %868
  %872 = or i1 %870, %871
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %72, align 1, !tbaa !2433
  %874 = trunc i64 %869 to i32
  %875 = and i32 %874, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875) #10
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %73, align 1, !tbaa !2447
  %880 = xor i64 %869, %837
  %881 = lshr i64 %880, 4
  %882 = trunc i64 %881 to i8
  %883 = and i8 %882, 1
  store i8 %883, i8* %74, align 1, !tbaa !2451
  %884 = icmp eq i64 %869, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %75, align 1, !tbaa !2448
  %886 = lshr i64 %869, 63
  %887 = trunc i64 %886 to i8
  store i8 %887, i8* %76, align 1, !tbaa !2449
  %888 = lshr i64 %867, 55
  %889 = and i64 %888, 1
  %890 = xor i64 %886, %854
  %891 = xor i64 %886, %889
  %892 = add nuw nsw i64 %890, %891
  %893 = icmp eq i64 %892, 2
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %77, align 1, !tbaa !2450
  %895 = add i64 %862, -72
  %896 = add i64 %1584, 74
  store i64 %896, i64* %PC, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = sext i32 %898 to i64
  store i64 %899, i64* %RCX, align 8, !tbaa !2428
  %900 = shl nsw i64 %899, 2
  %901 = add i64 %900, %869
  %902 = add i64 %1584, 77
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = add i32 %904, %826
  %906 = zext i32 %905 to i64
  store i64 %906, i64* %RDX, align 8, !tbaa !2428
  %907 = icmp ult i32 %905, %826
  %908 = icmp ult i32 %905, %904
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %72, align 1, !tbaa !2433
  %911 = and i32 %905, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911) #10
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %73, align 1, !tbaa !2447
  %916 = xor i32 %904, %826
  %917 = xor i32 %916, %905
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %74, align 1, !tbaa !2451
  %921 = icmp eq i32 %905, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %75, align 1, !tbaa !2448
  %923 = lshr i32 %905, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %76, align 1, !tbaa !2449
  %925 = lshr i32 %826, 31
  %926 = lshr i32 %904, 31
  %927 = xor i32 %923, %925
  %928 = xor i32 %923, %926
  %929 = add nuw nsw i32 %927, %928
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %77, align 1, !tbaa !2450
  %932 = add i64 %862, -56
  %933 = add i64 %1584, 81
  store i64 %933, i64* %PC, align 8
  %934 = inttoptr i64 %932 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %RAX, align 8, !tbaa !2428
  %936 = add i64 %862, -68
  %937 = add i64 %1584, 85
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = sext i32 %939 to i64
  %941 = mul nsw i64 %940, 1536
  store i64 %941, i64* %RCX, align 8, !tbaa !2428
  %942 = lshr i64 %941, 63
  %943 = add i64 %941, %935
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = icmp ult i64 %943, %935
  %945 = icmp ult i64 %943, %941
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %72, align 1, !tbaa !2433
  %948 = trunc i64 %943 to i32
  %949 = and i32 %948, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949) #10
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %73, align 1, !tbaa !2447
  %954 = xor i64 %943, %935
  %955 = lshr i64 %954, 4
  %956 = trunc i64 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %74, align 1, !tbaa !2451
  %958 = icmp eq i64 %943, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %75, align 1, !tbaa !2448
  %960 = lshr i64 %943, 63
  %961 = trunc i64 %960 to i8
  store i8 %961, i8* %76, align 1, !tbaa !2449
  %962 = lshr i64 %935, 63
  %963 = xor i64 %960, %962
  %964 = xor i64 %960, %942
  %965 = add nuw nsw i64 %963, %964
  %966 = icmp eq i64 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %77, align 1, !tbaa !2450
  %968 = add i64 %1584, 99
  store i64 %968, i64* %PC, align 8
  %969 = load i32, i32* %865, align 4
  %970 = sext i32 %969 to i64
  %971 = shl nsw i64 %970, 8
  store i64 %971, i64* %RCX, align 8, !tbaa !2428
  %972 = add i64 %971, %943
  store i64 %972, i64* %RAX, align 8, !tbaa !2428
  %973 = icmp ult i64 %972, %943
  %974 = icmp ult i64 %972, %971
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %72, align 1, !tbaa !2433
  %977 = trunc i64 %972 to i32
  %978 = and i32 %977, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978) #10
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %73, align 1, !tbaa !2447
  %983 = xor i64 %972, %943
  %984 = lshr i64 %983, 4
  %985 = trunc i64 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %74, align 1, !tbaa !2451
  %987 = icmp eq i64 %972, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %75, align 1, !tbaa !2448
  %989 = lshr i64 %972, 63
  %990 = trunc i64 %989 to i8
  store i8 %990, i8* %76, align 1, !tbaa !2449
  %991 = lshr i64 %970, 55
  %992 = and i64 %991, 1
  %993 = xor i64 %989, %960
  %994 = xor i64 %989, %992
  %995 = add nuw nsw i64 %993, %994
  %996 = icmp eq i64 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %77, align 1, !tbaa !2450
  %998 = load i64, i64* %RBP, align 8
  %999 = add i64 %998, -72
  %1000 = add i64 %1584, 110
  store i64 %1000, i64* %PC, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RCX, align 8, !tbaa !2428
  %1004 = shl nsw i64 %1003, 2
  %1005 = add i64 %1004, %972
  %1006 = load i32, i32* %EDX, align 4
  %1007 = add i64 %1584, 113
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1005 to i32*
  store i32 %1006, i32* %1008, align 4
  %1009 = load i64, i64* %RBP, align 8
  %1010 = add i64 %1009, -72
  %1011 = load i64, i64* %PC, align 8
  %1012 = add i64 %1011, 3
  store i64 %1012, i64* %PC, align 8
  %1013 = inttoptr i64 %1010 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = add i32 %1014, 1
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RAX, align 8, !tbaa !2428
  %1017 = icmp eq i32 %1014, -1
  %1018 = icmp eq i32 %1015, 0
  %1019 = or i1 %1017, %1018
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %72, align 1, !tbaa !2433
  %1021 = and i32 %1015, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021) #10
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %73, align 1, !tbaa !2447
  %1026 = xor i32 %1015, %1014
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %74, align 1, !tbaa !2451
  %1030 = zext i1 %1018 to i8
  store i8 %1030, i8* %75, align 1, !tbaa !2448
  %1031 = lshr i32 %1015, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %76, align 1, !tbaa !2449
  %1033 = lshr i32 %1014, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1031
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %77, align 1, !tbaa !2450
  %1038 = add i64 %1011, 9
  store i64 %1038, i64* %PC, align 8
  store i32 %1015, i32* %1013, align 4
  %1039 = load i64, i64* %PC, align 8
  %1040 = add i64 %1039, -139
  store i64 %1040, i64* %PC, align 8, !tbaa !2428
  br label %block_401005

block_400f23:                                     ; preds = %block_400f12
  %1041 = add i64 %1305, -24
  %1042 = add i64 %1343, 4
  store i64 %1042, i64* %PC, align 8
  %1043 = inttoptr i64 %1041 to i64*
  %1044 = load i64, i64* %1043, align 8
  store i64 %1044, i64* %RAX, align 8, !tbaa !2428
  %1045 = add i64 %1305, -68
  %1046 = add i64 %1343, 8
  store i64 %1046, i64* %PC, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = mul nsw i64 %1049, 24
  store i64 %1050, i64* %RCX, align 8, !tbaa !2428
  %1051 = lshr i64 %1050, 63
  %1052 = add i64 %1050, %1044
  store i64 %1052, i64* %RAX, align 8, !tbaa !2428
  %1053 = icmp ult i64 %1052, %1044
  %1054 = icmp ult i64 %1052, %1050
  %1055 = or i1 %1053, %1054
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %72, align 1, !tbaa !2433
  %1057 = trunc i64 %1052 to i32
  %1058 = and i32 %1057, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058) #10
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %73, align 1, !tbaa !2447
  %1063 = xor i64 %1050, %1044
  %1064 = xor i64 %1063, %1052
  %1065 = lshr i64 %1064, 4
  %1066 = trunc i64 %1065 to i8
  %1067 = and i8 %1066, 1
  store i8 %1067, i8* %74, align 1, !tbaa !2451
  %1068 = icmp eq i64 %1052, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %75, align 1, !tbaa !2448
  %1070 = lshr i64 %1052, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %76, align 1, !tbaa !2449
  %1072 = lshr i64 %1044, 63
  %1073 = xor i64 %1070, %1072
  %1074 = xor i64 %1070, %1051
  %1075 = add nuw nsw i64 %1073, %1074
  %1076 = icmp eq i64 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %77, align 1, !tbaa !2450
  %1078 = add i64 %1305, -64
  %1079 = add i64 %1343, 19
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %RCX, align 8, !tbaa !2428
  %1083 = shl nsw i64 %1082, 2
  %1084 = add i64 %1083, %1052
  %1085 = add i64 %1343, 22
  store i64 %1085, i64* %PC, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RDX, align 8, !tbaa !2428
  %1089 = add i64 %1305, -48
  %1090 = add i64 %1343, 26
  store i64 %1090, i64* %PC, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %RAX, align 8, !tbaa !2428
  %1093 = add i64 %1343, 30
  store i64 %1093, i64* %PC, align 8
  %1094 = load i32, i32* %1047, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = mul nsw i64 %1095, 1536
  store i64 %1096, i64* %RCX, align 8, !tbaa !2428
  %1097 = lshr i64 %1096, 63
  %1098 = add i64 %1096, %1092
  store i64 %1098, i64* %RAX, align 8, !tbaa !2428
  %1099 = icmp ult i64 %1098, %1092
  %1100 = icmp ult i64 %1098, %1096
  %1101 = or i1 %1099, %1100
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %72, align 1, !tbaa !2433
  %1103 = trunc i64 %1098 to i32
  %1104 = and i32 %1103, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104) #10
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %73, align 1, !tbaa !2447
  %1109 = xor i64 %1098, %1092
  %1110 = lshr i64 %1109, 4
  %1111 = trunc i64 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %74, align 1, !tbaa !2451
  %1113 = icmp eq i64 %1098, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %75, align 1, !tbaa !2448
  %1115 = lshr i64 %1098, 63
  %1116 = trunc i64 %1115 to i8
  store i8 %1116, i8* %76, align 1, !tbaa !2449
  %1117 = lshr i64 %1092, 63
  %1118 = xor i64 %1115, %1117
  %1119 = xor i64 %1115, %1097
  %1120 = add nuw nsw i64 %1118, %1119
  %1121 = icmp eq i64 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %77, align 1, !tbaa !2450
  %1123 = load i64, i64* %RBP, align 8
  %1124 = add i64 %1123, -64
  %1125 = add i64 %1343, 44
  store i64 %1125, i64* %PC, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = shl nsw i64 %1128, 8
  store i64 %1129, i64* %RCX, align 8, !tbaa !2428
  %1130 = add i64 %1129, %1098
  store i64 %1130, i64* %RAX, align 8, !tbaa !2428
  %1131 = icmp ult i64 %1130, %1098
  %1132 = icmp ult i64 %1130, %1129
  %1133 = or i1 %1131, %1132
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %72, align 1, !tbaa !2433
  %1135 = trunc i64 %1130 to i32
  %1136 = and i32 %1135, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136) #10
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %73, align 1, !tbaa !2447
  %1141 = xor i64 %1130, %1098
  %1142 = lshr i64 %1141, 4
  %1143 = trunc i64 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %74, align 1, !tbaa !2451
  %1145 = icmp eq i64 %1130, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %75, align 1, !tbaa !2448
  %1147 = lshr i64 %1130, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %76, align 1, !tbaa !2449
  %1149 = lshr i64 %1128, 55
  %1150 = and i64 %1149, 1
  %1151 = xor i64 %1147, %1115
  %1152 = xor i64 %1147, %1150
  %1153 = add nuw nsw i64 %1151, %1152
  %1154 = icmp eq i64 %1153, 2
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %77, align 1, !tbaa !2450
  %1156 = add i64 %1123, -72
  %1157 = add i64 %1343, 55
  store i64 %1157, i64* %PC, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = sext i32 %1159 to i64
  store i64 %1160, i64* %RCX, align 8, !tbaa !2428
  %1161 = shl nsw i64 %1160, 2
  %1162 = add i64 %1161, %1130
  %1163 = add i64 %1343, 58
  store i64 %1163, i64* %PC, align 8
  %1164 = inttoptr i64 %1162 to i32*
  store i32 %1087, i32* %1164, align 4
  %1165 = load i64, i64* %RBP, align 8
  %1166 = add i64 %1165, -72
  %1167 = load i64, i64* %PC, align 8
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC, align 8
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = add i32 %1170, 1
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RAX, align 8, !tbaa !2428
  %1173 = icmp eq i32 %1170, -1
  %1174 = icmp eq i32 %1171, 0
  %1175 = or i1 %1173, %1174
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %72, align 1, !tbaa !2433
  %1177 = and i32 %1171, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177) #10
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %73, align 1, !tbaa !2447
  %1182 = xor i32 %1171, %1170
  %1183 = lshr i32 %1182, 4
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  store i8 %1185, i8* %74, align 1, !tbaa !2451
  %1186 = zext i1 %1174 to i8
  store i8 %1186, i8* %75, align 1, !tbaa !2448
  %1187 = lshr i32 %1171, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %76, align 1, !tbaa !2449
  %1189 = lshr i32 %1170, 31
  %1190 = xor i32 %1187, %1189
  %1191 = add nuw nsw i32 %1190, %1187
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %77, align 1, !tbaa !2450
  %1194 = add i64 %1167, 9
  store i64 %1194, i64* %PC, align 8
  store i32 %1171, i32* %1169, align 4
  %1195 = load i64, i64* %PC, align 8
  %1196 = add i64 %1195, -84
  store i64 %1196, i64* %PC, align 8, !tbaa !2428
  br label %block_400f12

block_401095:                                     ; preds = %block_401005
  %1197 = load i32, i32* %1554, align 4
  %1198 = add i32 %1197, -1
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RDX, align 8, !tbaa !2428
  %1200 = icmp eq i32 %1197, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %72, align 1, !tbaa !2433
  %1202 = and i32 %1198, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202) #10
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %73, align 1, !tbaa !2447
  %1207 = xor i32 %1198, %1197
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %74, align 1, !tbaa !2451
  %1211 = icmp eq i32 %1198, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %75, align 1, !tbaa !2448
  %1213 = lshr i32 %1198, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %76, align 1, !tbaa !2449
  %1215 = lshr i32 %1197, 31
  %1216 = xor i32 %1213, %1215
  %1217 = add nuw nsw i32 %1216, %1215
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %77, align 1, !tbaa !2450
  %1220 = sext i32 %1198 to i64
  store i64 %1220, i64* %RCX, align 8, !tbaa !2428
  %1221 = shl nsw i64 %1220, 2
  %1222 = add i64 %1221, %1627
  %1223 = add i64 %1584, 41
  store i64 %1223, i64* %PC, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = zext i32 %1225 to i64
  store i64 %1226, i64* %RDX, align 8, !tbaa !2428
  %1227 = add i64 %1546, -32
  %1228 = add i64 %1584, 45
  store i64 %1228, i64* %PC, align 8
  %1229 = inttoptr i64 %1227 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RAX, align 8, !tbaa !2428
  %1231 = add i64 %1584, 49
  store i64 %1231, i64* %PC, align 8
  %1232 = load i32, i32* %1591, align 4
  %1233 = sext i32 %1232 to i64
  %1234 = mul nsw i64 %1233, 24
  store i64 %1234, i64* %RCX, align 8, !tbaa !2428
  %1235 = lshr i64 %1234, 63
  %1236 = add i64 %1234, %1230
  store i64 %1236, i64* %RAX, align 8, !tbaa !2428
  %1237 = icmp ult i64 %1236, %1230
  %1238 = icmp ult i64 %1236, %1234
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %72, align 1, !tbaa !2433
  %1241 = trunc i64 %1236 to i32
  %1242 = and i32 %1241, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242) #10
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %73, align 1, !tbaa !2447
  %1247 = xor i64 %1234, %1230
  %1248 = xor i64 %1247, %1236
  %1249 = lshr i64 %1248, 4
  %1250 = trunc i64 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %74, align 1, !tbaa !2451
  %1252 = icmp eq i64 %1236, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %75, align 1, !tbaa !2448
  %1254 = lshr i64 %1236, 63
  %1255 = trunc i64 %1254 to i8
  store i8 %1255, i8* %76, align 1, !tbaa !2449
  %1256 = lshr i64 %1230, 63
  %1257 = xor i64 %1254, %1256
  %1258 = xor i64 %1254, %1235
  %1259 = add nuw nsw i64 %1257, %1258
  %1260 = icmp eq i64 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %77, align 1, !tbaa !2450
  %1262 = load i64, i64* %RBP, align 8
  %1263 = add i64 %1262, -64
  %1264 = add i64 %1584, 60
  store i64 %1264, i64* %PC, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = sext i32 %1266 to i64
  store i64 %1267, i64* %RCX, align 8, !tbaa !2428
  %1268 = shl nsw i64 %1267, 2
  %1269 = add i64 %1268, %1236
  %1270 = add i64 %1584, 63
  store i64 %1270, i64* %PC, align 8
  %1271 = inttoptr i64 %1269 to i32*
  store i32 %1225, i32* %1271, align 4
  %1272 = load i64, i64* %RBP, align 8
  %1273 = add i64 %1272, -64
  %1274 = load i64, i64* %PC, align 8
  %1275 = add i64 %1274, 3
  store i64 %1275, i64* %PC, align 8
  %1276 = inttoptr i64 %1273 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = add i32 %1277, 1
  %1279 = zext i32 %1278 to i64
  store i64 %1279, i64* %RAX, align 8, !tbaa !2428
  %1280 = icmp eq i32 %1277, -1
  %1281 = icmp eq i32 %1278, 0
  %1282 = or i1 %1280, %1281
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %72, align 1, !tbaa !2433
  %1284 = and i32 %1278, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284) #10
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %73, align 1, !tbaa !2447
  %1289 = xor i32 %1278, %1277
  %1290 = lshr i32 %1289, 4
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %74, align 1, !tbaa !2451
  %1293 = zext i1 %1281 to i8
  store i8 %1293, i8* %75, align 1, !tbaa !2448
  %1294 = lshr i32 %1278, 31
  %1295 = trunc i32 %1294 to i8
  store i8 %1295, i8* %76, align 1, !tbaa !2449
  %1296 = lshr i32 %1277, 31
  %1297 = xor i32 %1294, %1296
  %1298 = add nuw nsw i32 %1297, %1294
  %1299 = icmp eq i32 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %77, align 1, !tbaa !2450
  %1301 = add i64 %1274, 9
  store i64 %1301, i64* %PC, align 8
  store i32 %1278, i32* %1276, align 4
  %1302 = load i64, i64* %PC, align 8
  %1303 = add i64 %1302, -302
  store i64 %1303, i64* %PC, align 8, !tbaa !2428
  br label %block_400faf

block_400f12:                                     ; preds = %block_400f0b, %block_400f23
  %1304 = phi i64 [ %.pre41, %block_400f0b ], [ %1196, %block_400f23 ]
  %1305 = load i64, i64* %RBP, align 8
  %1306 = add i64 %1305, -72
  %1307 = add i64 %1304, 3
  store i64 %1307, i64* %PC, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX, align 8, !tbaa !2428
  %1311 = add i64 %1305, -12
  %1312 = add i64 %1304, 6
  store i64 %1312, i64* %PC, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = add i32 %1314, -1
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RCX, align 8, !tbaa !2428
  %1317 = lshr i32 %1315, 31
  %1318 = sub i32 %1309, %1315
  %1319 = icmp ult i32 %1309, %1315
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %72, align 1, !tbaa !2433
  %1321 = and i32 %1318, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321) #10
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %73, align 1, !tbaa !2447
  %1326 = xor i32 %1315, %1309
  %1327 = xor i32 %1326, %1318
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %74, align 1, !tbaa !2451
  %1331 = icmp eq i32 %1318, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %75, align 1, !tbaa !2448
  %1333 = lshr i32 %1318, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %76, align 1, !tbaa !2449
  %1335 = lshr i32 %1309, 31
  %1336 = xor i32 %1317, %1335
  %1337 = xor i32 %1333, %1335
  %1338 = add nuw nsw i32 %1337, %1336
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %77, align 1, !tbaa !2450
  %1341 = icmp ne i8 %1334, 0
  %1342 = xor i1 %1341, %1339
  %.demorgan49 = or i1 %1331, %1342
  %.v = select i1 %.demorgan49, i64 17, i64 89
  %1343 = add i64 %.v, %1304
  store i64 %1343, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan49, label %block_400f23, label %block_400f6b

block_400f91:                                     ; preds = %block_400ee3
  %1344 = add i64 %163, 7
  store i64 %1344, i64* %PC, align 8
  store i32 0, i32* %128, align 4
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_400f98

block_400fc0:                                     ; preds = %block_400faf
  %1345 = add i64 %683, -48
  %1346 = add i64 %721, 4
  store i64 %1346, i64* %PC, align 8
  %1347 = inttoptr i64 %1345 to i64*
  %1348 = load i64, i64* %1347, align 8
  store i64 %1348, i64* %RAX, align 8, !tbaa !2428
  %1349 = add i64 %683, -68
  %1350 = add i64 %721, 8
  store i64 %1350, i64* %PC, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = sext i32 %1352 to i64
  %1354 = mul nsw i64 %1353, 1536
  store i64 %1354, i64* %RCX, align 8, !tbaa !2428
  %1355 = lshr i64 %1354, 63
  %1356 = add i64 %1354, %1348
  store i64 %1356, i64* %RAX, align 8, !tbaa !2428
  %1357 = icmp ult i64 %1356, %1348
  %1358 = icmp ult i64 %1356, %1354
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %72, align 1, !tbaa !2433
  %1361 = trunc i64 %1356 to i32
  %1362 = and i32 %1361, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362) #10
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %73, align 1, !tbaa !2447
  %1367 = xor i64 %1356, %1348
  %1368 = lshr i64 %1367, 4
  %1369 = trunc i64 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %74, align 1, !tbaa !2451
  %1371 = icmp eq i64 %1356, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %75, align 1, !tbaa !2448
  %1373 = lshr i64 %1356, 63
  %1374 = trunc i64 %1373 to i8
  store i8 %1374, i8* %76, align 1, !tbaa !2449
  %1375 = lshr i64 %1348, 63
  %1376 = xor i64 %1373, %1375
  %1377 = xor i64 %1373, %1355
  %1378 = add nuw nsw i64 %1376, %1377
  %1379 = icmp eq i64 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %77, align 1, !tbaa !2450
  %1381 = add i64 %721, 22
  store i64 %1381, i64* %PC, align 8
  %1382 = load i32, i32* %686, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = shl nsw i64 %1383, 8
  store i64 %1384, i64* %RCX, align 8, !tbaa !2428
  %1385 = add i64 %1384, %1356
  store i64 %1385, i64* %RAX, align 8, !tbaa !2428
  %1386 = icmp ult i64 %1385, %1356
  %1387 = icmp ult i64 %1385, %1384
  %1388 = or i1 %1386, %1387
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %72, align 1, !tbaa !2433
  %1390 = trunc i64 %1385 to i32
  %1391 = and i32 %1390, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391) #10
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %73, align 1, !tbaa !2447
  %1396 = xor i64 %1385, %1356
  %1397 = lshr i64 %1396, 4
  %1398 = trunc i64 %1397 to i8
  %1399 = and i8 %1398, 1
  store i8 %1399, i8* %74, align 1, !tbaa !2451
  %1400 = icmp eq i64 %1385, 0
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %75, align 1, !tbaa !2448
  %1402 = lshr i64 %1385, 63
  %1403 = trunc i64 %1402 to i8
  store i8 %1403, i8* %76, align 1, !tbaa !2449
  %1404 = lshr i64 %1383, 55
  %1405 = and i64 %1404, 1
  %1406 = xor i64 %1402, %1373
  %1407 = xor i64 %1402, %1405
  %1408 = add nuw nsw i64 %1406, %1407
  %1409 = icmp eq i64 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %77, align 1, !tbaa !2450
  %1411 = inttoptr i64 %1385 to i32*
  %1412 = add i64 %721, 31
  store i64 %1412, i64* %PC, align 8
  %1413 = load i32, i32* %1411, align 4
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RDX, align 8, !tbaa !2428
  %1415 = add i64 %683, -56
  %1416 = add i64 %721, 35
  store i64 %1416, i64* %PC, align 8
  %1417 = inttoptr i64 %1415 to i64*
  %1418 = load i64, i64* %1417, align 8
  store i64 %1418, i64* %RAX, align 8, !tbaa !2428
  %1419 = add i64 %721, 39
  store i64 %1419, i64* %PC, align 8
  %1420 = load i32, i32* %1351, align 4
  %1421 = sext i32 %1420 to i64
  %1422 = mul nsw i64 %1421, 1536
  store i64 %1422, i64* %RCX, align 8, !tbaa !2428
  %1423 = lshr i64 %1422, 63
  %1424 = add i64 %1422, %1418
  store i64 %1424, i64* %RAX, align 8, !tbaa !2428
  %1425 = icmp ult i64 %1424, %1418
  %1426 = icmp ult i64 %1424, %1422
  %1427 = or i1 %1425, %1426
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %72, align 1, !tbaa !2433
  %1429 = trunc i64 %1424 to i32
  %1430 = and i32 %1429, 255
  %1431 = tail call i32 @llvm.ctpop.i32(i32 %1430) #10
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = xor i8 %1433, 1
  store i8 %1434, i8* %73, align 1, !tbaa !2447
  %1435 = xor i64 %1424, %1418
  %1436 = lshr i64 %1435, 4
  %1437 = trunc i64 %1436 to i8
  %1438 = and i8 %1437, 1
  store i8 %1438, i8* %74, align 1, !tbaa !2451
  %1439 = icmp eq i64 %1424, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %75, align 1, !tbaa !2448
  %1441 = lshr i64 %1424, 63
  %1442 = trunc i64 %1441 to i8
  store i8 %1442, i8* %76, align 1, !tbaa !2449
  %1443 = lshr i64 %1418, 63
  %1444 = xor i64 %1441, %1443
  %1445 = xor i64 %1441, %1423
  %1446 = add nuw nsw i64 %1444, %1445
  %1447 = icmp eq i64 %1446, 2
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %77, align 1, !tbaa !2450
  %1449 = add i64 %721, 53
  store i64 %1449, i64* %PC, align 8
  %1450 = load i32, i32* %686, align 4
  %1451 = sext i32 %1450 to i64
  %1452 = shl nsw i64 %1451, 8
  store i64 %1452, i64* %RCX, align 8, !tbaa !2428
  %1453 = add i64 %1452, %1424
  store i64 %1453, i64* %RAX, align 8, !tbaa !2428
  %1454 = icmp ult i64 %1453, %1424
  %1455 = icmp ult i64 %1453, %1452
  %1456 = or i1 %1454, %1455
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %72, align 1, !tbaa !2433
  %1458 = trunc i64 %1453 to i32
  %1459 = and i32 %1458, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459) #10
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %73, align 1, !tbaa !2447
  %1464 = xor i64 %1453, %1424
  %1465 = lshr i64 %1464, 4
  %1466 = trunc i64 %1465 to i8
  %1467 = and i8 %1466, 1
  store i8 %1467, i8* %74, align 1, !tbaa !2451
  %1468 = icmp eq i64 %1453, 0
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %75, align 1, !tbaa !2448
  %1470 = lshr i64 %1453, 63
  %1471 = trunc i64 %1470 to i8
  store i8 %1471, i8* %76, align 1, !tbaa !2449
  %1472 = lshr i64 %1451, 55
  %1473 = and i64 %1472, 1
  %1474 = xor i64 %1470, %1441
  %1475 = xor i64 %1470, %1473
  %1476 = add nuw nsw i64 %1474, %1475
  %1477 = icmp eq i64 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %77, align 1, !tbaa !2450
  %1479 = inttoptr i64 %1453 to i32*
  %1480 = add i64 %721, 62
  store i64 %1480, i64* %PC, align 8
  store i32 %1413, i32* %1479, align 4
  %1481 = load i64, i64* %RBP, align 8
  %1482 = add i64 %1481, -72
  %1483 = load i64, i64* %PC, align 8
  %1484 = add i64 %1483, 7
  store i64 %1484, i64* %PC, align 8
  %1485 = inttoptr i64 %1482 to i32*
  store i32 1, i32* %1485, align 4
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_401005

block_40110d:                                     ; preds = %block_4010fc
  %1486 = add i64 %643, -32
  %1487 = add i64 %681, 4
  store i64 %1487, i64* %PC, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RAX, align 8, !tbaa !2428
  %1490 = add i64 %681, 8
  store i64 %1490, i64* %PC, align 8
  %1491 = load i32, i32* %646, align 4
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %RCX, align 8, !tbaa !2428
  %1493 = shl nsw i64 %1492, 2
  %1494 = add i64 %1493, %1489
  %1495 = add i64 %681, 11
  store i64 %1495, i64* %PC, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RDX, align 8, !tbaa !2428
  %1499 = add i64 %643, -40
  %1500 = add i64 %681, 15
  store i64 %1500, i64* %PC, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RAX, align 8, !tbaa !2428
  %1503 = add i64 %681, 19
  store i64 %1503, i64* %PC, align 8
  %1504 = load i32, i32* %646, align 4
  %1505 = sext i32 %1504 to i64
  store i64 %1505, i64* %RCX, align 8, !tbaa !2428
  %1506 = shl nsw i64 %1505, 2
  %1507 = add i64 %1506, %1502
  %1508 = add i64 %681, 22
  store i64 %1508, i64* %PC, align 8
  %1509 = inttoptr i64 %1507 to i32*
  store i32 %1497, i32* %1509, align 4
  %1510 = load i64, i64* %RBP, align 8
  %1511 = add i64 %1510, -64
  %1512 = load i64, i64* %PC, align 8
  %1513 = add i64 %1512, 3
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1511 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = add i32 %1515, 1
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX, align 8, !tbaa !2428
  %1518 = icmp eq i32 %1515, -1
  %1519 = icmp eq i32 %1516, 0
  %1520 = or i1 %1518, %1519
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %72, align 1, !tbaa !2433
  %1522 = and i32 %1516, 255
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522) #10
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  store i8 %1526, i8* %73, align 1, !tbaa !2447
  %1527 = xor i32 %1516, %1515
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %74, align 1, !tbaa !2451
  %1531 = zext i1 %1519 to i8
  store i8 %1531, i8* %75, align 1, !tbaa !2448
  %1532 = lshr i32 %1516, 31
  %1533 = trunc i32 %1532 to i8
  store i8 %1533, i8* %76, align 1, !tbaa !2449
  %1534 = lshr i32 %1515, 31
  %1535 = xor i32 %1532, %1534
  %1536 = add nuw nsw i32 %1535, %1532
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %77, align 1, !tbaa !2450
  %1539 = add i64 %1512, 9
  store i64 %1539, i64* %PC, align 8
  store i32 %1516, i32* %1514, align 4
  %1540 = load i64, i64* %PC, align 8
  %1541 = add i64 %1540, -48
  store i64 %1541, i64* %PC, align 8, !tbaa !2428
  br label %block_4010fc

block_400f0b:                                     ; preds = %block_400efa
  %1542 = add i64 %79, -72
  %1543 = add i64 %117, 7
  store i64 %1543, i64* %PC, align 8
  %1544 = inttoptr i64 %1542 to i32*
  store i32 0, i32* %1544, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400f12

block_401005:                                     ; preds = %block_400fc0, %block_401016
  %1545 = phi i64 [ %.pre44, %block_400fc0 ], [ %1040, %block_401016 ]
  %1546 = load i64, i64* %RBP, align 8
  %1547 = add i64 %1546, -72
  %1548 = add i64 %1545, 3
  store i64 %1548, i64* %PC, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RAX, align 8, !tbaa !2428
  %1552 = add i64 %1546, -12
  %1553 = add i64 %1545, 6
  store i64 %1553, i64* %PC, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = add i32 %1555, -1
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RCX, align 8, !tbaa !2428
  %1558 = lshr i32 %1556, 31
  %1559 = sub i32 %1550, %1556
  %1560 = icmp ult i32 %1550, %1556
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %72, align 1, !tbaa !2433
  %1562 = and i32 %1559, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562) #10
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %73, align 1, !tbaa !2447
  %1567 = xor i32 %1556, %1550
  %1568 = xor i32 %1567, %1559
  %1569 = lshr i32 %1568, 4
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %74, align 1, !tbaa !2451
  %1572 = icmp eq i32 %1559, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %75, align 1, !tbaa !2448
  %1574 = lshr i32 %1559, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %76, align 1, !tbaa !2449
  %1576 = lshr i32 %1550, 31
  %1577 = xor i32 %1558, %1576
  %1578 = xor i32 %1574, %1576
  %1579 = add nuw nsw i32 %1578, %1577
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %77, align 1, !tbaa !2450
  %1582 = icmp ne i8 %1575, 0
  %1583 = xor i1 %1582, %1580
  %.demorgan53 = or i1 %1572, %1583
  %.v54 = select i1 %.demorgan53, i64 17, i64 144
  %1584 = add i64 %.v54, %1545
  %1585 = add i64 %1546, -56
  %1586 = add i64 %1584, 4
  store i64 %1586, i64* %PC, align 8
  %1587 = inttoptr i64 %1585 to i64*
  %1588 = load i64, i64* %1587, align 8
  store i64 %1588, i64* %RAX, align 8, !tbaa !2428
  %1589 = add i64 %1546, -68
  %1590 = add i64 %1584, 8
  store i64 %1590, i64* %PC, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = mul nsw i64 %1593, 1536
  store i64 %1594, i64* %RCX, align 8, !tbaa !2428
  %1595 = lshr i64 %1594, 63
  %1596 = add i64 %1594, %1588
  store i64 %1596, i64* %RAX, align 8, !tbaa !2428
  %1597 = icmp ult i64 %1596, %1588
  %1598 = icmp ult i64 %1596, %1594
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %72, align 1, !tbaa !2433
  %1601 = trunc i64 %1596 to i32
  %1602 = and i32 %1601, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602) #10
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %73, align 1, !tbaa !2447
  %1607 = xor i64 %1596, %1588
  %1608 = lshr i64 %1607, 4
  %1609 = trunc i64 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %74, align 1, !tbaa !2451
  %1611 = icmp eq i64 %1596, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %75, align 1, !tbaa !2448
  %1613 = lshr i64 %1596, 63
  %1614 = trunc i64 %1613 to i8
  store i8 %1614, i8* %76, align 1, !tbaa !2449
  %1615 = lshr i64 %1588, 63
  %1616 = xor i64 %1613, %1615
  %1617 = xor i64 %1613, %1595
  %1618 = add nuw nsw i64 %1616, %1617
  %1619 = icmp eq i64 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %77, align 1, !tbaa !2450
  %1621 = add i64 %1546, -64
  %1622 = add i64 %1584, 22
  store i64 %1622, i64* %PC, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = sext i32 %1624 to i64
  %1626 = shl nsw i64 %1625, 8
  store i64 %1626, i64* %RCX, align 8, !tbaa !2428
  %1627 = add i64 %1626, %1596
  store i64 %1627, i64* %RAX, align 8, !tbaa !2428
  %1628 = icmp ult i64 %1627, %1596
  %1629 = icmp ult i64 %1627, %1626
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %72, align 1, !tbaa !2433
  %1632 = trunc i64 %1627 to i32
  %1633 = and i32 %1632, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633) #10
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %73, align 1, !tbaa !2447
  %1638 = xor i64 %1627, %1596
  %1639 = lshr i64 %1638, 4
  %1640 = trunc i64 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %74, align 1, !tbaa !2451
  %1642 = icmp eq i64 %1627, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %75, align 1, !tbaa !2448
  %1644 = lshr i64 %1627, 63
  %1645 = trunc i64 %1644 to i8
  store i8 %1645, i8* %76, align 1, !tbaa !2449
  %1646 = lshr i64 %1625, 55
  %1647 = and i64 %1646, 1
  %1648 = xor i64 %1644, %1613
  %1649 = xor i64 %1644, %1647
  %1650 = add nuw nsw i64 %1648, %1649
  %1651 = icmp eq i64 %1650, 2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %77, align 1, !tbaa !2450
  %1653 = add i64 %1584, 32
  store i64 %1653, i64* %PC, align 8
  br i1 %.demorgan53, label %block_401016, label %block_401095

block_4010f5:                                     ; preds = %block_400f98
  %1654 = add i64 %759, -64
  %1655 = add i64 %797, 7
  store i64 %1655, i64* %PC, align 8
  %1656 = inttoptr i64 %1654 to i32*
  store i32 0, i32* %1656, align 4
  %.pre45 = load i64, i64* %PC, align 8
  br label %block_4010fc
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401490___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401490:
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006d0_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4006d0_frame_dummy_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4006d0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006a0___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_4006a0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4006a0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8_free(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4005c0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602108_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e0_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401490___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401490;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401490___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_401490___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401420___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401420;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_401420___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_401420___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4008c0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_flush_cache() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4006e0_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_start() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400770_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400560__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400760_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_alloc_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400800;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400800_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401494;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_401494__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_stop() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4007a0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @polybench_timer_print() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #10 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %2, %0
  tail call void @callback_sub_401420___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_401490___libc_csu_fini()
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
attributes #8 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { norecurse nounwind }
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
!2432 = !{!2430, !2430, i64 0}
!2433 = !{!2434, !2430, i64 2065}
!2434 = !{!"_ZTS5State", !2430, i64 16, !2435, i64 2064, !2430, i64 2080, !2436, i64 2088, !2438, i64 2112, !2440, i64 2208, !2441, i64 2480, !2442, i64 2608, !2443, i64 2736, !2430, i64 2760, !2430, i64 2768, !2444, i64 3280}
!2435 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2436 = !{!"_ZTS8Segments", !2437, i64 0, !2430, i64 2, !2437, i64 4, !2430, i64 6, !2437, i64 8, !2430, i64 10, !2437, i64 12, !2430, i64 14, !2437, i64 16, !2430, i64 18, !2437, i64 20, !2430, i64 22}
!2437 = !{!"short", !2430, i64 0}
!2438 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2439, i64 8, !2429, i64 16, !2439, i64 24, !2429, i64 32, !2439, i64 40, !2429, i64 48, !2439, i64 56, !2429, i64 64, !2439, i64 72, !2429, i64 80, !2439, i64 88}
!2439 = !{!"_ZTS3Reg", !2430, i64 0}
!2440 = !{!"_ZTS3GPR", !2429, i64 0, !2439, i64 8, !2429, i64 16, !2439, i64 24, !2429, i64 32, !2439, i64 40, !2429, i64 48, !2439, i64 56, !2429, i64 64, !2439, i64 72, !2429, i64 80, !2439, i64 88, !2429, i64 96, !2439, i64 104, !2429, i64 112, !2439, i64 120, !2429, i64 128, !2439, i64 136, !2429, i64 144, !2439, i64 152, !2429, i64 160, !2439, i64 168, !2429, i64 176, !2439, i64 184, !2429, i64 192, !2439, i64 200, !2429, i64 208, !2439, i64 216, !2429, i64 224, !2439, i64 232, !2429, i64 240, !2439, i64 248, !2429, i64 256, !2439, i64 264}
!2441 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2442 = !{!"_ZTS3MMX", !2430, i64 0}
!2443 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2444 = !{!"_ZTS13SegmentCaches", !2445, i64 0, !2445, i64 16, !2445, i64 32, !2445, i64 48, !2445, i64 64, !2445, i64 80}
!2445 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2446, i64 8, !2446, i64 12}
!2446 = !{!"int", !2430, i64 0}
!2447 = !{!2434, !2430, i64 2067}
!2448 = !{!2434, !2430, i64 2071}
!2449 = !{!2434, !2430, i64 2073}
!2450 = !{!2434, !2430, i64 2077}
!2451 = !{!2434, !2430, i64 2069}
!2452 = !{!2446, !2446, i64 0}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"double", !2430, i64 0}
