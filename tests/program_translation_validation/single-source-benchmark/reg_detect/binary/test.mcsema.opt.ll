; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401460__rodata_type = type <{ [32 x i8], [7 x i8], [51 x i8], [4 x i8], [76 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
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
@seg_401460__rodata = internal constant %seg_401460__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [4 x i8] c"%d \00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400690_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400660___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401450___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4013e0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400e60_kernel_reg_detect_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4012e0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b10_kernel_reg_detect_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4011b0_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006a0:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
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
  %48 = add i64 %43, -326
  %49 = add i64 %43, 9
  %50 = load i64, i64* %RSP, align 8, !tbaa !2428
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %RSP, align 8, !tbaa !2428
  store i64 %48, i64* %PC, align 8, !tbaa !2428
  %53 = tail call fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %54 = bitcast %union.VectorReg* %3 to i8*
  %55 = load i64, i64* %PC, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %57, align 1, !tbaa !2451
  %58 = getelementptr inbounds i8, i8* %54, i64 4
  %59 = bitcast i8* %58 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2451
  %60 = bitcast i64* %56 to i32*
  store i32 0, i32* %60, align 1, !tbaa !2451
  %61 = getelementptr inbounds i8, i8* %54, i64 12
  %62 = bitcast i8* %61 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2451
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -16
  %65 = load i64, i64* %RAX, align 8
  %66 = add i64 %55, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -32
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC, align 8
  %72 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %73 = load i64, i64* %72, align 1
  %74 = inttoptr i64 %69 to i64*
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -20
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 7
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %80 = bitcast %union.VectorReg* %3 to double*
  %81 = bitcast i64* %56 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006d2

block_4006de:                                     ; preds = %block_4006d2
  %82 = add i64 %203, 8
  store i64 %82, i64* %PC, align 8
  %83 = load i32, i32* %170, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %RCX, align 8, !tbaa !2428
  %85 = shl nsw i64 %84, 3
  %86 = add i64 %85, %207
  %87 = add i64 %203, 13
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to double*
  %89 = load double, double* %88, align 8
  store double %89, double* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %81, align 1, !tbaa !2452
  %90 = add i64 %167, -32
  %91 = add i64 %203, 18
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to double*
  %93 = load double, double* %92, align 8
  %94 = fadd double %89, %93
  store double %94, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %56, align 1, !tbaa !2452
  %95 = add i64 %203, 23
  store i64 %95, i64* %PC, align 8
  store double %94, double* %92, align 8
  %96 = load i64, i64* %RBP, align 8
  %97 = add i64 %96, -20
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, 1
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = icmp eq i32 %101, -1
  %105 = icmp eq i32 %102, 0
  %106 = or i1 %104, %105
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %13, align 1, !tbaa !2432
  %108 = and i32 %102, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2446
  %113 = xor i32 %101, %102
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %25, align 1, !tbaa !2447
  %117 = zext i1 %105 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2448
  %118 = lshr i32 %102, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2449
  %120 = lshr i32 %101, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %37, align 1, !tbaa !2450
  %125 = add i64 %98, 9
  store i64 %125, i64* %PC, align 8
  store i32 %102, i32* %100, align 4
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %126, -44
  store i64 %127, i64* %PC, align 8, !tbaa !2428
  br label %block_4006d2

block_400703:                                     ; preds = %block_4006d2
  store i64 %207, i64* %RDI, align 8, !tbaa !2428
  %128 = add i64 %203, -435
  %129 = add i64 %203, 12
  %130 = load i64, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %RSP, align 8, !tbaa !2428
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  %133 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %134 = load i64, i64* %RSP, align 8
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %134, 32
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  %137 = icmp ugt i64 %134, -33
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %13, align 1, !tbaa !2432
  %139 = trunc i64 %136 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %20, align 1, !tbaa !2446
  %145 = xor i64 %134, %136
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2447
  %149 = icmp eq i64 %136, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %28, align 1, !tbaa !2448
  %151 = lshr i64 %136, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2449
  %153 = lshr i64 %134, 63
  %154 = xor i64 %151, %153
  %155 = add nuw nsw i64 %154, %151
  %156 = icmp eq i64 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %37, align 1, !tbaa !2450
  %158 = add i64 %135, 5
  store i64 %158, i64* %PC, align 8
  %159 = add i64 %134, 40
  %160 = inttoptr i64 %136 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RBP, align 8, !tbaa !2428
  store i64 %159, i64* %RSP, align 8, !tbaa !2428
  %162 = add i64 %135, 6
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %159 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  %165 = add i64 %134, 48
  store i64 %165, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %133

block_4006d2:                                     ; preds = %block_4006de, %block_4006a0
  %166 = phi i64 [ %127, %block_4006de ], [ %.pre, %block_4006a0 ]
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -20
  %169 = add i64 %166, 3
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %167, -4
  %174 = add i64 %166, 6
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %171, %176
  %178 = icmp ult i32 %171, %176
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %13, align 1, !tbaa !2432
  %180 = and i32 %177, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #8
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %20, align 1, !tbaa !2446
  %185 = xor i32 %176, %171
  %186 = xor i32 %185, %177
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %25, align 1, !tbaa !2447
  %190 = icmp eq i32 %177, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %28, align 1, !tbaa !2448
  %192 = lshr i32 %177, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %31, align 1, !tbaa !2449
  %194 = lshr i32 %171, 31
  %195 = lshr i32 %176, 31
  %196 = xor i32 %195, %194
  %197 = xor i32 %192, %194
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %37, align 1, !tbaa !2450
  %201 = icmp ne i8 %193, 0
  %202 = xor i1 %201, %199
  %.v = select i1 %202, i64 12, i64 49
  %203 = add i64 %166, %.v
  %204 = add i64 %167, -16
  %205 = add i64 %203, 4
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX, align 8, !tbaa !2428
  br i1 %202, label %block_4006de, label %block_400703
}

; Function Attrs: noinline
define %struct.Memory* @sub_400690_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400690:
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
  %13 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b10_kernel_reg_detect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b10:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
  %14 = add i64 %10, 16
  %15 = add i64 %13, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %RAX, align 8, !tbaa !2428
  %18 = add i64 %10, 8
  %19 = add i64 %13, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %18 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %R10, align 8, !tbaa !2428
  %22 = add i64 %10, -12
  %23 = load i32, i32* %EDI, align 4
  %24 = add i64 %13, 14
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -8
  %28 = load i32, i32* %ESI, align 4
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %31, align 4
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX, align 4
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -24
  %40 = load i64, i64* %RCX, align 8
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -32
  %46 = load i64, i64* %R8, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -40
  %52 = load i64, i64* %R9, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -44
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -64
  %63 = load i64, i64* %R10, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -72
  %69 = load i64, i64* %RAX, align 8
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b40

block_400b7b:                                     ; preds = %block_400b6a
  %79 = add i64 %194, -56
  %80 = add i64 %232, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 0, i32* %81, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400b82

block_400c75:                                     ; preds = %block_400c86, %block_400c30
  %82 = phi i64 [ %1380, %block_400c86 ], [ %.pre10, %block_400c30 ]
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -56
  %85 = add i64 %82, 3
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = add i64 %83, -12
  %90 = add i64 %82, 6
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, -1
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RCX, align 8, !tbaa !2428
  %95 = lshr i32 %93, 31
  %96 = sub i32 %87, %93
  %97 = icmp ult i32 %87, %93
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %73, align 1, !tbaa !2432
  %99 = and i32 %96, 255
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99) #8
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %74, align 1, !tbaa !2446
  %104 = xor i32 %93, %87
  %105 = xor i32 %104, %96
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %75, align 1, !tbaa !2447
  %109 = icmp eq i32 %96, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %76, align 1, !tbaa !2448
  %111 = lshr i32 %96, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %77, align 1, !tbaa !2449
  %113 = lshr i32 %87, 31
  %114 = xor i32 %95, %113
  %115 = xor i32 %111, %113
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %78, align 1, !tbaa !2450
  %119 = icmp ne i8 %112, 0
  %120 = xor i1 %119, %117
  %.demorgan23 = or i1 %109, %120
  %.v24 = select i1 %.demorgan23, i64 17, i64 144
  %121 = add i64 %82, %.v24
  %122 = add i64 %83, 24
  %123 = add i64 %121, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -52
  %128 = add i64 %121, 8
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %131, 1536
  store i64 %132, i64* %RCX, align 8, !tbaa !2428
  %133 = lshr i64 %132, 63
  %134 = add i64 %132, %125
  store i64 %134, i64* %RAX, align 8, !tbaa !2428
  %135 = icmp ult i64 %134, %125
  %136 = icmp ult i64 %134, %132
  %137 = or i1 %135, %136
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %73, align 1, !tbaa !2432
  %139 = trunc i64 %134 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %74, align 1, !tbaa !2446
  %145 = xor i64 %125, %134
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %75, align 1, !tbaa !2447
  %149 = icmp eq i64 %134, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %76, align 1, !tbaa !2448
  %151 = lshr i64 %134, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %77, align 1, !tbaa !2449
  %153 = lshr i64 %125, 63
  %154 = xor i64 %151, %153
  %155 = xor i64 %151, %133
  %156 = add nuw nsw i64 %154, %155
  %157 = icmp eq i64 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %78, align 1, !tbaa !2450
  %159 = add i64 %126, -48
  %160 = add i64 %121, 22
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = shl nsw i64 %163, 8
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  %165 = lshr i64 %163, 55
  %166 = and i64 %165, 1
  %167 = add i64 %121, 29
  store i64 %167, i64* %PC, align 8
  %168 = add i64 %164, %134
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = icmp ult i64 %168, %134
  %170 = icmp ult i64 %168, %164
  %171 = or i1 %169, %170
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %73, align 1, !tbaa !2432
  %173 = trunc i64 %168 to i32
  %174 = and i32 %173, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #8
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %74, align 1, !tbaa !2446
  %179 = xor i64 %134, %168
  %180 = lshr i64 %179, 4
  %181 = trunc i64 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %75, align 1, !tbaa !2447
  %183 = icmp eq i64 %168, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %76, align 1, !tbaa !2448
  %185 = lshr i64 %168, 63
  %186 = trunc i64 %185 to i8
  store i8 %186, i8* %77, align 1, !tbaa !2449
  %187 = xor i64 %185, %151
  %188 = xor i64 %185, %166
  %189 = add nuw nsw i64 %187, %188
  %190 = icmp eq i64 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %78, align 1, !tbaa !2450
  %192 = load i64, i64* %RBP, align 8
  br i1 %.demorgan23, label %block_400c86, label %block_400d05

block_400b6a:                                     ; preds = %block_400bdb, %block_400b64
  %193 = phi i64 [ %280, %block_400bdb ], [ %.pre6, %block_400b64 ]
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -48
  %196 = add i64 %193, 3
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = add i64 %194, -8
  %201 = add i64 %193, 6
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, -1
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = lshr i32 %204, 31
  %207 = sub i32 %198, %204
  %208 = icmp ult i32 %198, %204
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %73, align 1, !tbaa !2432
  %210 = and i32 %207, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210) #8
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %74, align 1, !tbaa !2446
  %215 = xor i32 %204, %198
  %216 = xor i32 %215, %207
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %75, align 1, !tbaa !2447
  %220 = icmp eq i32 %207, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %76, align 1, !tbaa !2448
  %222 = lshr i32 %207, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %77, align 1, !tbaa !2449
  %224 = lshr i32 %198, 31
  %225 = xor i32 %206, %224
  %226 = xor i32 %222, %224
  %227 = add nuw nsw i32 %226, %225
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %78, align 1, !tbaa !2450
  %230 = icmp ne i8 %223, 0
  %231 = xor i1 %230, %228
  %.demorgan15 = or i1 %220, %231
  %.v16 = select i1 %.demorgan15, i64 17, i64 132
  %232 = add i64 %193, %.v16
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan15, label %block_400b7b, label %block_400bee

block_400d65:                                     ; preds = %block_400c08
  %233 = add i64 %1089, -48
  %234 = add i64 %1127, 7
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 0, i32* %235, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400d6c

block_400b64:                                     ; preds = %block_400b53
  %236 = add i64 %320, 3
  store i64 %236, i64* %PC, align 8
  %237 = load i32, i32* %285, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = add i64 %282, -48
  %240 = add i64 %320, 6
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 %237, i32* %241, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400b6a

block_400e50:                                     ; preds = %block_400b40
  %242 = add i64 %619, 1
  store i64 %242, i64* %PC, align 8
  %243 = load i64, i64* %9, align 8, !tbaa !2428
  %244 = add i64 %243, 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RBP, align 8, !tbaa !2428
  store i64 %244, i64* %9, align 8, !tbaa !2428
  %247 = add i64 %619, 2
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %244 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %PC, align 8, !tbaa !2428
  %250 = add i64 %243, 16
  store i64 %250, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bdb:                                     ; preds = %block_400b82
  %251 = add i64 %1651, -48
  %252 = add i64 %1689, 8
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, 1
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = icmp eq i32 %254, -1
  %258 = icmp eq i32 %255, 0
  %259 = or i1 %257, %258
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %73, align 1, !tbaa !2432
  %261 = and i32 %255, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #8
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %74, align 1, !tbaa !2446
  %266 = xor i32 %254, %255
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %75, align 1, !tbaa !2447
  %270 = zext i1 %258 to i8
  store i8 %270, i8* %76, align 1, !tbaa !2448
  %271 = lshr i32 %255, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %77, align 1, !tbaa !2449
  %273 = lshr i32 %254, 31
  %274 = xor i32 %271, %273
  %275 = add nuw nsw i32 %274, %271
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %78, align 1, !tbaa !2450
  %278 = add i64 %1689, 14
  store i64 %278, i64* %PC, align 8
  store i32 %255, i32* %253, align 4
  %279 = load i64, i64* %PC, align 8
  %280 = add i64 %279, -127
  store i64 %280, i64* %PC, align 8, !tbaa !2428
  br label %block_400b6a

block_400b53:                                     ; preds = %block_400bee, %block_400b4c
  %281 = phi i64 [ %1087, %block_400bee ], [ %.pre5, %block_400b4c ]
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -52
  %284 = add i64 %281, 3
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = add i64 %282, -8
  %289 = add i64 %281, 6
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, -1
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = lshr i32 %292, 31
  %295 = sub i32 %286, %292
  %296 = icmp ult i32 %286, %292
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %73, align 1, !tbaa !2432
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %74, align 1, !tbaa !2446
  %303 = xor i32 %292, %286
  %304 = xor i32 %303, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %75, align 1, !tbaa !2447
  %308 = icmp eq i32 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %76, align 1, !tbaa !2448
  %310 = lshr i32 %295, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %77, align 1, !tbaa !2449
  %312 = lshr i32 %286, 31
  %313 = xor i32 %294, %312
  %314 = xor i32 %310, %312
  %315 = add nuw nsw i32 %314, %313
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %78, align 1, !tbaa !2450
  %318 = icmp ne i8 %311, 0
  %319 = xor i1 %318, %316
  %.demorgan = or i1 %308, %319
  %.v14 = select i1 %.demorgan, i64 17, i64 174
  %320 = add i64 %281, %.v14
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400b64, label %block_400c01

block_400dd0:                                     ; preds = %block_400dbf
  %321 = add i64 %621, -40
  %322 = add i64 %659, 4
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = add i64 %621, -52
  %326 = add i64 %659, 7
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, -1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX, align 8, !tbaa !2428
  %331 = sext i32 %329 to i64
  %332 = mul nsw i64 %331, 24
  store i64 %332, i64* %RDX, align 8, !tbaa !2428
  %333 = lshr i64 %332, 63
  %334 = add i64 %332, %324
  store i64 %334, i64* %RAX, align 8, !tbaa !2428
  %335 = icmp ult i64 %334, %324
  %336 = icmp ult i64 %334, %332
  %337 = or i1 %335, %336
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %73, align 1, !tbaa !2432
  %339 = trunc i64 %334 to i32
  %340 = and i32 %339, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340) #8
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %74, align 1, !tbaa !2446
  %345 = xor i64 %332, %324
  %346 = xor i64 %345, %334
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %75, align 1, !tbaa !2447
  %350 = icmp eq i64 %334, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %76, align 1, !tbaa !2448
  %352 = lshr i64 %334, 63
  %353 = trunc i64 %352 to i8
  store i8 %353, i8* %77, align 1, !tbaa !2449
  %354 = lshr i64 %324, 63
  %355 = xor i64 %352, %354
  %356 = xor i64 %352, %333
  %357 = add nuw nsw i64 %355, %356
  %358 = icmp eq i64 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %78, align 1, !tbaa !2450
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -48
  %362 = add i64 %659, 23
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = add i32 %364, -1
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RCX, align 8, !tbaa !2428
  %367 = icmp eq i32 %364, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %73, align 1, !tbaa !2432
  %369 = and i32 %365, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #8
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %74, align 1, !tbaa !2446
  %374 = xor i32 %364, %365
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %75, align 1, !tbaa !2447
  %378 = icmp eq i32 %365, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %76, align 1, !tbaa !2448
  %380 = lshr i32 %365, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %77, align 1, !tbaa !2449
  %382 = lshr i32 %364, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %382
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %78, align 1, !tbaa !2450
  %387 = sext i32 %365 to i64
  store i64 %387, i64* %RDX, align 8, !tbaa !2428
  %388 = shl nsw i64 %387, 2
  %389 = add i64 %388, %334
  %390 = add i64 %659, 32
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  %394 = add i64 %360, -32
  %395 = add i64 %659, 36
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX, align 8, !tbaa !2428
  %398 = add i64 %360, -52
  %399 = add i64 %659, 40
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = mul nsw i64 %402, 24
  store i64 %403, i64* %RDX, align 8, !tbaa !2428
  %404 = lshr i64 %403, 63
  %405 = add i64 %403, %397
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = icmp ult i64 %405, %397
  %407 = icmp ult i64 %405, %403
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %73, align 1, !tbaa !2432
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #8
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %74, align 1, !tbaa !2446
  %416 = xor i64 %403, %397
  %417 = xor i64 %416, %405
  %418 = lshr i64 %417, 4
  %419 = trunc i64 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %75, align 1, !tbaa !2447
  %421 = icmp eq i64 %405, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %76, align 1, !tbaa !2448
  %423 = lshr i64 %405, 63
  %424 = trunc i64 %423 to i8
  store i8 %424, i8* %77, align 1, !tbaa !2449
  %425 = lshr i64 %397, 63
  %426 = xor i64 %423, %425
  %427 = xor i64 %423, %404
  %428 = add nuw nsw i64 %426, %427
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %78, align 1, !tbaa !2450
  %431 = load i64, i64* %RBP, align 8
  %432 = add i64 %431, -48
  %433 = add i64 %659, 51
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RDX, align 8, !tbaa !2428
  %437 = shl nsw i64 %436, 2
  %438 = add i64 %437, %405
  %439 = add i64 %659, 54
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, %392
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = icmp ult i32 %442, %392
  %445 = icmp ult i32 %442, %441
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %73, align 1, !tbaa !2432
  %448 = and i32 %442, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448) #8
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %74, align 1, !tbaa !2446
  %453 = xor i32 %441, %392
  %454 = xor i32 %453, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %75, align 1, !tbaa !2447
  %458 = icmp eq i32 %442, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %76, align 1, !tbaa !2448
  %460 = lshr i32 %442, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %77, align 1, !tbaa !2449
  %462 = lshr i32 %392, 31
  %463 = lshr i32 %441, 31
  %464 = xor i32 %460, %462
  %465 = xor i32 %460, %463
  %466 = add nuw nsw i32 %464, %465
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %78, align 1, !tbaa !2450
  %469 = add i64 %431, -40
  %470 = add i64 %659, 58
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RAX, align 8, !tbaa !2428
  %473 = add i64 %431, -52
  %474 = add i64 %659, 62
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = mul nsw i64 %477, 24
  store i64 %478, i64* %RDX, align 8, !tbaa !2428
  %479 = lshr i64 %478, 63
  %480 = add i64 %478, %472
  store i64 %480, i64* %RAX, align 8, !tbaa !2428
  %481 = icmp ult i64 %480, %472
  %482 = icmp ult i64 %480, %478
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %73, align 1, !tbaa !2432
  %485 = trunc i64 %480 to i32
  %486 = and i32 %485, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486) #8
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %74, align 1, !tbaa !2446
  %491 = xor i64 %478, %472
  %492 = xor i64 %491, %480
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %75, align 1, !tbaa !2447
  %496 = icmp eq i64 %480, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %76, align 1, !tbaa !2448
  %498 = lshr i64 %480, 63
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %77, align 1, !tbaa !2449
  %500 = lshr i64 %472, 63
  %501 = xor i64 %498, %500
  %502 = xor i64 %498, %479
  %503 = add nuw nsw i64 %501, %502
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %78, align 1, !tbaa !2450
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -48
  %508 = add i64 %659, 73
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  store i64 %511, i64* %RDX, align 8, !tbaa !2428
  %512 = shl nsw i64 %511, 2
  %513 = add i64 %512, %480
  %514 = load i32, i32* %ECX, align 4
  %515 = add i64 %659, 76
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %513 to i32*
  store i32 %514, i32* %516, align 4
  %517 = load i64, i64* %RBP, align 8
  %518 = add i64 %517, -48
  %519 = load i64, i64* %PC, align 8
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %518 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, 1
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX, align 8, !tbaa !2428
  %525 = icmp eq i32 %522, -1
  %526 = icmp eq i32 %523, 0
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %73, align 1, !tbaa !2432
  %529 = and i32 %523, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529) #8
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %74, align 1, !tbaa !2446
  %534 = xor i32 %522, %523
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %75, align 1, !tbaa !2447
  %538 = zext i1 %526 to i8
  store i8 %538, i8* %76, align 1, !tbaa !2448
  %539 = lshr i32 %523, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %77, align 1, !tbaa !2449
  %541 = lshr i32 %522, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %539
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %78, align 1, !tbaa !2450
  %546 = add i64 %519, 9
  store i64 %546, i64* %PC, align 8
  store i32 %523, i32* %521, align 4
  %547 = load i64, i64* %PC, align 8
  %548 = add i64 %547, -102
  store i64 %548, i64* %PC, align 8, !tbaa !2428
  br label %block_400dbf

block_400d52:                                     ; preds = %block_400c1f
  %549 = add i64 %1013, -52
  %550 = add i64 %1051, 8
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, 1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX, align 8, !tbaa !2428
  %555 = icmp eq i32 %552, -1
  %556 = icmp eq i32 %553, 0
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %73, align 1, !tbaa !2432
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #8
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %74, align 1, !tbaa !2446
  %564 = xor i32 %552, %553
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %75, align 1, !tbaa !2447
  %568 = zext i1 %556 to i8
  store i8 %568, i8* %76, align 1, !tbaa !2448
  %569 = lshr i32 %553, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %77, align 1, !tbaa !2449
  %571 = lshr i32 %552, 31
  %572 = xor i32 %569, %571
  %573 = add nuw nsw i32 %572, %569
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %78, align 1, !tbaa !2450
  %576 = add i64 %1051, 14
  store i64 %576, i64* %PC, align 8
  store i32 %553, i32* %551, align 4
  %577 = load i64, i64* %PC, align 8
  %578 = add i64 %577, -344
  store i64 %578, i64* %PC, align 8, !tbaa !2428
  br label %block_400c08

block_400b4c:                                     ; preds = %block_400b40
  %579 = add i64 %583, -52
  %580 = add i64 %619, 7
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %579 to i32*
  store i32 0, i32* %581, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400b53

block_400b40:                                     ; preds = %block_400e3d, %block_400b10
  %582 = phi i64 [ %689, %block_400e3d ], [ %.pre, %block_400b10 ]
  %583 = load i64, i64* %RBP, align 8
  %584 = add i64 %583, -44
  %585 = add i64 %582, 3
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = add i64 %583, -4
  %590 = add i64 %582, 6
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = sub i32 %587, %592
  %594 = icmp ult i32 %587, %592
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %73, align 1, !tbaa !2432
  %596 = and i32 %593, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596) #8
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %74, align 1, !tbaa !2446
  %601 = xor i32 %592, %587
  %602 = xor i32 %601, %593
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %75, align 1, !tbaa !2447
  %606 = icmp eq i32 %593, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %76, align 1, !tbaa !2448
  %608 = lshr i32 %593, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %77, align 1, !tbaa !2449
  %610 = lshr i32 %587, 31
  %611 = lshr i32 %592, 31
  %612 = xor i32 %611, %610
  %613 = xor i32 %608, %610
  %614 = add nuw nsw i32 %613, %612
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %78, align 1, !tbaa !2450
  %617 = icmp ne i8 %609, 0
  %618 = xor i1 %617, %615
  %.v = select i1 %618, i64 12, i64 784
  %619 = add i64 %582, %.v
  store i64 %619, i64* %PC, align 8, !tbaa !2428
  br i1 %618, label %block_400b4c, label %block_400e50

block_400dbf:                                     ; preds = %block_400db9, %block_400dd0
  %620 = phi i64 [ %.pre13, %block_400db9 ], [ %548, %block_400dd0 ]
  %621 = load i64, i64* %RBP, align 8
  %622 = add i64 %621, -48
  %623 = add i64 %620, 3
  store i64 %623, i64* %PC, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX, align 8, !tbaa !2428
  %627 = add i64 %621, -8
  %628 = add i64 %620, 6
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = add i32 %630, -1
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RCX, align 8, !tbaa !2428
  %633 = lshr i32 %631, 31
  %634 = sub i32 %625, %631
  %635 = icmp ult i32 %625, %631
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %73, align 1, !tbaa !2432
  %637 = and i32 %634, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637) #8
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %74, align 1, !tbaa !2446
  %642 = xor i32 %631, %625
  %643 = xor i32 %642, %634
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %75, align 1, !tbaa !2447
  %647 = icmp eq i32 %634, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %76, align 1, !tbaa !2448
  %649 = lshr i32 %634, 31
  %650 = trunc i32 %649 to i8
  store i8 %650, i8* %77, align 1, !tbaa !2449
  %651 = lshr i32 %625, 31
  %652 = xor i32 %633, %651
  %653 = xor i32 %649, %651
  %654 = add nuw nsw i32 %653, %652
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %78, align 1, !tbaa !2450
  %657 = icmp ne i8 %650, 0
  %658 = xor i1 %657, %655
  %.demorgan29 = or i1 %647, %658
  %.v30 = select i1 %.demorgan29, i64 17, i64 107
  %659 = add i64 %620, %.v30
  store i64 %659, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan29, label %block_400dd0, label %block_400e2a

block_400e3d:                                     ; preds = %block_400da8
  %660 = add i64 %930, -44
  %661 = add i64 %968, 8
  store i64 %661, i64* %PC, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = add i32 %663, 1
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = icmp eq i32 %663, -1
  %667 = icmp eq i32 %664, 0
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %73, align 1, !tbaa !2432
  %670 = and i32 %664, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670) #8
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %74, align 1, !tbaa !2446
  %675 = xor i32 %663, %664
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %75, align 1, !tbaa !2447
  %679 = zext i1 %667 to i8
  store i8 %679, i8* %76, align 1, !tbaa !2448
  %680 = lshr i32 %664, 31
  %681 = trunc i32 %680 to i8
  store i8 %681, i8* %77, align 1, !tbaa !2449
  %682 = lshr i32 %663, 31
  %683 = xor i32 %680, %682
  %684 = add nuw nsw i32 %683, %680
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %78, align 1, !tbaa !2450
  %687 = add i64 %968, 14
  store i64 %687, i64* %PC, align 8
  store i32 %664, i32* %662, align 4
  %688 = load i64, i64* %PC, align 8
  %689 = add i64 %688, -779
  store i64 %689, i64* %PC, align 8, !tbaa !2428
  br label %block_400b40

block_400db9:                                     ; preds = %block_400da8
  %690 = add i64 %968, 3
  store i64 %690, i64* %PC, align 8
  %691 = load i32, i32* %933, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RAX, align 8, !tbaa !2428
  %693 = add i64 %930, -48
  %694 = add i64 %968, 6
  store i64 %694, i64* %PC, align 8
  %695 = inttoptr i64 %693 to i32*
  store i32 %691, i32* %695, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400dbf

block_400d7d:                                     ; preds = %block_400d6c
  %696 = add i64 %973, -32
  %697 = add i64 %1011, 4
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %700 = add i64 %1011, 8
  store i64 %700, i64* %PC, align 8
  %701 = load i32, i32* %976, align 4
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RCX, align 8, !tbaa !2428
  %703 = shl nsw i64 %702, 2
  %704 = add i64 %703, %699
  %705 = add i64 %1011, 11
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RDX, align 8, !tbaa !2428
  %709 = add i64 %973, -40
  %710 = add i64 %1011, 15
  store i64 %710, i64* %PC, align 8
  %711 = inttoptr i64 %709 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %RAX, align 8, !tbaa !2428
  %713 = add i64 %1011, 19
  store i64 %713, i64* %PC, align 8
  %714 = load i32, i32* %976, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RCX, align 8, !tbaa !2428
  %716 = shl nsw i64 %715, 2
  %717 = add i64 %716, %712
  %718 = add i64 %1011, 22
  store i64 %718, i64* %PC, align 8
  %719 = inttoptr i64 %717 to i32*
  store i32 %707, i32* %719, align 4
  %720 = load i64, i64* %RBP, align 8
  %721 = add i64 %720, -48
  %722 = load i64, i64* %PC, align 8
  %723 = add i64 %722, 3
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = add i32 %725, 1
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = icmp eq i32 %725, -1
  %729 = icmp eq i32 %726, 0
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %73, align 1, !tbaa !2432
  %732 = and i32 %726, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732) #8
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %74, align 1, !tbaa !2446
  %737 = xor i32 %725, %726
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %75, align 1, !tbaa !2447
  %741 = zext i1 %729 to i8
  store i8 %741, i8* %76, align 1, !tbaa !2448
  %742 = lshr i32 %726, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %77, align 1, !tbaa !2449
  %744 = lshr i32 %725, 31
  %745 = xor i32 %742, %744
  %746 = add nuw nsw i32 %745, %742
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %78, align 1, !tbaa !2450
  %749 = add i64 %722, 9
  store i64 %749, i64* %PC, align 8
  store i32 %726, i32* %724, align 4
  %750 = load i64, i64* %PC, align 8
  %751 = add i64 %750, -48
  store i64 %751, i64* %PC, align 8, !tbaa !2428
  br label %block_400d6c

block_400c30:                                     ; preds = %block_400c1f
  %752 = add i64 %1013, 16
  %753 = add i64 %1051, 4
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RAX, align 8, !tbaa !2428
  %756 = add i64 %1013, -52
  %757 = add i64 %1051, 8
  store i64 %757, i64* %PC, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = sext i32 %759 to i64
  %761 = mul nsw i64 %760, 1536
  store i64 %761, i64* %RCX, align 8, !tbaa !2428
  %762 = lshr i64 %761, 63
  %763 = add i64 %761, %755
  store i64 %763, i64* %RAX, align 8, !tbaa !2428
  %764 = icmp ult i64 %763, %755
  %765 = icmp ult i64 %763, %761
  %766 = or i1 %764, %765
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %73, align 1, !tbaa !2432
  %768 = trunc i64 %763 to i32
  %769 = and i32 %768, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769) #8
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %74, align 1, !tbaa !2446
  %774 = xor i64 %755, %763
  %775 = lshr i64 %774, 4
  %776 = trunc i64 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %75, align 1, !tbaa !2447
  %778 = icmp eq i64 %763, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %76, align 1, !tbaa !2448
  %780 = lshr i64 %763, 63
  %781 = trunc i64 %780 to i8
  store i8 %781, i8* %77, align 1, !tbaa !2449
  %782 = lshr i64 %755, 63
  %783 = xor i64 %780, %782
  %784 = xor i64 %780, %762
  %785 = add nuw nsw i64 %783, %784
  %786 = icmp eq i64 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %78, align 1, !tbaa !2450
  %788 = add i64 %1051, 22
  store i64 %788, i64* %PC, align 8
  %789 = load i32, i32* %1016, align 4
  %790 = sext i32 %789 to i64
  %791 = shl nsw i64 %790, 8
  store i64 %791, i64* %RCX, align 8, !tbaa !2428
  %792 = lshr i64 %790, 55
  %793 = and i64 %792, 1
  %794 = add i64 %791, %763
  store i64 %794, i64* %RAX, align 8, !tbaa !2428
  %795 = icmp ult i64 %794, %763
  %796 = icmp ult i64 %794, %791
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %73, align 1, !tbaa !2432
  %799 = trunc i64 %794 to i32
  %800 = and i32 %799, 255
  %801 = tail call i32 @llvm.ctpop.i32(i32 %800) #8
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  store i8 %804, i8* %74, align 1, !tbaa !2446
  %805 = xor i64 %763, %794
  %806 = lshr i64 %805, 4
  %807 = trunc i64 %806 to i8
  %808 = and i8 %807, 1
  store i8 %808, i8* %75, align 1, !tbaa !2447
  %809 = icmp eq i64 %794, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %76, align 1, !tbaa !2448
  %811 = lshr i64 %794, 63
  %812 = trunc i64 %811 to i8
  store i8 %812, i8* %77, align 1, !tbaa !2449
  %813 = xor i64 %811, %780
  %814 = xor i64 %811, %793
  %815 = add nuw nsw i64 %813, %814
  %816 = icmp eq i64 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %78, align 1, !tbaa !2450
  %818 = add i64 %1051, 31
  store i64 %818, i64* %PC, align 8
  %819 = inttoptr i64 %794 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RDX, align 8, !tbaa !2428
  %822 = load i64, i64* %RBP, align 8
  %823 = add i64 %822, 24
  %824 = add i64 %1051, 35
  store i64 %824, i64* %PC, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %RAX, align 8, !tbaa !2428
  %827 = add i64 %822, -52
  %828 = add i64 %1051, 39
  store i64 %828, i64* %PC, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  %832 = mul nsw i64 %831, 1536
  store i64 %832, i64* %RCX, align 8, !tbaa !2428
  %833 = lshr i64 %832, 63
  %834 = add i64 %832, %826
  store i64 %834, i64* %RAX, align 8, !tbaa !2428
  %835 = icmp ult i64 %834, %826
  %836 = icmp ult i64 %834, %832
  %837 = or i1 %835, %836
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %73, align 1, !tbaa !2432
  %839 = trunc i64 %834 to i32
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840) #8
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %74, align 1, !tbaa !2446
  %845 = xor i64 %826, %834
  %846 = lshr i64 %845, 4
  %847 = trunc i64 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %75, align 1, !tbaa !2447
  %849 = icmp eq i64 %834, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %76, align 1, !tbaa !2448
  %851 = lshr i64 %834, 63
  %852 = trunc i64 %851 to i8
  store i8 %852, i8* %77, align 1, !tbaa !2449
  %853 = lshr i64 %826, 63
  %854 = xor i64 %851, %853
  %855 = xor i64 %851, %833
  %856 = add nuw nsw i64 %854, %855
  %857 = icmp eq i64 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %78, align 1, !tbaa !2450
  %859 = add i64 %822, -48
  %860 = add i64 %1051, 53
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  %864 = shl nsw i64 %863, 8
  store i64 %864, i64* %RCX, align 8, !tbaa !2428
  %865 = lshr i64 %863, 55
  %866 = and i64 %865, 1
  %867 = add i64 %864, %834
  store i64 %867, i64* %RAX, align 8, !tbaa !2428
  %868 = icmp ult i64 %867, %834
  %869 = icmp ult i64 %867, %864
  %870 = or i1 %868, %869
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %73, align 1, !tbaa !2432
  %872 = trunc i64 %867 to i32
  %873 = and i32 %872, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873) #8
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %74, align 1, !tbaa !2446
  %878 = xor i64 %834, %867
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %75, align 1, !tbaa !2447
  %882 = icmp eq i64 %867, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %76, align 1, !tbaa !2448
  %884 = lshr i64 %867, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %77, align 1, !tbaa !2449
  %886 = xor i64 %884, %851
  %887 = xor i64 %884, %866
  %888 = add nuw nsw i64 %886, %887
  %889 = icmp eq i64 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %78, align 1, !tbaa !2450
  %891 = load i32, i32* %EDX, align 4
  %892 = add i64 %1051, 62
  store i64 %892, i64* %PC, align 8
  %893 = inttoptr i64 %867 to i32*
  store i32 %891, i32* %893, align 4
  %894 = load i64, i64* %RBP, align 8
  %895 = add i64 %894, -56
  %896 = load i64, i64* %PC, align 8
  %897 = add i64 %896, 7
  store i64 %897, i64* %PC, align 8
  %898 = inttoptr i64 %895 to i32*
  store i32 1, i32* %898, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400c75

block_400e2a:                                     ; preds = %block_400dbf
  %899 = add i64 %621, -52
  %900 = add i64 %659, 8
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = add i32 %902, 1
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX, align 8, !tbaa !2428
  %905 = icmp eq i32 %902, -1
  %906 = icmp eq i32 %903, 0
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %73, align 1, !tbaa !2432
  %909 = and i32 %903, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909) #8
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %74, align 1, !tbaa !2446
  %914 = xor i32 %902, %903
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %75, align 1, !tbaa !2447
  %918 = zext i1 %906 to i8
  store i8 %918, i8* %76, align 1, !tbaa !2448
  %919 = lshr i32 %903, 31
  %920 = trunc i32 %919 to i8
  store i8 %920, i8* %77, align 1, !tbaa !2449
  %921 = lshr i32 %902, 31
  %922 = xor i32 %919, %921
  %923 = add nuw nsw i32 %922, %919
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %78, align 1, !tbaa !2450
  %926 = add i64 %659, 14
  store i64 %926, i64* %PC, align 8
  store i32 %903, i32* %901, align 4
  %927 = load i64, i64* %PC, align 8
  %928 = add i64 %927, -144
  store i64 %928, i64* %PC, align 8, !tbaa !2428
  br label %block_400da8

block_400da8:                                     ; preds = %block_400da1, %block_400e2a
  %929 = phi i64 [ %.pre12, %block_400da1 ], [ %928, %block_400e2a ]
  %930 = load i64, i64* %RBP, align 8
  %931 = add i64 %930, -52
  %932 = add i64 %929, 3
  store i64 %932, i64* %PC, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RAX, align 8, !tbaa !2428
  %936 = add i64 %930, -8
  %937 = add i64 %929, 6
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = add i32 %939, -1
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RCX, align 8, !tbaa !2428
  %942 = lshr i32 %940, 31
  %943 = sub i32 %934, %940
  %944 = icmp ult i32 %934, %940
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %73, align 1, !tbaa !2432
  %946 = and i32 %943, 255
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946) #8
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %74, align 1, !tbaa !2446
  %951 = xor i32 %940, %934
  %952 = xor i32 %951, %943
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %75, align 1, !tbaa !2447
  %956 = icmp eq i32 %943, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %76, align 1, !tbaa !2448
  %958 = lshr i32 %943, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %77, align 1, !tbaa !2449
  %960 = lshr i32 %934, 31
  %961 = xor i32 %942, %960
  %962 = xor i32 %958, %960
  %963 = add nuw nsw i32 %962, %961
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %78, align 1, !tbaa !2450
  %966 = icmp ne i8 %959, 0
  %967 = xor i1 %966, %964
  %.demorgan27 = or i1 %956, %967
  %.v28 = select i1 %.demorgan27, i64 17, i64 149
  %968 = add i64 %929, %.v28
  store i64 %968, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan27, label %block_400db9, label %block_400e3d

block_400da1:                                     ; preds = %block_400d6c
  %969 = add i64 %973, -52
  %970 = add i64 %1011, 7
  store i64 %970, i64* %PC, align 8
  %971 = inttoptr i64 %969 to i32*
  store i32 1, i32* %971, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400da8

block_400d6c:                                     ; preds = %block_400d7d, %block_400d65
  %972 = phi i64 [ %751, %block_400d7d ], [ %.pre11, %block_400d65 ]
  %973 = load i64, i64* %RBP, align 8
  %974 = add i64 %973, -48
  %975 = add i64 %972, 3
  store i64 %975, i64* %PC, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RAX, align 8, !tbaa !2428
  %979 = add i64 %973, -8
  %980 = add i64 %972, 6
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = add i32 %982, -1
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RCX, align 8, !tbaa !2428
  %985 = lshr i32 %983, 31
  %986 = sub i32 %977, %983
  %987 = icmp ult i32 %977, %983
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %73, align 1, !tbaa !2432
  %989 = and i32 %986, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989) #8
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %74, align 1, !tbaa !2446
  %994 = xor i32 %983, %977
  %995 = xor i32 %994, %986
  %996 = lshr i32 %995, 4
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %75, align 1, !tbaa !2447
  %999 = icmp eq i32 %986, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %76, align 1, !tbaa !2448
  %1001 = lshr i32 %986, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %77, align 1, !tbaa !2449
  %1003 = lshr i32 %977, 31
  %1004 = xor i32 %985, %1003
  %1005 = xor i32 %1001, %1003
  %1006 = add nuw nsw i32 %1005, %1004
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %78, align 1, !tbaa !2450
  %1009 = icmp ne i8 %1002, 0
  %1010 = xor i1 %1009, %1007
  %.demorgan25 = or i1 %999, %1010
  %.v26 = select i1 %.demorgan25, i64 17, i64 53
  %1011 = add i64 %972, %.v26
  store i64 %1011, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_400d7d, label %block_400da1

block_400c1f:                                     ; preds = %block_400d05, %block_400c19
  %1012 = phi i64 [ %1649, %block_400d05 ], [ %.pre9, %block_400c19 ]
  %1013 = load i64, i64* %RBP, align 8
  %1014 = add i64 %1013, -48
  %1015 = add i64 %1012, 3
  store i64 %1015, i64* %PC, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX, align 8, !tbaa !2428
  %1019 = add i64 %1013, -8
  %1020 = add i64 %1012, 6
  store i64 %1020, i64* %PC, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = add i32 %1022, -1
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RCX, align 8, !tbaa !2428
  %1025 = lshr i32 %1023, 31
  %1026 = sub i32 %1017, %1023
  %1027 = icmp ult i32 %1017, %1023
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %73, align 1, !tbaa !2432
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029) #8
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %74, align 1, !tbaa !2446
  %1034 = xor i32 %1023, %1017
  %1035 = xor i32 %1034, %1026
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %75, align 1, !tbaa !2447
  %1039 = icmp eq i32 %1026, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %76, align 1, !tbaa !2448
  %1041 = lshr i32 %1026, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %77, align 1, !tbaa !2449
  %1043 = lshr i32 %1017, 31
  %1044 = xor i32 %1025, %1043
  %1045 = xor i32 %1041, %1043
  %1046 = add nuw nsw i32 %1045, %1044
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %78, align 1, !tbaa !2450
  %1049 = icmp ne i8 %1042, 0
  %1050 = xor i1 %1049, %1047
  %.demorgan21 = or i1 %1039, %1050
  %.v22 = select i1 %.demorgan21, i64 17, i64 307
  %1051 = add i64 %1012, %.v22
  store i64 %1051, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan21, label %block_400c30, label %block_400d52

block_400c19:                                     ; preds = %block_400c08
  %1052 = add i64 %1127, 3
  store i64 %1052, i64* %PC, align 8
  %1053 = load i32, i32* %1092, align 4
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RAX, align 8, !tbaa !2428
  %1055 = add i64 %1089, -48
  %1056 = add i64 %1127, 6
  store i64 %1056, i64* %PC, align 8
  %1057 = inttoptr i64 %1055 to i32*
  store i32 %1053, i32* %1057, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400c1f

block_400bee:                                     ; preds = %block_400b6a
  %1058 = add i64 %194, -52
  %1059 = add i64 %232, 8
  store i64 %1059, i64* %PC, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = add i32 %1061, 1
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX, align 8, !tbaa !2428
  %1064 = icmp eq i32 %1061, -1
  %1065 = icmp eq i32 %1062, 0
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %73, align 1, !tbaa !2432
  %1068 = and i32 %1062, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068) #8
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %74, align 1, !tbaa !2446
  %1073 = xor i32 %1061, %1062
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %75, align 1, !tbaa !2447
  %1077 = zext i1 %1065 to i8
  store i8 %1077, i8* %76, align 1, !tbaa !2448
  %1078 = lshr i32 %1062, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %77, align 1, !tbaa !2449
  %1080 = lshr i32 %1061, 31
  %1081 = xor i32 %1078, %1080
  %1082 = add nuw nsw i32 %1081, %1078
  %1083 = icmp eq i32 %1082, 2
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %78, align 1, !tbaa !2450
  %1085 = add i64 %232, 14
  store i64 %1085, i64* %PC, align 8
  store i32 %1062, i32* %1060, align 4
  %1086 = load i64, i64* %PC, align 8
  %1087 = add i64 %1086, -169
  store i64 %1087, i64* %PC, align 8, !tbaa !2428
  br label %block_400b53

block_400c08:                                     ; preds = %block_400c01, %block_400d52
  %1088 = phi i64 [ %.pre8, %block_400c01 ], [ %578, %block_400d52 ]
  %1089 = load i64, i64* %RBP, align 8
  %1090 = add i64 %1089, -52
  %1091 = add i64 %1088, 3
  store i64 %1091, i64* %PC, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = add i64 %1089, -8
  %1096 = add i64 %1088, 6
  store i64 %1096, i64* %PC, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, -1
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RCX, align 8, !tbaa !2428
  %1101 = lshr i32 %1099, 31
  %1102 = sub i32 %1093, %1099
  %1103 = icmp ult i32 %1093, %1099
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %73, align 1, !tbaa !2432
  %1105 = and i32 %1102, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105) #8
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %74, align 1, !tbaa !2446
  %1110 = xor i32 %1099, %1093
  %1111 = xor i32 %1110, %1102
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %75, align 1, !tbaa !2447
  %1115 = icmp eq i32 %1102, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %76, align 1, !tbaa !2448
  %1117 = lshr i32 %1102, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %77, align 1, !tbaa !2449
  %1119 = lshr i32 %1093, 31
  %1120 = xor i32 %1101, %1119
  %1121 = xor i32 %1117, %1119
  %1122 = add nuw nsw i32 %1121, %1120
  %1123 = icmp eq i32 %1122, 2
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %78, align 1, !tbaa !2450
  %1125 = icmp ne i8 %1118, 0
  %1126 = xor i1 %1125, %1123
  %.demorgan19 = or i1 %1115, %1126
  %.v20 = select i1 %.demorgan19, i64 17, i64 349
  %1127 = add i64 %1088, %.v20
  store i64 %1127, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan19, label %block_400c19, label %block_400d65

block_400c86:                                     ; preds = %block_400c75
  %1128 = add i64 %192, -56
  %1129 = add i64 %121, 32
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = add i32 %1131, -1
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RDX, align 8, !tbaa !2428
  %1134 = icmp eq i32 %1131, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %73, align 1, !tbaa !2432
  %1136 = and i32 %1132, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136) #8
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %74, align 1, !tbaa !2446
  %1141 = xor i32 %1131, %1132
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %75, align 1, !tbaa !2447
  %1145 = icmp eq i32 %1132, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %76, align 1, !tbaa !2448
  %1147 = lshr i32 %1132, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %77, align 1, !tbaa !2449
  %1149 = lshr i32 %1131, 31
  %1150 = xor i32 %1147, %1149
  %1151 = add nuw nsw i32 %1150, %1149
  %1152 = icmp eq i32 %1151, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %78, align 1, !tbaa !2450
  %1154 = sext i32 %1132 to i64
  store i64 %1154, i64* %RCX, align 8, !tbaa !2428
  %1155 = shl nsw i64 %1154, 2
  %1156 = add i64 %1155, %168
  %1157 = add i64 %121, 41
  store i64 %1157, i64* %PC, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RDX, align 8, !tbaa !2428
  %1161 = add i64 %192, 16
  %1162 = add i64 %121, 45
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163, align 8
  store i64 %1164, i64* %RAX, align 8, !tbaa !2428
  %1165 = add i64 %192, -52
  %1166 = add i64 %121, 49
  store i64 %1166, i64* %PC, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = sext i32 %1168 to i64
  %1170 = mul nsw i64 %1169, 1536
  store i64 %1170, i64* %RCX, align 8, !tbaa !2428
  %1171 = lshr i64 %1170, 63
  %1172 = add i64 %1170, %1164
  store i64 %1172, i64* %RAX, align 8, !tbaa !2428
  %1173 = icmp ult i64 %1172, %1164
  %1174 = icmp ult i64 %1172, %1170
  %1175 = or i1 %1173, %1174
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %73, align 1, !tbaa !2432
  %1177 = trunc i64 %1172 to i32
  %1178 = and i32 %1177, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178) #8
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %74, align 1, !tbaa !2446
  %1183 = xor i64 %1164, %1172
  %1184 = lshr i64 %1183, 4
  %1185 = trunc i64 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %75, align 1, !tbaa !2447
  %1187 = icmp eq i64 %1172, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %76, align 1, !tbaa !2448
  %1189 = lshr i64 %1172, 63
  %1190 = trunc i64 %1189 to i8
  store i8 %1190, i8* %77, align 1, !tbaa !2449
  %1191 = lshr i64 %1164, 63
  %1192 = xor i64 %1189, %1191
  %1193 = xor i64 %1189, %1171
  %1194 = add nuw nsw i64 %1192, %1193
  %1195 = icmp eq i64 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %78, align 1, !tbaa !2450
  %1197 = load i64, i64* %RBP, align 8
  %1198 = add i64 %1197, -48
  %1199 = add i64 %121, 63
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sext i32 %1201 to i64
  %1203 = shl nsw i64 %1202, 8
  store i64 %1203, i64* %RCX, align 8, !tbaa !2428
  %1204 = lshr i64 %1202, 55
  %1205 = and i64 %1204, 1
  %1206 = add i64 %1203, %1172
  store i64 %1206, i64* %RAX, align 8, !tbaa !2428
  %1207 = icmp ult i64 %1206, %1172
  %1208 = icmp ult i64 %1206, %1203
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %73, align 1, !tbaa !2432
  %1211 = trunc i64 %1206 to i32
  %1212 = and i32 %1211, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212) #8
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %74, align 1, !tbaa !2446
  %1217 = xor i64 %1172, %1206
  %1218 = lshr i64 %1217, 4
  %1219 = trunc i64 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %75, align 1, !tbaa !2447
  %1221 = icmp eq i64 %1206, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %76, align 1, !tbaa !2448
  %1223 = lshr i64 %1206, 63
  %1224 = trunc i64 %1223 to i8
  store i8 %1224, i8* %77, align 1, !tbaa !2449
  %1225 = xor i64 %1223, %1189
  %1226 = xor i64 %1223, %1205
  %1227 = add nuw nsw i64 %1225, %1226
  %1228 = icmp eq i64 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %78, align 1, !tbaa !2450
  %1230 = add i64 %1197, -56
  %1231 = add i64 %121, 74
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RCX, align 8, !tbaa !2428
  %1235 = load i64, i64* %RDX, align 8
  %1236 = shl nsw i64 %1234, 2
  %1237 = add i64 %1236, %1206
  %1238 = add i64 %121, 77
  store i64 %1238, i64* %PC, align 8
  %1239 = trunc i64 %1235 to i32
  %1240 = inttoptr i64 %1237 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = add i32 %1241, %1239
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RDX, align 8, !tbaa !2428
  %1244 = icmp ult i32 %1242, %1239
  %1245 = icmp ult i32 %1242, %1241
  %1246 = or i1 %1244, %1245
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %73, align 1, !tbaa !2432
  %1248 = and i32 %1242, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248) #8
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %74, align 1, !tbaa !2446
  %1253 = xor i32 %1241, %1239
  %1254 = xor i32 %1253, %1242
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %75, align 1, !tbaa !2447
  %1258 = icmp eq i32 %1242, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %76, align 1, !tbaa !2448
  %1260 = lshr i32 %1242, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %77, align 1, !tbaa !2449
  %1262 = lshr i32 %1239, 31
  %1263 = lshr i32 %1241, 31
  %1264 = xor i32 %1260, %1262
  %1265 = xor i32 %1260, %1263
  %1266 = add nuw nsw i32 %1264, %1265
  %1267 = icmp eq i32 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %78, align 1, !tbaa !2450
  %1269 = load i64, i64* %RBP, align 8
  %1270 = add i64 %1269, 24
  %1271 = add i64 %121, 81
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX, align 8, !tbaa !2428
  %1274 = add i64 %1269, -52
  %1275 = add i64 %121, 85
  store i64 %1275, i64* %PC, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = mul nsw i64 %1278, 1536
  store i64 %1279, i64* %RCX, align 8, !tbaa !2428
  %1280 = lshr i64 %1279, 63
  %1281 = add i64 %1279, %1273
  store i64 %1281, i64* %RAX, align 8, !tbaa !2428
  %1282 = icmp ult i64 %1281, %1273
  %1283 = icmp ult i64 %1281, %1279
  %1284 = or i1 %1282, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %73, align 1, !tbaa !2432
  %1286 = trunc i64 %1281 to i32
  %1287 = and i32 %1286, 255
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287) #8
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %74, align 1, !tbaa !2446
  %1292 = xor i64 %1273, %1281
  %1293 = lshr i64 %1292, 4
  %1294 = trunc i64 %1293 to i8
  %1295 = and i8 %1294, 1
  store i8 %1295, i8* %75, align 1, !tbaa !2447
  %1296 = icmp eq i64 %1281, 0
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %76, align 1, !tbaa !2448
  %1298 = lshr i64 %1281, 63
  %1299 = trunc i64 %1298 to i8
  store i8 %1299, i8* %77, align 1, !tbaa !2449
  %1300 = lshr i64 %1273, 63
  %1301 = xor i64 %1298, %1300
  %1302 = xor i64 %1298, %1280
  %1303 = add nuw nsw i64 %1301, %1302
  %1304 = icmp eq i64 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %78, align 1, !tbaa !2450
  %1306 = add i64 %1269, -48
  %1307 = add i64 %121, 99
  store i64 %1307, i64* %PC, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = sext i32 %1309 to i64
  %1311 = shl nsw i64 %1310, 8
  store i64 %1311, i64* %RCX, align 8, !tbaa !2428
  %1312 = lshr i64 %1310, 55
  %1313 = and i64 %1312, 1
  %1314 = add i64 %1311, %1281
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = icmp ult i64 %1314, %1281
  %1316 = icmp ult i64 %1314, %1311
  %1317 = or i1 %1315, %1316
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %73, align 1, !tbaa !2432
  %1319 = trunc i64 %1314 to i32
  %1320 = and i32 %1319, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320) #8
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %74, align 1, !tbaa !2446
  %1325 = xor i64 %1281, %1314
  %1326 = lshr i64 %1325, 4
  %1327 = trunc i64 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %75, align 1, !tbaa !2447
  %1329 = icmp eq i64 %1314, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %76, align 1, !tbaa !2448
  %1331 = lshr i64 %1314, 63
  %1332 = trunc i64 %1331 to i8
  store i8 %1332, i8* %77, align 1, !tbaa !2449
  %1333 = xor i64 %1331, %1298
  %1334 = xor i64 %1331, %1313
  %1335 = add nuw nsw i64 %1333, %1334
  %1336 = icmp eq i64 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %78, align 1, !tbaa !2450
  %1338 = load i64, i64* %RBP, align 8
  %1339 = add i64 %1338, -56
  %1340 = add i64 %121, 110
  store i64 %1340, i64* %PC, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RCX, align 8, !tbaa !2428
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1344, %1314
  %1346 = load i32, i32* %EDX, align 4
  %1347 = add i64 %121, 113
  store i64 %1347, i64* %PC, align 8
  %1348 = inttoptr i64 %1345 to i32*
  store i32 %1346, i32* %1348, align 4
  %1349 = load i64, i64* %RBP, align 8
  %1350 = add i64 %1349, -56
  %1351 = load i64, i64* %PC, align 8
  %1352 = add i64 %1351, 3
  store i64 %1352, i64* %PC, align 8
  %1353 = inttoptr i64 %1350 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = add i32 %1354, 1
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RAX, align 8, !tbaa !2428
  %1357 = icmp eq i32 %1354, -1
  %1358 = icmp eq i32 %1355, 0
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %73, align 1, !tbaa !2432
  %1361 = and i32 %1355, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361) #8
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %74, align 1, !tbaa !2446
  %1366 = xor i32 %1354, %1355
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %75, align 1, !tbaa !2447
  %1370 = zext i1 %1358 to i8
  store i8 %1370, i8* %76, align 1, !tbaa !2448
  %1371 = lshr i32 %1355, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %77, align 1, !tbaa !2449
  %1373 = lshr i32 %1354, 31
  %1374 = xor i32 %1371, %1373
  %1375 = add nuw nsw i32 %1374, %1371
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %78, align 1, !tbaa !2450
  %1378 = add i64 %1351, 9
  store i64 %1378, i64* %PC, align 8
  store i32 %1355, i32* %1353, align 4
  %1379 = load i64, i64* %PC, align 8
  %1380 = add i64 %1379, -139
  store i64 %1380, i64* %PC, align 8, !tbaa !2428
  br label %block_400c75

block_400b93:                                     ; preds = %block_400b82
  %1381 = add i64 %1651, -24
  %1382 = add i64 %1689, 4
  store i64 %1382, i64* %PC, align 8
  %1383 = inttoptr i64 %1381 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RAX, align 8, !tbaa !2428
  %1385 = add i64 %1651, -52
  %1386 = add i64 %1689, 8
  store i64 %1386, i64* %PC, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = mul nsw i64 %1389, 24
  store i64 %1390, i64* %RCX, align 8, !tbaa !2428
  %1391 = lshr i64 %1390, 63
  %1392 = add i64 %1390, %1384
  store i64 %1392, i64* %RAX, align 8, !tbaa !2428
  %1393 = icmp ult i64 %1392, %1384
  %1394 = icmp ult i64 %1392, %1390
  %1395 = or i1 %1393, %1394
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %73, align 1, !tbaa !2432
  %1397 = trunc i64 %1392 to i32
  %1398 = and i32 %1397, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398) #8
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %74, align 1, !tbaa !2446
  %1403 = xor i64 %1390, %1384
  %1404 = xor i64 %1403, %1392
  %1405 = lshr i64 %1404, 4
  %1406 = trunc i64 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %75, align 1, !tbaa !2447
  %1408 = icmp eq i64 %1392, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %76, align 1, !tbaa !2448
  %1410 = lshr i64 %1392, 63
  %1411 = trunc i64 %1410 to i8
  store i8 %1411, i8* %77, align 1, !tbaa !2449
  %1412 = lshr i64 %1384, 63
  %1413 = xor i64 %1410, %1412
  %1414 = xor i64 %1410, %1391
  %1415 = add nuw nsw i64 %1413, %1414
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %78, align 1, !tbaa !2450
  %1418 = add i64 %1651, -48
  %1419 = add i64 %1689, 19
  store i64 %1419, i64* %PC, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = sext i32 %1421 to i64
  store i64 %1422, i64* %RCX, align 8, !tbaa !2428
  %1423 = shl nsw i64 %1422, 2
  %1424 = add i64 %1423, %1392
  %1425 = add i64 %1689, 22
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RDX, align 8, !tbaa !2428
  %1429 = add i64 %1651, 16
  %1430 = add i64 %1689, 26
  store i64 %1430, i64* %PC, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RAX, align 8, !tbaa !2428
  %1433 = add i64 %1689, 30
  store i64 %1433, i64* %PC, align 8
  %1434 = load i32, i32* %1387, align 4
  %1435 = sext i32 %1434 to i64
  %1436 = mul nsw i64 %1435, 1536
  store i64 %1436, i64* %RCX, align 8, !tbaa !2428
  %1437 = lshr i64 %1436, 63
  %1438 = add i64 %1436, %1432
  store i64 %1438, i64* %RAX, align 8, !tbaa !2428
  %1439 = icmp ult i64 %1438, %1432
  %1440 = icmp ult i64 %1438, %1436
  %1441 = or i1 %1439, %1440
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %73, align 1, !tbaa !2432
  %1443 = trunc i64 %1438 to i32
  %1444 = and i32 %1443, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444) #8
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %74, align 1, !tbaa !2446
  %1449 = xor i64 %1432, %1438
  %1450 = lshr i64 %1449, 4
  %1451 = trunc i64 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %75, align 1, !tbaa !2447
  %1453 = icmp eq i64 %1438, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %76, align 1, !tbaa !2448
  %1455 = lshr i64 %1438, 63
  %1456 = trunc i64 %1455 to i8
  store i8 %1456, i8* %77, align 1, !tbaa !2449
  %1457 = lshr i64 %1432, 63
  %1458 = xor i64 %1455, %1457
  %1459 = xor i64 %1455, %1437
  %1460 = add nuw nsw i64 %1458, %1459
  %1461 = icmp eq i64 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %78, align 1, !tbaa !2450
  %1463 = load i64, i64* %RBP, align 8
  %1464 = add i64 %1463, -48
  %1465 = add i64 %1689, 44
  store i64 %1465, i64* %PC, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = sext i32 %1467 to i64
  %1469 = shl nsw i64 %1468, 8
  store i64 %1469, i64* %RCX, align 8, !tbaa !2428
  %1470 = lshr i64 %1468, 55
  %1471 = and i64 %1470, 1
  %1472 = add i64 %1469, %1438
  store i64 %1472, i64* %RAX, align 8, !tbaa !2428
  %1473 = icmp ult i64 %1472, %1438
  %1474 = icmp ult i64 %1472, %1469
  %1475 = or i1 %1473, %1474
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %73, align 1, !tbaa !2432
  %1477 = trunc i64 %1472 to i32
  %1478 = and i32 %1477, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478) #8
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %74, align 1, !tbaa !2446
  %1483 = xor i64 %1438, %1472
  %1484 = lshr i64 %1483, 4
  %1485 = trunc i64 %1484 to i8
  %1486 = and i8 %1485, 1
  store i8 %1486, i8* %75, align 1, !tbaa !2447
  %1487 = icmp eq i64 %1472, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %76, align 1, !tbaa !2448
  %1489 = lshr i64 %1472, 63
  %1490 = trunc i64 %1489 to i8
  store i8 %1490, i8* %77, align 1, !tbaa !2449
  %1491 = xor i64 %1489, %1455
  %1492 = xor i64 %1489, %1471
  %1493 = add nuw nsw i64 %1491, %1492
  %1494 = icmp eq i64 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %78, align 1, !tbaa !2450
  %1496 = add i64 %1463, -56
  %1497 = add i64 %1689, 55
  store i64 %1497, i64* %PC, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  store i64 %1500, i64* %RCX, align 8, !tbaa !2428
  %1501 = shl nsw i64 %1500, 2
  %1502 = add i64 %1501, %1472
  %1503 = load i32, i32* %EDX, align 4
  %1504 = add i64 %1689, 58
  store i64 %1504, i64* %PC, align 8
  %1505 = inttoptr i64 %1502 to i32*
  store i32 %1503, i32* %1505, align 4
  %1506 = load i64, i64* %RBP, align 8
  %1507 = add i64 %1506, -56
  %1508 = load i64, i64* %PC, align 8
  %1509 = add i64 %1508, 3
  store i64 %1509, i64* %PC, align 8
  %1510 = inttoptr i64 %1507 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = add i32 %1511, 1
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX, align 8, !tbaa !2428
  %1514 = icmp eq i32 %1511, -1
  %1515 = icmp eq i32 %1512, 0
  %1516 = or i1 %1514, %1515
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %73, align 1, !tbaa !2432
  %1518 = and i32 %1512, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518) #8
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %74, align 1, !tbaa !2446
  %1523 = xor i32 %1511, %1512
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %75, align 1, !tbaa !2447
  %1527 = zext i1 %1515 to i8
  store i8 %1527, i8* %76, align 1, !tbaa !2448
  %1528 = lshr i32 %1512, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %77, align 1, !tbaa !2449
  %1530 = lshr i32 %1511, 31
  %1531 = xor i32 %1528, %1530
  %1532 = add nuw nsw i32 %1531, %1528
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %78, align 1, !tbaa !2450
  %1535 = add i64 %1508, 9
  store i64 %1535, i64* %PC, align 8
  store i32 %1512, i32* %1510, align 4
  %1536 = load i64, i64* %PC, align 8
  %1537 = add i64 %1536, -84
  store i64 %1537, i64* %PC, align 8, !tbaa !2428
  br label %block_400b82

block_400d05:                                     ; preds = %block_400c75
  %1538 = add i64 %192, -12
  %1539 = add i64 %121, 32
  store i64 %1539, i64* %PC, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = add i32 %1541, -1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RDX, align 8, !tbaa !2428
  %1544 = icmp eq i32 %1541, 0
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %73, align 1, !tbaa !2432
  %1546 = and i32 %1542, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546) #8
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %74, align 1, !tbaa !2446
  %1551 = xor i32 %1541, %1542
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %75, align 1, !tbaa !2447
  %1555 = icmp eq i32 %1542, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %76, align 1, !tbaa !2448
  %1557 = lshr i32 %1542, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %77, align 1, !tbaa !2449
  %1559 = lshr i32 %1541, 31
  %1560 = xor i32 %1557, %1559
  %1561 = add nuw nsw i32 %1560, %1559
  %1562 = icmp eq i32 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %78, align 1, !tbaa !2450
  %1564 = sext i32 %1542 to i64
  store i64 %1564, i64* %RCX, align 8, !tbaa !2428
  %1565 = shl nsw i64 %1564, 2
  %1566 = add i64 %1565, %168
  %1567 = add i64 %121, 41
  store i64 %1567, i64* %PC, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RDX, align 8, !tbaa !2428
  %1571 = add i64 %192, -32
  %1572 = add i64 %121, 45
  store i64 %1572, i64* %PC, align 8
  %1573 = inttoptr i64 %1571 to i64*
  %1574 = load i64, i64* %1573, align 8
  store i64 %1574, i64* %RAX, align 8, !tbaa !2428
  %1575 = add i64 %192, -52
  %1576 = add i64 %121, 49
  store i64 %1576, i64* %PC, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sext i32 %1578 to i64
  %1580 = mul nsw i64 %1579, 24
  store i64 %1580, i64* %RCX, align 8, !tbaa !2428
  %1581 = lshr i64 %1580, 63
  %1582 = add i64 %1580, %1574
  store i64 %1582, i64* %RAX, align 8, !tbaa !2428
  %1583 = icmp ult i64 %1582, %1574
  %1584 = icmp ult i64 %1582, %1580
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %73, align 1, !tbaa !2432
  %1587 = trunc i64 %1582 to i32
  %1588 = and i32 %1587, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588) #8
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %74, align 1, !tbaa !2446
  %1593 = xor i64 %1580, %1574
  %1594 = xor i64 %1593, %1582
  %1595 = lshr i64 %1594, 4
  %1596 = trunc i64 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %75, align 1, !tbaa !2447
  %1598 = icmp eq i64 %1582, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %76, align 1, !tbaa !2448
  %1600 = lshr i64 %1582, 63
  %1601 = trunc i64 %1600 to i8
  store i8 %1601, i8* %77, align 1, !tbaa !2449
  %1602 = lshr i64 %1574, 63
  %1603 = xor i64 %1600, %1602
  %1604 = xor i64 %1600, %1581
  %1605 = add nuw nsw i64 %1603, %1604
  %1606 = icmp eq i64 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %78, align 1, !tbaa !2450
  %1608 = load i64, i64* %RBP, align 8
  %1609 = add i64 %1608, -48
  %1610 = add i64 %121, 60
  store i64 %1610, i64* %PC, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RCX, align 8, !tbaa !2428
  %1614 = shl nsw i64 %1613, 2
  %1615 = add i64 %1614, %1582
  %1616 = add i64 %121, 63
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1615 to i32*
  store i32 %1569, i32* %1617, align 4
  %1618 = load i64, i64* %RBP, align 8
  %1619 = add i64 %1618, -48
  %1620 = load i64, i64* %PC, align 8
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %PC, align 8
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, 1
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX, align 8, !tbaa !2428
  %1626 = icmp eq i32 %1623, -1
  %1627 = icmp eq i32 %1624, 0
  %1628 = or i1 %1626, %1627
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %73, align 1, !tbaa !2432
  %1630 = and i32 %1624, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630) #8
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %74, align 1, !tbaa !2446
  %1635 = xor i32 %1623, %1624
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %75, align 1, !tbaa !2447
  %1639 = zext i1 %1627 to i8
  store i8 %1639, i8* %76, align 1, !tbaa !2448
  %1640 = lshr i32 %1624, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %77, align 1, !tbaa !2449
  %1642 = lshr i32 %1623, 31
  %1643 = xor i32 %1640, %1642
  %1644 = add nuw nsw i32 %1643, %1640
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %78, align 1, !tbaa !2450
  %1647 = add i64 %1620, 9
  store i64 %1647, i64* %PC, align 8
  store i32 %1624, i32* %1622, align 4
  %1648 = load i64, i64* %PC, align 8
  %1649 = add i64 %1648, -302
  store i64 %1649, i64* %PC, align 8, !tbaa !2428
  br label %block_400c1f

block_400b82:                                     ; preds = %block_400b93, %block_400b7b
  %1650 = phi i64 [ %1537, %block_400b93 ], [ %.pre7, %block_400b7b ]
  %1651 = load i64, i64* %RBP, align 8
  %1652 = add i64 %1651, -56
  %1653 = add i64 %1650, 3
  store i64 %1653, i64* %PC, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX, align 8, !tbaa !2428
  %1657 = add i64 %1651, -12
  %1658 = add i64 %1650, 6
  store i64 %1658, i64* %PC, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = add i32 %1660, -1
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RCX, align 8, !tbaa !2428
  %1663 = lshr i32 %1661, 31
  %1664 = sub i32 %1655, %1661
  %1665 = icmp ult i32 %1655, %1661
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %73, align 1, !tbaa !2432
  %1667 = and i32 %1664, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667) #8
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %74, align 1, !tbaa !2446
  %1672 = xor i32 %1661, %1655
  %1673 = xor i32 %1672, %1664
  %1674 = lshr i32 %1673, 4
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %75, align 1, !tbaa !2447
  %1677 = icmp eq i32 %1664, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %76, align 1, !tbaa !2448
  %1679 = lshr i32 %1664, 31
  %1680 = trunc i32 %1679 to i8
  store i8 %1680, i8* %77, align 1, !tbaa !2449
  %1681 = lshr i32 %1655, 31
  %1682 = xor i32 %1663, %1681
  %1683 = xor i32 %1679, %1681
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %78, align 1, !tbaa !2450
  %1687 = icmp ne i8 %1680, 0
  %1688 = xor i1 %1687, %1685
  %.demorgan17 = or i1 %1677, %1688
  %.v18 = select i1 %.demorgan17, i64 17, i64 89
  %1689 = add i64 %1650, %.v18
  store i64 %1689, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan17, label %block_400b93, label %block_400bdb

block_400c01:                                     ; preds = %block_400b53
  %1690 = add i64 %320, 7
  store i64 %1690, i64* %PC, align 8
  store i32 0, i32* %285, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400c08
}

; Function Attrs: noinline
define %struct.Memory* @sub_4013e0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4013e0:
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
  store i8 %51, i8* %43, align 1, !tbaa !2454
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
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
  %63 = add i64 %38, -3803
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
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
  br i1 %76, label %block_401436, label %block_401416

block_401436:                                     ; preds = %block_401420, %block_4013e0
  %81 = phi i64 [ %80, %block_4013e0 ], [ %179, %block_401420 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4013e0 ], [ %149, %block_401420 ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %82, %83
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

block_401416:                                     ; preds = %block_4013e0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401420

block_401420:                                     ; preds = %block_401420, %block_401416
  %134 = phi i64 [ 0, %block_401416 ], [ %152, %block_401420 ]
  %135 = phi i64 [ %133, %block_401416 ], [ %179, %block_401420 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401416 ], [ %149, %block_401420 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
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
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401436, label %block_401420
}

; Function Attrs: noinline
define %struct.Memory* @sub_400520__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400520:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #8
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
  br i1 %18, label %block_400520.block_400532_crit_edge, label %block_400530

block_400520.block_400532_crit_edge:              ; preds = %block_400520
  br label %block_400532

block_400530:                                     ; preds = %block_400520
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400532

block_400532:                                     ; preds = %block_400520.block_400532_crit_edge, %block_400530
  %.pre-phi = phi i64* [ %RSP, %block_400520.block_400532_crit_edge ], [ %RSP, %block_400530 ]
  %27 = phi i64 [ %22, %block_400520.block_400532_crit_edge ], [ %.pre1, %block_400530 ]
  %28 = phi i64 [ %4, %block_400520.block_400532_crit_edge ], [ %.pre, %block_400530 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400520.block_400532_crit_edge ], [ %26, %block_400530 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %28, %29
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #8
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
  br i1 %12, label %block_400669, label %block_400680

block_400680:                                     ; preds = %block_400660
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

block_400669:                                     ; preds = %block_400660
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
  %36 = tail call %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline
define %struct.Memory* @sub_401454__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401454:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  %5 = icmp ult i64 %3, 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = lshr i64 %4, 63
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %12 = lshr i64 %3, 63
  %13 = xor i64 %10, %12
  %14 = add nuw nsw i64 %13, %12
  %15 = icmp eq i64 %14, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = zext i1 %5 to i8
  store i8 %18, i8* %6, align 1, !tbaa !2432
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %7, align 1, !tbaa !2446
  %25 = xor i64 %4, %3
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %8, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2448
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2449
  store i8 %16, i8* %17, align 1, !tbaa !2450
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
define %struct.Memory* @sub_400a40_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a40:
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
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a5a

block_400a5a:                                     ; preds = %block_400af2, %block_400a40
  %46 = phi i64 [ %.pre, %block_400a40 ], [ %442, %block_400af2 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a40 ], [ %MEMORY.1, %block_400af2 ]
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -36
  %49 = add i64 %46, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RAX, align 8, !tbaa !2428
  %53 = add i64 %47, -4
  %54 = add i64 %46, 6
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %51, %56
  %58 = icmp ult i32 %51, %56
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %39, align 1, !tbaa !2432
  %60 = and i32 %57, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #8
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %40, align 1, !tbaa !2446
  %65 = xor i32 %56, %51
  %66 = xor i32 %65, %57
  %67 = lshr i32 %66, 4
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %41, align 1, !tbaa !2447
  %70 = icmp eq i32 %57, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %42, align 1, !tbaa !2448
  %72 = lshr i32 %57, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %43, align 1, !tbaa !2449
  %74 = lshr i32 %51, 31
  %75 = lshr i32 %56, 31
  %76 = xor i32 %75, %74
  %77 = xor i32 %72, %74
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %44, align 1, !tbaa !2450
  %81 = icmp ne i8 %73, 0
  %82 = xor i1 %81, %79
  %.v = select i1 %82, i64 12, i64 171
  %83 = add i64 %46, %.v
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br i1 %82, label %block_400a66, label %block_400b05

block_400a79:                                     ; preds = %block_400a6d
  %84 = add i64 %480, 3
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %481 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RAX, align 8, !tbaa !2428
  %89 = icmp eq i32 %86, -1
  %90 = icmp eq i32 %87, 0
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %39, align 1, !tbaa !2432
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #8
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %40, align 1, !tbaa !2446
  %98 = xor i32 %86, %87
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %41, align 1, !tbaa !2447
  %102 = zext i1 %90 to i8
  store i8 %102, i8* %42, align 1, !tbaa !2448
  %103 = lshr i32 %87, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %43, align 1, !tbaa !2449
  %105 = lshr i32 %86, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %103
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %44, align 1, !tbaa !2450
  %110 = add i64 %480, 9
  store i64 %110, i64* %PC, align 8
  %111 = load i32, i32* %447, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RCX, align 8, !tbaa !2428
  %114 = sext i32 %87 to i64
  %115 = sext i32 %112 to i64
  %116 = mul nsw i64 %115, %114
  %117 = trunc i64 %116 to i32
  %118 = and i64 %116, 4294967295
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = shl i64 %116, 32
  %120 = ashr exact i64 %119, 32
  %121 = icmp ne i64 %120, %116
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %39, align 1, !tbaa !2432
  %123 = and i32 %117, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  %128 = lshr i32 %117, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %43, align 1, !tbaa !2449
  store i8 %122, i8* %44, align 1, !tbaa !2450
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -16
  %132 = add i64 %480, 19
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RDX, align 8, !tbaa !2428
  %135 = add i64 %130, -36
  %136 = add i64 %480, 23
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, 24
  store i64 %140, i64* %RSI, align 8, !tbaa !2428
  %141 = lshr i64 %140, 63
  %142 = add i64 %140, %134
  store i64 %142, i64* %RDX, align 8, !tbaa !2428
  %143 = icmp ult i64 %142, %134
  %144 = icmp ult i64 %142, %140
  %145 = or i1 %143, %144
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %39, align 1, !tbaa !2432
  %147 = trunc i64 %142 to i32
  %148 = and i32 %147, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #8
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %40, align 1, !tbaa !2446
  %153 = xor i64 %140, %134
  %154 = xor i64 %153, %142
  %155 = lshr i64 %154, 4
  %156 = trunc i64 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %41, align 1, !tbaa !2447
  %158 = icmp eq i64 %142, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %42, align 1, !tbaa !2448
  %160 = lshr i64 %142, 63
  %161 = trunc i64 %160 to i8
  store i8 %161, i8* %43, align 1, !tbaa !2449
  %162 = lshr i64 %134, 63
  %163 = xor i64 %160, %162
  %164 = xor i64 %160, %141
  %165 = add nuw nsw i64 %163, %164
  %166 = icmp eq i64 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %44, align 1, !tbaa !2450
  %168 = add i64 %130, -40
  %169 = add i64 %480, 34
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %RSI, align 8, !tbaa !2428
  %173 = shl nsw i64 %172, 2
  %174 = add i64 %173, %142
  %175 = load i32, i32* %EAX, align 4
  %176 = add i64 %480, 37
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %177, align 4
  %178 = load i64, i64* %RBP, align 8
  %179 = add i64 %178, -36
  %180 = load i64, i64* %PC, align 8
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = add i64 %178, -40
  %186 = add i64 %180, 6
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = sub i32 %183, %188
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = icmp ult i32 %183, %188
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %39, align 1, !tbaa !2432
  %193 = and i32 %189, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #8
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %40, align 1, !tbaa !2446
  %198 = xor i32 %188, %183
  %199 = xor i32 %198, %189
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %41, align 1, !tbaa !2447
  %203 = icmp eq i32 %189, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %42, align 1, !tbaa !2448
  %205 = lshr i32 %189, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %43, align 1, !tbaa !2449
  %207 = lshr i32 %183, 31
  %208 = lshr i32 %188, 31
  %209 = xor i32 %208, %207
  %210 = xor i32 %205, %207
  %211 = add nuw nsw i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %44, align 1, !tbaa !2450
  %214 = sext i32 %189 to i64
  %215 = lshr i64 %214, 32
  store i64 %215, i64* %RDX, align 8, !tbaa !2428
  %216 = add i64 %178, -4
  %217 = add i64 %180, 10
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = shl nuw i64 %215, 32
  %222 = or i64 %221, %190
  %223 = sdiv i64 %222, %220
  %224 = shl i64 %223, 32
  %225 = ashr exact i64 %224, 32
  %226 = icmp eq i64 %223, %225
  br i1 %226, label %229, label %227

; <label>:227:                                    ; preds = %block_400a79
  %228 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %217, %struct.Memory* %MEMORY.1) #9
  %.pre2 = load i64, i64* %RBP, align 8
  %.pre3 = load i64, i64* %PC, align 8
  %.pre4 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:229:                                    ; preds = %block_400a79
  %230 = srem i64 %222, %220
  %231 = and i64 %223, 4294967295
  store i64 %231, i64* %45, align 8, !tbaa !2428
  %232 = and i64 %230, 4294967295
  store i64 %232, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %233 = trunc i64 %223 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %229, %227
  %234 = phi i32 [ %.pre4, %227 ], [ %233, %229 ]
  %235 = phi i64 [ %.pre3, %227 ], [ %217, %229 ]
  %236 = phi i64 [ %.pre2, %227 ], [ %178, %229 ]
  %237 = phi %struct.Memory* [ %228, %227 ], [ %MEMORY.1, %229 ]
  %238 = add i64 %236, -24
  %239 = add i64 %235, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RSI, align 8, !tbaa !2428
  %242 = add i64 %236, -36
  %243 = add i64 %235, 8
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %246, 24
  store i64 %247, i64* %RDI, align 8, !tbaa !2428
  %248 = lshr i64 %247, 63
  %249 = add i64 %247, %241
  store i64 %249, i64* %RSI, align 8, !tbaa !2428
  %250 = icmp ult i64 %249, %241
  %251 = icmp ult i64 %249, %247
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %39, align 1, !tbaa !2432
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %40, align 1, !tbaa !2446
  %260 = xor i64 %247, %241
  %261 = xor i64 %260, %249
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %41, align 1, !tbaa !2447
  %265 = icmp eq i64 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %42, align 1, !tbaa !2448
  %267 = lshr i64 %249, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %43, align 1, !tbaa !2449
  %269 = lshr i64 %241, 63
  %270 = xor i64 %267, %269
  %271 = xor i64 %267, %248
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %44, align 1, !tbaa !2450
  %275 = add i64 %236, -40
  %276 = add i64 %235, 19
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RDI, align 8, !tbaa !2428
  %280 = shl nsw i64 %279, 2
  %281 = add i64 %280, %249
  %282 = add i64 %235, 22
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  store i32 %234, i32* %283, align 4
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -36
  %286 = load i64, i64* %PC, align 8
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = add i64 %284, -40
  %292 = add i64 %286, 6
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, -1
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RCX, align 8, !tbaa !2428
  %297 = sext i32 %289 to i64
  %298 = sext i32 %295 to i64
  %299 = mul nsw i64 %298, %297
  %300 = trunc i64 %299 to i32
  %301 = and i64 %299, 4294967295
  store i64 %301, i64* %RAX, align 8, !tbaa !2428
  %302 = shl i64 %299, 32
  %303 = ashr exact i64 %302, 32
  %304 = icmp ne i64 %303, %299
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %39, align 1, !tbaa !2432
  %306 = and i32 %300, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306) #8
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  %311 = lshr i32 %300, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %43, align 1, !tbaa !2449
  store i8 %305, i8* %44, align 1, !tbaa !2450
  %313 = lshr i64 %303, 32
  store i64 %313, i64* %RDX, align 8, !tbaa !2428
  %314 = add i64 %284, -4
  %315 = add i64 %286, 16
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = shl nuw i64 %313, 32
  %320 = or i64 %319, %301
  %321 = sdiv i64 %320, %318
  %322 = shl i64 %321, 32
  %323 = ashr exact i64 %322, 32
  %324 = icmp eq i64 %321, %323
  br i1 %324, label %327, label %325

; <label>:325:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %326 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %315, %struct.Memory* %237) #9
  %.pre5 = load i64, i64* %PC, align 8
  %.pre6 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:327:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %328 = srem i64 %320, %318
  %329 = and i64 %321, 4294967295
  store i64 %329, i64* %45, align 8, !tbaa !2428
  %330 = and i64 %328, 4294967295
  store i64 %330, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %331 = trunc i64 %321 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %327, %325
  %332 = phi i32 [ %.pre6, %325 ], [ %331, %327 ]
  %333 = phi i64 [ %.pre5, %325 ], [ %315, %327 ]
  %334 = phi %struct.Memory* [ %326, %325 ], [ %237, %327 ]
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -32
  %337 = add i64 %333, 4
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RSI, align 8, !tbaa !2428
  %340 = add i64 %335, -36
  %341 = add i64 %333, 8
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = mul nsw i64 %344, 24
  store i64 %345, i64* %RDI, align 8, !tbaa !2428
  %346 = lshr i64 %345, 63
  %347 = add i64 %345, %339
  store i64 %347, i64* %RSI, align 8, !tbaa !2428
  %348 = icmp ult i64 %347, %339
  %349 = icmp ult i64 %347, %345
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %39, align 1, !tbaa !2432
  %352 = trunc i64 %347 to i32
  %353 = and i32 %352, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353) #8
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %40, align 1, !tbaa !2446
  %358 = xor i64 %345, %339
  %359 = xor i64 %358, %347
  %360 = lshr i64 %359, 4
  %361 = trunc i64 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %41, align 1, !tbaa !2447
  %363 = icmp eq i64 %347, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %42, align 1, !tbaa !2448
  %365 = lshr i64 %347, 63
  %366 = trunc i64 %365 to i8
  store i8 %366, i8* %43, align 1, !tbaa !2449
  %367 = lshr i64 %339, 63
  %368 = xor i64 %365, %367
  %369 = xor i64 %365, %346
  %370 = add nuw nsw i64 %368, %369
  %371 = icmp eq i64 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %44, align 1, !tbaa !2450
  %373 = add i64 %335, -40
  %374 = add i64 %333, 19
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %RDI, align 8, !tbaa !2428
  %378 = shl nsw i64 %377, 2
  %379 = add i64 %378, %347
  %380 = add i64 %333, 22
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  store i32 %332, i32* %381, align 4
  %382 = load i64, i64* %RBP, align 8
  %383 = add i64 %382, -40
  %384 = load i64, i64* %PC, align 8
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = add i32 %387, 1
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RAX, align 8, !tbaa !2428
  %390 = icmp eq i32 %387, -1
  %391 = icmp eq i32 %388, 0
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %39, align 1, !tbaa !2432
  %394 = and i32 %388, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394) #8
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %40, align 1, !tbaa !2446
  %399 = xor i32 %387, %388
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  store i8 %402, i8* %41, align 1, !tbaa !2447
  %403 = zext i1 %391 to i8
  store i8 %403, i8* %42, align 1, !tbaa !2448
  %404 = lshr i32 %388, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %43, align 1, !tbaa !2449
  %406 = lshr i32 %387, 31
  %407 = xor i32 %404, %406
  %408 = add nuw nsw i32 %407, %404
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %44, align 1, !tbaa !2450
  %411 = add i64 %384, 9
  store i64 %411, i64* %PC, align 8
  store i32 %388, i32* %386, align 4
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, -128
  store i64 %413, i64* %PC, align 8, !tbaa !2428
  br label %block_400a6d

block_400af2:                                     ; preds = %block_400a6d
  %414 = add i64 %480, 8
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %481 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, 1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX, align 8, !tbaa !2428
  %419 = icmp eq i32 %416, -1
  %420 = icmp eq i32 %417, 0
  %421 = or i1 %419, %420
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %39, align 1, !tbaa !2432
  %423 = and i32 %417, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423) #8
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %40, align 1, !tbaa !2446
  %428 = xor i32 %416, %417
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %41, align 1, !tbaa !2447
  %432 = zext i1 %420 to i8
  store i8 %432, i8* %42, align 1, !tbaa !2448
  %433 = lshr i32 %417, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %43, align 1, !tbaa !2449
  %435 = lshr i32 %416, 31
  %436 = xor i32 %433, %435
  %437 = add nuw nsw i32 %436, %433
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %44, align 1, !tbaa !2450
  %440 = add i64 %480, 14
  store i64 %440, i64* %PC, align 8
  store i32 %417, i32* %415, align 4
  %441 = load i64, i64* %PC, align 8
  %442 = add i64 %441, -166
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  br label %block_400a5a

block_400a6d:                                     ; preds = %block_400a66, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %443 = phi i64 [ %.pre1, %block_400a66 ], [ %413, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400a66 ], [ %334, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %444 = load i64, i64* %RBP, align 8
  %445 = add i64 %444, -40
  %446 = add i64 %443, 3
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = add i64 %444, -4
  %451 = add i64 %443, 6
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = sub i32 %448, %453
  %455 = icmp ult i32 %448, %453
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %39, align 1, !tbaa !2432
  %457 = and i32 %454, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457) #8
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %40, align 1, !tbaa !2446
  %462 = xor i32 %453, %448
  %463 = xor i32 %462, %454
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %41, align 1, !tbaa !2447
  %467 = icmp eq i32 %454, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %42, align 1, !tbaa !2448
  %469 = lshr i32 %454, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %43, align 1, !tbaa !2449
  %471 = lshr i32 %448, 31
  %472 = lshr i32 %453, 31
  %473 = xor i32 %472, %471
  %474 = xor i32 %469, %471
  %475 = add nuw nsw i32 %474, %473
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %44, align 1, !tbaa !2450
  %478 = icmp ne i8 %470, 0
  %479 = xor i1 %478, %476
  %.v7 = select i1 %479, i64 12, i64 133
  %480 = add i64 %443, %.v7
  store i64 %480, i64* %PC, align 8, !tbaa !2428
  %481 = add i64 %444, -36
  br i1 %479, label %block_400a79, label %block_400af2

block_400a66:                                     ; preds = %block_400a5a
  %482 = add i64 %47, -40
  %483 = add i64 %83, 7
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %482 to i32*
  store i32 0, i32* %484, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400a6d

block_400b05:                                     ; preds = %block_400a5a
  %485 = add i64 %83, 1
  store i64 %485, i64* %PC, align 8
  %486 = load i64, i64* %7, align 8, !tbaa !2428
  %487 = add i64 %486, 8
  %488 = inttoptr i64 %486 to i64*
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %RBP, align 8, !tbaa !2428
  store i64 %487, i64* %7, align 8, !tbaa !2428
  %490 = add i64 %83, 2
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %487 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %PC, align 8, !tbaa !2428
  %493 = add i64 %486, 16
  store i64 %493, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400750:
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
  %11 = bitcast %union.VectorReg* %3 to i8*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %13, align 1, !tbaa !2451
  %14 = getelementptr inbounds i8, i8* %11, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1, !tbaa !2451
  %16 = bitcast i64* %12 to i32*
  store i32 0, i32* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds i8, i8* %11, i64 12
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1, !tbaa !2451
  %19 = add i64 %10, 7
  store i64 %19, i64* %PC, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %RBP, align 8, !tbaa !2428
  store i64 %7, i64* %6, align 8, !tbaa !2428
  %21 = add i64 %10, 8
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %7 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %7, 8
  store i64 %24, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400620_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400620:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299736, i64* %RSI, align 8, !tbaa !2428
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2428
  %9 = load i64, i64* %RSI, align 8
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %9, -6299736
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %18 = ashr i64 %11, 3
  %19 = lshr i64 %18, 63
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %20 = add nsw i64 %19, %18
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = ashr i64 %20, 1
  store i64 %23, i64* %RSI, align 8, !tbaa !2428
  store i8 %22, i8* %12, align 1, !tbaa !2454
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2454
  store i8 0, i8* %14, align 1, !tbaa !2454
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2454
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_400658, label %block_400643

block_400658:                                     ; preds = %block_400643, %block_400620
  %35 = phi i64 [ %45, %block_400643 ], [ %34, %block_400620 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %5, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400643:                                     ; preds = %block_400620
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  br label %block_400658
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007c0_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007c0:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
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
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
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
  %101 = tail call %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #8
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %20, align 1, !tbaa !2446
  %124 = xor i64 %114, %115
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

; Function Attrs: noinline
define %struct.Memory* @sub_400780_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400780:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #8
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
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2452
  store i64 0, i64* %42, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
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
  store i8 %60, i8* %14, align 1, !tbaa !2432
  %61 = trunc i64 %58 to i32
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #8
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

; Function Attrs: noinline
define %struct.Memory* @sub_4005b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %RSI, align 8, !tbaa !2428
  store i64 %13, i64* %RDX, align 8, !tbaa !2428
  %16 = and i64 %13, -16
  store i8 0, i8* %3, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 240
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %4, align 1, !tbaa !2446
  %23 = icmp eq i64 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2448
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2447
  %27 = load i64, i64* %RAX, align 8
  %28 = add i64 %1, 14
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %16, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC, align 8
  %33 = add i64 %16, -16
  %34 = inttoptr i64 %33 to i64*
  store i64 %29, i64* %34, align 16
  %35 = load i64, i64* %PC, align 8
  store i64 ptrtoint (void ()* @callback_sub_401450___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4013e0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
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
define %struct.Memory* @sub_400720_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400720:
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
  %14 = tail call %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_4012e0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4012e0:
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
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
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
  br label %block_4012f6

block_40139f:                                     ; preds = %block_401309
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
  store i8 %68, i8* %16, align 1, !tbaa !2432
  %69 = and i32 %63, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #8
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %23, align 1, !tbaa !2446
  %74 = xor i32 %62, %63
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %29, align 1, !tbaa !2447
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
  br label %block_4012f6

block_4012f6:                                     ; preds = %block_40139f, %block_4012e0
  %89 = phi i64 [ %.pre, %block_4012e0 ], [ %88, %block_40139f ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4012e0 ], [ %MEMORY.2, %block_40139f ]
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
  store i8 %102, i8* %16, align 1, !tbaa !2432
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #8
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %23, align 1, !tbaa !2446
  %108 = xor i32 %99, %94
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %29, align 1, !tbaa !2447
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
  %.v = select i1 %125, i64 12, i64 188
  %126 = add i64 %89, %.v
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  br i1 %125, label %block_401302, label %block_4013b2

block_40138c:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401370
  %127 = phi i64 [ %403, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre4, %block_401370 ]
  %MEMORY.1 = phi %struct.Memory* [ %393, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %410, %block_401370 ]
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
  store i8 %138, i8* %16, align 1, !tbaa !2432
  %139 = and i32 %133, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #8
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %23, align 1, !tbaa !2446
  %144 = xor i32 %132, %133
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %29, align 1, !tbaa !2447
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
  br label %block_401309

block_4013b2:                                     ; preds = %block_4012f6
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %159 = load i64, i64* @stderr, align 32
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %160 = add i64 %126, -3634
  %161 = add i64 %126, 25
  %162 = load i64, i64* %RSP, align 8, !tbaa !2428
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %RSP, align 8, !tbaa !2428
  store i64 %160, i64* %PC, align 8, !tbaa !2428
  %165 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
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
  store i8 %176, i8* %16, align 1, !tbaa !2432
  %177 = trunc i64 %174 to i32
  %178 = and i32 %177, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178) #8
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %23, align 1, !tbaa !2446
  %183 = xor i64 %172, 16
  %184 = xor i64 %183, %174
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %29, align 1, !tbaa !2447
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

block_401309:                                     ; preds = %block_401302, %block_40138c
  %205 = phi i64 [ %.pre1, %block_401302 ], [ %158, %block_40138c ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401302 ], [ %MEMORY.1, %block_40138c ]
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
  store i8 %218, i8* %16, align 1, !tbaa !2432
  %219 = and i32 %216, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #8
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %23, align 1, !tbaa !2446
  %224 = xor i32 %215, %210
  %225 = xor i32 %224, %216
  %226 = lshr i32 %225, 4
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %29, align 1, !tbaa !2447
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
  %.v5 = select i1 %241, i64 12, i64 150
  %242 = add i64 %205, %.v5
  store i64 %242, i64* %PC, align 8, !tbaa !2428
  br i1 %241, label %block_401315, label %block_40139f

block_401315:                                     ; preds = %block_401309
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
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
  store i8 %259, i8* %16, align 1, !tbaa !2432
  %260 = trunc i64 %255 to i32
  %261 = and i32 %260, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #8
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %23, align 1, !tbaa !2446
  %266 = xor i64 %253, %247
  %267 = xor i64 %266, %255
  %268 = lshr i64 %267, 4
  %269 = trunc i64 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %29, align 1, !tbaa !2447
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
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %290 = add i64 %242, -3477
  %291 = add i64 %242, 47
  %292 = load i64, i64* %RSP, align 8, !tbaa !2428
  %293 = add i64 %292, -8
  %294 = inttoptr i64 %293 to i64*
  store i64 %291, i64* %294, align 8
  store i64 %293, i64* %RSP, align 8, !tbaa !2428
  store i64 %290, i64* %PC, align 8, !tbaa !2428
  %295 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
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
  store i8 %315, i8* %16, align 1, !tbaa !2432
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #8
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
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
  store i8 %332, i8* %16, align 1, !tbaa !2432
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #8
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %23, align 1, !tbaa !2446
  %338 = xor i32 %326, %310
  %339 = xor i32 %338, %327
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %29, align 1, !tbaa !2447
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
  %366 = load i32, i32* %EAX, align 8, !tbaa !2451
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

; <label>:384:                                    ; preds = %block_401315
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %295) #9
  %.pre2 = load i32, i32* %EDX, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:386:                                    ; preds = %block_401315
  %387 = srem i64 %379, %377
  %388 = and i64 %380, 4294967295
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = and i64 %387, 4294967295
  store i64 %389, i64* %58, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %390 = trunc i64 %387 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %386, %384
  %391 = phi i64 [ %.pre3, %384 ], [ %375, %386 ]
  %392 = phi i32 [ %.pre2, %384 ], [ %390, %386 ]
  %393 = phi %struct.Memory* [ %385, %384 ], [ %295, %386 ]
  store i8 0, i8* %16, align 1, !tbaa !2432
  %394 = and i32 %392, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394) #8
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %399 = icmp eq i32 %392, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %32, align 1, !tbaa !2448
  %401 = lshr i32 %392, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v6 = select i1 %399, i64 9, i64 37
  %403 = add i64 %391, %.v6
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  br i1 %399, label %block_401370, label %block_40138c

block_401370:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %404 = load i64, i64* @stderr, align 32
  store i64 %404, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %405 = add i64 %403, -3568
  %406 = add i64 %403, 25
  %407 = load i64, i64* %RSP, align 8, !tbaa !2428
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %RSP, align 8, !tbaa !2428
  store i64 %405, i64* %PC, align 8, !tbaa !2428
  %410 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %393)
  %411 = load i64, i64* %RBP, align 8
  %412 = add i64 %411, -36
  %413 = load i32, i32* %EAX, align 4
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %412 to i32*
  store i32 %413, i32* %416, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_40138c

block_401302:                                     ; preds = %block_4012f6
  %417 = add i64 %90, -24
  %418 = add i64 %126, 7
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 0, i32* %419, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401309
}

; Function Attrs: noinline
define %struct.Memory* @sub_400800_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400800:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #8
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
  store i8 0, i8* %13, align 1, !tbaa !2432
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
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
  br i1 %79, label %block_400843, label %block_400839

block_400843:                                     ; preds = %block_400839, %block_400800
  %84 = phi i64 [ %120, %block_400839 ], [ %83, %block_400800 ]
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 32
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %86 = add i64 %84, -707
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
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

block_400839:                                     ; preds = %block_400800
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #8
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
  %.v1 = select i1 %116, i64 48, i64 10
  %120 = add i64 %83, %.v1
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_400869, label %block_400843

block_400869:                                     ; preds = %block_400839
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
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #8
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2446
  %133 = xor i64 %123, %124
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
define %struct.Memory* @sub_400880_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400880:
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
  store i8 %13, i8* %14, align 1, !tbaa !2432
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #8
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
  %78 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %73, %struct.Memory* %2)
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
  %91 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %86, %struct.Memory* %78)
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
  %104 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %99, %struct.Memory* %91)
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
  %117 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %112, %struct.Memory* %104)
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
  %130 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %125, %struct.Memory* %117)
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
  %143 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %138, %struct.Memory* %130)
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
  %174 = tail call %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* nonnull %0, i64 %169, %struct.Memory* %143)
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
  %227 = tail call %struct.Memory* @sub_400b10_kernel_reg_detect_renamed_(%struct.State* nonnull %0, i64 %222, %struct.Memory* %174)
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
  %252 = tail call %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* nonnull %0, i64 %247, %struct.Memory* %227)
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
  %304 = tail call %struct.Memory* @sub_400e60_kernel_reg_detect_StrictFP_renamed_(%struct.State* nonnull %0, i64 %299, %struct.Memory* %252)
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
  %325 = tail call %struct.Memory* @sub_4011b0_check_FP_renamed_(%struct.State* nonnull %0, i64 %320, %struct.Memory* %304)
  %326 = load i32, i32* %EAX, align 4
  %327 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %328 = and i32 %326, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #8
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %333 = icmp eq i32 %326, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %29, align 1, !tbaa !2448
  %335 = lshr i32 %326, 31
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %333, i64 9, i64 21
  %337 = add i64 %327, %.v
  store i64 %337, i64* %PC, align 8, !tbaa !2428
  %338 = load i64, i64* %RBP, align 8
  br i1 %333, label %block_4009c5, label %block_4009d1

block_400a2c:                                     ; preds = %block_4009c5, %block_4009d1
  %339 = phi i64 [ %.pre, %block_4009d1 ], [ %473, %block_4009c5 ]
  %MEMORY.0 = phi %struct.Memory* [ %463, %block_4009d1 ], [ %325, %block_4009c5 ]
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
  store i8 %349, i8* %14, align 1, !tbaa !2432
  %350 = trunc i64 %347 to i32
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #8
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1, !tbaa !2446
  %356 = xor i64 %346, %347
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %26, align 1, !tbaa !2447
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

block_4009d1:                                     ; preds = %block_400880
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
  %391 = tail call %struct.Memory* @sub_4012e0_print_array_renamed_(%struct.State* nonnull %0, i64 %386, %struct.Memory* %325)
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
  br label %block_400a2c

block_4009c5:                                     ; preds = %block_400880
  %469 = add i64 %338, -4
  %470 = add i64 %337, 7
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  store i32 1, i32* %471, align 4
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, 96
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  br label %block_400a2c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e60_kernel_reg_detect_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400e60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
  %14 = add i64 %10, 16
  %15 = add i64 %13, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %RAX, align 8, !tbaa !2428
  %18 = add i64 %10, 8
  %19 = add i64 %13, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %18 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %R10, align 8, !tbaa !2428
  %22 = add i64 %10, -12
  %23 = load i32, i32* %EDI, align 4
  %24 = add i64 %13, 14
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -8
  %28 = load i32, i32* %ESI, align 4
  %29 = load i64, i64* %PC, align 8
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %31, align 4
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX, align 4
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -24
  %40 = load i64, i64* %RCX, align 8
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -32
  %46 = load i64, i64* %R8, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -40
  %52 = load i64, i64* %R9, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -44
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -64
  %63 = load i64, i64* %R10, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -72
  %69 = load i64, i64* %RAX, align 8
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400e90

block_40117a:                                     ; preds = %block_40110f
  %79 = add i64 %1413, -52
  %80 = add i64 %1451, 8
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = icmp eq i32 %82, -1
  %86 = icmp eq i32 %83, 0
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %73, align 1, !tbaa !2432
  %89 = and i32 %83, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #8
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %74, align 1, !tbaa !2446
  %94 = xor i32 %82, %83
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %75, align 1, !tbaa !2447
  %98 = zext i1 %86 to i8
  store i8 %98, i8* %76, align 1, !tbaa !2448
  %99 = lshr i32 %83, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %77, align 1, !tbaa !2449
  %101 = lshr i32 %82, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %99
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %78, align 1, !tbaa !2450
  %106 = add i64 %1451, 14
  store i64 %106, i64* %PC, align 8
  store i32 %83, i32* %81, align 4
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, -144
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  br label %block_4010f8

block_4010f8:                                     ; preds = %block_4010f1, %block_40117a
  %109 = phi i64 [ %.pre12, %block_4010f1 ], [ %108, %block_40117a ]
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -52
  %112 = add i64 %109, 3
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = add i64 %110, -8
  %117 = add i64 %109, 6
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, -1
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = lshr i32 %120, 31
  %123 = sub i32 %114, %120
  %124 = icmp ult i32 %114, %120
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %73, align 1, !tbaa !2432
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %74, align 1, !tbaa !2446
  %131 = xor i32 %120, %114
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %75, align 1, !tbaa !2447
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %76, align 1, !tbaa !2448
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %77, align 1, !tbaa !2449
  %140 = lshr i32 %114, 31
  %141 = xor i32 %122, %140
  %142 = xor i32 %138, %140
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %78, align 1, !tbaa !2450
  %146 = icmp ne i8 %139, 0
  %147 = xor i1 %146, %144
  %.demorgan27 = or i1 %136, %147
  %.v28 = select i1 %.demorgan27, i64 17, i64 149
  %148 = add i64 %109, %.v28
  store i64 %148, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan27, label %block_401109, label %block_40118d

block_400f69:                                     ; preds = %block_400f58
  %149 = add i64 %194, 3
  store i64 %149, i64* %PC, align 8
  %150 = load i32, i32* %159, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = add i64 %156, -48
  %153 = add i64 %194, 6
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 %150, i32* %154, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400f6f

block_400f58:                                     ; preds = %block_4010a2, %block_400f51
  %155 = phi i64 [ %1117, %block_4010a2 ], [ %.pre8, %block_400f51 ]
  %156 = load i64, i64* %RBP, align 8
  %157 = add i64 %156, -52
  %158 = add i64 %155, 3
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = add i64 %156, -8
  %163 = add i64 %155, 6
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, -1
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = lshr i32 %166, 31
  %169 = sub i32 %160, %166
  %170 = icmp ult i32 %160, %166
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %73, align 1, !tbaa !2432
  %172 = and i32 %169, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #8
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %74, align 1, !tbaa !2446
  %177 = xor i32 %166, %160
  %178 = xor i32 %177, %169
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %75, align 1, !tbaa !2447
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %76, align 1, !tbaa !2448
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %77, align 1, !tbaa !2449
  %186 = lshr i32 %160, 31
  %187 = xor i32 %168, %186
  %188 = xor i32 %184, %186
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %78, align 1, !tbaa !2450
  %192 = icmp ne i8 %185, 0
  %193 = xor i1 %192, %190
  %.demorgan19 = or i1 %182, %193
  %.v20 = select i1 %.demorgan19, i64 17, i64 349
  %194 = add i64 %155, %.v20
  store i64 %194, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan19, label %block_400f69, label %block_4010b5

block_400ed2:                                     ; preds = %block_400ecb, %block_400ee3
  %195 = phi i64 [ %.pre7, %block_400ecb ], [ %392, %block_400ee3 ]
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -56
  %198 = add i64 %195, 3
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = add i64 %196, -12
  %203 = add i64 %195, 6
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = add i32 %205, -1
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RCX, align 8, !tbaa !2428
  %208 = lshr i32 %206, 31
  %209 = sub i32 %200, %206
  %210 = icmp ult i32 %200, %206
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %73, align 1, !tbaa !2432
  %212 = and i32 %209, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #8
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %74, align 1, !tbaa !2446
  %217 = xor i32 %206, %200
  %218 = xor i32 %217, %209
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %75, align 1, !tbaa !2447
  %222 = icmp eq i32 %209, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %76, align 1, !tbaa !2448
  %224 = lshr i32 %209, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %77, align 1, !tbaa !2449
  %226 = lshr i32 %200, 31
  %227 = xor i32 %208, %226
  %228 = xor i32 %224, %226
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %78, align 1, !tbaa !2450
  %232 = icmp ne i8 %225, 0
  %233 = xor i1 %232, %230
  %.demorgan17 = or i1 %222, %233
  %.v18 = select i1 %.demorgan17, i64 17, i64 89
  %234 = add i64 %195, %.v18
  store i64 %234, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan17, label %block_400ee3, label %block_400f2b

block_400f51:                                     ; preds = %block_400ea3
  %235 = add i64 %859, 7
  store i64 %235, i64* %PC, align 8
  store i32 0, i32* %824, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400f58

block_400ee3:                                     ; preds = %block_400ed2
  %236 = add i64 %196, -24
  %237 = add i64 %234, 4
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = add i64 %196, -52
  %241 = add i64 %234, 8
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = mul nsw i64 %244, 24
  store i64 %245, i64* %RCX, align 8, !tbaa !2428
  %246 = lshr i64 %245, 63
  %247 = add i64 %245, %239
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = icmp ult i64 %247, %239
  %249 = icmp ult i64 %247, %245
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %73, align 1, !tbaa !2432
  %252 = trunc i64 %247 to i32
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #8
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %74, align 1, !tbaa !2446
  %258 = xor i64 %245, %239
  %259 = xor i64 %258, %247
  %260 = lshr i64 %259, 4
  %261 = trunc i64 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %75, align 1, !tbaa !2447
  %263 = icmp eq i64 %247, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %76, align 1, !tbaa !2448
  %265 = lshr i64 %247, 63
  %266 = trunc i64 %265 to i8
  store i8 %266, i8* %77, align 1, !tbaa !2449
  %267 = lshr i64 %239, 63
  %268 = xor i64 %265, %267
  %269 = xor i64 %265, %246
  %270 = add nuw nsw i64 %268, %269
  %271 = icmp eq i64 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %78, align 1, !tbaa !2450
  %273 = add i64 %196, -48
  %274 = add i64 %234, 19
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %RCX, align 8, !tbaa !2428
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %278, %247
  %280 = add i64 %234, 22
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RDX, align 8, !tbaa !2428
  %284 = add i64 %196, 16
  %285 = add i64 %234, 26
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = add i64 %234, 30
  store i64 %288, i64* %PC, align 8
  %289 = load i32, i32* %242, align 4
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %290, 1536
  store i64 %291, i64* %RCX, align 8, !tbaa !2428
  %292 = lshr i64 %291, 63
  %293 = add i64 %291, %287
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = icmp ult i64 %293, %287
  %295 = icmp ult i64 %293, %291
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %73, align 1, !tbaa !2432
  %298 = trunc i64 %293 to i32
  %299 = and i32 %298, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %74, align 1, !tbaa !2446
  %304 = xor i64 %287, %293
  %305 = lshr i64 %304, 4
  %306 = trunc i64 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %75, align 1, !tbaa !2447
  %308 = icmp eq i64 %293, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %76, align 1, !tbaa !2448
  %310 = lshr i64 %293, 63
  %311 = trunc i64 %310 to i8
  store i8 %311, i8* %77, align 1, !tbaa !2449
  %312 = lshr i64 %287, 63
  %313 = xor i64 %310, %312
  %314 = xor i64 %310, %292
  %315 = add nuw nsw i64 %313, %314
  %316 = icmp eq i64 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %78, align 1, !tbaa !2450
  %318 = load i64, i64* %RBP, align 8
  %319 = add i64 %318, -48
  %320 = add i64 %234, 44
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = shl nsw i64 %323, 8
  store i64 %324, i64* %RCX, align 8, !tbaa !2428
  %325 = lshr i64 %323, 55
  %326 = and i64 %325, 1
  %327 = add i64 %324, %293
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = icmp ult i64 %327, %293
  %329 = icmp ult i64 %327, %324
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %73, align 1, !tbaa !2432
  %332 = trunc i64 %327 to i32
  %333 = and i32 %332, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #8
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %74, align 1, !tbaa !2446
  %338 = xor i64 %293, %327
  %339 = lshr i64 %338, 4
  %340 = trunc i64 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %75, align 1, !tbaa !2447
  %342 = icmp eq i64 %327, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %76, align 1, !tbaa !2448
  %344 = lshr i64 %327, 63
  %345 = trunc i64 %344 to i8
  store i8 %345, i8* %77, align 1, !tbaa !2449
  %346 = xor i64 %344, %310
  %347 = xor i64 %344, %326
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %78, align 1, !tbaa !2450
  %351 = add i64 %318, -56
  %352 = add i64 %234, 55
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX, align 8, !tbaa !2428
  %356 = shl nsw i64 %355, 2
  %357 = add i64 %356, %327
  %358 = load i32, i32* %EDX, align 4
  %359 = add i64 %234, 58
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %357 to i32*
  store i32 %358, i32* %360, align 4
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -56
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %73, align 1, !tbaa !2432
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373) #8
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %74, align 1, !tbaa !2446
  %378 = xor i32 %366, %367
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %75, align 1, !tbaa !2447
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %76, align 1, !tbaa !2448
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %77, align 1, !tbaa !2449
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %78, align 1, !tbaa !2450
  %390 = add i64 %363, 9
  store i64 %390, i64* %PC, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %PC, align 8
  %392 = add i64 %391, -84
  store i64 %392, i64* %PC, align 8, !tbaa !2428
  br label %block_400ed2

block_401055:                                     ; preds = %block_400fc5
  %393 = add i64 %618, -12
  %394 = add i64 %547, 32
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = add i32 %396, -1
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RDX, align 8, !tbaa !2428
  %399 = icmp eq i32 %396, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %73, align 1, !tbaa !2432
  %401 = and i32 %397, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401) #8
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %74, align 1, !tbaa !2446
  %406 = xor i32 %396, %397
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %75, align 1, !tbaa !2447
  %410 = icmp eq i32 %397, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %76, align 1, !tbaa !2448
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %77, align 1, !tbaa !2449
  %414 = lshr i32 %396, 31
  %415 = xor i32 %412, %414
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %78, align 1, !tbaa !2450
  %419 = sext i32 %397 to i64
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = shl nsw i64 %419, 2
  %421 = add i64 %420, %594
  %422 = add i64 %547, 41
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RDX, align 8, !tbaa !2428
  %426 = add i64 %618, -32
  %427 = add i64 %547, 45
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RAX, align 8, !tbaa !2428
  %430 = add i64 %618, -52
  %431 = add i64 %547, 49
  store i64 %431, i64* %PC, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = sext i32 %433 to i64
  %435 = mul nsw i64 %434, 24
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = lshr i64 %435, 63
  %437 = add i64 %435, %429
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = icmp ult i64 %437, %429
  %439 = icmp ult i64 %437, %435
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %73, align 1, !tbaa !2432
  %442 = trunc i64 %437 to i32
  %443 = and i32 %442, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443) #8
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %74, align 1, !tbaa !2446
  %448 = xor i64 %435, %429
  %449 = xor i64 %448, %437
  %450 = lshr i64 %449, 4
  %451 = trunc i64 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %75, align 1, !tbaa !2447
  %453 = icmp eq i64 %437, 0
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %76, align 1, !tbaa !2448
  %455 = lshr i64 %437, 63
  %456 = trunc i64 %455 to i8
  store i8 %456, i8* %77, align 1, !tbaa !2449
  %457 = lshr i64 %429, 63
  %458 = xor i64 %455, %457
  %459 = xor i64 %455, %436
  %460 = add nuw nsw i64 %458, %459
  %461 = icmp eq i64 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %78, align 1, !tbaa !2450
  %463 = load i64, i64* %RBP, align 8
  %464 = add i64 %463, -48
  %465 = add i64 %547, 60
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RCX, align 8, !tbaa !2428
  %469 = shl nsw i64 %468, 2
  %470 = add i64 %469, %437
  %471 = add i64 %547, 63
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  store i32 %424, i32* %472, align 4
  %473 = load i64, i64* %RBP, align 8
  %474 = add i64 %473, -48
  %475 = load i64, i64* %PC, align 8
  %476 = add i64 %475, 3
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %474 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, 1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX, align 8, !tbaa !2428
  %481 = icmp eq i32 %478, -1
  %482 = icmp eq i32 %479, 0
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %73, align 1, !tbaa !2432
  %485 = and i32 %479, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #8
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %74, align 1, !tbaa !2446
  %490 = xor i32 %478, %479
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %75, align 1, !tbaa !2447
  %494 = zext i1 %482 to i8
  store i8 %494, i8* %76, align 1, !tbaa !2448
  %495 = lshr i32 %479, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %77, align 1, !tbaa !2449
  %497 = lshr i32 %478, 31
  %498 = xor i32 %495, %497
  %499 = add nuw nsw i32 %498, %495
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %78, align 1, !tbaa !2450
  %502 = add i64 %475, 9
  store i64 %502, i64* %PC, align 8
  store i32 %479, i32* %477, align 4
  %503 = load i64, i64* %PC, align 8
  %504 = add i64 %503, -302
  store i64 %504, i64* %PC, align 8, !tbaa !2428
  br label %block_400f6f

block_400ecb:                                     ; preds = %block_400eba
  %505 = add i64 %730, -56
  %506 = add i64 %768, 7
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i32*
  store i32 0, i32* %507, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400ed2

block_400fc5:                                     ; preds = %block_400f80, %block_400fd6
  %508 = phi i64 [ %.pre10, %block_400f80 ], [ %1373, %block_400fd6 ]
  %509 = load i64, i64* %RBP, align 8
  %510 = add i64 %509, -56
  %511 = add i64 %508, 3
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX, align 8, !tbaa !2428
  %515 = add i64 %509, -12
  %516 = add i64 %508, 6
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, -1
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RCX, align 8, !tbaa !2428
  %521 = lshr i32 %519, 31
  %522 = sub i32 %513, %519
  %523 = icmp ult i32 %513, %519
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %73, align 1, !tbaa !2432
  %525 = and i32 %522, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525) #8
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %74, align 1, !tbaa !2446
  %530 = xor i32 %519, %513
  %531 = xor i32 %530, %522
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %75, align 1, !tbaa !2447
  %535 = icmp eq i32 %522, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %76, align 1, !tbaa !2448
  %537 = lshr i32 %522, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %77, align 1, !tbaa !2449
  %539 = lshr i32 %513, 31
  %540 = xor i32 %521, %539
  %541 = xor i32 %537, %539
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %78, align 1, !tbaa !2450
  %545 = icmp ne i8 %538, 0
  %546 = xor i1 %545, %543
  %.demorgan23 = or i1 %535, %546
  %.v24 = select i1 %.demorgan23, i64 17, i64 144
  %547 = add i64 %508, %.v24
  %548 = add i64 %509, 24
  %549 = add i64 %547, 4
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX, align 8, !tbaa !2428
  %552 = load i64, i64* %RBP, align 8
  %553 = add i64 %552, -52
  %554 = add i64 %547, 8
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = mul nsw i64 %557, 1536
  store i64 %558, i64* %RCX, align 8, !tbaa !2428
  %559 = lshr i64 %558, 63
  %560 = add i64 %558, %551
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = icmp ult i64 %560, %551
  %562 = icmp ult i64 %560, %558
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %73, align 1, !tbaa !2432
  %565 = trunc i64 %560 to i32
  %566 = and i32 %565, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566) #8
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %74, align 1, !tbaa !2446
  %571 = xor i64 %551, %560
  %572 = lshr i64 %571, 4
  %573 = trunc i64 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %75, align 1, !tbaa !2447
  %575 = icmp eq i64 %560, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %76, align 1, !tbaa !2448
  %577 = lshr i64 %560, 63
  %578 = trunc i64 %577 to i8
  store i8 %578, i8* %77, align 1, !tbaa !2449
  %579 = lshr i64 %551, 63
  %580 = xor i64 %577, %579
  %581 = xor i64 %577, %559
  %582 = add nuw nsw i64 %580, %581
  %583 = icmp eq i64 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %78, align 1, !tbaa !2450
  %585 = add i64 %552, -48
  %586 = add i64 %547, 22
  store i64 %586, i64* %PC, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = shl nsw i64 %589, 8
  store i64 %590, i64* %RCX, align 8, !tbaa !2428
  %591 = lshr i64 %589, 55
  %592 = and i64 %591, 1
  %593 = add i64 %547, 29
  store i64 %593, i64* %PC, align 8
  %594 = add i64 %590, %560
  store i64 %594, i64* %RAX, align 8, !tbaa !2428
  %595 = icmp ult i64 %594, %560
  %596 = icmp ult i64 %594, %590
  %597 = or i1 %595, %596
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %73, align 1, !tbaa !2432
  %599 = trunc i64 %594 to i32
  %600 = and i32 %599, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600) #8
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %74, align 1, !tbaa !2446
  %605 = xor i64 %560, %594
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %75, align 1, !tbaa !2447
  %609 = icmp eq i64 %594, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %76, align 1, !tbaa !2448
  %611 = lshr i64 %594, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %77, align 1, !tbaa !2449
  %613 = xor i64 %611, %577
  %614 = xor i64 %611, %592
  %615 = add nuw nsw i64 %613, %614
  %616 = icmp eq i64 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %78, align 1, !tbaa !2450
  %618 = load i64, i64* %RBP, align 8
  br i1 %.demorgan23, label %block_400fd6, label %block_401055

block_400f3e:                                     ; preds = %block_400eba
  %619 = add i64 %730, -52
  %620 = add i64 %768, 8
  store i64 %620, i64* %PC, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = add i32 %622, 1
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RAX, align 8, !tbaa !2428
  %625 = icmp eq i32 %622, -1
  %626 = icmp eq i32 %623, 0
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %73, align 1, !tbaa !2432
  %629 = and i32 %623, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629) #8
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %74, align 1, !tbaa !2446
  %634 = xor i32 %622, %623
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %75, align 1, !tbaa !2447
  %638 = zext i1 %626 to i8
  store i8 %638, i8* %76, align 1, !tbaa !2448
  %639 = lshr i32 %623, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %77, align 1, !tbaa !2449
  %641 = lshr i32 %622, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %639
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %78, align 1, !tbaa !2450
  %646 = add i64 %768, 14
  store i64 %646, i64* %PC, align 8
  store i32 %623, i32* %621, align 4
  %647 = load i64, i64* %PC, align 8
  %648 = add i64 %647, -169
  store i64 %648, i64* %PC, align 8, !tbaa !2428
  br label %block_400ea3

block_400f6f:                                     ; preds = %block_401055, %block_400f69
  %649 = phi i64 [ %504, %block_401055 ], [ %.pre9, %block_400f69 ]
  %650 = load i64, i64* %RBP, align 8
  %651 = add i64 %650, -48
  %652 = add i64 %649, 3
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RAX, align 8, !tbaa !2428
  %656 = add i64 %650, -8
  %657 = add i64 %649, 6
  store i64 %657, i64* %PC, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = add i32 %659, -1
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RCX, align 8, !tbaa !2428
  %662 = lshr i32 %660, 31
  %663 = sub i32 %654, %660
  %664 = icmp ult i32 %654, %660
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %73, align 1, !tbaa !2432
  %666 = and i32 %663, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666) #8
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %74, align 1, !tbaa !2446
  %671 = xor i32 %660, %654
  %672 = xor i32 %671, %663
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %75, align 1, !tbaa !2447
  %676 = icmp eq i32 %663, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %76, align 1, !tbaa !2448
  %678 = lshr i32 %663, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %77, align 1, !tbaa !2449
  %680 = lshr i32 %654, 31
  %681 = xor i32 %662, %680
  %682 = xor i32 %678, %680
  %683 = add nuw nsw i32 %682, %681
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %78, align 1, !tbaa !2450
  %686 = icmp ne i8 %679, 0
  %687 = xor i1 %686, %684
  %.demorgan21 = or i1 %676, %687
  %.v22 = select i1 %.demorgan21, i64 17, i64 307
  %688 = add i64 %649, %.v22
  store i64 %688, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan21, label %block_400f80, label %block_4010a2

block_4010bc:                                     ; preds = %block_4010cd, %block_4010b5
  %689 = phi i64 [ %1543, %block_4010cd ], [ %.pre11, %block_4010b5 ]
  %690 = load i64, i64* %RBP, align 8
  %691 = add i64 %690, -48
  %692 = add i64 %689, 3
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RAX, align 8, !tbaa !2428
  %696 = add i64 %690, -8
  %697 = add i64 %689, 6
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = add i32 %699, -1
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = lshr i32 %700, 31
  %703 = sub i32 %694, %700
  %704 = icmp ult i32 %694, %700
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %73, align 1, !tbaa !2432
  %706 = and i32 %703, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706) #8
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %74, align 1, !tbaa !2446
  %711 = xor i32 %700, %694
  %712 = xor i32 %711, %703
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %75, align 1, !tbaa !2447
  %716 = icmp eq i32 %703, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %76, align 1, !tbaa !2448
  %718 = lshr i32 %703, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %77, align 1, !tbaa !2449
  %720 = lshr i32 %694, 31
  %721 = xor i32 %702, %720
  %722 = xor i32 %718, %720
  %723 = add nuw nsw i32 %722, %721
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %78, align 1, !tbaa !2450
  %726 = icmp ne i8 %719, 0
  %727 = xor i1 %726, %724
  %.demorgan25 = or i1 %716, %727
  %.v26 = select i1 %.demorgan25, i64 17, i64 53
  %728 = add i64 %689, %.v26
  store i64 %728, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_4010cd, label %block_4010f1

block_400eba:                                     ; preds = %block_400f2b, %block_400eb4
  %729 = phi i64 [ %816, %block_400f2b ], [ %.pre6, %block_400eb4 ]
  %730 = load i64, i64* %RBP, align 8
  %731 = add i64 %730, -48
  %732 = add i64 %729, 3
  store i64 %732, i64* %PC, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX, align 8, !tbaa !2428
  %736 = add i64 %730, -8
  %737 = add i64 %729, 6
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = add i32 %739, -1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RCX, align 8, !tbaa !2428
  %742 = lshr i32 %740, 31
  %743 = sub i32 %734, %740
  %744 = icmp ult i32 %734, %740
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %73, align 1, !tbaa !2432
  %746 = and i32 %743, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746) #8
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %74, align 1, !tbaa !2446
  %751 = xor i32 %740, %734
  %752 = xor i32 %751, %743
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  store i8 %755, i8* %75, align 1, !tbaa !2447
  %756 = icmp eq i32 %743, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %76, align 1, !tbaa !2448
  %758 = lshr i32 %743, 31
  %759 = trunc i32 %758 to i8
  store i8 %759, i8* %77, align 1, !tbaa !2449
  %760 = lshr i32 %734, 31
  %761 = xor i32 %742, %760
  %762 = xor i32 %758, %760
  %763 = add nuw nsw i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %78, align 1, !tbaa !2450
  %766 = icmp ne i8 %759, 0
  %767 = xor i1 %766, %764
  %.demorgan15 = or i1 %756, %767
  %.v16 = select i1 %.demorgan15, i64 17, i64 132
  %768 = add i64 %729, %.v16
  store i64 %768, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan15, label %block_400ecb, label %block_400f3e

block_4010b5:                                     ; preds = %block_400f58
  %769 = add i64 %156, -48
  %770 = add i64 %194, 7
  store i64 %770, i64* %PC, align 8
  %771 = inttoptr i64 %769 to i32*
  store i32 0, i32* %771, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_4010bc

block_400eb4:                                     ; preds = %block_400ea3
  %772 = add i64 %859, 3
  store i64 %772, i64* %PC, align 8
  %773 = load i32, i32* %824, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX, align 8, !tbaa !2428
  %775 = add i64 %821, -48
  %776 = add i64 %859, 6
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  store i32 %773, i32* %777, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400eba

block_4011a0:                                     ; preds = %block_400e90
  %778 = add i64 %1411, 1
  store i64 %778, i64* %PC, align 8
  %779 = load i64, i64* %9, align 8, !tbaa !2428
  %780 = add i64 %779, 8
  %781 = inttoptr i64 %779 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %RBP, align 8, !tbaa !2428
  store i64 %780, i64* %9, align 8, !tbaa !2428
  %783 = add i64 %1411, 2
  store i64 %783, i64* %PC, align 8
  %784 = inttoptr i64 %780 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %PC, align 8, !tbaa !2428
  %786 = add i64 %779, 16
  store i64 %786, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400f2b:                                     ; preds = %block_400ed2
  %787 = add i64 %196, -48
  %788 = add i64 %234, 8
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, 1
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RAX, align 8, !tbaa !2428
  %793 = icmp eq i32 %790, -1
  %794 = icmp eq i32 %791, 0
  %795 = or i1 %793, %794
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %73, align 1, !tbaa !2432
  %797 = and i32 %791, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797) #8
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %74, align 1, !tbaa !2446
  %802 = xor i32 %790, %791
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %75, align 1, !tbaa !2447
  %806 = zext i1 %794 to i8
  store i8 %806, i8* %76, align 1, !tbaa !2448
  %807 = lshr i32 %791, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %77, align 1, !tbaa !2449
  %809 = lshr i32 %790, 31
  %810 = xor i32 %807, %809
  %811 = add nuw nsw i32 %810, %807
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %78, align 1, !tbaa !2450
  %814 = add i64 %234, 14
  store i64 %814, i64* %PC, align 8
  store i32 %791, i32* %789, align 4
  %815 = load i64, i64* %PC, align 8
  %816 = add i64 %815, -127
  store i64 %816, i64* %PC, align 8, !tbaa !2428
  br label %block_400eba

block_4010f1:                                     ; preds = %block_4010bc
  %817 = add i64 %690, -52
  %818 = add i64 %728, 7
  store i64 %818, i64* %PC, align 8
  %819 = inttoptr i64 %817 to i32*
  store i32 1, i32* %819, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_4010f8

block_400ea3:                                     ; preds = %block_400e9c, %block_400f3e
  %820 = phi i64 [ %.pre5, %block_400e9c ], [ %648, %block_400f3e ]
  %821 = load i64, i64* %RBP, align 8
  %822 = add i64 %821, -52
  %823 = add i64 %820, 3
  store i64 %823, i64* %PC, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX, align 8, !tbaa !2428
  %827 = add i64 %821, -8
  %828 = add i64 %820, 6
  store i64 %828, i64* %PC, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = add i32 %830, -1
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX, align 8, !tbaa !2428
  %833 = lshr i32 %831, 31
  %834 = sub i32 %825, %831
  %835 = icmp ult i32 %825, %831
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %73, align 1, !tbaa !2432
  %837 = and i32 %834, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837) #8
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %74, align 1, !tbaa !2446
  %842 = xor i32 %831, %825
  %843 = xor i32 %842, %834
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %75, align 1, !tbaa !2447
  %847 = icmp eq i32 %834, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %76, align 1, !tbaa !2448
  %849 = lshr i32 %834, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %77, align 1, !tbaa !2449
  %851 = lshr i32 %825, 31
  %852 = xor i32 %833, %851
  %853 = xor i32 %849, %851
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %78, align 1, !tbaa !2450
  %857 = icmp ne i8 %850, 0
  %858 = xor i1 %857, %855
  %.demorgan = or i1 %847, %858
  %.v14 = select i1 %.demorgan, i64 17, i64 174
  %859 = add i64 %820, %.v14
  store i64 %859, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400eb4, label %block_400f51

block_401120:                                     ; preds = %block_40110f
  %860 = add i64 %1413, -40
  %861 = add i64 %1451, 4
  store i64 %861, i64* %PC, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX, align 8, !tbaa !2428
  %864 = add i64 %1413, -52
  %865 = add i64 %1451, 7
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = add i32 %867, -1
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RCX, align 8, !tbaa !2428
  %870 = sext i32 %868 to i64
  %871 = mul nsw i64 %870, 24
  store i64 %871, i64* %RDX, align 8, !tbaa !2428
  %872 = lshr i64 %871, 63
  %873 = add i64 %871, %863
  store i64 %873, i64* %RAX, align 8, !tbaa !2428
  %874 = icmp ult i64 %873, %863
  %875 = icmp ult i64 %873, %871
  %876 = or i1 %874, %875
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %73, align 1, !tbaa !2432
  %878 = trunc i64 %873 to i32
  %879 = and i32 %878, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879) #8
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %74, align 1, !tbaa !2446
  %884 = xor i64 %871, %863
  %885 = xor i64 %884, %873
  %886 = lshr i64 %885, 4
  %887 = trunc i64 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %75, align 1, !tbaa !2447
  %889 = icmp eq i64 %873, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %76, align 1, !tbaa !2448
  %891 = lshr i64 %873, 63
  %892 = trunc i64 %891 to i8
  store i8 %892, i8* %77, align 1, !tbaa !2449
  %893 = lshr i64 %863, 63
  %894 = xor i64 %891, %893
  %895 = xor i64 %891, %872
  %896 = add nuw nsw i64 %894, %895
  %897 = icmp eq i64 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %78, align 1, !tbaa !2450
  %899 = load i64, i64* %RBP, align 8
  %900 = add i64 %899, -48
  %901 = add i64 %1451, 23
  store i64 %901, i64* %PC, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = add i32 %903, -1
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RCX, align 8, !tbaa !2428
  %906 = icmp eq i32 %903, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %73, align 1, !tbaa !2432
  %908 = and i32 %904, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908) #8
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %74, align 1, !tbaa !2446
  %913 = xor i32 %903, %904
  %914 = lshr i32 %913, 4
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  store i8 %916, i8* %75, align 1, !tbaa !2447
  %917 = icmp eq i32 %904, 0
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %76, align 1, !tbaa !2448
  %919 = lshr i32 %904, 31
  %920 = trunc i32 %919 to i8
  store i8 %920, i8* %77, align 1, !tbaa !2449
  %921 = lshr i32 %903, 31
  %922 = xor i32 %919, %921
  %923 = add nuw nsw i32 %922, %921
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %78, align 1, !tbaa !2450
  %926 = sext i32 %904 to i64
  store i64 %926, i64* %RDX, align 8, !tbaa !2428
  %927 = shl nsw i64 %926, 2
  %928 = add i64 %927, %873
  %929 = add i64 %1451, 32
  store i64 %929, i64* %PC, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = zext i32 %931 to i64
  store i64 %932, i64* %RCX, align 8, !tbaa !2428
  %933 = add i64 %899, -32
  %934 = add i64 %1451, 36
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i64*
  %936 = load i64, i64* %935, align 8
  store i64 %936, i64* %RAX, align 8, !tbaa !2428
  %937 = add i64 %899, -52
  %938 = add i64 %1451, 40
  store i64 %938, i64* %PC, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = sext i32 %940 to i64
  %942 = mul nsw i64 %941, 24
  store i64 %942, i64* %RDX, align 8, !tbaa !2428
  %943 = lshr i64 %942, 63
  %944 = add i64 %942, %936
  store i64 %944, i64* %RAX, align 8, !tbaa !2428
  %945 = icmp ult i64 %944, %936
  %946 = icmp ult i64 %944, %942
  %947 = or i1 %945, %946
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %73, align 1, !tbaa !2432
  %949 = trunc i64 %944 to i32
  %950 = and i32 %949, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950) #8
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %74, align 1, !tbaa !2446
  %955 = xor i64 %942, %936
  %956 = xor i64 %955, %944
  %957 = lshr i64 %956, 4
  %958 = trunc i64 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %75, align 1, !tbaa !2447
  %960 = icmp eq i64 %944, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %76, align 1, !tbaa !2448
  %962 = lshr i64 %944, 63
  %963 = trunc i64 %962 to i8
  store i8 %963, i8* %77, align 1, !tbaa !2449
  %964 = lshr i64 %936, 63
  %965 = xor i64 %962, %964
  %966 = xor i64 %962, %943
  %967 = add nuw nsw i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %78, align 1, !tbaa !2450
  %970 = load i64, i64* %RBP, align 8
  %971 = add i64 %970, -48
  %972 = add i64 %1451, 51
  store i64 %972, i64* %PC, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RDX, align 8, !tbaa !2428
  %976 = shl nsw i64 %975, 2
  %977 = add i64 %976, %944
  %978 = add i64 %1451, 54
  store i64 %978, i64* %PC, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = add i32 %980, %931
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RCX, align 8, !tbaa !2428
  %983 = icmp ult i32 %981, %931
  %984 = icmp ult i32 %981, %980
  %985 = or i1 %983, %984
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %73, align 1, !tbaa !2432
  %987 = and i32 %981, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987) #8
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %74, align 1, !tbaa !2446
  %992 = xor i32 %980, %931
  %993 = xor i32 %992, %981
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %75, align 1, !tbaa !2447
  %997 = icmp eq i32 %981, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %76, align 1, !tbaa !2448
  %999 = lshr i32 %981, 31
  %1000 = trunc i32 %999 to i8
  store i8 %1000, i8* %77, align 1, !tbaa !2449
  %1001 = lshr i32 %931, 31
  %1002 = lshr i32 %980, 31
  %1003 = xor i32 %999, %1001
  %1004 = xor i32 %999, %1002
  %1005 = add nuw nsw i32 %1003, %1004
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %78, align 1, !tbaa !2450
  %1008 = add i64 %970, -40
  %1009 = add i64 %1451, 58
  store i64 %1009, i64* %PC, align 8
  %1010 = inttoptr i64 %1008 to i64*
  %1011 = load i64, i64* %1010, align 8
  store i64 %1011, i64* %RAX, align 8, !tbaa !2428
  %1012 = add i64 %970, -52
  %1013 = add i64 %1451, 62
  store i64 %1013, i64* %PC, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = mul nsw i64 %1016, 24
  store i64 %1017, i64* %RDX, align 8, !tbaa !2428
  %1018 = lshr i64 %1017, 63
  %1019 = add i64 %1017, %1011
  store i64 %1019, i64* %RAX, align 8, !tbaa !2428
  %1020 = icmp ult i64 %1019, %1011
  %1021 = icmp ult i64 %1019, %1017
  %1022 = or i1 %1020, %1021
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %73, align 1, !tbaa !2432
  %1024 = trunc i64 %1019 to i32
  %1025 = and i32 %1024, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025) #8
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %74, align 1, !tbaa !2446
  %1030 = xor i64 %1017, %1011
  %1031 = xor i64 %1030, %1019
  %1032 = lshr i64 %1031, 4
  %1033 = trunc i64 %1032 to i8
  %1034 = and i8 %1033, 1
  store i8 %1034, i8* %75, align 1, !tbaa !2447
  %1035 = icmp eq i64 %1019, 0
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %76, align 1, !tbaa !2448
  %1037 = lshr i64 %1019, 63
  %1038 = trunc i64 %1037 to i8
  store i8 %1038, i8* %77, align 1, !tbaa !2449
  %1039 = lshr i64 %1011, 63
  %1040 = xor i64 %1037, %1039
  %1041 = xor i64 %1037, %1018
  %1042 = add nuw nsw i64 %1040, %1041
  %1043 = icmp eq i64 %1042, 2
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %78, align 1, !tbaa !2450
  %1045 = load i64, i64* %RBP, align 8
  %1046 = add i64 %1045, -48
  %1047 = add i64 %1451, 73
  store i64 %1047, i64* %PC, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = sext i32 %1049 to i64
  store i64 %1050, i64* %RDX, align 8, !tbaa !2428
  %1051 = shl nsw i64 %1050, 2
  %1052 = add i64 %1051, %1019
  %1053 = load i32, i32* %ECX, align 4
  %1054 = add i64 %1451, 76
  store i64 %1054, i64* %PC, align 8
  %1055 = inttoptr i64 %1052 to i32*
  store i32 %1053, i32* %1055, align 4
  %1056 = load i64, i64* %RBP, align 8
  %1057 = add i64 %1056, -48
  %1058 = load i64, i64* %PC, align 8
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC, align 8
  %1060 = inttoptr i64 %1057 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = add i32 %1061, 1
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX, align 8, !tbaa !2428
  %1064 = icmp eq i32 %1061, -1
  %1065 = icmp eq i32 %1062, 0
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %73, align 1, !tbaa !2432
  %1068 = and i32 %1062, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068) #8
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %74, align 1, !tbaa !2446
  %1073 = xor i32 %1061, %1062
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %75, align 1, !tbaa !2447
  %1077 = zext i1 %1065 to i8
  store i8 %1077, i8* %76, align 1, !tbaa !2448
  %1078 = lshr i32 %1062, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %77, align 1, !tbaa !2449
  %1080 = lshr i32 %1061, 31
  %1081 = xor i32 %1078, %1080
  %1082 = add nuw nsw i32 %1081, %1078
  %1083 = icmp eq i32 %1082, 2
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %78, align 1, !tbaa !2450
  %1085 = add i64 %1058, 9
  store i64 %1085, i64* %PC, align 8
  store i32 %1062, i32* %1060, align 4
  %1086 = load i64, i64* %PC, align 8
  %1087 = add i64 %1086, -102
  store i64 %1087, i64* %PC, align 8, !tbaa !2428
  br label %block_40110f

block_4010a2:                                     ; preds = %block_400f6f
  %1088 = add i64 %650, -52
  %1089 = add i64 %688, 8
  store i64 %1089, i64* %PC, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = add i32 %1091, 1
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX, align 8, !tbaa !2428
  %1094 = icmp eq i32 %1091, -1
  %1095 = icmp eq i32 %1092, 0
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %73, align 1, !tbaa !2432
  %1098 = and i32 %1092, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098) #8
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %74, align 1, !tbaa !2446
  %1103 = xor i32 %1091, %1092
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %75, align 1, !tbaa !2447
  %1107 = zext i1 %1095 to i8
  store i8 %1107, i8* %76, align 1, !tbaa !2448
  %1108 = lshr i32 %1092, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %77, align 1, !tbaa !2449
  %1110 = lshr i32 %1091, 31
  %1111 = xor i32 %1108, %1110
  %1112 = add nuw nsw i32 %1111, %1108
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %78, align 1, !tbaa !2450
  %1115 = add i64 %688, 14
  store i64 %1115, i64* %PC, align 8
  store i32 %1092, i32* %1090, align 4
  %1116 = load i64, i64* %PC, align 8
  %1117 = add i64 %1116, -344
  store i64 %1117, i64* %PC, align 8, !tbaa !2428
  br label %block_400f58

block_400e9c:                                     ; preds = %block_400e90
  %1118 = add i64 %1375, -52
  %1119 = add i64 %1411, 7
  store i64 %1119, i64* %PC, align 8
  %1120 = inttoptr i64 %1118 to i32*
  store i32 0, i32* %1120, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400ea3

block_400fd6:                                     ; preds = %block_400fc5
  %1121 = add i64 %618, -56
  %1122 = add i64 %547, 32
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = add i32 %1124, -1
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RDX, align 8, !tbaa !2428
  %1127 = icmp eq i32 %1124, 0
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %73, align 1, !tbaa !2432
  %1129 = and i32 %1125, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129) #8
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %74, align 1, !tbaa !2446
  %1134 = xor i32 %1124, %1125
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %75, align 1, !tbaa !2447
  %1138 = icmp eq i32 %1125, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %76, align 1, !tbaa !2448
  %1140 = lshr i32 %1125, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %77, align 1, !tbaa !2449
  %1142 = lshr i32 %1124, 31
  %1143 = xor i32 %1140, %1142
  %1144 = add nuw nsw i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %78, align 1, !tbaa !2450
  %1147 = sext i32 %1125 to i64
  store i64 %1147, i64* %RCX, align 8, !tbaa !2428
  %1148 = shl nsw i64 %1147, 2
  %1149 = add i64 %1148, %594
  %1150 = add i64 %547, 41
  store i64 %1150, i64* %PC, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RDX, align 8, !tbaa !2428
  %1154 = add i64 %618, 16
  %1155 = add i64 %547, 45
  store i64 %1155, i64* %PC, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = add i64 %618, -52
  %1159 = add i64 %547, 49
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = mul nsw i64 %1162, 1536
  store i64 %1163, i64* %RCX, align 8, !tbaa !2428
  %1164 = lshr i64 %1163, 63
  %1165 = add i64 %1163, %1157
  store i64 %1165, i64* %RAX, align 8, !tbaa !2428
  %1166 = icmp ult i64 %1165, %1157
  %1167 = icmp ult i64 %1165, %1163
  %1168 = or i1 %1166, %1167
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %73, align 1, !tbaa !2432
  %1170 = trunc i64 %1165 to i32
  %1171 = and i32 %1170, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171) #8
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %74, align 1, !tbaa !2446
  %1176 = xor i64 %1157, %1165
  %1177 = lshr i64 %1176, 4
  %1178 = trunc i64 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %75, align 1, !tbaa !2447
  %1180 = icmp eq i64 %1165, 0
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %76, align 1, !tbaa !2448
  %1182 = lshr i64 %1165, 63
  %1183 = trunc i64 %1182 to i8
  store i8 %1183, i8* %77, align 1, !tbaa !2449
  %1184 = lshr i64 %1157, 63
  %1185 = xor i64 %1182, %1184
  %1186 = xor i64 %1182, %1164
  %1187 = add nuw nsw i64 %1185, %1186
  %1188 = icmp eq i64 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %78, align 1, !tbaa !2450
  %1190 = load i64, i64* %RBP, align 8
  %1191 = add i64 %1190, -48
  %1192 = add i64 %547, 63
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = shl nsw i64 %1195, 8
  store i64 %1196, i64* %RCX, align 8, !tbaa !2428
  %1197 = lshr i64 %1195, 55
  %1198 = and i64 %1197, 1
  %1199 = add i64 %1196, %1165
  store i64 %1199, i64* %RAX, align 8, !tbaa !2428
  %1200 = icmp ult i64 %1199, %1165
  %1201 = icmp ult i64 %1199, %1196
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %73, align 1, !tbaa !2432
  %1204 = trunc i64 %1199 to i32
  %1205 = and i32 %1204, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205) #8
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %74, align 1, !tbaa !2446
  %1210 = xor i64 %1165, %1199
  %1211 = lshr i64 %1210, 4
  %1212 = trunc i64 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %75, align 1, !tbaa !2447
  %1214 = icmp eq i64 %1199, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %76, align 1, !tbaa !2448
  %1216 = lshr i64 %1199, 63
  %1217 = trunc i64 %1216 to i8
  store i8 %1217, i8* %77, align 1, !tbaa !2449
  %1218 = xor i64 %1216, %1182
  %1219 = xor i64 %1216, %1198
  %1220 = add nuw nsw i64 %1218, %1219
  %1221 = icmp eq i64 %1220, 2
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %78, align 1, !tbaa !2450
  %1223 = add i64 %1190, -56
  %1224 = add i64 %547, 74
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sext i32 %1226 to i64
  store i64 %1227, i64* %RCX, align 8, !tbaa !2428
  %1228 = load i64, i64* %RDX, align 8
  %1229 = shl nsw i64 %1227, 2
  %1230 = add i64 %1229, %1199
  %1231 = add i64 %547, 77
  store i64 %1231, i64* %PC, align 8
  %1232 = trunc i64 %1228 to i32
  %1233 = inttoptr i64 %1230 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = add i32 %1234, %1232
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RDX, align 8, !tbaa !2428
  %1237 = icmp ult i32 %1235, %1232
  %1238 = icmp ult i32 %1235, %1234
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %73, align 1, !tbaa !2432
  %1241 = and i32 %1235, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241) #8
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %74, align 1, !tbaa !2446
  %1246 = xor i32 %1234, %1232
  %1247 = xor i32 %1246, %1235
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %75, align 1, !tbaa !2447
  %1251 = icmp eq i32 %1235, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %76, align 1, !tbaa !2448
  %1253 = lshr i32 %1235, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %77, align 1, !tbaa !2449
  %1255 = lshr i32 %1232, 31
  %1256 = lshr i32 %1234, 31
  %1257 = xor i32 %1253, %1255
  %1258 = xor i32 %1253, %1256
  %1259 = add nuw nsw i32 %1257, %1258
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %78, align 1, !tbaa !2450
  %1262 = load i64, i64* %RBP, align 8
  %1263 = add i64 %1262, 24
  %1264 = add i64 %547, 81
  store i64 %1264, i64* %PC, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX, align 8, !tbaa !2428
  %1267 = add i64 %1262, -52
  %1268 = add i64 %547, 85
  store i64 %1268, i64* %PC, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = mul nsw i64 %1271, 1536
  store i64 %1272, i64* %RCX, align 8, !tbaa !2428
  %1273 = lshr i64 %1272, 63
  %1274 = add i64 %1272, %1266
  store i64 %1274, i64* %RAX, align 8, !tbaa !2428
  %1275 = icmp ult i64 %1274, %1266
  %1276 = icmp ult i64 %1274, %1272
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %73, align 1, !tbaa !2432
  %1279 = trunc i64 %1274 to i32
  %1280 = and i32 %1279, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280) #8
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %74, align 1, !tbaa !2446
  %1285 = xor i64 %1266, %1274
  %1286 = lshr i64 %1285, 4
  %1287 = trunc i64 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %75, align 1, !tbaa !2447
  %1289 = icmp eq i64 %1274, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %76, align 1, !tbaa !2448
  %1291 = lshr i64 %1274, 63
  %1292 = trunc i64 %1291 to i8
  store i8 %1292, i8* %77, align 1, !tbaa !2449
  %1293 = lshr i64 %1266, 63
  %1294 = xor i64 %1291, %1293
  %1295 = xor i64 %1291, %1273
  %1296 = add nuw nsw i64 %1294, %1295
  %1297 = icmp eq i64 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %78, align 1, !tbaa !2450
  %1299 = add i64 %1262, -48
  %1300 = add i64 %547, 99
  store i64 %1300, i64* %PC, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = sext i32 %1302 to i64
  %1304 = shl nsw i64 %1303, 8
  store i64 %1304, i64* %RCX, align 8, !tbaa !2428
  %1305 = lshr i64 %1303, 55
  %1306 = and i64 %1305, 1
  %1307 = add i64 %1304, %1274
  store i64 %1307, i64* %RAX, align 8, !tbaa !2428
  %1308 = icmp ult i64 %1307, %1274
  %1309 = icmp ult i64 %1307, %1304
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %73, align 1, !tbaa !2432
  %1312 = trunc i64 %1307 to i32
  %1313 = and i32 %1312, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313) #8
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %74, align 1, !tbaa !2446
  %1318 = xor i64 %1274, %1307
  %1319 = lshr i64 %1318, 4
  %1320 = trunc i64 %1319 to i8
  %1321 = and i8 %1320, 1
  store i8 %1321, i8* %75, align 1, !tbaa !2447
  %1322 = icmp eq i64 %1307, 0
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %76, align 1, !tbaa !2448
  %1324 = lshr i64 %1307, 63
  %1325 = trunc i64 %1324 to i8
  store i8 %1325, i8* %77, align 1, !tbaa !2449
  %1326 = xor i64 %1324, %1291
  %1327 = xor i64 %1324, %1306
  %1328 = add nuw nsw i64 %1326, %1327
  %1329 = icmp eq i64 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %78, align 1, !tbaa !2450
  %1331 = load i64, i64* %RBP, align 8
  %1332 = add i64 %1331, -56
  %1333 = add i64 %547, 110
  store i64 %1333, i64* %PC, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = sext i32 %1335 to i64
  store i64 %1336, i64* %RCX, align 8, !tbaa !2428
  %1337 = shl nsw i64 %1336, 2
  %1338 = add i64 %1337, %1307
  %1339 = load i32, i32* %EDX, align 4
  %1340 = add i64 %547, 113
  store i64 %1340, i64* %PC, align 8
  %1341 = inttoptr i64 %1338 to i32*
  store i32 %1339, i32* %1341, align 4
  %1342 = load i64, i64* %RBP, align 8
  %1343 = add i64 %1342, -56
  %1344 = load i64, i64* %PC, align 8
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC, align 8
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = add i32 %1347, 1
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RAX, align 8, !tbaa !2428
  %1350 = icmp eq i32 %1347, -1
  %1351 = icmp eq i32 %1348, 0
  %1352 = or i1 %1350, %1351
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %73, align 1, !tbaa !2432
  %1354 = and i32 %1348, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354) #8
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %74, align 1, !tbaa !2446
  %1359 = xor i32 %1347, %1348
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %75, align 1, !tbaa !2447
  %1363 = zext i1 %1351 to i8
  store i8 %1363, i8* %76, align 1, !tbaa !2448
  %1364 = lshr i32 %1348, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %77, align 1, !tbaa !2449
  %1366 = lshr i32 %1347, 31
  %1367 = xor i32 %1364, %1366
  %1368 = add nuw nsw i32 %1367, %1364
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %78, align 1, !tbaa !2450
  %1371 = add i64 %1344, 9
  store i64 %1371, i64* %PC, align 8
  store i32 %1348, i32* %1346, align 4
  %1372 = load i64, i64* %PC, align 8
  %1373 = add i64 %1372, -139
  store i64 %1373, i64* %PC, align 8, !tbaa !2428
  br label %block_400fc5

block_400e90:                                     ; preds = %block_40118d, %block_400e60
  %1374 = phi i64 [ %1481, %block_40118d ], [ %.pre, %block_400e60 ]
  %1375 = load i64, i64* %RBP, align 8
  %1376 = add i64 %1375, -44
  %1377 = add i64 %1374, 3
  store i64 %1377, i64* %PC, align 8
  %1378 = inttoptr i64 %1376 to i32*
  %1379 = load i32, i32* %1378, align 4
  %1380 = zext i32 %1379 to i64
  store i64 %1380, i64* %RAX, align 8, !tbaa !2428
  %1381 = add i64 %1375, -4
  %1382 = add i64 %1374, 6
  store i64 %1382, i64* %PC, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = sub i32 %1379, %1384
  %1386 = icmp ult i32 %1379, %1384
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %73, align 1, !tbaa !2432
  %1388 = and i32 %1385, 255
  %1389 = tail call i32 @llvm.ctpop.i32(i32 %1388) #8
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %74, align 1, !tbaa !2446
  %1393 = xor i32 %1384, %1379
  %1394 = xor i32 %1393, %1385
  %1395 = lshr i32 %1394, 4
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  store i8 %1397, i8* %75, align 1, !tbaa !2447
  %1398 = icmp eq i32 %1385, 0
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %76, align 1, !tbaa !2448
  %1400 = lshr i32 %1385, 31
  %1401 = trunc i32 %1400 to i8
  store i8 %1401, i8* %77, align 1, !tbaa !2449
  %1402 = lshr i32 %1379, 31
  %1403 = lshr i32 %1384, 31
  %1404 = xor i32 %1403, %1402
  %1405 = xor i32 %1400, %1402
  %1406 = add nuw nsw i32 %1405, %1404
  %1407 = icmp eq i32 %1406, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %78, align 1, !tbaa !2450
  %1409 = icmp ne i8 %1401, 0
  %1410 = xor i1 %1409, %1407
  %.v = select i1 %1410, i64 12, i64 784
  %1411 = add i64 %1374, %.v
  store i64 %1411, i64* %PC, align 8, !tbaa !2428
  br i1 %1410, label %block_400e9c, label %block_4011a0

block_40110f:                                     ; preds = %block_401109, %block_401120
  %1412 = phi i64 [ %.pre13, %block_401109 ], [ %1087, %block_401120 ]
  %1413 = load i64, i64* %RBP, align 8
  %1414 = add i64 %1413, -48
  %1415 = add i64 %1412, 3
  store i64 %1415, i64* %PC, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RAX, align 8, !tbaa !2428
  %1419 = add i64 %1413, -8
  %1420 = add i64 %1412, 6
  store i64 %1420, i64* %PC, align 8
  %1421 = inttoptr i64 %1419 to i32*
  %1422 = load i32, i32* %1421, align 4
  %1423 = add i32 %1422, -1
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RCX, align 8, !tbaa !2428
  %1425 = lshr i32 %1423, 31
  %1426 = sub i32 %1417, %1423
  %1427 = icmp ult i32 %1417, %1423
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %73, align 1, !tbaa !2432
  %1429 = and i32 %1426, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429) #8
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %74, align 1, !tbaa !2446
  %1434 = xor i32 %1423, %1417
  %1435 = xor i32 %1434, %1426
  %1436 = lshr i32 %1435, 4
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  store i8 %1438, i8* %75, align 1, !tbaa !2447
  %1439 = icmp eq i32 %1426, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %76, align 1, !tbaa !2448
  %1441 = lshr i32 %1426, 31
  %1442 = trunc i32 %1441 to i8
  store i8 %1442, i8* %77, align 1, !tbaa !2449
  %1443 = lshr i32 %1417, 31
  %1444 = xor i32 %1425, %1443
  %1445 = xor i32 %1441, %1443
  %1446 = add nuw nsw i32 %1445, %1444
  %1447 = icmp eq i32 %1446, 2
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %78, align 1, !tbaa !2450
  %1449 = icmp ne i8 %1442, 0
  %1450 = xor i1 %1449, %1447
  %.demorgan29 = or i1 %1439, %1450
  %.v30 = select i1 %.demorgan29, i64 17, i64 107
  %1451 = add i64 %1412, %.v30
  store i64 %1451, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan29, label %block_401120, label %block_40117a

block_40118d:                                     ; preds = %block_4010f8
  %1452 = add i64 %110, -44
  %1453 = add i64 %148, 8
  store i64 %1453, i64* %PC, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = add i32 %1455, 1
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RAX, align 8, !tbaa !2428
  %1458 = icmp eq i32 %1455, -1
  %1459 = icmp eq i32 %1456, 0
  %1460 = or i1 %1458, %1459
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %73, align 1, !tbaa !2432
  %1462 = and i32 %1456, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462) #8
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %74, align 1, !tbaa !2446
  %1467 = xor i32 %1455, %1456
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %75, align 1, !tbaa !2447
  %1471 = zext i1 %1459 to i8
  store i8 %1471, i8* %76, align 1, !tbaa !2448
  %1472 = lshr i32 %1456, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %77, align 1, !tbaa !2449
  %1474 = lshr i32 %1455, 31
  %1475 = xor i32 %1472, %1474
  %1476 = add nuw nsw i32 %1475, %1472
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %78, align 1, !tbaa !2450
  %1479 = add i64 %148, 14
  store i64 %1479, i64* %PC, align 8
  store i32 %1456, i32* %1454, align 4
  %1480 = load i64, i64* %PC, align 8
  %1481 = add i64 %1480, -779
  store i64 %1481, i64* %PC, align 8, !tbaa !2428
  br label %block_400e90

block_401109:                                     ; preds = %block_4010f8
  %1482 = add i64 %148, 3
  store i64 %1482, i64* %PC, align 8
  %1483 = load i32, i32* %113, align 4
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RAX, align 8, !tbaa !2428
  %1485 = add i64 %110, -48
  %1486 = add i64 %148, 6
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1485 to i32*
  store i32 %1483, i32* %1487, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_40110f

block_4010cd:                                     ; preds = %block_4010bc
  %1488 = add i64 %690, -32
  %1489 = add i64 %728, 4
  store i64 %1489, i64* %PC, align 8
  %1490 = inttoptr i64 %1488 to i64*
  %1491 = load i64, i64* %1490, align 8
  store i64 %1491, i64* %RAX, align 8, !tbaa !2428
  %1492 = add i64 %728, 8
  store i64 %1492, i64* %PC, align 8
  %1493 = load i32, i32* %693, align 4
  %1494 = sext i32 %1493 to i64
  store i64 %1494, i64* %RCX, align 8, !tbaa !2428
  %1495 = shl nsw i64 %1494, 2
  %1496 = add i64 %1495, %1491
  %1497 = add i64 %728, 11
  store i64 %1497, i64* %PC, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RDX, align 8, !tbaa !2428
  %1501 = add i64 %690, -40
  %1502 = add i64 %728, 15
  store i64 %1502, i64* %PC, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RAX, align 8, !tbaa !2428
  %1505 = add i64 %728, 19
  store i64 %1505, i64* %PC, align 8
  %1506 = load i32, i32* %693, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RCX, align 8, !tbaa !2428
  %1508 = shl nsw i64 %1507, 2
  %1509 = add i64 %1508, %1504
  %1510 = add i64 %728, 22
  store i64 %1510, i64* %PC, align 8
  %1511 = inttoptr i64 %1509 to i32*
  store i32 %1499, i32* %1511, align 4
  %1512 = load i64, i64* %RBP, align 8
  %1513 = add i64 %1512, -48
  %1514 = load i64, i64* %PC, align 8
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC, align 8
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = add i32 %1517, 1
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RAX, align 8, !tbaa !2428
  %1520 = icmp eq i32 %1517, -1
  %1521 = icmp eq i32 %1518, 0
  %1522 = or i1 %1520, %1521
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %73, align 1, !tbaa !2432
  %1524 = and i32 %1518, 255
  %1525 = tail call i32 @llvm.ctpop.i32(i32 %1524) #8
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %74, align 1, !tbaa !2446
  %1529 = xor i32 %1517, %1518
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %75, align 1, !tbaa !2447
  %1533 = zext i1 %1521 to i8
  store i8 %1533, i8* %76, align 1, !tbaa !2448
  %1534 = lshr i32 %1518, 31
  %1535 = trunc i32 %1534 to i8
  store i8 %1535, i8* %77, align 1, !tbaa !2449
  %1536 = lshr i32 %1517, 31
  %1537 = xor i32 %1534, %1536
  %1538 = add nuw nsw i32 %1537, %1534
  %1539 = icmp eq i32 %1538, 2
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %78, align 1, !tbaa !2450
  %1541 = add i64 %1514, 9
  store i64 %1541, i64* %PC, align 8
  store i32 %1518, i32* %1516, align 4
  %1542 = load i64, i64* %PC, align 8
  %1543 = add i64 %1542, -48
  store i64 %1543, i64* %PC, align 8, !tbaa !2428
  br label %block_4010bc

block_400f80:                                     ; preds = %block_400f6f
  %1544 = add i64 %650, 16
  %1545 = add i64 %688, 4
  store i64 %1545, i64* %PC, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RAX, align 8, !tbaa !2428
  %1548 = add i64 %650, -52
  %1549 = add i64 %688, 8
  store i64 %1549, i64* %PC, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = sext i32 %1551 to i64
  %1553 = mul nsw i64 %1552, 1536
  store i64 %1553, i64* %RCX, align 8, !tbaa !2428
  %1554 = lshr i64 %1553, 63
  %1555 = add i64 %1553, %1547
  store i64 %1555, i64* %RAX, align 8, !tbaa !2428
  %1556 = icmp ult i64 %1555, %1547
  %1557 = icmp ult i64 %1555, %1553
  %1558 = or i1 %1556, %1557
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %73, align 1, !tbaa !2432
  %1560 = trunc i64 %1555 to i32
  %1561 = and i32 %1560, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561) #8
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %74, align 1, !tbaa !2446
  %1566 = xor i64 %1547, %1555
  %1567 = lshr i64 %1566, 4
  %1568 = trunc i64 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %75, align 1, !tbaa !2447
  %1570 = icmp eq i64 %1555, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %76, align 1, !tbaa !2448
  %1572 = lshr i64 %1555, 63
  %1573 = trunc i64 %1572 to i8
  store i8 %1573, i8* %77, align 1, !tbaa !2449
  %1574 = lshr i64 %1547, 63
  %1575 = xor i64 %1572, %1574
  %1576 = xor i64 %1572, %1554
  %1577 = add nuw nsw i64 %1575, %1576
  %1578 = icmp eq i64 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %78, align 1, !tbaa !2450
  %1580 = add i64 %688, 22
  store i64 %1580, i64* %PC, align 8
  %1581 = load i32, i32* %653, align 4
  %1582 = sext i32 %1581 to i64
  %1583 = shl nsw i64 %1582, 8
  store i64 %1583, i64* %RCX, align 8, !tbaa !2428
  %1584 = lshr i64 %1582, 55
  %1585 = and i64 %1584, 1
  %1586 = add i64 %1583, %1555
  store i64 %1586, i64* %RAX, align 8, !tbaa !2428
  %1587 = icmp ult i64 %1586, %1555
  %1588 = icmp ult i64 %1586, %1583
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %73, align 1, !tbaa !2432
  %1591 = trunc i64 %1586 to i32
  %1592 = and i32 %1591, 255
  %1593 = tail call i32 @llvm.ctpop.i32(i32 %1592) #8
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  store i8 %1596, i8* %74, align 1, !tbaa !2446
  %1597 = xor i64 %1555, %1586
  %1598 = lshr i64 %1597, 4
  %1599 = trunc i64 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %75, align 1, !tbaa !2447
  %1601 = icmp eq i64 %1586, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %76, align 1, !tbaa !2448
  %1603 = lshr i64 %1586, 63
  %1604 = trunc i64 %1603 to i8
  store i8 %1604, i8* %77, align 1, !tbaa !2449
  %1605 = xor i64 %1603, %1572
  %1606 = xor i64 %1603, %1585
  %1607 = add nuw nsw i64 %1605, %1606
  %1608 = icmp eq i64 %1607, 2
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %78, align 1, !tbaa !2450
  %1610 = add i64 %688, 31
  store i64 %1610, i64* %PC, align 8
  %1611 = inttoptr i64 %1586 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RDX, align 8, !tbaa !2428
  %1614 = load i64, i64* %RBP, align 8
  %1615 = add i64 %1614, 24
  %1616 = add i64 %688, 35
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1615 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX, align 8, !tbaa !2428
  %1619 = add i64 %1614, -52
  %1620 = add i64 %688, 39
  store i64 %1620, i64* %PC, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = sext i32 %1622 to i64
  %1624 = mul nsw i64 %1623, 1536
  store i64 %1624, i64* %RCX, align 8, !tbaa !2428
  %1625 = lshr i64 %1624, 63
  %1626 = add i64 %1624, %1618
  store i64 %1626, i64* %RAX, align 8, !tbaa !2428
  %1627 = icmp ult i64 %1626, %1618
  %1628 = icmp ult i64 %1626, %1624
  %1629 = or i1 %1627, %1628
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %73, align 1, !tbaa !2432
  %1631 = trunc i64 %1626 to i32
  %1632 = and i32 %1631, 255
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632) #8
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %74, align 1, !tbaa !2446
  %1637 = xor i64 %1618, %1626
  %1638 = lshr i64 %1637, 4
  %1639 = trunc i64 %1638 to i8
  %1640 = and i8 %1639, 1
  store i8 %1640, i8* %75, align 1, !tbaa !2447
  %1641 = icmp eq i64 %1626, 0
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %76, align 1, !tbaa !2448
  %1643 = lshr i64 %1626, 63
  %1644 = trunc i64 %1643 to i8
  store i8 %1644, i8* %77, align 1, !tbaa !2449
  %1645 = lshr i64 %1618, 63
  %1646 = xor i64 %1643, %1645
  %1647 = xor i64 %1643, %1625
  %1648 = add nuw nsw i64 %1646, %1647
  %1649 = icmp eq i64 %1648, 2
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %78, align 1, !tbaa !2450
  %1651 = add i64 %1614, -48
  %1652 = add i64 %688, 53
  store i64 %1652, i64* %PC, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  %1656 = shl nsw i64 %1655, 8
  store i64 %1656, i64* %RCX, align 8, !tbaa !2428
  %1657 = lshr i64 %1655, 55
  %1658 = and i64 %1657, 1
  %1659 = add i64 %1656, %1626
  store i64 %1659, i64* %RAX, align 8, !tbaa !2428
  %1660 = icmp ult i64 %1659, %1626
  %1661 = icmp ult i64 %1659, %1656
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %73, align 1, !tbaa !2432
  %1664 = trunc i64 %1659 to i32
  %1665 = and i32 %1664, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665) #8
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %74, align 1, !tbaa !2446
  %1670 = xor i64 %1626, %1659
  %1671 = lshr i64 %1670, 4
  %1672 = trunc i64 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %75, align 1, !tbaa !2447
  %1674 = icmp eq i64 %1659, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %76, align 1, !tbaa !2448
  %1676 = lshr i64 %1659, 63
  %1677 = trunc i64 %1676 to i8
  store i8 %1677, i8* %77, align 1, !tbaa !2449
  %1678 = xor i64 %1676, %1643
  %1679 = xor i64 %1676, %1658
  %1680 = add nuw nsw i64 %1678, %1679
  %1681 = icmp eq i64 %1680, 2
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %78, align 1, !tbaa !2450
  %1683 = load i32, i32* %EDX, align 4
  %1684 = add i64 %688, 62
  store i64 %1684, i64* %PC, align 8
  %1685 = inttoptr i64 %1659 to i32*
  store i32 %1683, i32* %1685, align 4
  %1686 = load i64, i64* %RBP, align 8
  %1687 = add i64 %1686, -56
  %1688 = load i64, i64* %PC, align 8
  %1689 = add i64 %1688, 7
  store i64 %1689, i64* %PC, align 8
  %1690 = inttoptr i64 %1687 to i32*
  store i32 1, i32* %1690, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400fc5
}

; Function Attrs: noinline
define %struct.Memory* @sub_4011b0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4011b0:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
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
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 8) to i64*), align 8
  %44 = bitcast [32 x %union.VectorReg]* %5 to double*
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %43, i64* %45, align 1, !tbaa !2452
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to double*
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %48 = add i64 %9, -16
  %49 = load i32, i32* %EDI, align 4
  %50 = add i64 %12, 18
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RSI, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RDX, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -40
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 5
  store i64 %67, i64* %PC, align 8
  %68 = load i64, i64* %45, align 1
  %69 = inttoptr i64 %65 to i64*
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -28
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = bitcast %union.VectorReg* %6 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %78 = getelementptr inbounds i8, i8* %75, i64 12
  %79 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %80 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %81 = getelementptr inbounds i8, i8* %42, i64 4
  %82 = bitcast i8* %81 to i32*
  %83 = bitcast i64* %46 to i32*
  %84 = getelementptr inbounds i8, i8* %42, i64 12
  %85 = bitcast i8* %84 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4011d7

block_4012a3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -32
  %88 = add i64 %453, 8
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RAX, align 8, !tbaa !2428
  %93 = icmp eq i32 %90, -1
  %94 = icmp eq i32 %91, 0
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %16, align 1, !tbaa !2432
  %97 = and i32 %91, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #8
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %23, align 1, !tbaa !2446
  %102 = xor i32 %90, %91
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %29, align 1, !tbaa !2447
  %106 = zext i1 %94 to i8
  store i8 %106, i8* %32, align 1, !tbaa !2448
  %107 = lshr i32 %91, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %35, align 1, !tbaa !2449
  %109 = lshr i32 %90, 31
  %110 = xor i32 %107, %109
  %111 = add nuw nsw i32 %110, %107
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %41, align 1, !tbaa !2450
  %114 = add i64 %453, 14
  store i64 %114, i64* %PC, align 8
  store i32 %91, i32* %89, align 4
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, -199
  store i64 %116, i64* %PC, align 8, !tbaa !2428
  br label %block_4011ea

block_4012b6:                                     ; preds = %block_4011ea
  %117 = add i64 %187, -28
  %118 = add i64 %223, 8
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = icmp eq i32 %120, -1
  %124 = icmp eq i32 %121, 0
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %16, align 1, !tbaa !2432
  %127 = and i32 %121, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127) #8
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %23, align 1, !tbaa !2446
  %132 = xor i32 %120, %121
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %29, align 1, !tbaa !2447
  %136 = zext i1 %124 to i8
  store i8 %136, i8* %32, align 1, !tbaa !2448
  %137 = lshr i32 %121, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %35, align 1, !tbaa !2449
  %139 = lshr i32 %120, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %137
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %41, align 1, !tbaa !2450
  %144 = add i64 %223, 14
  store i64 %144, i64* %PC, align 8
  store i32 %121, i32* %119, align 4
  %145 = load i64, i64* %PC, align 8
  %146 = add i64 %145, -237
  store i64 %146, i64* %PC, align 8, !tbaa !2428
  br label %block_4011d7

block_4012d0:                                     ; preds = %block_40125e, %block_4012c9
  %147 = phi i64 [ %.pre8, %block_4012c9 ], [ %281, %block_40125e ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4012c9 ], [ %268, %block_40125e ]
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -4
  %150 = add i64 %147, 3
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = load i64, i64* %RSP, align 8
  %155 = add i64 %154, 80
  store i64 %155, i64* %RSP, align 8, !tbaa !2428
  %156 = icmp ugt i64 %154, -81
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %16, align 1, !tbaa !2432
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #8
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %23, align 1, !tbaa !2446
  %164 = xor i64 %154, 16
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %29, align 1, !tbaa !2447
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %32, align 1, !tbaa !2448
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %35, align 1, !tbaa !2449
  %173 = lshr i64 %154, 63
  %174 = xor i64 %171, %173
  %175 = add nuw nsw i64 %174, %171
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %41, align 1, !tbaa !2450
  %178 = add i64 %147, 8
  store i64 %178, i64* %PC, align 8
  %179 = add i64 %154, 88
  %180 = inttoptr i64 %155 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RBP, align 8, !tbaa !2428
  store i64 %179, i64* %RSP, align 8, !tbaa !2428
  %182 = add i64 %147, 9
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %179 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %PC, align 8, !tbaa !2428
  %185 = add i64 %154, 96
  store i64 %185, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4011ea:                                     ; preds = %block_4011e3, %block_4012a3
  %186 = phi i64 [ %.pre6, %block_4011e3 ], [ %116, %block_4012a3 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_4011e3 ], [ %448, %block_4012a3 ]
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -32
  %189 = add i64 %186, 3
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = add i64 %187, -8
  %194 = add i64 %186, 6
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = sub i32 %191, %196
  %198 = icmp ult i32 %191, %196
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %16, align 1, !tbaa !2432
  %200 = and i32 %197, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #8
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %23, align 1, !tbaa !2446
  %205 = xor i32 %196, %191
  %206 = xor i32 %205, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %29, align 1, !tbaa !2447
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %32, align 1, !tbaa !2448
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %35, align 1, !tbaa !2449
  %214 = lshr i32 %191, 31
  %215 = lshr i32 %196, 31
  %216 = xor i32 %215, %214
  %217 = xor i32 %212, %214
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %41, align 1, !tbaa !2450
  %221 = icmp ne i8 %213, 0
  %222 = xor i1 %221, %219
  %.v9 = select i1 %222, i64 12, i64 204
  %223 = add i64 %186, %.v9
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  br i1 %222, label %block_4011f6, label %block_4012b6

block_4012c9:                                     ; preds = %block_4011d7
  %224 = add i64 %458, -4
  %225 = add i64 %494, 7
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  store i32 1, i32* %226, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4012d0

block_40125e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 94), i64* %RSI, align 8, !tbaa !2428
  %227 = load i64, i64* @stderr, align 32
  store i64 %227, i64* %RDI, align 8, !tbaa !2428
  %228 = load i64, i64* %RBP, align 8
  %229 = add i64 %228, -28
  %230 = add i64 %453, 21
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RDX, align 8, !tbaa !2428
  %234 = add i64 %228, -32
  %235 = add i64 %453, 24
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RCX, align 8, !tbaa !2428
  %239 = add i64 %228, -48
  %240 = add i64 %453, 29
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %244 = add i64 %453, 33
  store i64 %244, i64* %PC, align 8
  %245 = load i32, i32* %231, align 4
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %243, align 8, !tbaa !2428
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %248 = add i64 %453, 37
  store i64 %248, i64* %PC, align 8
  %249 = load i32, i32* %236, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %247, align 8, !tbaa !2428
  %251 = add i64 %228, -56
  %252 = add i64 %453, 42
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %79, align 1, !tbaa !2452
  %255 = bitcast i64* %77 to double*
  store double 0.000000e+00, double* %255, align 1, !tbaa !2452
  %256 = add i64 %228, -40
  %257 = add i64 %453, 47
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %259, i64* %260, align 1, !tbaa !2452
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %262 = bitcast i64* %261 to double*
  store double 0.000000e+00, double* %262, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %263 = add i64 %453, -3294
  %264 = add i64 %453, 54
  %265 = load i64, i64* %RSP, align 8, !tbaa !2428
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %RSP, align 8, !tbaa !2428
  store i64 %263, i64* %PC, align 8, !tbaa !2428
  %268 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %448)
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -4
  %271 = load i64, i64* %PC, align 8
  %272 = add i64 %271, 7
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %270 to i32*
  store i32 0, i32* %273, align 4
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -68
  %276 = load i32, i32* %EAX, align 4
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %275 to i32*
  store i32 %276, i32* %279, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 50
  store i64 %281, i64* %PC, align 8, !tbaa !2428
  br label %block_4012d0

block_4011f6:                                     ; preds = %block_4011ea
  %282 = add i64 %187, -16
  %283 = add i64 %223, 4
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = add i64 %187, -28
  %287 = add i64 %223, 8
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %290, 24
  store i64 %291, i64* %RCX, align 8, !tbaa !2428
  %292 = lshr i64 %291, 63
  %293 = add i64 %291, %285
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = icmp ult i64 %293, %285
  %295 = icmp ult i64 %293, %291
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %16, align 1, !tbaa !2432
  %298 = trunc i64 %293 to i32
  %299 = and i32 %298, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %23, align 1, !tbaa !2446
  %304 = xor i64 %291, %285
  %305 = xor i64 %304, %293
  %306 = lshr i64 %305, 4
  %307 = trunc i64 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %29, align 1, !tbaa !2447
  %309 = icmp eq i64 %293, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %32, align 1, !tbaa !2448
  %311 = lshr i64 %293, 63
  %312 = trunc i64 %311 to i8
  store i8 %312, i8* %35, align 1, !tbaa !2449
  %313 = lshr i64 %285, 63
  %314 = xor i64 %311, %313
  %315 = xor i64 %311, %292
  %316 = add nuw nsw i64 %314, %315
  %317 = icmp eq i64 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %41, align 1, !tbaa !2450
  %319 = add i64 %223, 19
  store i64 %319, i64* %PC, align 8
  %320 = load i32, i32* %190, align 4
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %RCX, align 8, !tbaa !2428
  %322 = shl nsw i64 %321, 2
  %323 = add i64 %322, %293
  %324 = add i64 %223, 22
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RDX, align 8, !tbaa !2428
  %328 = sitofp i32 %326 to double
  store double %328, double* %44, align 1, !tbaa !2452
  %329 = add i64 %187, -48
  %330 = add i64 %223, 31
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to double*
  store double %328, double* %331, align 8
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -24
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %333 to i64*
  %337 = load i64, i64* %336, align 8
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = add i64 %332, -28
  %339 = add i64 %334, 8
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, 24
  store i64 %343, i64* %RCX, align 8, !tbaa !2428
  %344 = lshr i64 %343, 63
  %345 = add i64 %343, %337
  store i64 %345, i64* %RAX, align 8, !tbaa !2428
  %346 = icmp ult i64 %345, %337
  %347 = icmp ult i64 %345, %343
  %348 = or i1 %346, %347
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %16, align 1, !tbaa !2432
  %350 = trunc i64 %345 to i32
  %351 = and i32 %350, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #8
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %23, align 1, !tbaa !2446
  %356 = xor i64 %343, %337
  %357 = xor i64 %356, %345
  %358 = lshr i64 %357, 4
  %359 = trunc i64 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %29, align 1, !tbaa !2447
  %361 = icmp eq i64 %345, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %32, align 1, !tbaa !2448
  %363 = lshr i64 %345, 63
  %364 = trunc i64 %363 to i8
  store i8 %364, i8* %35, align 1, !tbaa !2449
  %365 = lshr i64 %337, 63
  %366 = xor i64 %363, %365
  %367 = xor i64 %363, %344
  %368 = add nuw nsw i64 %366, %367
  %369 = icmp eq i64 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %41, align 1, !tbaa !2450
  %371 = add i64 %332, -32
  %372 = add i64 %334, 19
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RCX, align 8, !tbaa !2428
  %376 = shl nsw i64 %375, 2
  %377 = add i64 %376, %345
  %378 = add i64 %334, 22
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RDX, align 8, !tbaa !2428
  %382 = sitofp i32 %380 to double
  store double %382, double* %44, align 1, !tbaa !2452
  %383 = add i64 %332, -56
  %384 = add i64 %334, 31
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to double*
  store double %382, double* %385, align 8
  %386 = load i64, i64* %RBP, align 8
  %387 = add i64 %386, -48
  %388 = load i64, i64* %PC, align 8
  %389 = add i64 %388, 5
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %387 to double*
  %391 = load double, double* %390, align 8
  store double %391, double* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %392 = add i64 %386, -56
  %393 = add i64 %388, 10
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to double*
  %395 = load double, double* %394, align 8
  %396 = fsub double %391, %395
  %397 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 16) to i32*), align 16
  %398 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 20) to i32*), align 4
  %399 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 24) to i32*), align 8
  %400 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 28) to i32*), align 4
  %401 = bitcast %union.VectorReg* %6 to i32*
  store i32 %397, i32* %401, align 1, !tbaa !2455
  %402 = bitcast i8* %76 to i32*
  store i32 %398, i32* %402, align 1, !tbaa !2455
  %403 = bitcast i64* %77 to i32*
  store i32 %399, i32* %403, align 1, !tbaa !2455
  %404 = bitcast i8* %78 to i32*
  store i32 %400, i32* %404, align 1, !tbaa !2455
  %405 = bitcast double %396 to i64
  %406 = load i64, i64* %79, align 1
  %407 = and i64 %406, %405
  %408 = trunc i64 %407 to i32
  %409 = lshr i64 %407, 32
  %410 = trunc i64 %409 to i32
  store i32 %408, i32* %80, align 1, !tbaa !2451
  store i32 %410, i32* %82, align 1, !tbaa !2451
  store i32 0, i32* %83, align 1, !tbaa !2451
  store i32 0, i32* %85, align 1, !tbaa !2451
  %411 = add i64 %386, -64
  %412 = add i64 %388, 26
  store i64 %412, i64* %PC, align 8
  %413 = load i64, i64* %45, align 1
  %414 = inttoptr i64 %411 to i64*
  store i64 %413, i64* %414, align 8
  %415 = load i64, i64* %RBP, align 8
  %416 = add i64 %415, -64
  %417 = load i64, i64* %PC, align 8
  %418 = add i64 %417, 5
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %416 to double*
  %420 = load double, double* %419, align 8
  store double %420, double* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %421 = add i64 %415, -40
  %422 = add i64 %417, 10
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to double*
  %424 = load double, double* %423, align 8
  %425 = fcmp uno double %420, %424
  br i1 %425, label %426, label %436

; <label>:426:                                    ; preds = %block_4011f6
  %427 = fadd double %420, %424
  %428 = bitcast double %427 to i64
  %429 = and i64 %428, 9221120237041090560
  %430 = icmp eq i64 %429, 9218868437227405312
  %431 = and i64 %428, 2251799813685247
  %432 = icmp ne i64 %431, 0
  %433 = and i1 %430, %432
  br i1 %433, label %434, label %442

; <label>:434:                                    ; preds = %426
  %435 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %422, %struct.Memory* %MEMORY.1) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:436:                                    ; preds = %block_4011f6
  %437 = fcmp ogt double %420, %424
  br i1 %437, label %442, label %438

; <label>:438:                                    ; preds = %436
  %439 = fcmp olt double %420, %424
  br i1 %439, label %442, label %440

; <label>:440:                                    ; preds = %438
  %441 = fcmp oeq double %420, %424
  br i1 %441, label %442, label %446

; <label>:442:                                    ; preds = %440, %438, %436, %426
  %443 = phi i8 [ 0, %436 ], [ 0, %438 ], [ 1, %440 ], [ 1, %426 ]
  %444 = phi i8 [ 0, %436 ], [ 0, %438 ], [ 0, %440 ], [ 1, %426 ]
  %445 = phi i8 [ 0, %436 ], [ 1, %438 ], [ 0, %440 ], [ 1, %426 ]
  store i8 %443, i8* %32, align 1, !tbaa !2454
  store i8 %444, i8* %23, align 1, !tbaa !2454
  store i8 %445, i8* %16, align 1, !tbaa !2454
  br label %446

; <label>:446:                                    ; preds = %442, %440
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %446, %434
  %447 = phi i64 [ %.pre7, %434 ], [ %422, %446 ]
  %448 = phi %struct.Memory* [ %435, %434 ], [ %MEMORY.1, %446 ]
  %449 = load i8, i8* %16, align 1, !tbaa !2432
  %450 = load i8, i8* %32, align 1, !tbaa !2448
  %451 = or i8 %450, %449
  %452 = icmp ne i8 %451, 0
  %.v10 = select i1 %452, i64 75, i64 6
  %453 = add i64 %447, %.v10
  store i64 %453, i64* %PC, align 8, !tbaa !2428
  br i1 %452, label %block_4012a3, label %block_40125e

block_4011e3:                                     ; preds = %block_4011d7
  %454 = add i64 %458, -32
  %455 = add i64 %494, 7
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 0, i32* %456, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4011ea

block_4011d7:                                     ; preds = %block_4012b6, %block_4011b0
  %457 = phi i64 [ %.pre, %block_4011b0 ], [ %146, %block_4012b6 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_4011b0 ], [ %MEMORY.1, %block_4012b6 ]
  %458 = load i64, i64* %RBP, align 8
  %459 = add i64 %458, -28
  %460 = add i64 %457, 3
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = add i64 %458, -8
  %465 = add i64 %457, 6
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %462, %467
  %469 = icmp ult i32 %462, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %16, align 1, !tbaa !2432
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #8
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %23, align 1, !tbaa !2446
  %476 = xor i32 %467, %462
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %29, align 1, !tbaa !2447
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %32, align 1, !tbaa !2448
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %35, align 1, !tbaa !2449
  %485 = lshr i32 %462, 31
  %486 = lshr i32 %467, 31
  %487 = xor i32 %486, %485
  %488 = xor i32 %483, %485
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %41, align 1, !tbaa !2450
  %492 = icmp ne i8 %484, 0
  %493 = xor i1 %492, %490
  %.v = select i1 %493, i64 12, i64 242
  %494 = add i64 %457, %.v
  store i64 %494, i64* %PC, align 8, !tbaa !2428
  br i1 %493, label %block_4011e3, label %block_4012c9
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005f0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005f0:
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
  store i64 6299736, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2432
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2446
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2447
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2449
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %16 = add i64 %9, 40
  store i64 %16, i64* %PC, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %18 = add i64 %9, 41
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %6 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %21 = add i64 %6, 8
  store i64 %21, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401450___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401450:
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
define %struct.Memory* @sub_400730_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400730:
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
  %14 = tail call %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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
define %struct.Memory* @sub_400760_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400690_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400690_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400690_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400660___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400660___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020d8_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e0_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401450___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401450;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401450___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401450___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4013e0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4013e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4013e0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4013e0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400880_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602108_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006a0_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400760_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401454;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401454__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400730_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400520__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400780_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4013e0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401450___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { naked nobuiltin noinline }
attributes #8 = { nounwind }
attributes #9 = { alwaysinline nobuiltin nounwind }

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
