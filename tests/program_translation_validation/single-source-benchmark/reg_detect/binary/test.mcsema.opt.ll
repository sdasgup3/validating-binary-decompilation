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

declare %struct.Memory* @sub_4012e0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4011b0_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400e60_kernel_reg_detect_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b10_kernel_reg_detect_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 32
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
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %39 = add i64 %7, -12
  %40 = add i64 %10, 21
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 4194560, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -4
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %RDI, align 8, !tbaa !2428
  %49 = add i64 %44, -326
  %50 = add i64 %44, 9
  %51 = load i64, i64* %6, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %6, align 8, !tbaa !2428
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %49, i64* %54, align 8, !tbaa !2428
  %55 = tail call fastcc %struct.Memory* @ext_6020b8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %56 = bitcast %union.VectorReg* %3 to i8*
  %57 = load i64, i64* %PC, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2451
  %60 = getelementptr inbounds i8, i8* %56, i64 4
  %61 = bitcast i8* %60 to i32*
  store i32 0, i32* %61, align 1, !tbaa !2451
  %62 = bitcast i64* %58 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2451
  %63 = getelementptr inbounds i8, i8* %56, i64 12
  %64 = bitcast i8* %63 to i32*
  store i32 0, i32* %64, align 1, !tbaa !2451
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -16
  %67 = load i64, i64* %RAX, align 8
  %68 = add i64 %57, 7
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -32
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 5
  store i64 %73, i64* %PC, align 8
  %74 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %75 = load i64, i64* %74, align 1
  %76 = inttoptr i64 %71 to i64*
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -20
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %82 = bitcast %union.VectorReg* %3 to double*
  %83 = bitcast i64* %58 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006d2

block_4006de:                                     ; preds = %block_4006d2
  %84 = add i64 %206, 8
  store i64 %84, i64* %PC, align 8
  %85 = load i32, i32* %173, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RCX, align 8, !tbaa !2428
  %87 = shl nsw i64 %86, 3
  %88 = add i64 %87, %210
  %89 = add i64 %206, 13
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to double*
  %91 = load double, double* %90, align 8
  store double %91, double* %82, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %92 = add i64 %170, -32
  %93 = add i64 %206, 18
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to double*
  %95 = load double, double* %94, align 8
  %96 = fadd double %91, %95
  store double %96, double* %82, align 1, !tbaa !2452
  store i64 0, i64* %58, align 1, !tbaa !2452
  %97 = add i64 %206, 23
  store i64 %97, i64* %PC, align 8
  store double %96, double* %94, align 8
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -20
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  %106 = icmp eq i32 %103, -1
  %107 = icmp eq i32 %104, 0
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %14, align 1, !tbaa !2432
  %110 = and i32 %104, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1, !tbaa !2446
  %115 = xor i32 %103, %104
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %26, align 1, !tbaa !2447
  %119 = icmp eq i32 %104, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %29, align 1, !tbaa !2448
  %121 = lshr i32 %104, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %32, align 1, !tbaa !2449
  %123 = lshr i32 %103, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %121
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %38, align 1, !tbaa !2450
  %128 = add i64 %100, 9
  store i64 %128, i64* %PC, align 8
  store i32 %104, i32* %102, align 4
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, -44
  store i64 %130, i64* %54, align 8, !tbaa !2428
  br label %block_4006d2

block_400703:                                     ; preds = %block_4006d2
  store i64 %210, i64* %RDI, align 8, !tbaa !2428
  %131 = add i64 %206, -435
  %132 = add i64 %206, 12
  %133 = load i64, i64* %6, align 8, !tbaa !2428
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8, !tbaa !2428
  store i64 %131, i64* %54, align 8, !tbaa !2428
  %136 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %55)
  %137 = load i64, i64* %RSP, align 8
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %137, 32
  store i64 %139, i64* %RSP, align 8, !tbaa !2428
  %140 = icmp ugt i64 %137, -33
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1, !tbaa !2432
  %142 = trunc i64 %139 to i32
  %143 = and i32 %142, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #8
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1, !tbaa !2446
  %148 = xor i64 %137, %139
  %149 = lshr i64 %148, 4
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %26, align 1, !tbaa !2447
  %152 = icmp eq i64 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %29, align 1, !tbaa !2448
  %154 = lshr i64 %139, 63
  %155 = trunc i64 %154 to i8
  store i8 %155, i8* %32, align 1, !tbaa !2449
  %156 = lshr i64 %137, 63
  %157 = xor i64 %154, %156
  %158 = add nuw nsw i64 %157, %154
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %38, align 1, !tbaa !2450
  %161 = add i64 %138, 5
  store i64 %161, i64* %PC, align 8
  %162 = add i64 %137, 40
  %163 = inttoptr i64 %139 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RBP, align 8, !tbaa !2428
  store i64 %162, i64* %6, align 8, !tbaa !2428
  %165 = add i64 %138, 6
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %162 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %54, align 8, !tbaa !2428
  %168 = add i64 %137, 48
  store i64 %168, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %136

block_4006d2:                                     ; preds = %block_4006de, %block_4006a0
  %169 = phi i64 [ %130, %block_4006de ], [ %.pre, %block_4006a0 ]
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -20
  %172 = add i64 %169, 3
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = add i64 %170, -4
  %177 = add i64 %169, 6
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %174, %179
  %181 = icmp ult i32 %174, %179
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %14, align 1, !tbaa !2432
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #8
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %21, align 1, !tbaa !2446
  %188 = xor i32 %179, %174
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %26, align 1, !tbaa !2447
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1, !tbaa !2448
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1, !tbaa !2449
  %197 = lshr i32 %174, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1, !tbaa !2450
  %204 = icmp ne i8 %196, 0
  %205 = xor i1 %204, %202
  %.v = select i1 %205, i64 12, i64 49
  %206 = add i64 %169, %.v
  %207 = add i64 %170, -16
  %208 = add i64 %206, 4
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  br i1 %205, label %block_4006de, label %block_400703
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %12, i64* %13, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
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
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b40

block_400b7b:                                     ; preds = %block_400b6a
  %80 = add i64 %195, -56
  %81 = add i64 %233, 7
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 0, i32* %82, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400b82

block_400c75:                                     ; preds = %block_400c86, %block_400c30
  %83 = phi i64 [ %1389, %block_400c86 ], [ %.pre10, %block_400c30 ]
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -56
  %86 = add i64 %83, 3
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = add i64 %84, -12
  %91 = add i64 %83, 6
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, -1
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RCX, align 8, !tbaa !2428
  %96 = lshr i32 %94, 31
  %97 = sub i32 %88, %94
  %98 = icmp ult i32 %88, %94
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %73, align 1, !tbaa !2432
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #8
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %74, align 1, !tbaa !2446
  %105 = xor i32 %94, %88
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %75, align 1, !tbaa !2447
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %76, align 1, !tbaa !2448
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %77, align 1, !tbaa !2449
  %114 = lshr i32 %88, 31
  %115 = xor i32 %96, %114
  %116 = xor i32 %112, %114
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %78, align 1, !tbaa !2450
  %120 = icmp ne i8 %113, 0
  %121 = xor i1 %120, %118
  %.demorgan23 = or i1 %110, %121
  %.v24 = select i1 %.demorgan23, i64 17, i64 144
  %122 = add i64 %83, %.v24
  %123 = add i64 %84, 24
  %124 = add i64 %122, 4
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RAX, align 8, !tbaa !2428
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -52
  %129 = add i64 %122, 8
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, 1536
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = lshr i64 %133, 63
  %135 = add i64 %133, %126
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %136 = icmp ult i64 %135, %126
  %137 = icmp ult i64 %135, %133
  %138 = or i1 %136, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %73, align 1, !tbaa !2432
  %140 = trunc i64 %135 to i32
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #8
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %74, align 1, !tbaa !2446
  %146 = xor i64 %126, %135
  %147 = lshr i64 %146, 4
  %148 = trunc i64 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %75, align 1, !tbaa !2447
  %150 = icmp eq i64 %135, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %76, align 1, !tbaa !2448
  %152 = lshr i64 %135, 63
  %153 = trunc i64 %152 to i8
  store i8 %153, i8* %77, align 1, !tbaa !2449
  %154 = lshr i64 %126, 63
  %155 = xor i64 %152, %154
  %156 = xor i64 %152, %134
  %157 = add nuw nsw i64 %155, %156
  %158 = icmp eq i64 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %78, align 1, !tbaa !2450
  %160 = add i64 %127, -48
  %161 = add i64 %122, 22
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = shl nsw i64 %164, 8
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = lshr i64 %164, 55
  %167 = and i64 %166, 1
  %168 = add i64 %122, 29
  store i64 %168, i64* %PC, align 8
  %169 = add i64 %165, %135
  store i64 %169, i64* %RAX, align 8, !tbaa !2428
  %170 = icmp ult i64 %169, %135
  %171 = icmp ult i64 %169, %165
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %73, align 1, !tbaa !2432
  %174 = trunc i64 %169 to i32
  %175 = and i32 %174, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #8
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %74, align 1, !tbaa !2446
  %180 = xor i64 %135, %169
  %181 = lshr i64 %180, 4
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %75, align 1, !tbaa !2447
  %184 = icmp eq i64 %169, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %76, align 1, !tbaa !2448
  %186 = lshr i64 %169, 63
  %187 = trunc i64 %186 to i8
  store i8 %187, i8* %77, align 1, !tbaa !2449
  %188 = xor i64 %186, %152
  %189 = xor i64 %186, %167
  %190 = add nuw nsw i64 %188, %189
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %78, align 1, !tbaa !2450
  %193 = load i64, i64* %RBP, align 8
  br i1 %.demorgan23, label %block_400c86, label %block_400d05

block_400b6a:                                     ; preds = %block_400bdb, %block_400b64
  %194 = phi i64 [ %282, %block_400bdb ], [ %.pre6, %block_400b64 ]
  %195 = load i64, i64* %RBP, align 8
  %196 = add i64 %195, -48
  %197 = add i64 %194, 3
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RAX, align 8, !tbaa !2428
  %201 = add i64 %195, -8
  %202 = add i64 %194, 6
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, -1
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RCX, align 8, !tbaa !2428
  %207 = lshr i32 %205, 31
  %208 = sub i32 %199, %205
  %209 = icmp ult i32 %199, %205
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %73, align 1, !tbaa !2432
  %211 = and i32 %208, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211) #8
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %74, align 1, !tbaa !2446
  %216 = xor i32 %205, %199
  %217 = xor i32 %216, %208
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %75, align 1, !tbaa !2447
  %221 = icmp eq i32 %208, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %76, align 1, !tbaa !2448
  %223 = lshr i32 %208, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %77, align 1, !tbaa !2449
  %225 = lshr i32 %199, 31
  %226 = xor i32 %207, %225
  %227 = xor i32 %223, %225
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %78, align 1, !tbaa !2450
  %231 = icmp ne i8 %224, 0
  %232 = xor i1 %231, %229
  %.demorgan15 = or i1 %221, %232
  %.v16 = select i1 %.demorgan15, i64 17, i64 132
  %233 = add i64 %194, %.v16
  store i64 %233, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan15, label %block_400b7b, label %block_400bee

block_400d65:                                     ; preds = %block_400c08
  %234 = add i64 %1097, -48
  %235 = add i64 %1135, 7
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 0, i32* %236, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400d6c

block_400b64:                                     ; preds = %block_400b53
  %237 = add i64 %322, 3
  store i64 %237, i64* %PC, align 8
  %238 = load i32, i32* %287, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX, align 8, !tbaa !2428
  %240 = add i64 %284, -48
  %241 = add i64 %322, 6
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i32*
  store i32 %238, i32* %242, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400b6a

block_400e50:                                     ; preds = %block_400b40
  %243 = add i64 %623, 1
  store i64 %243, i64* %PC, align 8
  %244 = load i64, i64* %9, align 8, !tbaa !2428
  %245 = add i64 %244, 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RBP, align 8, !tbaa !2428
  store i64 %245, i64* %9, align 8, !tbaa !2428
  %248 = add i64 %623, 2
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %245 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %79, align 8, !tbaa !2428
  %251 = add i64 %244, 16
  store i64 %251, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bdb:                                     ; preds = %block_400b82
  %252 = add i64 %1662, -48
  %253 = add i64 %1700, 8
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, 1
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = icmp eq i32 %255, -1
  %259 = icmp eq i32 %256, 0
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %73, align 1, !tbaa !2432
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #8
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %74, align 1, !tbaa !2446
  %267 = xor i32 %255, %256
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %75, align 1, !tbaa !2447
  %271 = icmp eq i32 %256, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %76, align 1, !tbaa !2448
  %273 = lshr i32 %256, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %77, align 1, !tbaa !2449
  %275 = lshr i32 %255, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %273
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %78, align 1, !tbaa !2450
  %280 = add i64 %1700, 14
  store i64 %280, i64* %PC, align 8
  store i32 %256, i32* %254, align 4
  %281 = load i64, i64* %PC, align 8
  %282 = add i64 %281, -127
  store i64 %282, i64* %79, align 8, !tbaa !2428
  br label %block_400b6a

block_400b53:                                     ; preds = %block_400bee, %block_400b4c
  %283 = phi i64 [ %1095, %block_400bee ], [ %.pre5, %block_400b4c ]
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -52
  %286 = add i64 %283, 3
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = add i64 %284, -8
  %291 = add i64 %283, 6
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, -1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RCX, align 8, !tbaa !2428
  %296 = lshr i32 %294, 31
  %297 = sub i32 %288, %294
  %298 = icmp ult i32 %288, %294
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %73, align 1, !tbaa !2432
  %300 = and i32 %297, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #8
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %74, align 1, !tbaa !2446
  %305 = xor i32 %294, %288
  %306 = xor i32 %305, %297
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %75, align 1, !tbaa !2447
  %310 = icmp eq i32 %297, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %76, align 1, !tbaa !2448
  %312 = lshr i32 %297, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %77, align 1, !tbaa !2449
  %314 = lshr i32 %288, 31
  %315 = xor i32 %296, %314
  %316 = xor i32 %312, %314
  %317 = add nuw nsw i32 %316, %315
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %78, align 1, !tbaa !2450
  %320 = icmp ne i8 %313, 0
  %321 = xor i1 %320, %318
  %.demorgan = or i1 %310, %321
  %.v14 = select i1 %.demorgan, i64 17, i64 174
  %322 = add i64 %283, %.v14
  store i64 %322, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400b64, label %block_400c01

block_400dd0:                                     ; preds = %block_400dbf
  %323 = add i64 %625, -40
  %324 = add i64 %663, 4
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i64*
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = add i64 %625, -52
  %328 = add i64 %663, 7
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, -1
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RCX, align 8, !tbaa !2428
  %333 = sext i32 %331 to i64
  %334 = mul nsw i64 %333, 24
  store i64 %334, i64* %RDX, align 8, !tbaa !2428
  %335 = lshr i64 %334, 63
  %336 = add i64 %334, %326
  store i64 %336, i64* %RAX, align 8, !tbaa !2428
  %337 = icmp ult i64 %336, %326
  %338 = icmp ult i64 %336, %334
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %73, align 1, !tbaa !2432
  %341 = trunc i64 %336 to i32
  %342 = and i32 %341, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #8
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %74, align 1, !tbaa !2446
  %347 = xor i64 %334, %326
  %348 = xor i64 %347, %336
  %349 = lshr i64 %348, 4
  %350 = trunc i64 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %75, align 1, !tbaa !2447
  %352 = icmp eq i64 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %76, align 1, !tbaa !2448
  %354 = lshr i64 %336, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %77, align 1, !tbaa !2449
  %356 = lshr i64 %326, 63
  %357 = xor i64 %354, %356
  %358 = xor i64 %354, %335
  %359 = add nuw nsw i64 %357, %358
  %360 = icmp eq i64 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %78, align 1, !tbaa !2450
  %362 = load i64, i64* %RBP, align 8
  %363 = add i64 %362, -48
  %364 = add i64 %663, 23
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, -1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RCX, align 8, !tbaa !2428
  %369 = icmp eq i32 %366, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %73, align 1, !tbaa !2432
  %371 = and i32 %367, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371) #8
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %74, align 1, !tbaa !2446
  %376 = xor i32 %366, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %75, align 1, !tbaa !2447
  %380 = icmp eq i32 %367, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %76, align 1, !tbaa !2448
  %382 = lshr i32 %367, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %77, align 1, !tbaa !2449
  %384 = lshr i32 %366, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %384
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %78, align 1, !tbaa !2450
  %389 = sext i32 %367 to i64
  store i64 %389, i64* %RDX, align 8, !tbaa !2428
  %390 = shl nsw i64 %389, 2
  %391 = add i64 %390, %336
  %392 = add i64 %663, 32
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RCX, align 8, !tbaa !2428
  %396 = add i64 %362, -32
  %397 = add i64 %663, 36
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = add i64 %362, -52
  %401 = add i64 %663, 40
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = mul nsw i64 %404, 24
  store i64 %405, i64* %RDX, align 8, !tbaa !2428
  %406 = lshr i64 %405, 63
  %407 = add i64 %405, %399
  store i64 %407, i64* %RAX, align 8, !tbaa !2428
  %408 = icmp ult i64 %407, %399
  %409 = icmp ult i64 %407, %405
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %73, align 1, !tbaa !2432
  %412 = trunc i64 %407 to i32
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #8
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %74, align 1, !tbaa !2446
  %418 = xor i64 %405, %399
  %419 = xor i64 %418, %407
  %420 = lshr i64 %419, 4
  %421 = trunc i64 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %75, align 1, !tbaa !2447
  %423 = icmp eq i64 %407, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %76, align 1, !tbaa !2448
  %425 = lshr i64 %407, 63
  %426 = trunc i64 %425 to i8
  store i8 %426, i8* %77, align 1, !tbaa !2449
  %427 = lshr i64 %399, 63
  %428 = xor i64 %425, %427
  %429 = xor i64 %425, %406
  %430 = add nuw nsw i64 %428, %429
  %431 = icmp eq i64 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %78, align 1, !tbaa !2450
  %433 = load i64, i64* %RBP, align 8
  %434 = add i64 %433, -48
  %435 = add i64 %663, 51
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %RDX, align 8, !tbaa !2428
  %439 = shl nsw i64 %438, 2
  %440 = add i64 %439, %407
  %441 = add i64 %663, 54
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, %394
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RCX, align 8, !tbaa !2428
  %446 = icmp ult i32 %444, %394
  %447 = icmp ult i32 %444, %443
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %73, align 1, !tbaa !2432
  %450 = and i32 %444, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450) #8
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %74, align 1, !tbaa !2446
  %455 = xor i32 %443, %394
  %456 = xor i32 %455, %444
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %75, align 1, !tbaa !2447
  %460 = icmp eq i32 %444, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %76, align 1, !tbaa !2448
  %462 = lshr i32 %444, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %77, align 1, !tbaa !2449
  %464 = lshr i32 %394, 31
  %465 = lshr i32 %443, 31
  %466 = xor i32 %462, %464
  %467 = xor i32 %462, %465
  %468 = add nuw nsw i32 %466, %467
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %78, align 1, !tbaa !2450
  %471 = add i64 %433, -40
  %472 = add i64 %663, 58
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %471 to i64*
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %RAX, align 8, !tbaa !2428
  %475 = add i64 %433, -52
  %476 = add i64 %663, 62
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = mul nsw i64 %479, 24
  store i64 %480, i64* %RDX, align 8, !tbaa !2428
  %481 = lshr i64 %480, 63
  %482 = add i64 %480, %474
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = icmp ult i64 %482, %474
  %484 = icmp ult i64 %482, %480
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %73, align 1, !tbaa !2432
  %487 = trunc i64 %482 to i32
  %488 = and i32 %487, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #8
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %74, align 1, !tbaa !2446
  %493 = xor i64 %480, %474
  %494 = xor i64 %493, %482
  %495 = lshr i64 %494, 4
  %496 = trunc i64 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %75, align 1, !tbaa !2447
  %498 = icmp eq i64 %482, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %76, align 1, !tbaa !2448
  %500 = lshr i64 %482, 63
  %501 = trunc i64 %500 to i8
  store i8 %501, i8* %77, align 1, !tbaa !2449
  %502 = lshr i64 %474, 63
  %503 = xor i64 %500, %502
  %504 = xor i64 %500, %481
  %505 = add nuw nsw i64 %503, %504
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %78, align 1, !tbaa !2450
  %508 = load i64, i64* %RBP, align 8
  %509 = add i64 %508, -48
  %510 = add i64 %663, 73
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RDX, align 8, !tbaa !2428
  %514 = shl nsw i64 %513, 2
  %515 = add i64 %514, %482
  %516 = load i32, i32* %ECX, align 4
  %517 = add i64 %663, 76
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %515 to i32*
  store i32 %516, i32* %518, align 4
  %519 = load i64, i64* %RBP, align 8
  %520 = add i64 %519, -48
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, 3
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = add i32 %524, 1
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = icmp eq i32 %524, -1
  %528 = icmp eq i32 %525, 0
  %529 = or i1 %527, %528
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %73, align 1, !tbaa !2432
  %531 = and i32 %525, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531) #8
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %74, align 1, !tbaa !2446
  %536 = xor i32 %524, %525
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %75, align 1, !tbaa !2447
  %540 = icmp eq i32 %525, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %76, align 1, !tbaa !2448
  %542 = lshr i32 %525, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %77, align 1, !tbaa !2449
  %544 = lshr i32 %524, 31
  %545 = xor i32 %542, %544
  %546 = add nuw nsw i32 %545, %542
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %78, align 1, !tbaa !2450
  %549 = add i64 %521, 9
  store i64 %549, i64* %PC, align 8
  store i32 %525, i32* %523, align 4
  %550 = load i64, i64* %PC, align 8
  %551 = add i64 %550, -102
  store i64 %551, i64* %79, align 8, !tbaa !2428
  br label %block_400dbf

block_400d52:                                     ; preds = %block_400c1f
  %552 = add i64 %1020, -52
  %553 = add i64 %1058, 8
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = add i32 %555, 1
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX, align 8, !tbaa !2428
  %558 = icmp eq i32 %555, -1
  %559 = icmp eq i32 %556, 0
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %73, align 1, !tbaa !2432
  %562 = and i32 %556, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562) #8
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %74, align 1, !tbaa !2446
  %567 = xor i32 %555, %556
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %75, align 1, !tbaa !2447
  %571 = icmp eq i32 %556, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %76, align 1, !tbaa !2448
  %573 = lshr i32 %556, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %77, align 1, !tbaa !2449
  %575 = lshr i32 %555, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %78, align 1, !tbaa !2450
  %580 = add i64 %1058, 14
  store i64 %580, i64* %PC, align 8
  store i32 %556, i32* %554, align 4
  %581 = load i64, i64* %PC, align 8
  %582 = add i64 %581, -344
  store i64 %582, i64* %79, align 8, !tbaa !2428
  br label %block_400c08

block_400b4c:                                     ; preds = %block_400b40
  %583 = add i64 %587, -52
  %584 = add i64 %623, 7
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %583 to i32*
  store i32 0, i32* %585, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400b53

block_400b40:                                     ; preds = %block_400e3d, %block_400b10
  %586 = phi i64 [ %694, %block_400e3d ], [ %.pre, %block_400b10 ]
  %587 = load i64, i64* %RBP, align 8
  %588 = add i64 %587, -44
  %589 = add i64 %586, 3
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX, align 8, !tbaa !2428
  %593 = add i64 %587, -4
  %594 = add i64 %586, 6
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sub i32 %591, %596
  %598 = icmp ult i32 %591, %596
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %73, align 1, !tbaa !2432
  %600 = and i32 %597, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600) #8
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %74, align 1, !tbaa !2446
  %605 = xor i32 %596, %591
  %606 = xor i32 %605, %597
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %75, align 1, !tbaa !2447
  %610 = icmp eq i32 %597, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %76, align 1, !tbaa !2448
  %612 = lshr i32 %597, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %77, align 1, !tbaa !2449
  %614 = lshr i32 %591, 31
  %615 = lshr i32 %596, 31
  %616 = xor i32 %615, %614
  %617 = xor i32 %612, %614
  %618 = add nuw nsw i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %78, align 1, !tbaa !2450
  %621 = icmp ne i8 %613, 0
  %622 = xor i1 %621, %619
  %.v = select i1 %622, i64 12, i64 784
  %623 = add i64 %586, %.v
  store i64 %623, i64* %79, align 8, !tbaa !2428
  br i1 %622, label %block_400b4c, label %block_400e50

block_400dbf:                                     ; preds = %block_400db9, %block_400dd0
  %624 = phi i64 [ %.pre13, %block_400db9 ], [ %551, %block_400dd0 ]
  %625 = load i64, i64* %RBP, align 8
  %626 = add i64 %625, -48
  %627 = add i64 %624, 3
  store i64 %627, i64* %PC, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RAX, align 8, !tbaa !2428
  %631 = add i64 %625, -8
  %632 = add i64 %624, 6
  store i64 %632, i64* %PC, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, -1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RCX, align 8, !tbaa !2428
  %637 = lshr i32 %635, 31
  %638 = sub i32 %629, %635
  %639 = icmp ult i32 %629, %635
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %73, align 1, !tbaa !2432
  %641 = and i32 %638, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641) #8
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %74, align 1, !tbaa !2446
  %646 = xor i32 %635, %629
  %647 = xor i32 %646, %638
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %75, align 1, !tbaa !2447
  %651 = icmp eq i32 %638, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %76, align 1, !tbaa !2448
  %653 = lshr i32 %638, 31
  %654 = trunc i32 %653 to i8
  store i8 %654, i8* %77, align 1, !tbaa !2449
  %655 = lshr i32 %629, 31
  %656 = xor i32 %637, %655
  %657 = xor i32 %653, %655
  %658 = add nuw nsw i32 %657, %656
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %78, align 1, !tbaa !2450
  %661 = icmp ne i8 %654, 0
  %662 = xor i1 %661, %659
  %.demorgan29 = or i1 %651, %662
  %.v30 = select i1 %.demorgan29, i64 17, i64 107
  %663 = add i64 %624, %.v30
  store i64 %663, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan29, label %block_400dd0, label %block_400e2a

block_400e3d:                                     ; preds = %block_400da8
  %664 = add i64 %937, -44
  %665 = add i64 %975, 8
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = add i32 %667, 1
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX, align 8, !tbaa !2428
  %670 = icmp eq i32 %667, -1
  %671 = icmp eq i32 %668, 0
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %73, align 1, !tbaa !2432
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674) #8
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %74, align 1, !tbaa !2446
  %679 = xor i32 %667, %668
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %75, align 1, !tbaa !2447
  %683 = icmp eq i32 %668, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %76, align 1, !tbaa !2448
  %685 = lshr i32 %668, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %77, align 1, !tbaa !2449
  %687 = lshr i32 %667, 31
  %688 = xor i32 %685, %687
  %689 = add nuw nsw i32 %688, %685
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %78, align 1, !tbaa !2450
  %692 = add i64 %975, 14
  store i64 %692, i64* %PC, align 8
  store i32 %668, i32* %666, align 4
  %693 = load i64, i64* %PC, align 8
  %694 = add i64 %693, -779
  store i64 %694, i64* %79, align 8, !tbaa !2428
  br label %block_400b40

block_400db9:                                     ; preds = %block_400da8
  %695 = add i64 %975, 3
  store i64 %695, i64* %PC, align 8
  %696 = load i32, i32* %940, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX, align 8, !tbaa !2428
  %698 = add i64 %937, -48
  %699 = add i64 %975, 6
  store i64 %699, i64* %PC, align 8
  %700 = inttoptr i64 %698 to i32*
  store i32 %696, i32* %700, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400dbf

block_400d7d:                                     ; preds = %block_400d6c
  %701 = add i64 %980, -32
  %702 = add i64 %1018, 4
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = add i64 %1018, 8
  store i64 %705, i64* %PC, align 8
  %706 = load i32, i32* %983, align 4
  %707 = sext i32 %706 to i64
  store i64 %707, i64* %RCX, align 8, !tbaa !2428
  %708 = shl nsw i64 %707, 2
  %709 = add i64 %708, %704
  %710 = add i64 %1018, 11
  store i64 %710, i64* %PC, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RDX, align 8, !tbaa !2428
  %714 = add i64 %980, -40
  %715 = add i64 %1018, 15
  store i64 %715, i64* %PC, align 8
  %716 = inttoptr i64 %714 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %RAX, align 8, !tbaa !2428
  %718 = add i64 %1018, 19
  store i64 %718, i64* %PC, align 8
  %719 = load i32, i32* %983, align 4
  %720 = sext i32 %719 to i64
  store i64 %720, i64* %RCX, align 8, !tbaa !2428
  %721 = shl nsw i64 %720, 2
  %722 = add i64 %721, %717
  %723 = add i64 %1018, 22
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %722 to i32*
  store i32 %712, i32* %724, align 4
  %725 = load i64, i64* %RBP, align 8
  %726 = add i64 %725, -48
  %727 = load i64, i64* %PC, align 8
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %726 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, 1
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX, align 8, !tbaa !2428
  %733 = icmp eq i32 %730, -1
  %734 = icmp eq i32 %731, 0
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %73, align 1, !tbaa !2432
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737) #8
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %74, align 1, !tbaa !2446
  %742 = xor i32 %730, %731
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %75, align 1, !tbaa !2447
  %746 = icmp eq i32 %731, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %76, align 1, !tbaa !2448
  %748 = lshr i32 %731, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %77, align 1, !tbaa !2449
  %750 = lshr i32 %730, 31
  %751 = xor i32 %748, %750
  %752 = add nuw nsw i32 %751, %748
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %78, align 1, !tbaa !2450
  %755 = add i64 %727, 9
  store i64 %755, i64* %PC, align 8
  store i32 %731, i32* %729, align 4
  %756 = load i64, i64* %PC, align 8
  %757 = add i64 %756, -48
  store i64 %757, i64* %79, align 8, !tbaa !2428
  br label %block_400d6c

block_400c30:                                     ; preds = %block_400c1f
  %758 = add i64 %1020, 16
  %759 = add i64 %1058, 4
  store i64 %759, i64* %PC, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %RAX, align 8, !tbaa !2428
  %762 = add i64 %1020, -52
  %763 = add i64 %1058, 8
  store i64 %763, i64* %PC, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  %767 = mul nsw i64 %766, 1536
  store i64 %767, i64* %RCX, align 8, !tbaa !2428
  %768 = lshr i64 %767, 63
  %769 = add i64 %767, %761
  store i64 %769, i64* %RAX, align 8, !tbaa !2428
  %770 = icmp ult i64 %769, %761
  %771 = icmp ult i64 %769, %767
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %73, align 1, !tbaa !2432
  %774 = trunc i64 %769 to i32
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775) #8
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %74, align 1, !tbaa !2446
  %780 = xor i64 %761, %769
  %781 = lshr i64 %780, 4
  %782 = trunc i64 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %75, align 1, !tbaa !2447
  %784 = icmp eq i64 %769, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %76, align 1, !tbaa !2448
  %786 = lshr i64 %769, 63
  %787 = trunc i64 %786 to i8
  store i8 %787, i8* %77, align 1, !tbaa !2449
  %788 = lshr i64 %761, 63
  %789 = xor i64 %786, %788
  %790 = xor i64 %786, %768
  %791 = add nuw nsw i64 %789, %790
  %792 = icmp eq i64 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %78, align 1, !tbaa !2450
  %794 = add i64 %1058, 22
  store i64 %794, i64* %PC, align 8
  %795 = load i32, i32* %1023, align 4
  %796 = sext i32 %795 to i64
  %797 = shl nsw i64 %796, 8
  store i64 %797, i64* %RCX, align 8, !tbaa !2428
  %798 = lshr i64 %796, 55
  %799 = and i64 %798, 1
  %800 = add i64 %797, %769
  store i64 %800, i64* %RAX, align 8, !tbaa !2428
  %801 = icmp ult i64 %800, %769
  %802 = icmp ult i64 %800, %797
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %73, align 1, !tbaa !2432
  %805 = trunc i64 %800 to i32
  %806 = and i32 %805, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806) #8
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %74, align 1, !tbaa !2446
  %811 = xor i64 %769, %800
  %812 = lshr i64 %811, 4
  %813 = trunc i64 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %75, align 1, !tbaa !2447
  %815 = icmp eq i64 %800, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %76, align 1, !tbaa !2448
  %817 = lshr i64 %800, 63
  %818 = trunc i64 %817 to i8
  store i8 %818, i8* %77, align 1, !tbaa !2449
  %819 = xor i64 %817, %786
  %820 = xor i64 %817, %799
  %821 = add nuw nsw i64 %819, %820
  %822 = icmp eq i64 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %78, align 1, !tbaa !2450
  %824 = add i64 %1058, 31
  store i64 %824, i64* %PC, align 8
  %825 = inttoptr i64 %800 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RDX, align 8, !tbaa !2428
  %828 = load i64, i64* %RBP, align 8
  %829 = add i64 %828, 24
  %830 = add i64 %1058, 35
  store i64 %830, i64* %PC, align 8
  %831 = inttoptr i64 %829 to i64*
  %832 = load i64, i64* %831, align 8
  store i64 %832, i64* %RAX, align 8, !tbaa !2428
  %833 = add i64 %828, -52
  %834 = add i64 %1058, 39
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  %838 = mul nsw i64 %837, 1536
  store i64 %838, i64* %RCX, align 8, !tbaa !2428
  %839 = lshr i64 %838, 63
  %840 = add i64 %838, %832
  store i64 %840, i64* %RAX, align 8, !tbaa !2428
  %841 = icmp ult i64 %840, %832
  %842 = icmp ult i64 %840, %838
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %73, align 1, !tbaa !2432
  %845 = trunc i64 %840 to i32
  %846 = and i32 %845, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #8
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %74, align 1, !tbaa !2446
  %851 = xor i64 %832, %840
  %852 = lshr i64 %851, 4
  %853 = trunc i64 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %75, align 1, !tbaa !2447
  %855 = icmp eq i64 %840, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %76, align 1, !tbaa !2448
  %857 = lshr i64 %840, 63
  %858 = trunc i64 %857 to i8
  store i8 %858, i8* %77, align 1, !tbaa !2449
  %859 = lshr i64 %832, 63
  %860 = xor i64 %857, %859
  %861 = xor i64 %857, %839
  %862 = add nuw nsw i64 %860, %861
  %863 = icmp eq i64 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %78, align 1, !tbaa !2450
  %865 = add i64 %828, -48
  %866 = add i64 %1058, 53
  store i64 %866, i64* %PC, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sext i32 %868 to i64
  %870 = shl nsw i64 %869, 8
  store i64 %870, i64* %RCX, align 8, !tbaa !2428
  %871 = lshr i64 %869, 55
  %872 = and i64 %871, 1
  %873 = add i64 %870, %840
  store i64 %873, i64* %RAX, align 8, !tbaa !2428
  %874 = icmp ult i64 %873, %840
  %875 = icmp ult i64 %873, %870
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
  %884 = xor i64 %840, %873
  %885 = lshr i64 %884, 4
  %886 = trunc i64 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %75, align 1, !tbaa !2447
  %888 = icmp eq i64 %873, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %76, align 1, !tbaa !2448
  %890 = lshr i64 %873, 63
  %891 = trunc i64 %890 to i8
  store i8 %891, i8* %77, align 1, !tbaa !2449
  %892 = xor i64 %890, %857
  %893 = xor i64 %890, %872
  %894 = add nuw nsw i64 %892, %893
  %895 = icmp eq i64 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %78, align 1, !tbaa !2450
  %897 = load i32, i32* %EDX, align 4
  %898 = add i64 %1058, 62
  store i64 %898, i64* %PC, align 8
  %899 = inttoptr i64 %873 to i32*
  store i32 %897, i32* %899, align 4
  %900 = load i64, i64* %RBP, align 8
  %901 = add i64 %900, -56
  %902 = load i64, i64* %PC, align 8
  %903 = add i64 %902, 7
  store i64 %903, i64* %PC, align 8
  %904 = inttoptr i64 %901 to i32*
  store i32 1, i32* %904, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400c75

block_400e2a:                                     ; preds = %block_400dbf
  %905 = add i64 %625, -52
  %906 = add i64 %663, 8
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, 1
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX, align 8, !tbaa !2428
  %911 = icmp eq i32 %908, -1
  %912 = icmp eq i32 %909, 0
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %73, align 1, !tbaa !2432
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915) #8
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %74, align 1, !tbaa !2446
  %920 = xor i32 %908, %909
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %75, align 1, !tbaa !2447
  %924 = icmp eq i32 %909, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %76, align 1, !tbaa !2448
  %926 = lshr i32 %909, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %77, align 1, !tbaa !2449
  %928 = lshr i32 %908, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %926
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %78, align 1, !tbaa !2450
  %933 = add i64 %663, 14
  store i64 %933, i64* %PC, align 8
  store i32 %909, i32* %907, align 4
  %934 = load i64, i64* %PC, align 8
  %935 = add i64 %934, -144
  store i64 %935, i64* %79, align 8, !tbaa !2428
  br label %block_400da8

block_400da8:                                     ; preds = %block_400da1, %block_400e2a
  %936 = phi i64 [ %.pre12, %block_400da1 ], [ %935, %block_400e2a ]
  %937 = load i64, i64* %RBP, align 8
  %938 = add i64 %937, -52
  %939 = add i64 %936, 3
  store i64 %939, i64* %PC, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX, align 8, !tbaa !2428
  %943 = add i64 %937, -8
  %944 = add i64 %936, 6
  store i64 %944, i64* %PC, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = add i32 %946, -1
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = lshr i32 %947, 31
  %950 = sub i32 %941, %947
  %951 = icmp ult i32 %941, %947
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %73, align 1, !tbaa !2432
  %953 = and i32 %950, 255
  %954 = tail call i32 @llvm.ctpop.i32(i32 %953) #8
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  store i8 %957, i8* %74, align 1, !tbaa !2446
  %958 = xor i32 %947, %941
  %959 = xor i32 %958, %950
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %75, align 1, !tbaa !2447
  %963 = icmp eq i32 %950, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %76, align 1, !tbaa !2448
  %965 = lshr i32 %950, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %77, align 1, !tbaa !2449
  %967 = lshr i32 %941, 31
  %968 = xor i32 %949, %967
  %969 = xor i32 %965, %967
  %970 = add nuw nsw i32 %969, %968
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %78, align 1, !tbaa !2450
  %973 = icmp ne i8 %966, 0
  %974 = xor i1 %973, %971
  %.demorgan27 = or i1 %963, %974
  %.v28 = select i1 %.demorgan27, i64 17, i64 149
  %975 = add i64 %936, %.v28
  store i64 %975, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan27, label %block_400db9, label %block_400e3d

block_400da1:                                     ; preds = %block_400d6c
  %976 = add i64 %980, -52
  %977 = add i64 %1018, 7
  store i64 %977, i64* %PC, align 8
  %978 = inttoptr i64 %976 to i32*
  store i32 1, i32* %978, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400da8

block_400d6c:                                     ; preds = %block_400d7d, %block_400d65
  %979 = phi i64 [ %757, %block_400d7d ], [ %.pre11, %block_400d65 ]
  %980 = load i64, i64* %RBP, align 8
  %981 = add i64 %980, -48
  %982 = add i64 %979, 3
  store i64 %982, i64* %PC, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX, align 8, !tbaa !2428
  %986 = add i64 %980, -8
  %987 = add i64 %979, 6
  store i64 %987, i64* %PC, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = add i32 %989, -1
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RCX, align 8, !tbaa !2428
  %992 = lshr i32 %990, 31
  %993 = sub i32 %984, %990
  %994 = icmp ult i32 %984, %990
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %73, align 1, !tbaa !2432
  %996 = and i32 %993, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996) #8
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %74, align 1, !tbaa !2446
  %1001 = xor i32 %990, %984
  %1002 = xor i32 %1001, %993
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %75, align 1, !tbaa !2447
  %1006 = icmp eq i32 %993, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %76, align 1, !tbaa !2448
  %1008 = lshr i32 %993, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %77, align 1, !tbaa !2449
  %1010 = lshr i32 %984, 31
  %1011 = xor i32 %992, %1010
  %1012 = xor i32 %1008, %1010
  %1013 = add nuw nsw i32 %1012, %1011
  %1014 = icmp eq i32 %1013, 2
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %78, align 1, !tbaa !2450
  %1016 = icmp ne i8 %1009, 0
  %1017 = xor i1 %1016, %1014
  %.demorgan25 = or i1 %1006, %1017
  %.v26 = select i1 %.demorgan25, i64 17, i64 53
  %1018 = add i64 %979, %.v26
  store i64 %1018, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_400d7d, label %block_400da1

block_400c1f:                                     ; preds = %block_400d05, %block_400c19
  %1019 = phi i64 [ %1660, %block_400d05 ], [ %.pre9, %block_400c19 ]
  %1020 = load i64, i64* %RBP, align 8
  %1021 = add i64 %1020, -48
  %1022 = add i64 %1019, 3
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RAX, align 8, !tbaa !2428
  %1026 = add i64 %1020, -8
  %1027 = add i64 %1019, 6
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, -1
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RCX, align 8, !tbaa !2428
  %1032 = lshr i32 %1030, 31
  %1033 = sub i32 %1024, %1030
  %1034 = icmp ult i32 %1024, %1030
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %73, align 1, !tbaa !2432
  %1036 = and i32 %1033, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036) #8
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %74, align 1, !tbaa !2446
  %1041 = xor i32 %1030, %1024
  %1042 = xor i32 %1041, %1033
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %75, align 1, !tbaa !2447
  %1046 = icmp eq i32 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %76, align 1, !tbaa !2448
  %1048 = lshr i32 %1033, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %77, align 1, !tbaa !2449
  %1050 = lshr i32 %1024, 31
  %1051 = xor i32 %1032, %1050
  %1052 = xor i32 %1048, %1050
  %1053 = add nuw nsw i32 %1052, %1051
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %78, align 1, !tbaa !2450
  %1056 = icmp ne i8 %1049, 0
  %1057 = xor i1 %1056, %1054
  %.demorgan21 = or i1 %1046, %1057
  %.v22 = select i1 %.demorgan21, i64 17, i64 307
  %1058 = add i64 %1019, %.v22
  store i64 %1058, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan21, label %block_400c30, label %block_400d52

block_400c19:                                     ; preds = %block_400c08
  %1059 = add i64 %1135, 3
  store i64 %1059, i64* %PC, align 8
  %1060 = load i32, i32* %1100, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX, align 8, !tbaa !2428
  %1062 = add i64 %1097, -48
  %1063 = add i64 %1135, 6
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1062 to i32*
  store i32 %1060, i32* %1064, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400c1f

block_400bee:                                     ; preds = %block_400b6a
  %1065 = add i64 %195, -52
  %1066 = add i64 %233, 8
  store i64 %1066, i64* %PC, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = add i32 %1068, 1
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX, align 8, !tbaa !2428
  %1071 = icmp eq i32 %1068, -1
  %1072 = icmp eq i32 %1069, 0
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %73, align 1, !tbaa !2432
  %1075 = and i32 %1069, 255
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075) #8
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %74, align 1, !tbaa !2446
  %1080 = xor i32 %1068, %1069
  %1081 = lshr i32 %1080, 4
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  store i8 %1083, i8* %75, align 1, !tbaa !2447
  %1084 = icmp eq i32 %1069, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %76, align 1, !tbaa !2448
  %1086 = lshr i32 %1069, 31
  %1087 = trunc i32 %1086 to i8
  store i8 %1087, i8* %77, align 1, !tbaa !2449
  %1088 = lshr i32 %1068, 31
  %1089 = xor i32 %1086, %1088
  %1090 = add nuw nsw i32 %1089, %1086
  %1091 = icmp eq i32 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %78, align 1, !tbaa !2450
  %1093 = add i64 %233, 14
  store i64 %1093, i64* %PC, align 8
  store i32 %1069, i32* %1067, align 4
  %1094 = load i64, i64* %PC, align 8
  %1095 = add i64 %1094, -169
  store i64 %1095, i64* %79, align 8, !tbaa !2428
  br label %block_400b53

block_400c08:                                     ; preds = %block_400c01, %block_400d52
  %1096 = phi i64 [ %.pre8, %block_400c01 ], [ %582, %block_400d52 ]
  %1097 = load i64, i64* %RBP, align 8
  %1098 = add i64 %1097, -52
  %1099 = add i64 %1096, 3
  store i64 %1099, i64* %PC, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX, align 8, !tbaa !2428
  %1103 = add i64 %1097, -8
  %1104 = add i64 %1096, 6
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = add i32 %1106, -1
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RCX, align 8, !tbaa !2428
  %1109 = lshr i32 %1107, 31
  %1110 = sub i32 %1101, %1107
  %1111 = icmp ult i32 %1101, %1107
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %73, align 1, !tbaa !2432
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113) #8
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %74, align 1, !tbaa !2446
  %1118 = xor i32 %1107, %1101
  %1119 = xor i32 %1118, %1110
  %1120 = lshr i32 %1119, 4
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %75, align 1, !tbaa !2447
  %1123 = icmp eq i32 %1110, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %76, align 1, !tbaa !2448
  %1125 = lshr i32 %1110, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %77, align 1, !tbaa !2449
  %1127 = lshr i32 %1101, 31
  %1128 = xor i32 %1109, %1127
  %1129 = xor i32 %1125, %1127
  %1130 = add nuw nsw i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %78, align 1, !tbaa !2450
  %1133 = icmp ne i8 %1126, 0
  %1134 = xor i1 %1133, %1131
  %.demorgan19 = or i1 %1123, %1134
  %.v20 = select i1 %.demorgan19, i64 17, i64 349
  %1135 = add i64 %1096, %.v20
  store i64 %1135, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan19, label %block_400c19, label %block_400d65

block_400c86:                                     ; preds = %block_400c75
  %1136 = add i64 %193, -56
  %1137 = add i64 %122, 32
  store i64 %1137, i64* %PC, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = add i32 %1139, -1
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RDX, align 8, !tbaa !2428
  %1142 = icmp eq i32 %1139, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %73, align 1, !tbaa !2432
  %1144 = and i32 %1140, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144) #8
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %74, align 1, !tbaa !2446
  %1149 = xor i32 %1139, %1140
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %75, align 1, !tbaa !2447
  %1153 = icmp eq i32 %1140, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %76, align 1, !tbaa !2448
  %1155 = lshr i32 %1140, 31
  %1156 = trunc i32 %1155 to i8
  store i8 %1156, i8* %77, align 1, !tbaa !2449
  %1157 = lshr i32 %1139, 31
  %1158 = xor i32 %1155, %1157
  %1159 = add nuw nsw i32 %1158, %1157
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %78, align 1, !tbaa !2450
  %1162 = sext i32 %1140 to i64
  store i64 %1162, i64* %RCX, align 8, !tbaa !2428
  %1163 = shl nsw i64 %1162, 2
  %1164 = add i64 %1163, %169
  %1165 = add i64 %122, 41
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RDX, align 8, !tbaa !2428
  %1169 = add i64 %193, 16
  %1170 = add i64 %122, 45
  store i64 %1170, i64* %PC, align 8
  %1171 = inttoptr i64 %1169 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RAX, align 8, !tbaa !2428
  %1173 = add i64 %193, -52
  %1174 = add i64 %122, 49
  store i64 %1174, i64* %PC, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = sext i32 %1176 to i64
  %1178 = mul nsw i64 %1177, 1536
  store i64 %1178, i64* %RCX, align 8, !tbaa !2428
  %1179 = lshr i64 %1178, 63
  %1180 = add i64 %1178, %1172
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp ult i64 %1180, %1172
  %1182 = icmp ult i64 %1180, %1178
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %73, align 1, !tbaa !2432
  %1185 = trunc i64 %1180 to i32
  %1186 = and i32 %1185, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186) #8
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %74, align 1, !tbaa !2446
  %1191 = xor i64 %1172, %1180
  %1192 = lshr i64 %1191, 4
  %1193 = trunc i64 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %75, align 1, !tbaa !2447
  %1195 = icmp eq i64 %1180, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %76, align 1, !tbaa !2448
  %1197 = lshr i64 %1180, 63
  %1198 = trunc i64 %1197 to i8
  store i8 %1198, i8* %77, align 1, !tbaa !2449
  %1199 = lshr i64 %1172, 63
  %1200 = xor i64 %1197, %1199
  %1201 = xor i64 %1197, %1179
  %1202 = add nuw nsw i64 %1200, %1201
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %78, align 1, !tbaa !2450
  %1205 = load i64, i64* %RBP, align 8
  %1206 = add i64 %1205, -48
  %1207 = add i64 %122, 63
  store i64 %1207, i64* %PC, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = shl nsw i64 %1210, 8
  store i64 %1211, i64* %RCX, align 8, !tbaa !2428
  %1212 = lshr i64 %1210, 55
  %1213 = and i64 %1212, 1
  %1214 = add i64 %1211, %1180
  store i64 %1214, i64* %RAX, align 8, !tbaa !2428
  %1215 = icmp ult i64 %1214, %1180
  %1216 = icmp ult i64 %1214, %1211
  %1217 = or i1 %1215, %1216
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %73, align 1, !tbaa !2432
  %1219 = trunc i64 %1214 to i32
  %1220 = and i32 %1219, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220) #8
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %74, align 1, !tbaa !2446
  %1225 = xor i64 %1180, %1214
  %1226 = lshr i64 %1225, 4
  %1227 = trunc i64 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %75, align 1, !tbaa !2447
  %1229 = icmp eq i64 %1214, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %76, align 1, !tbaa !2448
  %1231 = lshr i64 %1214, 63
  %1232 = trunc i64 %1231 to i8
  store i8 %1232, i8* %77, align 1, !tbaa !2449
  %1233 = xor i64 %1231, %1197
  %1234 = xor i64 %1231, %1213
  %1235 = add nuw nsw i64 %1233, %1234
  %1236 = icmp eq i64 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %78, align 1, !tbaa !2450
  %1238 = add i64 %1205, -56
  %1239 = add i64 %122, 74
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = sext i32 %1241 to i64
  store i64 %1242, i64* %RCX, align 8, !tbaa !2428
  %1243 = load i64, i64* %RDX, align 8
  %1244 = shl nsw i64 %1242, 2
  %1245 = add i64 %1244, %1214
  %1246 = add i64 %122, 77
  store i64 %1246, i64* %PC, align 8
  %1247 = trunc i64 %1243 to i32
  %1248 = inttoptr i64 %1245 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = add i32 %1249, %1247
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RDX, align 8, !tbaa !2428
  %1252 = icmp ult i32 %1250, %1247
  %1253 = icmp ult i32 %1250, %1249
  %1254 = or i1 %1252, %1253
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %73, align 1, !tbaa !2432
  %1256 = and i32 %1250, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256) #8
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %74, align 1, !tbaa !2446
  %1261 = xor i32 %1249, %1247
  %1262 = xor i32 %1261, %1250
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %75, align 1, !tbaa !2447
  %1266 = icmp eq i32 %1250, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %76, align 1, !tbaa !2448
  %1268 = lshr i32 %1250, 31
  %1269 = trunc i32 %1268 to i8
  store i8 %1269, i8* %77, align 1, !tbaa !2449
  %1270 = lshr i32 %1247, 31
  %1271 = lshr i32 %1249, 31
  %1272 = xor i32 %1268, %1270
  %1273 = xor i32 %1268, %1271
  %1274 = add nuw nsw i32 %1272, %1273
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %78, align 1, !tbaa !2450
  %1277 = load i64, i64* %RBP, align 8
  %1278 = add i64 %1277, 24
  %1279 = add i64 %122, 81
  store i64 %1279, i64* %PC, align 8
  %1280 = inttoptr i64 %1278 to i64*
  %1281 = load i64, i64* %1280, align 8
  store i64 %1281, i64* %RAX, align 8, !tbaa !2428
  %1282 = add i64 %1277, -52
  %1283 = add i64 %122, 85
  store i64 %1283, i64* %PC, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = mul nsw i64 %1286, 1536
  store i64 %1287, i64* %RCX, align 8, !tbaa !2428
  %1288 = lshr i64 %1287, 63
  %1289 = add i64 %1287, %1281
  store i64 %1289, i64* %RAX, align 8, !tbaa !2428
  %1290 = icmp ult i64 %1289, %1281
  %1291 = icmp ult i64 %1289, %1287
  %1292 = or i1 %1290, %1291
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %73, align 1, !tbaa !2432
  %1294 = trunc i64 %1289 to i32
  %1295 = and i32 %1294, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295) #8
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %74, align 1, !tbaa !2446
  %1300 = xor i64 %1281, %1289
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %75, align 1, !tbaa !2447
  %1304 = icmp eq i64 %1289, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %76, align 1, !tbaa !2448
  %1306 = lshr i64 %1289, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %77, align 1, !tbaa !2449
  %1308 = lshr i64 %1281, 63
  %1309 = xor i64 %1306, %1308
  %1310 = xor i64 %1306, %1288
  %1311 = add nuw nsw i64 %1309, %1310
  %1312 = icmp eq i64 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %78, align 1, !tbaa !2450
  %1314 = add i64 %1277, -48
  %1315 = add i64 %122, 99
  store i64 %1315, i64* %PC, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = sext i32 %1317 to i64
  %1319 = shl nsw i64 %1318, 8
  store i64 %1319, i64* %RCX, align 8, !tbaa !2428
  %1320 = lshr i64 %1318, 55
  %1321 = and i64 %1320, 1
  %1322 = add i64 %1319, %1289
  store i64 %1322, i64* %RAX, align 8, !tbaa !2428
  %1323 = icmp ult i64 %1322, %1289
  %1324 = icmp ult i64 %1322, %1319
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %73, align 1, !tbaa !2432
  %1327 = trunc i64 %1322 to i32
  %1328 = and i32 %1327, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328) #8
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %74, align 1, !tbaa !2446
  %1333 = xor i64 %1289, %1322
  %1334 = lshr i64 %1333, 4
  %1335 = trunc i64 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %75, align 1, !tbaa !2447
  %1337 = icmp eq i64 %1322, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %76, align 1, !tbaa !2448
  %1339 = lshr i64 %1322, 63
  %1340 = trunc i64 %1339 to i8
  store i8 %1340, i8* %77, align 1, !tbaa !2449
  %1341 = xor i64 %1339, %1306
  %1342 = xor i64 %1339, %1321
  %1343 = add nuw nsw i64 %1341, %1342
  %1344 = icmp eq i64 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %78, align 1, !tbaa !2450
  %1346 = load i64, i64* %RBP, align 8
  %1347 = add i64 %1346, -56
  %1348 = add i64 %122, 110
  store i64 %1348, i64* %PC, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = sext i32 %1350 to i64
  store i64 %1351, i64* %RCX, align 8, !tbaa !2428
  %1352 = shl nsw i64 %1351, 2
  %1353 = add i64 %1352, %1322
  %1354 = load i32, i32* %EDX, align 4
  %1355 = add i64 %122, 113
  store i64 %1355, i64* %PC, align 8
  %1356 = inttoptr i64 %1353 to i32*
  store i32 %1354, i32* %1356, align 4
  %1357 = load i64, i64* %RBP, align 8
  %1358 = add i64 %1357, -56
  %1359 = load i64, i64* %PC, align 8
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC, align 8
  %1361 = inttoptr i64 %1358 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, 1
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RAX, align 8, !tbaa !2428
  %1365 = icmp eq i32 %1362, -1
  %1366 = icmp eq i32 %1363, 0
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %73, align 1, !tbaa !2432
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369) #8
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %74, align 1, !tbaa !2446
  %1374 = xor i32 %1362, %1363
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %75, align 1, !tbaa !2447
  %1378 = icmp eq i32 %1363, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %76, align 1, !tbaa !2448
  %1380 = lshr i32 %1363, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %77, align 1, !tbaa !2449
  %1382 = lshr i32 %1362, 31
  %1383 = xor i32 %1380, %1382
  %1384 = add nuw nsw i32 %1383, %1380
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %78, align 1, !tbaa !2450
  %1387 = add i64 %1359, 9
  store i64 %1387, i64* %PC, align 8
  store i32 %1363, i32* %1361, align 4
  %1388 = load i64, i64* %PC, align 8
  %1389 = add i64 %1388, -139
  store i64 %1389, i64* %79, align 8, !tbaa !2428
  br label %block_400c75

block_400b93:                                     ; preds = %block_400b82
  %1390 = add i64 %1662, -24
  %1391 = add i64 %1700, 4
  store i64 %1391, i64* %PC, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %RAX, align 8, !tbaa !2428
  %1394 = add i64 %1662, -52
  %1395 = add i64 %1700, 8
  store i64 %1395, i64* %PC, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = sext i32 %1397 to i64
  %1399 = mul nsw i64 %1398, 24
  store i64 %1399, i64* %RCX, align 8, !tbaa !2428
  %1400 = lshr i64 %1399, 63
  %1401 = add i64 %1399, %1393
  store i64 %1401, i64* %RAX, align 8, !tbaa !2428
  %1402 = icmp ult i64 %1401, %1393
  %1403 = icmp ult i64 %1401, %1399
  %1404 = or i1 %1402, %1403
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %73, align 1, !tbaa !2432
  %1406 = trunc i64 %1401 to i32
  %1407 = and i32 %1406, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407) #8
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %74, align 1, !tbaa !2446
  %1412 = xor i64 %1399, %1393
  %1413 = xor i64 %1412, %1401
  %1414 = lshr i64 %1413, 4
  %1415 = trunc i64 %1414 to i8
  %1416 = and i8 %1415, 1
  store i8 %1416, i8* %75, align 1, !tbaa !2447
  %1417 = icmp eq i64 %1401, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %76, align 1, !tbaa !2448
  %1419 = lshr i64 %1401, 63
  %1420 = trunc i64 %1419 to i8
  store i8 %1420, i8* %77, align 1, !tbaa !2449
  %1421 = lshr i64 %1393, 63
  %1422 = xor i64 %1419, %1421
  %1423 = xor i64 %1419, %1400
  %1424 = add nuw nsw i64 %1422, %1423
  %1425 = icmp eq i64 %1424, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %78, align 1, !tbaa !2450
  %1427 = add i64 %1662, -48
  %1428 = add i64 %1700, 19
  store i64 %1428, i64* %PC, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = sext i32 %1430 to i64
  store i64 %1431, i64* %RCX, align 8, !tbaa !2428
  %1432 = shl nsw i64 %1431, 2
  %1433 = add i64 %1432, %1401
  %1434 = add i64 %1700, 22
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RDX, align 8, !tbaa !2428
  %1438 = add i64 %1662, 16
  %1439 = add i64 %1700, 26
  store i64 %1439, i64* %PC, align 8
  %1440 = inttoptr i64 %1438 to i64*
  %1441 = load i64, i64* %1440, align 8
  store i64 %1441, i64* %RAX, align 8, !tbaa !2428
  %1442 = add i64 %1700, 30
  store i64 %1442, i64* %PC, align 8
  %1443 = load i32, i32* %1396, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = mul nsw i64 %1444, 1536
  store i64 %1445, i64* %RCX, align 8, !tbaa !2428
  %1446 = lshr i64 %1445, 63
  %1447 = add i64 %1445, %1441
  store i64 %1447, i64* %RAX, align 8, !tbaa !2428
  %1448 = icmp ult i64 %1447, %1441
  %1449 = icmp ult i64 %1447, %1445
  %1450 = or i1 %1448, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %73, align 1, !tbaa !2432
  %1452 = trunc i64 %1447 to i32
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453) #8
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %74, align 1, !tbaa !2446
  %1458 = xor i64 %1441, %1447
  %1459 = lshr i64 %1458, 4
  %1460 = trunc i64 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %75, align 1, !tbaa !2447
  %1462 = icmp eq i64 %1447, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %76, align 1, !tbaa !2448
  %1464 = lshr i64 %1447, 63
  %1465 = trunc i64 %1464 to i8
  store i8 %1465, i8* %77, align 1, !tbaa !2449
  %1466 = lshr i64 %1441, 63
  %1467 = xor i64 %1464, %1466
  %1468 = xor i64 %1464, %1446
  %1469 = add nuw nsw i64 %1467, %1468
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %78, align 1, !tbaa !2450
  %1472 = load i64, i64* %RBP, align 8
  %1473 = add i64 %1472, -48
  %1474 = add i64 %1700, 44
  store i64 %1474, i64* %PC, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = sext i32 %1476 to i64
  %1478 = shl nsw i64 %1477, 8
  store i64 %1478, i64* %RCX, align 8, !tbaa !2428
  %1479 = lshr i64 %1477, 55
  %1480 = and i64 %1479, 1
  %1481 = add i64 %1478, %1447
  store i64 %1481, i64* %RAX, align 8, !tbaa !2428
  %1482 = icmp ult i64 %1481, %1447
  %1483 = icmp ult i64 %1481, %1478
  %1484 = or i1 %1482, %1483
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %73, align 1, !tbaa !2432
  %1486 = trunc i64 %1481 to i32
  %1487 = and i32 %1486, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487) #8
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %74, align 1, !tbaa !2446
  %1492 = xor i64 %1447, %1481
  %1493 = lshr i64 %1492, 4
  %1494 = trunc i64 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %75, align 1, !tbaa !2447
  %1496 = icmp eq i64 %1481, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %76, align 1, !tbaa !2448
  %1498 = lshr i64 %1481, 63
  %1499 = trunc i64 %1498 to i8
  store i8 %1499, i8* %77, align 1, !tbaa !2449
  %1500 = xor i64 %1498, %1464
  %1501 = xor i64 %1498, %1480
  %1502 = add nuw nsw i64 %1500, %1501
  %1503 = icmp eq i64 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %78, align 1, !tbaa !2450
  %1505 = add i64 %1472, -56
  %1506 = add i64 %1700, 55
  store i64 %1506, i64* %PC, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RCX, align 8, !tbaa !2428
  %1510 = shl nsw i64 %1509, 2
  %1511 = add i64 %1510, %1481
  %1512 = load i32, i32* %EDX, align 4
  %1513 = add i64 %1700, 58
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1511 to i32*
  store i32 %1512, i32* %1514, align 4
  %1515 = load i64, i64* %RBP, align 8
  %1516 = add i64 %1515, -56
  %1517 = load i64, i64* %PC, align 8
  %1518 = add i64 %1517, 3
  store i64 %1518, i64* %PC, align 8
  %1519 = inttoptr i64 %1516 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = add i32 %1520, 1
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX, align 8, !tbaa !2428
  %1523 = icmp eq i32 %1520, -1
  %1524 = icmp eq i32 %1521, 0
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %73, align 1, !tbaa !2432
  %1527 = and i32 %1521, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #8
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %74, align 1, !tbaa !2446
  %1532 = xor i32 %1520, %1521
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %75, align 1, !tbaa !2447
  %1536 = icmp eq i32 %1521, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %76, align 1, !tbaa !2448
  %1538 = lshr i32 %1521, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %77, align 1, !tbaa !2449
  %1540 = lshr i32 %1520, 31
  %1541 = xor i32 %1538, %1540
  %1542 = add nuw nsw i32 %1541, %1538
  %1543 = icmp eq i32 %1542, 2
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %78, align 1, !tbaa !2450
  %1545 = add i64 %1517, 9
  store i64 %1545, i64* %PC, align 8
  store i32 %1521, i32* %1519, align 4
  %1546 = load i64, i64* %PC, align 8
  %1547 = add i64 %1546, -84
  store i64 %1547, i64* %79, align 8, !tbaa !2428
  br label %block_400b82

block_400d05:                                     ; preds = %block_400c75
  %1548 = add i64 %193, -12
  %1549 = add i64 %122, 32
  store i64 %1549, i64* %PC, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = add i32 %1551, -1
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RDX, align 8, !tbaa !2428
  %1554 = icmp eq i32 %1551, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %73, align 1, !tbaa !2432
  %1556 = and i32 %1552, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556) #8
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %74, align 1, !tbaa !2446
  %1561 = xor i32 %1551, %1552
  %1562 = lshr i32 %1561, 4
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %75, align 1, !tbaa !2447
  %1565 = icmp eq i32 %1552, 0
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %76, align 1, !tbaa !2448
  %1567 = lshr i32 %1552, 31
  %1568 = trunc i32 %1567 to i8
  store i8 %1568, i8* %77, align 1, !tbaa !2449
  %1569 = lshr i32 %1551, 31
  %1570 = xor i32 %1567, %1569
  %1571 = add nuw nsw i32 %1570, %1569
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %78, align 1, !tbaa !2450
  %1574 = sext i32 %1552 to i64
  store i64 %1574, i64* %RCX, align 8, !tbaa !2428
  %1575 = shl nsw i64 %1574, 2
  %1576 = add i64 %1575, %169
  %1577 = add i64 %122, 41
  store i64 %1577, i64* %PC, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RDX, align 8, !tbaa !2428
  %1581 = add i64 %193, -32
  %1582 = add i64 %122, 45
  store i64 %1582, i64* %PC, align 8
  %1583 = inttoptr i64 %1581 to i64*
  %1584 = load i64, i64* %1583, align 8
  store i64 %1584, i64* %RAX, align 8, !tbaa !2428
  %1585 = add i64 %193, -52
  %1586 = add i64 %122, 49
  store i64 %1586, i64* %PC, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = sext i32 %1588 to i64
  %1590 = mul nsw i64 %1589, 24
  store i64 %1590, i64* %RCX, align 8, !tbaa !2428
  %1591 = lshr i64 %1590, 63
  %1592 = add i64 %1590, %1584
  store i64 %1592, i64* %RAX, align 8, !tbaa !2428
  %1593 = icmp ult i64 %1592, %1584
  %1594 = icmp ult i64 %1592, %1590
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %73, align 1, !tbaa !2432
  %1597 = trunc i64 %1592 to i32
  %1598 = and i32 %1597, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598) #8
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %74, align 1, !tbaa !2446
  %1603 = xor i64 %1590, %1584
  %1604 = xor i64 %1603, %1592
  %1605 = lshr i64 %1604, 4
  %1606 = trunc i64 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %75, align 1, !tbaa !2447
  %1608 = icmp eq i64 %1592, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %76, align 1, !tbaa !2448
  %1610 = lshr i64 %1592, 63
  %1611 = trunc i64 %1610 to i8
  store i8 %1611, i8* %77, align 1, !tbaa !2449
  %1612 = lshr i64 %1584, 63
  %1613 = xor i64 %1610, %1612
  %1614 = xor i64 %1610, %1591
  %1615 = add nuw nsw i64 %1613, %1614
  %1616 = icmp eq i64 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %78, align 1, !tbaa !2450
  %1618 = load i64, i64* %RBP, align 8
  %1619 = add i64 %1618, -48
  %1620 = add i64 %122, 60
  store i64 %1620, i64* %PC, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = sext i32 %1622 to i64
  store i64 %1623, i64* %RCX, align 8, !tbaa !2428
  %1624 = shl nsw i64 %1623, 2
  %1625 = add i64 %1624, %1592
  %1626 = add i64 %122, 63
  store i64 %1626, i64* %PC, align 8
  %1627 = inttoptr i64 %1625 to i32*
  store i32 %1579, i32* %1627, align 4
  %1628 = load i64, i64* %RBP, align 8
  %1629 = add i64 %1628, -48
  %1630 = load i64, i64* %PC, align 8
  %1631 = add i64 %1630, 3
  store i64 %1631, i64* %PC, align 8
  %1632 = inttoptr i64 %1629 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = add i32 %1633, 1
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX, align 8, !tbaa !2428
  %1636 = icmp eq i32 %1633, -1
  %1637 = icmp eq i32 %1634, 0
  %1638 = or i1 %1636, %1637
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %73, align 1, !tbaa !2432
  %1640 = and i32 %1634, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640) #8
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %74, align 1, !tbaa !2446
  %1645 = xor i32 %1633, %1634
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %75, align 1, !tbaa !2447
  %1649 = icmp eq i32 %1634, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %76, align 1, !tbaa !2448
  %1651 = lshr i32 %1634, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %77, align 1, !tbaa !2449
  %1653 = lshr i32 %1633, 31
  %1654 = xor i32 %1651, %1653
  %1655 = add nuw nsw i32 %1654, %1651
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %78, align 1, !tbaa !2450
  %1658 = add i64 %1630, 9
  store i64 %1658, i64* %PC, align 8
  store i32 %1634, i32* %1632, align 4
  %1659 = load i64, i64* %PC, align 8
  %1660 = add i64 %1659, -302
  store i64 %1660, i64* %79, align 8, !tbaa !2428
  br label %block_400c1f

block_400b82:                                     ; preds = %block_400b93, %block_400b7b
  %1661 = phi i64 [ %1547, %block_400b93 ], [ %.pre7, %block_400b7b ]
  %1662 = load i64, i64* %RBP, align 8
  %1663 = add i64 %1662, -56
  %1664 = add i64 %1661, 3
  store i64 %1664, i64* %PC, align 8
  %1665 = inttoptr i64 %1663 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RAX, align 8, !tbaa !2428
  %1668 = add i64 %1662, -12
  %1669 = add i64 %1661, 6
  store i64 %1669, i64* %PC, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = add i32 %1671, -1
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RCX, align 8, !tbaa !2428
  %1674 = lshr i32 %1672, 31
  %1675 = sub i32 %1666, %1672
  %1676 = icmp ult i32 %1666, %1672
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %73, align 1, !tbaa !2432
  %1678 = and i32 %1675, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678) #8
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %74, align 1, !tbaa !2446
  %1683 = xor i32 %1672, %1666
  %1684 = xor i32 %1683, %1675
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %75, align 1, !tbaa !2447
  %1688 = icmp eq i32 %1675, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %76, align 1, !tbaa !2448
  %1690 = lshr i32 %1675, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %77, align 1, !tbaa !2449
  %1692 = lshr i32 %1666, 31
  %1693 = xor i32 %1674, %1692
  %1694 = xor i32 %1690, %1692
  %1695 = add nuw nsw i32 %1694, %1693
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %78, align 1, !tbaa !2450
  %1698 = icmp ne i8 %1691, 0
  %1699 = xor i1 %1698, %1696
  %.demorgan17 = or i1 %1688, %1699
  %.v18 = select i1 %.demorgan17, i64 17, i64 89
  %1700 = add i64 %1661, %.v18
  store i64 %1700, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan17, label %block_400b93, label %block_400bdb

block_400c01:                                     ; preds = %block_400b53
  %1701 = add i64 %322, 7
  store i64 %1701, i64* %PC, align 8
  store i32 0, i32* %287, align 4
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %R14, align 8
  %12 = load i64, i64* %PC, align 8
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC, align 8
  %14 = add i64 %8, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %11, i64* %15, align 8
  %16 = load i64, i64* %RDX, align 8
  %17 = load i64, i64* %PC, align 8
  store i64 %16, i64* %R15, align 8, !tbaa !2428
  %18 = load i64, i64* %R13, align 8
  %19 = add i64 %17, 5
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %8, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %R12, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %PC, align 8
  %25 = add i64 %8, -32
  %26 = inttoptr i64 %25 to i64*
  store i64 %22, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %8, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
  %33 = load i64, i64* %RBX, align 8
  %34 = add i64 %32, 8
  store i64 %34, i64* %PC, align 8
  %35 = add i64 %8, -48
  %36 = inttoptr i64 %35 to i64*
  store i64 %33, i64* %36, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %38 = load i32, i32* %EDI, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %PC, align 8
  store i64 %39, i64* %37, align 8, !tbaa !2428
  %41 = load i64, i64* %RSI, align 8
  store i64 %41, i64* %R14, align 8, !tbaa !2428
  %42 = load i64, i64* %RBP, align 8
  %43 = load i64, i64* %R12, align 8
  %44 = sub i64 %42, %43
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %51 = lshr i64 %44, 2
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  %54 = ashr i64 %44, 3
  store i64 %54, i64* %RBP, align 8, !tbaa !2428
  store i8 %53, i8* %45, align 1, !tbaa !2454
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2454
  store i8 0, i8* %47, align 1, !tbaa !2454
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2454
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2454
  store i8 0, i8* %50, align 1, !tbaa !2454
  %65 = add i64 %40, -3803
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
  %71 = load i64, i64* %RBP, align 8
  %72 = load i64, i64* %PC, align 8
  store i8 0, i8* %45, align 1, !tbaa !2432
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %46, align 1, !tbaa !2446
  %79 = icmp eq i64 %71, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %48, align 1, !tbaa !2448
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_401436, label %block_401416

block_401436:                                     ; preds = %block_401420, %block_4013e0
  %84 = phi i64 [ %83, %block_4013e0 ], [ %182, %block_401420 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_4013e0 ], [ %152, %block_401420 ]
  %85 = load i64, i64* %RSP, align 8
  %86 = add i64 %85, 8
  store i64 %86, i64* %RSP, align 8, !tbaa !2428
  %87 = icmp ugt i64 %85, -9
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %45, align 1, !tbaa !2432
  %89 = trunc i64 %86 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %46, align 1, !tbaa !2446
  %95 = xor i64 %85, %86
  %96 = lshr i64 %95, 4
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %47, align 1, !tbaa !2447
  %99 = icmp eq i64 %86, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %48, align 1, !tbaa !2448
  %101 = lshr i64 %86, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %49, align 1, !tbaa !2449
  %103 = lshr i64 %85, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %50, align 1, !tbaa !2450
  %108 = add i64 %84, 5
  store i64 %108, i64* %PC, align 8
  %109 = add i64 %85, 16
  %110 = inttoptr i64 %86 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RBX, align 8, !tbaa !2428
  store i64 %109, i64* %7, align 8, !tbaa !2428
  %112 = add i64 %84, 6
  store i64 %112, i64* %PC, align 8
  %113 = add i64 %85, 24
  %114 = inttoptr i64 %109 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RBP, align 8, !tbaa !2428
  store i64 %113, i64* %7, align 8, !tbaa !2428
  %116 = add i64 %84, 8
  store i64 %116, i64* %PC, align 8
  %117 = add i64 %85, 32
  %118 = inttoptr i64 %113 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %R12, align 8, !tbaa !2428
  store i64 %117, i64* %7, align 8, !tbaa !2428
  %120 = add i64 %84, 10
  store i64 %120, i64* %PC, align 8
  %121 = add i64 %85, 40
  %122 = inttoptr i64 %117 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %R13, align 8, !tbaa !2428
  store i64 %121, i64* %7, align 8, !tbaa !2428
  %124 = add i64 %84, 12
  store i64 %124, i64* %PC, align 8
  %125 = add i64 %85, 48
  %126 = inttoptr i64 %121 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %R14, align 8, !tbaa !2428
  store i64 %125, i64* %7, align 8, !tbaa !2428
  %128 = add i64 %84, 14
  store i64 %128, i64* %PC, align 8
  %129 = add i64 %85, 56
  %130 = inttoptr i64 %125 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %R15, align 8, !tbaa !2428
  store i64 %129, i64* %7, align 8, !tbaa !2428
  %132 = add i64 %84, 15
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %129 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %69, align 8, !tbaa !2428
  %135 = add i64 %85, 64
  store i64 %135, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401416:                                     ; preds = %block_4013e0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401420

block_401420:                                     ; preds = %block_401420, %block_401416
  %137 = phi i64 [ 0, %block_401416 ], [ %155, %block_401420 ]
  %138 = phi i64 [ %136, %block_401416 ], [ %182, %block_401420 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401416 ], [ %152, %block_401420 ]
  %139 = load i64, i64* %R15, align 8
  store i64 %139, i64* %RDX, align 8, !tbaa !2428
  %140 = load i64, i64* %R14, align 8
  store i64 %140, i64* %RSI, align 8, !tbaa !2428
  %141 = load i32, i32* %R13D, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RDI, align 8, !tbaa !2428
  %143 = load i64, i64* %R12, align 8
  %144 = shl i64 %137, 3
  %145 = add i64 %144, %143
  %146 = add i64 %138, 13
  store i64 %146, i64* %PC, align 8
  %147 = load i64, i64* %7, align 8, !tbaa !2428
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  store i64 %148, i64* %7, align 8, !tbaa !2428
  %150 = inttoptr i64 %145 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %69, align 8, !tbaa !2428
  %152 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %151, %struct.Memory* %MEMORY.1)
  %153 = load i64, i64* %RBX, align 8
  %154 = load i64, i64* %PC, align 8
  %155 = add i64 %153, 1
  store i64 %155, i64* %RBX, align 8, !tbaa !2428
  %156 = lshr i64 %155, 63
  %157 = load i64, i64* %RBP, align 8
  %158 = sub i64 %157, %155
  %159 = icmp ult i64 %157, %155
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %45, align 1, !tbaa !2432
  %161 = trunc i64 %158 to i32
  %162 = and i32 %161, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162) #8
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %46, align 1, !tbaa !2446
  %167 = xor i64 %155, %157
  %168 = xor i64 %167, %158
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %47, align 1, !tbaa !2447
  %172 = icmp eq i64 %158, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %48, align 1, !tbaa !2448
  %174 = lshr i64 %158, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %49, align 1, !tbaa !2449
  %176 = lshr i64 %157, 63
  %177 = xor i64 %156, %176
  %178 = xor i64 %174, %176
  %179 = add nuw nsw i64 %178, %177
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %50, align 1, !tbaa !2450
  %.v1 = select i1 %172, i64 9, i64 -13
  %182 = add i64 %154, %.v1
  store i64 %182, i64* %69, align 8, !tbaa !2428
  br i1 %172, label %block_401436, label %block_401420
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_400520.block_400532_crit_edge, label %block_400530

block_400520.block_400532_crit_edge:              ; preds = %block_400520
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_400532

block_400530:                                     ; preds = %block_400520
  %24 = add i64 %23, 2
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %26 = add i64 %3, -16
  %27 = inttoptr i64 %26 to i64*
  store i64 %24, i64* %27, align 8
  store i64 %26, i64* %25, align 8, !tbaa !2428
  store i64 %11, i64* %22, align 8, !tbaa !2428
  %28 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400532

block_400532:                                     ; preds = %block_400520.block_400532_crit_edge, %block_400530
  %.pre-phi = phi i64* [ %.pre2, %block_400520.block_400532_crit_edge ], [ %25, %block_400530 ]
  %29 = phi i64 [ %23, %block_400520.block_400532_crit_edge ], [ %.pre1, %block_400530 ]
  %30 = phi i64 [ %4, %block_400520.block_400532_crit_edge ], [ %.pre, %block_400530 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400520.block_400532_crit_edge ], [ %28, %block_400530 ]
  %31 = add i64 %30, 8
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  %32 = icmp ugt i64 %30, -9
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %5, align 1, !tbaa !2432
  %34 = trunc i64 %31 to i32
  %35 = and i32 %34, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #8
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, i8* %6, align 1, !tbaa !2446
  %40 = xor i64 %30, %31
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %7, align 1, !tbaa !2447
  %44 = icmp eq i64 %31, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %8, align 1, !tbaa !2448
  %46 = lshr i64 %31, 63
  %47 = trunc i64 %46 to i8
  store i8 %47, i8* %9, align 1, !tbaa !2449
  %48 = lshr i64 %30, 63
  %49 = xor i64 %46, %48
  %50 = add nuw nsw i64 %49, %46
  %51 = icmp eq i64 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %10, align 1, !tbaa !2450
  %53 = add i64 %29, 5
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %31 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %22, align 8, !tbaa !2428
  %56 = add i64 %30, 16
  store i64 %56, i64* %.pre-phi, align 8, !tbaa !2428
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_400669, label %block_400680

block_400680:                                     ; preds = %block_400660
  %20 = add i64 %19, 2
  store i64 %20, i64* %PC, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !2428
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %18, align 8, !tbaa !2428
  %25 = add i64 %22, 8
  store i64 %25, i64* %21, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400669:                                     ; preds = %block_400660
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %19, 1
  store i64 %27, i64* %PC, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2428
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %26, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 %30, i64* %RBP, align 8, !tbaa !2428
  %33 = add i64 %32, -122
  %34 = add i64 %32, 8
  %35 = add i64 %29, -16
  %36 = inttoptr i64 %35 to i64*
  store i64 %34, i64* %36, align 8
  store i64 %35, i64* %28, align 8, !tbaa !2428
  store i64 %33, i64* %18, align 8, !tbaa !2428
  %37 = tail call %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %39 = add i64 %38, 8
  store i64 %39, i64* %PC, align 8
  %40 = load i64, i64* %28, align 8, !tbaa !2428
  %41 = add i64 %40, 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %RBP, align 8, !tbaa !2428
  store i64 %41, i64* %28, align 8, !tbaa !2428
  %44 = add i64 %38, 9
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %41 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %18, align 8, !tbaa !2428
  %47 = add i64 %40, 16
  store i64 %47, i64* %28, align 8, !tbaa !2428
  ret %struct.Memory* %37
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
  store i64 %3, i64* %RSP, align 8, !tbaa !2428
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = inttoptr i64 %3 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %33, align 8, !tbaa !2428
  %37 = add i64 %3, 8
  store i64 %37, i64* %34, align 8, !tbaa !2428
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
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a5a

block_400a5a:                                     ; preds = %block_400af2, %block_400a40
  %49 = phi i64 [ %.pre, %block_400a40 ], [ %450, %block_400af2 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a40 ], [ %MEMORY.1, %block_400af2 ]
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -36
  %52 = add i64 %49, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = add i64 %50, -4
  %57 = add i64 %49, 6
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %54, %59
  %61 = icmp ult i32 %54, %59
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %39, align 1, !tbaa !2432
  %63 = and i32 %60, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #8
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %40, align 1, !tbaa !2446
  %68 = xor i32 %59, %54
  %69 = xor i32 %68, %60
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %41, align 1, !tbaa !2447
  %73 = icmp eq i32 %60, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %42, align 1, !tbaa !2448
  %75 = lshr i32 %60, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %43, align 1, !tbaa !2449
  %77 = lshr i32 %54, 31
  %78 = lshr i32 %59, 31
  %79 = xor i32 %78, %77
  %80 = xor i32 %75, %77
  %81 = add nuw nsw i32 %80, %79
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %44, align 1, !tbaa !2450
  %84 = icmp ne i8 %76, 0
  %85 = xor i1 %84, %82
  %.v = select i1 %85, i64 12, i64 171
  %86 = add i64 %49, %.v
  store i64 %86, i64* %45, align 8, !tbaa !2428
  br i1 %85, label %block_400a66, label %block_400b05

block_400a79:                                     ; preds = %block_400a6d
  %87 = add i64 %488, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %489 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX, align 8, !tbaa !2428
  %92 = icmp eq i32 %89, -1
  %93 = icmp eq i32 %90, 0
  %94 = or i1 %92, %93
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %39, align 1, !tbaa !2432
  %96 = and i32 %90, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #8
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %40, align 1, !tbaa !2446
  %101 = xor i32 %89, %90
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %41, align 1, !tbaa !2447
  %105 = icmp eq i32 %90, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %42, align 1, !tbaa !2448
  %107 = lshr i32 %90, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %43, align 1, !tbaa !2449
  %109 = lshr i32 %89, 31
  %110 = xor i32 %107, %109
  %111 = add nuw nsw i32 %110, %107
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %44, align 1, !tbaa !2450
  %114 = add i64 %488, 9
  store i64 %114, i64* %PC, align 8
  %115 = load i32, i32* %455, align 4
  %116 = add i32 %115, 1
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  %118 = sext i32 %90 to i64
  %119 = sext i32 %116 to i64
  %120 = mul nsw i64 %119, %118
  %121 = trunc i64 %120 to i32
  %122 = and i64 %120, 4294967295
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = shl i64 %120, 32
  %124 = ashr exact i64 %123, 32
  %125 = icmp ne i64 %124, %120
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %39, align 1, !tbaa !2432
  %127 = and i32 %121, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127) #8
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  %132 = lshr i32 %121, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %43, align 1, !tbaa !2449
  store i8 %126, i8* %44, align 1, !tbaa !2450
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -16
  %136 = add i64 %488, 19
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = add i64 %134, -36
  %140 = add i64 %488, 23
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, 24
  store i64 %144, i64* %RSI, align 8, !tbaa !2428
  %145 = lshr i64 %144, 63
  %146 = add i64 %144, %138
  store i64 %146, i64* %RDX, align 8, !tbaa !2428
  %147 = icmp ult i64 %146, %138
  %148 = icmp ult i64 %146, %144
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %39, align 1, !tbaa !2432
  %151 = trunc i64 %146 to i32
  %152 = and i32 %151, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #8
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %40, align 1, !tbaa !2446
  %157 = xor i64 %144, %138
  %158 = xor i64 %157, %146
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %41, align 1, !tbaa !2447
  %162 = icmp eq i64 %146, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %42, align 1, !tbaa !2448
  %164 = lshr i64 %146, 63
  %165 = trunc i64 %164 to i8
  store i8 %165, i8* %43, align 1, !tbaa !2449
  %166 = lshr i64 %138, 63
  %167 = xor i64 %164, %166
  %168 = xor i64 %164, %145
  %169 = add nuw nsw i64 %167, %168
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %44, align 1, !tbaa !2450
  %172 = add i64 %134, -40
  %173 = add i64 %488, 34
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RSI, align 8, !tbaa !2428
  %177 = shl nsw i64 %176, 2
  %178 = add i64 %177, %146
  %179 = load i32, i32* %EAX, align 4
  %180 = add i64 %488, 37
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -36
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = add i64 %182, -40
  %190 = add i64 %184, 6
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %187, %192
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = icmp ult i32 %187, %192
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %39, align 1, !tbaa !2432
  %197 = and i32 %193, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197) #8
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %40, align 1, !tbaa !2446
  %202 = xor i32 %192, %187
  %203 = xor i32 %202, %193
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %41, align 1, !tbaa !2447
  %207 = icmp eq i32 %193, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %42, align 1, !tbaa !2448
  %209 = lshr i32 %193, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %43, align 1, !tbaa !2449
  %211 = lshr i32 %187, 31
  %212 = lshr i32 %192, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %44, align 1, !tbaa !2450
  %218 = sext i32 %193 to i64
  %219 = lshr i64 %218, 32
  store i64 %219, i64* %46, align 8, !tbaa !2428
  %220 = add i64 %182, -4
  %221 = add i64 %184, 10
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = shl nuw i64 %219, 32
  %226 = or i64 %225, %194
  %227 = sdiv i64 %226, %224
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = icmp eq i64 %227, %229
  br i1 %230, label %233, label %231

; <label>:231:                                    ; preds = %block_400a79
  %232 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %221, %struct.Memory* %MEMORY.1) #9
  %.pre2 = load i64, i64* %RBP, align 8
  %.pre3 = load i64, i64* %PC, align 8
  %.pre4 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:233:                                    ; preds = %block_400a79
  %234 = srem i64 %226, %224
  %235 = and i64 %227, 4294967295
  store i64 %235, i64* %47, align 8, !tbaa !2428
  %236 = and i64 %234, 4294967295
  store i64 %236, i64* %48, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %237 = trunc i64 %227 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %233, %231
  %238 = phi i32 [ %.pre4, %231 ], [ %237, %233 ]
  %239 = phi i64 [ %.pre3, %231 ], [ %221, %233 ]
  %240 = phi i64 [ %.pre2, %231 ], [ %182, %233 ]
  %241 = phi %struct.Memory* [ %232, %231 ], [ %MEMORY.1, %233 ]
  %242 = add i64 %240, -24
  %243 = add i64 %239, 4
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RSI, align 8, !tbaa !2428
  %246 = add i64 %240, -36
  %247 = add i64 %239, 8
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %250, 24
  store i64 %251, i64* %RDI, align 8, !tbaa !2428
  %252 = lshr i64 %251, 63
  %253 = add i64 %251, %245
  store i64 %253, i64* %RSI, align 8, !tbaa !2428
  %254 = icmp ult i64 %253, %245
  %255 = icmp ult i64 %253, %251
  %256 = or i1 %254, %255
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %39, align 1, !tbaa !2432
  %258 = trunc i64 %253 to i32
  %259 = and i32 %258, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #8
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %40, align 1, !tbaa !2446
  %264 = xor i64 %251, %245
  %265 = xor i64 %264, %253
  %266 = lshr i64 %265, 4
  %267 = trunc i64 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %41, align 1, !tbaa !2447
  %269 = icmp eq i64 %253, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %42, align 1, !tbaa !2448
  %271 = lshr i64 %253, 63
  %272 = trunc i64 %271 to i8
  store i8 %272, i8* %43, align 1, !tbaa !2449
  %273 = lshr i64 %245, 63
  %274 = xor i64 %271, %273
  %275 = xor i64 %271, %252
  %276 = add nuw nsw i64 %274, %275
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %44, align 1, !tbaa !2450
  %279 = add i64 %240, -40
  %280 = add i64 %239, 19
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RDI, align 8, !tbaa !2428
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %284, %253
  %286 = add i64 %239, 22
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  store i32 %238, i32* %287, align 4
  %288 = load i64, i64* %RBP, align 8
  %289 = add i64 %288, -36
  %290 = load i64, i64* %PC, align 8
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = add i64 %288, -40
  %296 = add i64 %290, 6
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = add i32 %298, -1
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = sext i32 %293 to i64
  %302 = sext i32 %299 to i64
  %303 = mul nsw i64 %302, %301
  %304 = trunc i64 %303 to i32
  %305 = and i64 %303, 4294967295
  store i64 %305, i64* %RAX, align 8, !tbaa !2428
  %306 = shl i64 %303, 32
  %307 = ashr exact i64 %306, 32
  %308 = icmp ne i64 %307, %303
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %39, align 1, !tbaa !2432
  %310 = and i32 %304, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310) #8
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  %315 = lshr i32 %304, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %43, align 1, !tbaa !2449
  store i8 %309, i8* %44, align 1, !tbaa !2450
  %sext = shl i64 %303, 32
  %317 = ashr exact i64 %sext, 32
  %318 = lshr i64 %317, 32
  store i64 %318, i64* %46, align 8, !tbaa !2428
  %319 = add i64 %288, -4
  %320 = add i64 %290, 16
  store i64 %320, i64* %PC, align 8
  %321 = and i64 %303, 4294967295
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = shl nuw i64 %318, 32
  %326 = or i64 %325, %321
  %327 = sdiv i64 %326, %324
  %328 = shl i64 %327, 32
  %329 = ashr exact i64 %328, 32
  %330 = icmp eq i64 %327, %329
  br i1 %330, label %333, label %331

; <label>:331:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %332 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %320, %struct.Memory* %241) #9
  %.pre5 = load i64, i64* %PC, align 8
  %.pre6 = load i32, i32* %EAX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:333:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %334 = srem i64 %326, %324
  %335 = and i64 %327, 4294967295
  store i64 %335, i64* %47, align 8, !tbaa !2428
  %336 = and i64 %334, 4294967295
  store i64 %336, i64* %48, align 8, !tbaa !2428
  store i8 0, i8* %39, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2446
  store i8 0, i8* %41, align 1, !tbaa !2447
  store i8 0, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  store i8 0, i8* %44, align 1, !tbaa !2450
  %337 = trunc i64 %327 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %333, %331
  %338 = phi i32 [ %.pre6, %331 ], [ %337, %333 ]
  %339 = phi i64 [ %.pre5, %331 ], [ %320, %333 ]
  %340 = phi %struct.Memory* [ %332, %331 ], [ %241, %333 ]
  %341 = load i64, i64* %RBP, align 8
  %342 = add i64 %341, -32
  %343 = add i64 %339, 4
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RSI, align 8, !tbaa !2428
  %346 = add i64 %341, -36
  %347 = add i64 %339, 8
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = mul nsw i64 %350, 24
  store i64 %351, i64* %RDI, align 8, !tbaa !2428
  %352 = lshr i64 %351, 63
  %353 = add i64 %351, %345
  store i64 %353, i64* %RSI, align 8, !tbaa !2428
  %354 = icmp ult i64 %353, %345
  %355 = icmp ult i64 %353, %351
  %356 = or i1 %354, %355
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %39, align 1, !tbaa !2432
  %358 = trunc i64 %353 to i32
  %359 = and i32 %358, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359) #8
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %40, align 1, !tbaa !2446
  %364 = xor i64 %351, %345
  %365 = xor i64 %364, %353
  %366 = lshr i64 %365, 4
  %367 = trunc i64 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %41, align 1, !tbaa !2447
  %369 = icmp eq i64 %353, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %42, align 1, !tbaa !2448
  %371 = lshr i64 %353, 63
  %372 = trunc i64 %371 to i8
  store i8 %372, i8* %43, align 1, !tbaa !2449
  %373 = lshr i64 %345, 63
  %374 = xor i64 %371, %373
  %375 = xor i64 %371, %352
  %376 = add nuw nsw i64 %374, %375
  %377 = icmp eq i64 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %44, align 1, !tbaa !2450
  %379 = add i64 %341, -40
  %380 = add i64 %339, 19
  store i64 %380, i64* %PC, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  store i64 %383, i64* %RDI, align 8, !tbaa !2428
  %384 = shl nsw i64 %383, 2
  %385 = add i64 %384, %353
  %386 = add i64 %339, 22
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i32*
  store i32 %338, i32* %387, align 4
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -40
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, 1
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = icmp eq i32 %393, -1
  %397 = icmp eq i32 %394, 0
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %39, align 1, !tbaa !2432
  %400 = and i32 %394, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400) #8
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %40, align 1, !tbaa !2446
  %405 = xor i32 %393, %394
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %41, align 1, !tbaa !2447
  %409 = icmp eq i32 %394, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %42, align 1, !tbaa !2448
  %411 = lshr i32 %394, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %43, align 1, !tbaa !2449
  %413 = lshr i32 %393, 31
  %414 = xor i32 %411, %413
  %415 = add nuw nsw i32 %414, %411
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %44, align 1, !tbaa !2450
  %418 = add i64 %390, 9
  store i64 %418, i64* %PC, align 8
  store i32 %394, i32* %392, align 4
  %419 = load i64, i64* %PC, align 8
  %420 = add i64 %419, -128
  store i64 %420, i64* %45, align 8, !tbaa !2428
  br label %block_400a6d

block_400af2:                                     ; preds = %block_400a6d
  %421 = add i64 %488, 8
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %489 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, 1
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RAX, align 8, !tbaa !2428
  %426 = icmp eq i32 %423, -1
  %427 = icmp eq i32 %424, 0
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %39, align 1, !tbaa !2432
  %430 = and i32 %424, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430) #8
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %40, align 1, !tbaa !2446
  %435 = xor i32 %423, %424
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %41, align 1, !tbaa !2447
  %439 = icmp eq i32 %424, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %42, align 1, !tbaa !2448
  %441 = lshr i32 %424, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %43, align 1, !tbaa !2449
  %443 = lshr i32 %423, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %441
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %44, align 1, !tbaa !2450
  %448 = add i64 %488, 14
  store i64 %448, i64* %PC, align 8
  store i32 %424, i32* %422, align 4
  %449 = load i64, i64* %PC, align 8
  %450 = add i64 %449, -166
  store i64 %450, i64* %45, align 8, !tbaa !2428
  br label %block_400a5a

block_400a6d:                                     ; preds = %block_400a66, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %451 = phi i64 [ %.pre1, %block_400a66 ], [ %420, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400a66 ], [ %340, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ]
  %452 = load i64, i64* %RBP, align 8
  %453 = add i64 %452, -40
  %454 = add i64 %451, 3
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %458 = add i64 %452, -4
  %459 = add i64 %451, 6
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = sub i32 %456, %461
  %463 = icmp ult i32 %456, %461
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %39, align 1, !tbaa !2432
  %465 = and i32 %462, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465) #8
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %40, align 1, !tbaa !2446
  %470 = xor i32 %461, %456
  %471 = xor i32 %470, %462
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %41, align 1, !tbaa !2447
  %475 = icmp eq i32 %462, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %42, align 1, !tbaa !2448
  %477 = lshr i32 %462, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %43, align 1, !tbaa !2449
  %479 = lshr i32 %456, 31
  %480 = lshr i32 %461, 31
  %481 = xor i32 %480, %479
  %482 = xor i32 %477, %479
  %483 = add nuw nsw i32 %482, %481
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %44, align 1, !tbaa !2450
  %486 = icmp ne i8 %478, 0
  %487 = xor i1 %486, %484
  %.v7 = select i1 %487, i64 12, i64 133
  %488 = add i64 %451, %.v7
  store i64 %488, i64* %45, align 8, !tbaa !2428
  %489 = add i64 %452, -36
  br i1 %487, label %block_400a79, label %block_400af2

block_400a66:                                     ; preds = %block_400a5a
  %490 = add i64 %50, -40
  %491 = add i64 %86, 7
  store i64 %491, i64* %PC, align 8
  %492 = inttoptr i64 %490 to i32*
  store i32 0, i32* %492, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400a6d

block_400b05:                                     ; preds = %block_400a5a
  %493 = add i64 %86, 1
  store i64 %493, i64* %PC, align 8
  %494 = load i64, i64* %7, align 8, !tbaa !2428
  %495 = add i64 %494, 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RBP, align 8, !tbaa !2428
  store i64 %495, i64* %7, align 8, !tbaa !2428
  %498 = add i64 %86, 2
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %495 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %45, align 8, !tbaa !2428
  %501 = add i64 %494, 16
  store i64 %501, i64* %7, align 8, !tbaa !2428
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %23 = inttoptr i64 %7 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %22, align 8, !tbaa !2428
  %25 = add i64 %7, 8
  store i64 %25, i64* %6, align 8, !tbaa !2428
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_400658, label %block_400643

block_400658:                                     ; preds = %block_400643, %block_400620
  %36 = phi i64 [ %46, %block_400643 ], [ %35, %block_400620 ]
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC, align 8
  %38 = load i64, i64* %5, align 8, !tbaa !2428
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  store i64 %39, i64* %5, align 8, !tbaa !2428
  %42 = add i64 %36, 2
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %39 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %34, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400643:                                     ; preds = %block_400620
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %46 = add i64 %35, 21
  store i64 %46, i64* %34, align 8, !tbaa !2428
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 32
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
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -12
  %45 = load i32, i32* %ESI, align 4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  %55 = add i64 %49, -24
  %56 = add i64 %51, 8
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -12
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %RDI, align 8, !tbaa !2428
  %65 = add i64 %58, -24
  %66 = add i64 %60, 9
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = sext i32 %63 to i128
  %70 = and i128 %69, -18446744073709551616
  %71 = sext i64 %68 to i128
  %72 = and i128 %71, -18446744073709551616
  %73 = zext i64 %64 to i128
  %74 = or i128 %70, %73
  %75 = zext i64 %68 to i128
  %76 = or i128 %72, %75
  %77 = mul nsw i128 %76, %74
  %78 = trunc i128 %77 to i64
  store i64 %78, i64* %RDI, align 8, !tbaa !2428
  %79 = sext i64 %78 to i128
  %80 = icmp ne i128 %79, %77
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %14, align 1, !tbaa !2432
  %82 = trunc i128 %77 to i32
  %83 = and i32 %82, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #8
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  %88 = lshr i64 %78, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %32, align 1, !tbaa !2449
  store i8 %81, i8* %38, align 1, !tbaa !2450
  %90 = add i64 %60, 13
  store i64 %90, i64* %PC, align 8
  store i64 %78, i64* %67, align 8
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -24
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %97 = add i64 %93, 28
  %98 = add i64 %93, 9
  %99 = load i64, i64* %6, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %6, align 8, !tbaa !2428
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %97, i64* %102, align 8, !tbaa !2428
  %103 = tail call %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* nonnull %0, i64 %97, %struct.Memory* %2)
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -32
  %106 = load i64, i64* %RAX, align 8
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -32
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = load i64, i64* %RSP, align 8
  %117 = add i64 %116, 32
  store i64 %117, i64* %RSP, align 8, !tbaa !2428
  %118 = icmp ugt i64 %116, -33
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %14, align 1, !tbaa !2432
  %120 = trunc i64 %117 to i32
  %121 = and i32 %120, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121) #8
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1, !tbaa !2446
  %126 = xor i64 %116, %117
  %127 = lshr i64 %126, 4
  %128 = trunc i64 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %26, align 1, !tbaa !2447
  %130 = icmp eq i64 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %29, align 1, !tbaa !2448
  %132 = lshr i64 %117, 63
  %133 = trunc i64 %132 to i8
  store i8 %133, i8* %32, align 1, !tbaa !2449
  %134 = lshr i64 %116, 63
  %135 = xor i64 %132, %134
  %136 = add nuw nsw i64 %135, %132
  %137 = icmp eq i64 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1, !tbaa !2450
  %139 = add i64 %112, 9
  store i64 %139, i64* %PC, align 8
  %140 = add i64 %116, 40
  %141 = inttoptr i64 %117 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RBP, align 8, !tbaa !2428
  store i64 %140, i64* %6, align 8, !tbaa !2428
  %143 = add i64 %112, 10
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %140 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %102, align 8, !tbaa !2428
  %146 = add i64 %116, 48
  store i64 %146, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %103
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -24
  %13 = icmp ult i64 %9, 16
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2446
  %23 = xor i64 %9, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %41 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %42 = bitcast %union.VectorReg* %4 to double*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %45 = fsub double %41, %44
  store double %45, double* %42, align 1, !tbaa !2452
  store i64 0, i64* %43, align 1, !tbaa !2452
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %46 = add i64 %11, -545
  %47 = add i64 %11, 42
  %48 = add i64 %8, -32
  %49 = inttoptr i64 %48 to i64*
  store i64 %47, i64* %49, align 8
  store i64 %48, i64* %7, align 8, !tbaa !2428
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %46, i64* %50, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_6020e0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -4
  %54 = load i32, i32* %EAX, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RSP, align 8
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %58, 16
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  %61 = icmp ugt i64 %58, -17
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %15, align 1, !tbaa !2432
  %63 = trunc i64 %60 to i32
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #8
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %22, align 1, !tbaa !2446
  %69 = xor i64 %58, 16
  %70 = xor i64 %69, %60
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %28, align 1, !tbaa !2447
  %74 = icmp eq i64 %60, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %31, align 1, !tbaa !2448
  %76 = lshr i64 %60, 63
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %34, align 1, !tbaa !2449
  %78 = lshr i64 %58, 63
  %79 = xor i64 %76, %78
  %80 = add nuw nsw i64 %79, %76
  %81 = icmp eq i64 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %40, align 1, !tbaa !2450
  %83 = add i64 %59, 5
  store i64 %83, i64* %PC, align 8
  %84 = add i64 %58, 24
  %85 = inttoptr i64 %60 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RBP, align 8, !tbaa !2428
  store i64 %84, i64* %7, align 8, !tbaa !2428
  %87 = add i64 %59, 6
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %84 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %50, align 8, !tbaa !2428
  %90 = add i64 %58, 32
  store i64 %90, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %51
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6020e8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8, !tbaa !2428
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10, i64* %14, align 8, !tbaa !2428
  %15 = tail call %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %PC, align 8
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, 8
  %20 = inttoptr i64 %18 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %RBP, align 8, !tbaa !2428
  store i64 %19, i64* %5, align 8, !tbaa !2428
  %22 = add i64 %16, 2
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8, !tbaa !2428
  %25 = add i64 %18, 16
  store i64 %25, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %15
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -56
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 48
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, 16
  %26 = xor i64 %25, %14
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2449
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2450
  %43 = add i64 %10, -12
  %44 = load i32, i32* %EDI, align 4
  %45 = add i64 %13, 10
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -16
  %49 = load i64, i64* %RSI, align 8
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -20
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 7
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %59 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %62 = bitcast %union.anon* %61 to i32*
  %63 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012f6

block_40139f:                                     ; preds = %block_401309
  %65 = add i64 %214, -20
  %66 = add i64 %250, 8
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, 1
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = icmp eq i32 %68, -1
  %72 = icmp eq i32 %69, 0
  %73 = or i1 %71, %72
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %17, align 1, !tbaa !2432
  %75 = and i32 %69, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75) #8
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %24, align 1, !tbaa !2446
  %80 = xor i32 %68, %69
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %30, align 1, !tbaa !2447
  %84 = icmp eq i32 %69, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %33, align 1, !tbaa !2448
  %86 = lshr i32 %69, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %36, align 1, !tbaa !2449
  %88 = lshr i32 %68, 31
  %89 = xor i32 %86, %88
  %90 = add nuw nsw i32 %89, %86
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %42, align 1, !tbaa !2450
  %93 = add i64 %250, 14
  store i64 %93, i64* %PC, align 8
  store i32 %69, i32* %67, align 4
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, -183
  store i64 %95, i64* %58, align 8, !tbaa !2428
  br label %block_4012f6

block_4012f6:                                     ; preds = %block_40139f, %block_4012e0
  %96 = phi i64 [ %.pre, %block_4012e0 ], [ %95, %block_40139f ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4012e0 ], [ %MEMORY.2, %block_40139f ]
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -20
  %99 = add i64 %96, 3
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = add i64 %97, -4
  %104 = add i64 %96, 6
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %101, %106
  %108 = icmp ult i32 %101, %106
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %17, align 1, !tbaa !2432
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %24, align 1, !tbaa !2446
  %115 = xor i32 %106, %101
  %116 = xor i32 %115, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %30, align 1, !tbaa !2447
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %33, align 1, !tbaa !2448
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %36, align 1, !tbaa !2449
  %124 = lshr i32 %101, 31
  %125 = lshr i32 %106, 31
  %126 = xor i32 %125, %124
  %127 = xor i32 %122, %124
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %42, align 1, !tbaa !2450
  %131 = icmp ne i8 %123, 0
  %132 = xor i1 %131, %129
  %.v = select i1 %132, i64 12, i64 188
  %133 = add i64 %96, %.v
  store i64 %133, i64* %58, align 8, !tbaa !2428
  br i1 %132, label %block_401302, label %block_4013b2

block_40138c:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401370
  %134 = phi i64 [ %413, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre4, %block_401370 ]
  %MEMORY.1 = phi %struct.Memory* [ %403, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %420, %block_401370 ]
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -24
  %137 = add i64 %134, 8
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
  store i8 %145, i8* %17, align 1, !tbaa !2432
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #8
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %24, align 1, !tbaa !2446
  %151 = xor i32 %139, %140
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %30, align 1, !tbaa !2447
  %155 = icmp eq i32 %140, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %33, align 1, !tbaa !2448
  %157 = lshr i32 %140, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %36, align 1, !tbaa !2449
  %159 = lshr i32 %139, 31
  %160 = xor i32 %157, %159
  %161 = add nuw nsw i32 %160, %157
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %42, align 1, !tbaa !2450
  %164 = add i64 %134, 14
  store i64 %164, i64* %PC, align 8
  store i32 %140, i32* %138, align 4
  %165 = load i64, i64* %PC, align 8
  %166 = add i64 %165, -145
  store i64 %166, i64* %58, align 8, !tbaa !2428
  br label %block_401309

block_4013b2:                                     ; preds = %block_4012f6
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %167 = load i64, i64* @stderr, align 32
  store i64 %167, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %168 = add i64 %133, -3634
  %169 = add i64 %133, 25
  %170 = load i64, i64* %9, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %9, align 8, !tbaa !2428
  store i64 %168, i64* %58, align 8, !tbaa !2428
  %173 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -40
  %176 = load i32, i32* %EAX, align 4
  %177 = load i64, i64* %PC, align 8
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %179, align 4
  %180 = load i64, i64* %RSP, align 8
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %180, 48
  store i64 %182, i64* %RSP, align 8, !tbaa !2428
  %183 = icmp ugt i64 %180, -49
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %17, align 1, !tbaa !2432
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #8
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %24, align 1, !tbaa !2446
  %191 = xor i64 %180, 16
  %192 = xor i64 %191, %182
  %193 = lshr i64 %192, 4
  %194 = trunc i64 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %30, align 1, !tbaa !2447
  %196 = icmp eq i64 %182, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %33, align 1, !tbaa !2448
  %198 = lshr i64 %182, 63
  %199 = trunc i64 %198 to i8
  store i8 %199, i8* %36, align 1, !tbaa !2449
  %200 = lshr i64 %180, 63
  %201 = xor i64 %198, %200
  %202 = add nuw nsw i64 %201, %198
  %203 = icmp eq i64 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %42, align 1, !tbaa !2450
  %205 = add i64 %181, 5
  store i64 %205, i64* %PC, align 8
  %206 = add i64 %180, 56
  %207 = inttoptr i64 %182 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RBP, align 8, !tbaa !2428
  store i64 %206, i64* %9, align 8, !tbaa !2428
  %209 = add i64 %181, 6
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %58, align 8, !tbaa !2428
  %212 = add i64 %180, 64
  store i64 %212, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %173

block_401309:                                     ; preds = %block_401302, %block_40138c
  %213 = phi i64 [ %.pre1, %block_401302 ], [ %166, %block_40138c ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401302 ], [ %MEMORY.1, %block_40138c ]
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -24
  %216 = add i64 %213, 3
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = add i64 %214, -4
  %221 = add i64 %213, 6
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sub i32 %218, %223
  %225 = icmp ult i32 %218, %223
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %17, align 1, !tbaa !2432
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #8
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %24, align 1, !tbaa !2446
  %232 = xor i32 %223, %218
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %30, align 1, !tbaa !2447
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %33, align 1, !tbaa !2448
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %36, align 1, !tbaa !2449
  %241 = lshr i32 %218, 31
  %242 = lshr i32 %223, 31
  %243 = xor i32 %242, %241
  %244 = xor i32 %239, %241
  %245 = add nuw nsw i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %42, align 1, !tbaa !2450
  %248 = icmp ne i8 %240, 0
  %249 = xor i1 %248, %246
  %.v5 = select i1 %249, i64 12, i64 150
  %250 = add i64 %213, %.v5
  store i64 %250, i64* %58, align 8, !tbaa !2428
  br i1 %249, label %block_401315, label %block_40139f

block_401315:                                     ; preds = %block_401309
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %251 = load i64, i64* @stderr, align 32
  store i64 %251, i64* %RDI, align 8, !tbaa !2428
  %252 = add i64 %214, -16
  %253 = add i64 %250, 22
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = add i64 %214, -20
  %257 = add i64 %250, 26
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = mul nsw i64 %260, 24
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %262 = lshr i64 %261, 63
  %263 = add i64 %261, %255
  store i64 %263, i64* %RAX, align 8, !tbaa !2428
  %264 = icmp ult i64 %263, %255
  %265 = icmp ult i64 %263, %261
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %17, align 1, !tbaa !2432
  %268 = trunc i64 %263 to i32
  %269 = and i32 %268, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269) #8
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %24, align 1, !tbaa !2446
  %274 = xor i64 %261, %255
  %275 = xor i64 %274, %263
  %276 = lshr i64 %275, 4
  %277 = trunc i64 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %30, align 1, !tbaa !2447
  %279 = icmp eq i64 %263, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %33, align 1, !tbaa !2448
  %281 = lshr i64 %263, 63
  %282 = trunc i64 %281 to i8
  store i8 %282, i8* %36, align 1, !tbaa !2449
  %283 = lshr i64 %255, 63
  %284 = xor i64 %281, %283
  %285 = xor i64 %281, %262
  %286 = add nuw nsw i64 %284, %285
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %42, align 1, !tbaa !2450
  %289 = add i64 %250, 37
  store i64 %289, i64* %PC, align 8
  %290 = load i32, i32* %217, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX, align 8, !tbaa !2428
  %292 = shl nsw i64 %291, 2
  %293 = add i64 %292, %263
  %294 = add i64 %250, 40
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %298 = add i64 %250, -3477
  %299 = add i64 %250, 47
  %300 = load i64, i64* %9, align 8, !tbaa !2428
  %301 = add i64 %300, -8
  %302 = inttoptr i64 %301 to i64*
  store i64 %299, i64* %302, align 8
  store i64 %301, i64* %9, align 8, !tbaa !2428
  store i64 %298, i64* %58, align 8, !tbaa !2428
  %303 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %304 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -20
  %307 = add i64 %304, 9
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %59, align 8, !tbaa !2428
  %311 = add i64 %305, -4
  %312 = add i64 %304, 14
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %309 to i64
  %316 = sext i32 %314 to i64
  %317 = mul nsw i64 %316, %315
  %318 = trunc i64 %317 to i32
  %319 = and i64 %317, 4294967295
  store i64 %319, i64* %59, align 8, !tbaa !2428
  %320 = shl i64 %317, 32
  %321 = ashr exact i64 %320, 32
  %322 = icmp ne i64 %321, %317
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %17, align 1, !tbaa !2432
  %324 = and i32 %318, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #8
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  %329 = lshr i32 %318, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %36, align 1, !tbaa !2449
  store i8 %323, i8* %42, align 1, !tbaa !2450
  %331 = trunc i64 %317 to i32
  %332 = add i64 %305, -24
  %333 = add i64 %304, 18
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, %331
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %59, align 8, !tbaa !2428
  %338 = icmp ult i32 %336, %331
  %339 = icmp ult i32 %336, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %17, align 1, !tbaa !2432
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #8
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %24, align 1, !tbaa !2446
  %347 = xor i32 %335, %331
  %348 = xor i32 %347, %336
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %30, align 1, !tbaa !2447
  %352 = icmp eq i32 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %33, align 1, !tbaa !2448
  %354 = lshr i32 %336, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %36, align 1, !tbaa !2449
  %356 = lshr i32 %331, 31
  %357 = lshr i32 %335, 31
  %358 = xor i32 %354, %356
  %359 = xor i32 %354, %357
  %360 = add nuw nsw i32 %358, %359
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %42, align 1, !tbaa !2450
  %363 = add i64 %305, -28
  %364 = load i32, i32* %EAX, align 4
  %365 = add i64 %304, 21
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %363 to i32*
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %R8D, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC, align 8
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -32
  %372 = load i32, i32* %EDX, align 4
  %373 = add i64 %369, 6
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %371 to i32*
  store i32 %372, i32* %374, align 4
  %375 = load i64, i64* %PC, align 8
  %376 = load i32, i32* %62, align 8, !tbaa !2451
  %377 = sext i32 %376 to i64
  %378 = lshr i64 %377, 32
  store i64 %378, i64* %60, align 8, !tbaa !2428
  %379 = load i64, i64* %RBP, align 8
  %380 = add i64 %379, -32
  %381 = add i64 %375, 5
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %59, align 8, !tbaa !2428
  %385 = add i64 %375, 8
  store i64 %385, i64* %PC, align 8
  %386 = zext i32 %376 to i64
  %387 = sext i32 %383 to i64
  %388 = shl nuw i64 %378, 32
  %389 = or i64 %388, %386
  %390 = sdiv i64 %389, %387
  %391 = shl i64 %390, 32
  %392 = ashr exact i64 %391, 32
  %393 = icmp eq i64 %390, %392
  br i1 %393, label %396, label %394

; <label>:394:                                    ; preds = %block_401315
  %395 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %385, %struct.Memory* %303) #9
  %.pre2 = load i32, i32* %EDX, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:396:                                    ; preds = %block_401315
  %397 = srem i64 %389, %387
  %398 = and i64 %390, 4294967295
  store i64 %398, i64* %63, align 8, !tbaa !2428
  %399 = and i64 %397, 4294967295
  store i64 %399, i64* %64, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %400 = trunc i64 %397 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %396, %394
  %401 = phi i64 [ %.pre3, %394 ], [ %385, %396 ]
  %402 = phi i32 [ %.pre2, %394 ], [ %400, %396 ]
  %403 = phi %struct.Memory* [ %395, %394 ], [ %303, %396 ]
  store i8 0, i8* %17, align 1, !tbaa !2432
  %404 = and i32 %402, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404) #8
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %409 = icmp eq i32 %402, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %33, align 1, !tbaa !2448
  %411 = lshr i32 %402, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v6 = select i1 %409, i64 9, i64 37
  %413 = add i64 %401, %.v6
  store i64 %413, i64* %58, align 8, !tbaa !2428
  br i1 %409, label %block_401370, label %block_40138c

block_401370:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %414 = load i64, i64* @stderr, align 32
  store i64 %414, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %415 = add i64 %413, -3568
  %416 = add i64 %413, 25
  %417 = load i64, i64* %9, align 8, !tbaa !2428
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %9, align 8, !tbaa !2428
  store i64 %415, i64* %58, align 8, !tbaa !2428
  %420 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %403)
  %421 = load i64, i64* %RBP, align 8
  %422 = add i64 %421, -36
  %423 = load i32, i32* %EAX, align 4
  %424 = load i64, i64* %PC, align 8
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %422 to i32*
  store i32 %423, i32* %426, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_40138c

block_401302:                                     ; preds = %block_4012f6
  %427 = add i64 %97, -24
  %428 = add i64 %133, 7
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 0, i32* %429, align 4
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 32
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
  %39 = add i64 %7, -24
  store i64 %39, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 32, i64* %RSI, align 8, !tbaa !2428
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %10, 22
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 8
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i64*
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RDX, align 8, !tbaa !2428
  %55 = load i64, i64* %RAX, align 8
  store i64 %55, i64* %RDI, align 8, !tbaa !2428
  %56 = add i64 %51, -639
  %57 = add i64 %51, 12
  %58 = load i64, i64* %6, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8, !tbaa !2428
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %56, i64* %61, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_602108_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -20
  %65 = load i32, i32* %EAX, align 4
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %68, align 4
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -16
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 5
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76) #8
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %81 = icmp eq i64 %74, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1, !tbaa !2448
  %83 = lshr i64 %74, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %81, i64 21, i64 11
  %85 = add i64 %71, %.v
  store i64 %85, i64* %61, align 8, !tbaa !2428
  br i1 %81, label %block_400843, label %block_400839

block_400843:                                     ; preds = %block_400839, %block_400800
  %86 = phi i64 [ %122, %block_400839 ], [ %85, %block_400800 ]
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %87 = load i64, i64* @stderr, align 32
  store i64 %87, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %88 = add i64 %86, -707
  %89 = add i64 %86, 25
  %90 = load i64, i64* %6, align 8, !tbaa !2428
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8, !tbaa !2428
  store i64 %88, i64* %61, align 8, !tbaa !2428
  %93 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %62)
  %94 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -24
  %97 = load i32, i32* %EAX, align 4
  %98 = add i64 %94, 8
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %99, align 4
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, -724
  %102 = add i64 %100, 5
  %103 = load i64, i64* %6, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %6, align 8, !tbaa !2428
  store i64 %101, i64* %61, align 8, !tbaa !2428
  %106 = tail call fastcc %struct.Memory* @ext_6020c8_exit(%struct.State* nonnull %0, %struct.Memory* %93)
  %107 = load i64, i64* %PC, align 8
  %108 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %107, %struct.Memory* %106)
  ret %struct.Memory* %108

block_400839:                                     ; preds = %block_400800
  %109 = add i64 %69, -20
  %110 = add i64 %85, 4
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %113 = and i32 %112, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #8
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  %118 = icmp eq i32 %112, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1, !tbaa !2448
  %120 = lshr i32 %112, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  %.v1 = select i1 %118, i64 48, i64 10
  %122 = add i64 %85, %.v1
  store i64 %122, i64* %61, align 8, !tbaa !2428
  br i1 %118, label %block_400869, label %block_400843

block_400869:                                     ; preds = %block_400839
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC, align 8
  %124 = load i64, i64* %73, align 8
  store i64 %124, i64* %RAX, align 8, !tbaa !2428
  %125 = load i64, i64* %RSP, align 8
  %126 = add i64 %125, 32
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  %127 = icmp ugt i64 %125, -33
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %14, align 1, !tbaa !2432
  %129 = trunc i64 %126 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #8
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1, !tbaa !2446
  %135 = xor i64 %125, %126
  %136 = lshr i64 %135, 4
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %26, align 1, !tbaa !2447
  %139 = icmp eq i64 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %29, align 1, !tbaa !2448
  %141 = lshr i64 %126, 63
  %142 = trunc i64 %141 to i8
  store i8 %142, i8* %32, align 1, !tbaa !2449
  %143 = lshr i64 %125, 63
  %144 = xor i64 %141, %143
  %145 = add nuw nsw i64 %144, %141
  %146 = icmp eq i64 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %38, align 1, !tbaa !2450
  %148 = add i64 %122, 9
  store i64 %148, i64* %PC, align 8
  %149 = add i64 %125, 40
  %150 = inttoptr i64 %126 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RBP, align 8, !tbaa !2428
  store i64 %149, i64* %6, align 8, !tbaa !2428
  %152 = add i64 %122, 10
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %149 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %61, align 8, !tbaa !2428
  %155 = add i64 %125, 48
  store i64 %155, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %62
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -104
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 96
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8
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
  store i64 36, i64* %RCX, align 8, !tbaa !2428
  store i64 4, i64* %RAX, align 8, !tbaa !2428
  %40 = add i64 %8, -12
  %41 = add i64 %11, 26
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
  %56 = add i64 %55, -20
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 10000, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 6, i32* %64, align 4
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -28
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 64, i32* %69, align 4
  %70 = load i64, i64* %RCX, align 8
  %71 = load i64, i64* %PC, align 8
  store i64 %70, i64* %RDI, align 8, !tbaa !2428
  %72 = load i32, i32* %EAX, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RSI, align 8, !tbaa !2428
  %74 = add i64 %71, -247
  %75 = add i64 %71, 10
  %76 = load i64, i64* %7, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %7, align 8, !tbaa !2428
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %74, i64* %79, align 8, !tbaa !2428
  %80 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %74, %struct.Memory* %2)
  %81 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -40
  %84 = load i64, i64* %RAX, align 8
  %85 = add i64 %81, 16
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, -273
  %89 = add i64 %87, 5
  %90 = load i64, i64* %7, align 8, !tbaa !2428
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %7, align 8, !tbaa !2428
  store i64 %88, i64* %79, align 8, !tbaa !2428
  %93 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %88, %struct.Memory* %80)
  %94 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -48
  %97 = load i64, i64* %RAX, align 8
  %98 = add i64 %94, 16
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %PC, align 8
  %101 = add i64 %100, -294
  %102 = add i64 %100, 5
  %103 = load i64, i64* %7, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %7, align 8, !tbaa !2428
  store i64 %101, i64* %79, align 8, !tbaa !2428
  %106 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %101, %struct.Memory* %93)
  %107 = load i64, i64* %PC, align 8
  store i64 36, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -56
  %110 = load i64, i64* %RAX, align 8
  %111 = add i64 %107, 16
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %PC, align 8
  %114 = add i64 %113, -315
  %115 = add i64 %113, 5
  %116 = load i64, i64* %7, align 8, !tbaa !2428
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %7, align 8, !tbaa !2428
  store i64 %114, i64* %79, align 8, !tbaa !2428
  %119 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %114, %struct.Memory* %106)
  %120 = load i64, i64* %PC, align 8
  store i64 2304, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %121 = load i64, i64* %RBP, align 8
  %122 = add i64 %121, -64
  %123 = load i64, i64* %RAX, align 8
  %124 = add i64 %120, 16
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %126, -336
  %128 = add i64 %126, 5
  %129 = load i64, i64* %7, align 8, !tbaa !2428
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %128, i64* %131, align 8
  store i64 %130, i64* %7, align 8, !tbaa !2428
  store i64 %127, i64* %79, align 8, !tbaa !2428
  %132 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %127, %struct.Memory* %119)
  %133 = load i64, i64* %PC, align 8
  store i64 2304, i64* %RDI, align 8, !tbaa !2428
  store i64 4, i64* %RSI, align 8, !tbaa !2428
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -72
  %136 = load i64, i64* %RAX, align 8
  %137 = add i64 %133, 16
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %135 to i64*
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %PC, align 8
  %140 = add i64 %139, -357
  %141 = add i64 %139, 5
  %142 = load i64, i64* %7, align 8, !tbaa !2428
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %141, i64* %144, align 8
  store i64 %143, i64* %7, align 8, !tbaa !2428
  store i64 %140, i64* %79, align 8, !tbaa !2428
  %145 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %140, %struct.Memory* %132)
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -80
  %148 = load i64, i64* %RAX, align 8
  %149 = load i64, i64* %PC, align 8
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC, align 8
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %RBP, align 8
  %153 = add i64 %152, -24
  %154 = load i64, i64* %PC, align 8
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %153 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RDI, align 8, !tbaa !2428
  %159 = add i64 %152, -40
  %160 = add i64 %154, 7
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RSI, align 8, !tbaa !2428
  %163 = add i64 %152, -48
  %164 = add i64 %154, 11
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RDX, align 8, !tbaa !2428
  %167 = add i64 %152, -56
  %168 = add i64 %154, 15
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = add i64 %154, 274
  %172 = add i64 %154, 20
  %173 = load i64, i64* %7, align 8, !tbaa !2428
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %7, align 8, !tbaa !2428
  store i64 %171, i64* %79, align 8, !tbaa !2428
  %176 = tail call %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* nonnull %0, i64 %171, %struct.Memory* %145)
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -20
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %184 = add i64 %177, -24
  %185 = add i64 %179, 6
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RSI, align 8, !tbaa !2428
  %189 = add i64 %177, -28
  %190 = add i64 %179, 9
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RDX, align 8, !tbaa !2428
  %194 = add i64 %177, -40
  %195 = add i64 %179, 13
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX, align 8, !tbaa !2428
  %198 = add i64 %177, -48
  %199 = add i64 %179, 17
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %R8, align 8, !tbaa !2428
  %202 = add i64 %177, -56
  %203 = add i64 %179, 21
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %R9, align 8, !tbaa !2428
  %206 = add i64 %177, -72
  %207 = add i64 %179, 25
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = add i64 %177, -80
  %211 = add i64 %179, 29
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %R10, align 8, !tbaa !2428
  %214 = bitcast i64* %RSP to i64**
  %215 = load i64*, i64** %214, align 8
  %216 = add i64 %179, 33
  store i64 %216, i64* %PC, align 8
  store i64 %209, i64* %215, align 8
  %217 = load i64, i64* %RSP, align 8
  %218 = add i64 %217, 8
  %219 = load i64, i64* %R10, align 8
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 5
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %218 to i64*
  store i64 %219, i64* %222, align 8
  %223 = load i64, i64* %PC, align 8
  %224 = add i64 %223, 424
  %225 = add i64 %223, 5
  %226 = load i64, i64* %7, align 8, !tbaa !2428
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228, align 8
  store i64 %227, i64* %7, align 8, !tbaa !2428
  store i64 %224, i64* %79, align 8, !tbaa !2428
  %229 = tail call %struct.Memory* @sub_400b10_kernel_reg_detect_renamed_(%struct.State* nonnull %0, i64 %224, %struct.Memory* %176)
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -24
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RDI, align 8, !tbaa !2428
  %237 = add i64 %230, -40
  %238 = add i64 %232, 7
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RSI, align 8, !tbaa !2428
  %241 = add i64 %230, -48
  %242 = add i64 %232, 11
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RDX, align 8, !tbaa !2428
  %245 = add i64 %230, -64
  %246 = add i64 %232, 15
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RCX, align 8, !tbaa !2428
  %249 = add i64 %232, 211
  %250 = add i64 %232, 20
  %251 = load i64, i64* %7, align 8, !tbaa !2428
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %7, align 8, !tbaa !2428
  store i64 %249, i64* %79, align 8, !tbaa !2428
  %254 = tail call %struct.Memory* @sub_400a40_init_array_renamed_(%struct.State* nonnull %0, i64 %249, %struct.Memory* %229)
  %255 = load i64, i64* %RBP, align 8
  %256 = add i64 %255, -20
  %257 = load i64, i64* %PC, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RDI, align 8, !tbaa !2428
  %262 = add i64 %255, -24
  %263 = add i64 %257, 6
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RSI, align 8, !tbaa !2428
  %267 = add i64 %255, -28
  %268 = add i64 %257, 9
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RDX, align 8, !tbaa !2428
  %272 = add i64 %255, -40
  %273 = add i64 %257, 13
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RCX, align 8, !tbaa !2428
  %276 = add i64 %255, -48
  %277 = add i64 %257, 17
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %R8, align 8, !tbaa !2428
  %280 = add i64 %255, -64
  %281 = add i64 %257, 21
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %R9, align 8, !tbaa !2428
  %284 = add i64 %255, -72
  %285 = add i64 %257, 25
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = add i64 %255, -80
  %289 = add i64 %257, 29
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %R10, align 8, !tbaa !2428
  %292 = bitcast i64* %RSP to i64**
  %293 = load i64*, i64** %292, align 8
  %294 = add i64 %257, 33
  store i64 %294, i64* %PC, align 8
  store i64 %287, i64* %293, align 8
  %295 = load i64, i64* %RSP, align 8
  %296 = add i64 %295, 8
  %297 = load i64, i64* %R10, align 8
  %298 = load i64, i64* %PC, align 8
  %299 = add i64 %298, 5
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %296 to i64*
  store i64 %297, i64* %300, align 8
  %301 = load i64, i64* %PC, align 8
  %302 = add i64 %301, 1209
  %303 = add i64 %301, 5
  %304 = load i64, i64* %7, align 8, !tbaa !2428
  %305 = add i64 %304, -8
  %306 = inttoptr i64 %305 to i64*
  store i64 %303, i64* %306, align 8
  store i64 %305, i64* %7, align 8, !tbaa !2428
  store i64 %302, i64* %79, align 8, !tbaa !2428
  %307 = tail call %struct.Memory* @sub_400e60_kernel_reg_detect_StrictFP_renamed_(%struct.State* nonnull %0, i64 %302, %struct.Memory* %254)
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -24
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %308, -56
  %316 = add i64 %310, 7
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RSI, align 8, !tbaa !2428
  %319 = add i64 %308, -64
  %320 = add i64 %310, 11
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDX, align 8, !tbaa !2428
  %323 = add i64 %310, 2052
  %324 = add i64 %310, 16
  %325 = load i64, i64* %7, align 8, !tbaa !2428
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %7, align 8, !tbaa !2428
  store i64 %323, i64* %79, align 8, !tbaa !2428
  %328 = tail call %struct.Memory* @sub_4011b0_check_FP_renamed_(%struct.State* nonnull %0, i64 %323, %struct.Memory* %307)
  %329 = load i32, i32* %EAX, align 4
  %330 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %331 = and i32 %329, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #8
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  %336 = icmp eq i32 %329, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %30, align 1, !tbaa !2448
  %338 = lshr i32 %329, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  %.v = select i1 %336, i64 9, i64 21
  %340 = add i64 %330, %.v
  store i64 %340, i64* %79, align 8, !tbaa !2428
  %341 = load i64, i64* %RBP, align 8
  br i1 %336, label %block_4009c5, label %block_4009d1

block_400a2c:                                     ; preds = %block_4009c5, %block_4009d1
  %342 = phi i64 [ %.pre, %block_4009d1 ], [ %476, %block_4009c5 ]
  %MEMORY.0 = phi %struct.Memory* [ %466, %block_4009d1 ], [ %328, %block_4009c5 ]
  %343 = load i64, i64* %RBP, align 8
  %344 = add i64 %343, -4
  %345 = add i64 %342, 3
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX, align 8, !tbaa !2428
  %349 = load i64, i64* %RSP, align 8
  %350 = add i64 %349, 96
  store i64 %350, i64* %RSP, align 8, !tbaa !2428
  %351 = icmp ugt i64 %349, -97
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %15, align 1, !tbaa !2432
  %353 = trunc i64 %350 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354) #8
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %22, align 1, !tbaa !2446
  %359 = xor i64 %349, %350
  %360 = lshr i64 %359, 4
  %361 = trunc i64 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %27, align 1, !tbaa !2447
  %363 = icmp eq i64 %350, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %30, align 1, !tbaa !2448
  %365 = lshr i64 %350, 63
  %366 = trunc i64 %365 to i8
  store i8 %366, i8* %33, align 1, !tbaa !2449
  %367 = lshr i64 %349, 63
  %368 = xor i64 %365, %367
  %369 = add nuw nsw i64 %368, %365
  %370 = icmp eq i64 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %39, align 1, !tbaa !2450
  %372 = add i64 %342, 8
  store i64 %372, i64* %PC, align 8
  %373 = add i64 %349, 104
  %374 = inttoptr i64 %350 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RBP, align 8, !tbaa !2428
  store i64 %373, i64* %7, align 8, !tbaa !2428
  %376 = add i64 %342, 9
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %373 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %79, align 8, !tbaa !2428
  %379 = add i64 %349, 112
  store i64 %379, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4009d1:                                     ; preds = %block_400880
  %380 = add i64 %341, -24
  %381 = add i64 %340, 3
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RDI, align 8, !tbaa !2428
  %385 = add i64 %341, -64
  %386 = add i64 %340, 7
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RSI, align 8, !tbaa !2428
  %389 = add i64 %340, 2319
  %390 = add i64 %340, 12
  %391 = load i64, i64* %7, align 8, !tbaa !2428
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393, align 8
  store i64 %392, i64* %7, align 8, !tbaa !2428
  store i64 %389, i64* %79, align 8, !tbaa !2428
  %394 = tail call %struct.Memory* @sub_4012e0_print_array_renamed_(%struct.State* nonnull %0, i64 %389, %struct.Memory* %328)
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -40
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RSI, align 8, !tbaa !2428
  store i64 %400, i64* %RDI, align 8, !tbaa !2428
  %401 = add i64 %397, -1165
  %402 = add i64 %397, 12
  %403 = load i64, i64* %7, align 8, !tbaa !2428
  %404 = add i64 %403, -8
  %405 = inttoptr i64 %404 to i64*
  store i64 %402, i64* %405, align 8
  store i64 %404, i64* %7, align 8, !tbaa !2428
  store i64 %401, i64* %79, align 8, !tbaa !2428
  %406 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %394)
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -48
  %409 = load i64, i64* %PC, align 8
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %408 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RSI, align 8, !tbaa !2428
  store i64 %412, i64* %RDI, align 8, !tbaa !2428
  %413 = add i64 %409, -1177
  %414 = add i64 %409, 12
  %415 = load i64, i64* %7, align 8, !tbaa !2428
  %416 = add i64 %415, -8
  %417 = inttoptr i64 %416 to i64*
  store i64 %414, i64* %417, align 8
  store i64 %416, i64* %7, align 8, !tbaa !2428
  store i64 %413, i64* %79, align 8, !tbaa !2428
  %418 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %406)
  %419 = load i64, i64* %RBP, align 8
  %420 = add i64 %419, -56
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %420 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RSI, align 8, !tbaa !2428
  store i64 %424, i64* %RDI, align 8, !tbaa !2428
  %425 = add i64 %421, -1189
  %426 = add i64 %421, 12
  %427 = load i64, i64* %7, align 8, !tbaa !2428
  %428 = add i64 %427, -8
  %429 = inttoptr i64 %428 to i64*
  store i64 %426, i64* %429, align 8
  store i64 %428, i64* %7, align 8, !tbaa !2428
  store i64 %425, i64* %79, align 8, !tbaa !2428
  %430 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %418)
  %431 = load i64, i64* %RBP, align 8
  %432 = add i64 %431, -64
  %433 = load i64, i64* %PC, align 8
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RSI, align 8, !tbaa !2428
  store i64 %436, i64* %RDI, align 8, !tbaa !2428
  %437 = add i64 %433, -1201
  %438 = add i64 %433, 12
  %439 = load i64, i64* %7, align 8, !tbaa !2428
  %440 = add i64 %439, -8
  %441 = inttoptr i64 %440 to i64*
  store i64 %438, i64* %441, align 8
  store i64 %440, i64* %7, align 8, !tbaa !2428
  store i64 %437, i64* %79, align 8, !tbaa !2428
  %442 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %430)
  %443 = load i64, i64* %RBP, align 8
  %444 = add i64 %443, -72
  %445 = load i64, i64* %PC, align 8
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RSI, align 8, !tbaa !2428
  store i64 %448, i64* %RDI, align 8, !tbaa !2428
  %449 = add i64 %445, -1213
  %450 = add i64 %445, 12
  %451 = load i64, i64* %7, align 8, !tbaa !2428
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %450, i64* %453, align 8
  store i64 %452, i64* %7, align 8, !tbaa !2428
  store i64 %449, i64* %79, align 8, !tbaa !2428
  %454 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %442)
  %455 = load i64, i64* %RBP, align 8
  %456 = add i64 %455, -80
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %457, 4
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %456 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RSI, align 8, !tbaa !2428
  store i64 %460, i64* %RDI, align 8, !tbaa !2428
  %461 = add i64 %457, -1225
  %462 = add i64 %457, 12
  %463 = load i64, i64* %7, align 8, !tbaa !2428
  %464 = add i64 %463, -8
  %465 = inttoptr i64 %464 to i64*
  store i64 %462, i64* %465, align 8
  store i64 %464, i64* %7, align 8, !tbaa !2428
  store i64 %461, i64* %79, align 8, !tbaa !2428
  %466 = tail call fastcc %struct.Memory* @ext_6020d8_free(%struct.State* nonnull %0, %struct.Memory* %454)
  %467 = load i64, i64* %RBP, align 8
  %468 = add i64 %467, -4
  %469 = load i64, i64* %PC, align 8
  %470 = add i64 %469, 7
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %468 to i32*
  store i32 0, i32* %471, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a2c

block_4009c5:                                     ; preds = %block_400880
  %472 = add i64 %341, -4
  %473 = add i64 %340, 7
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  store i32 1, i32* %474, align 4
  %475 = load i64, i64* %PC, align 8
  %476 = add i64 %475, 96
  store i64 %476, i64* %79, align 8, !tbaa !2428
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
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400e90

block_40117a:                                     ; preds = %block_40110f
  %80 = add i64 %1422, -52
  %81 = add i64 %1460, 8
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = icmp eq i32 %83, -1
  %87 = icmp eq i32 %84, 0
  %88 = or i1 %86, %87
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %73, align 1, !tbaa !2432
  %90 = and i32 %84, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %74, align 1, !tbaa !2446
  %95 = xor i32 %83, %84
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %75, align 1, !tbaa !2447
  %99 = icmp eq i32 %84, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %76, align 1, !tbaa !2448
  %101 = lshr i32 %84, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %77, align 1, !tbaa !2449
  %103 = lshr i32 %83, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %101
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %78, align 1, !tbaa !2450
  %108 = add i64 %1460, 14
  store i64 %108, i64* %PC, align 8
  store i32 %84, i32* %82, align 4
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, -144
  store i64 %110, i64* %79, align 8, !tbaa !2428
  br label %block_4010f8

block_4010f8:                                     ; preds = %block_4010f1, %block_40117a
  %111 = phi i64 [ %.pre12, %block_4010f1 ], [ %110, %block_40117a ]
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -52
  %114 = add i64 %111, 3
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = add i64 %112, -8
  %119 = add i64 %111, 6
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, -1
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RCX, align 8, !tbaa !2428
  %124 = lshr i32 %122, 31
  %125 = sub i32 %116, %122
  %126 = icmp ult i32 %116, %122
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %73, align 1, !tbaa !2432
  %128 = and i32 %125, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #8
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %74, align 1, !tbaa !2446
  %133 = xor i32 %122, %116
  %134 = xor i32 %133, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %75, align 1, !tbaa !2447
  %138 = icmp eq i32 %125, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %76, align 1, !tbaa !2448
  %140 = lshr i32 %125, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %77, align 1, !tbaa !2449
  %142 = lshr i32 %116, 31
  %143 = xor i32 %124, %142
  %144 = xor i32 %140, %142
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %78, align 1, !tbaa !2450
  %148 = icmp ne i8 %141, 0
  %149 = xor i1 %148, %146
  %.demorgan27 = or i1 %138, %149
  %.v28 = select i1 %.demorgan27, i64 17, i64 149
  %150 = add i64 %111, %.v28
  store i64 %150, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan27, label %block_401109, label %block_40118d

block_400f69:                                     ; preds = %block_400f58
  %151 = add i64 %196, 3
  store i64 %151, i64* %PC, align 8
  %152 = load i32, i32* %161, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = add i64 %158, -48
  %155 = add i64 %196, 6
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %152, i32* %156, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400f6f

block_400f58:                                     ; preds = %block_4010a2, %block_400f51
  %157 = phi i64 [ %1125, %block_4010a2 ], [ %.pre8, %block_400f51 ]
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -52
  %160 = add i64 %157, 3
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %158, -8
  %165 = add i64 %157, 6
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, -1
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = lshr i32 %168, 31
  %171 = sub i32 %162, %168
  %172 = icmp ult i32 %162, %168
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %73, align 1, !tbaa !2432
  %174 = and i32 %171, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #8
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %74, align 1, !tbaa !2446
  %179 = xor i32 %168, %162
  %180 = xor i32 %179, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %75, align 1, !tbaa !2447
  %184 = icmp eq i32 %171, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %76, align 1, !tbaa !2448
  %186 = lshr i32 %171, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %77, align 1, !tbaa !2449
  %188 = lshr i32 %162, 31
  %189 = xor i32 %170, %188
  %190 = xor i32 %186, %188
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %78, align 1, !tbaa !2450
  %194 = icmp ne i8 %187, 0
  %195 = xor i1 %194, %192
  %.demorgan19 = or i1 %184, %195
  %.v20 = select i1 %.demorgan19, i64 17, i64 349
  %196 = add i64 %157, %.v20
  store i64 %196, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan19, label %block_400f69, label %block_4010b5

block_400ed2:                                     ; preds = %block_400ecb, %block_400ee3
  %197 = phi i64 [ %.pre7, %block_400ecb ], [ %395, %block_400ee3 ]
  %198 = load i64, i64* %RBP, align 8
  %199 = add i64 %198, -56
  %200 = add i64 %197, 3
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %204 = add i64 %198, -12
  %205 = add i64 %197, 6
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, -1
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = lshr i32 %208, 31
  %211 = sub i32 %202, %208
  %212 = icmp ult i32 %202, %208
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %73, align 1, !tbaa !2432
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #8
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %74, align 1, !tbaa !2446
  %219 = xor i32 %208, %202
  %220 = xor i32 %219, %211
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %75, align 1, !tbaa !2447
  %224 = icmp eq i32 %211, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %76, align 1, !tbaa !2448
  %226 = lshr i32 %211, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %77, align 1, !tbaa !2449
  %228 = lshr i32 %202, 31
  %229 = xor i32 %210, %228
  %230 = xor i32 %226, %228
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %78, align 1, !tbaa !2450
  %234 = icmp ne i8 %227, 0
  %235 = xor i1 %234, %232
  %.demorgan17 = or i1 %224, %235
  %.v18 = select i1 %.demorgan17, i64 17, i64 89
  %236 = add i64 %197, %.v18
  store i64 %236, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan17, label %block_400ee3, label %block_400f2b

block_400f51:                                     ; preds = %block_400ea3
  %237 = add i64 %865, 7
  store i64 %237, i64* %PC, align 8
  store i32 0, i32* %830, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400f58

block_400ee3:                                     ; preds = %block_400ed2
  %238 = add i64 %198, -24
  %239 = add i64 %236, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = add i64 %198, -52
  %243 = add i64 %236, 8
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %246, 24
  store i64 %247, i64* %RCX, align 8, !tbaa !2428
  %248 = lshr i64 %247, 63
  %249 = add i64 %247, %241
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = icmp ult i64 %249, %241
  %251 = icmp ult i64 %249, %247
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %73, align 1, !tbaa !2432
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %74, align 1, !tbaa !2446
  %260 = xor i64 %247, %241
  %261 = xor i64 %260, %249
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %75, align 1, !tbaa !2447
  %265 = icmp eq i64 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %76, align 1, !tbaa !2448
  %267 = lshr i64 %249, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %77, align 1, !tbaa !2449
  %269 = lshr i64 %241, 63
  %270 = xor i64 %267, %269
  %271 = xor i64 %267, %248
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %78, align 1, !tbaa !2450
  %275 = add i64 %198, -48
  %276 = add i64 %236, 19
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = shl nsw i64 %279, 2
  %281 = add i64 %280, %249
  %282 = add i64 %236, 22
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RDX, align 8, !tbaa !2428
  %286 = add i64 %198, 16
  %287 = add i64 %236, 26
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = add i64 %236, 30
  store i64 %290, i64* %PC, align 8
  %291 = load i32, i32* %244, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, 1536
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = lshr i64 %293, 63
  %295 = add i64 %293, %289
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = icmp ult i64 %295, %289
  %297 = icmp ult i64 %295, %293
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %73, align 1, !tbaa !2432
  %300 = trunc i64 %295 to i32
  %301 = and i32 %300, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301) #8
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %74, align 1, !tbaa !2446
  %306 = xor i64 %289, %295
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %75, align 1, !tbaa !2447
  %310 = icmp eq i64 %295, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %76, align 1, !tbaa !2448
  %312 = lshr i64 %295, 63
  %313 = trunc i64 %312 to i8
  store i8 %313, i8* %77, align 1, !tbaa !2449
  %314 = lshr i64 %289, 63
  %315 = xor i64 %312, %314
  %316 = xor i64 %312, %294
  %317 = add nuw nsw i64 %315, %316
  %318 = icmp eq i64 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %78, align 1, !tbaa !2450
  %320 = load i64, i64* %RBP, align 8
  %321 = add i64 %320, -48
  %322 = add i64 %236, 44
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = shl nsw i64 %325, 8
  store i64 %326, i64* %RCX, align 8, !tbaa !2428
  %327 = lshr i64 %325, 55
  %328 = and i64 %327, 1
  %329 = add i64 %326, %295
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = icmp ult i64 %329, %295
  %331 = icmp ult i64 %329, %326
  %332 = or i1 %330, %331
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %73, align 1, !tbaa !2432
  %334 = trunc i64 %329 to i32
  %335 = and i32 %334, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #8
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %74, align 1, !tbaa !2446
  %340 = xor i64 %295, %329
  %341 = lshr i64 %340, 4
  %342 = trunc i64 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %75, align 1, !tbaa !2447
  %344 = icmp eq i64 %329, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %76, align 1, !tbaa !2448
  %346 = lshr i64 %329, 63
  %347 = trunc i64 %346 to i8
  store i8 %347, i8* %77, align 1, !tbaa !2449
  %348 = xor i64 %346, %312
  %349 = xor i64 %346, %328
  %350 = add nuw nsw i64 %348, %349
  %351 = icmp eq i64 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %78, align 1, !tbaa !2450
  %353 = add i64 %320, -56
  %354 = add i64 %236, 55
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RCX, align 8, !tbaa !2428
  %358 = shl nsw i64 %357, 2
  %359 = add i64 %358, %329
  %360 = load i32, i32* %EDX, align 4
  %361 = add i64 %236, 58
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %359 to i32*
  store i32 %360, i32* %362, align 4
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -56
  %365 = load i64, i64* %PC, align 8
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, 1
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = icmp eq i32 %368, -1
  %372 = icmp eq i32 %369, 0
  %373 = or i1 %371, %372
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %73, align 1, !tbaa !2432
  %375 = and i32 %369, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375) #8
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %74, align 1, !tbaa !2446
  %380 = xor i32 %368, %369
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %75, align 1, !tbaa !2447
  %384 = icmp eq i32 %369, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %76, align 1, !tbaa !2448
  %386 = lshr i32 %369, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %77, align 1, !tbaa !2449
  %388 = lshr i32 %368, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %78, align 1, !tbaa !2450
  %393 = add i64 %365, 9
  store i64 %393, i64* %PC, align 8
  store i32 %369, i32* %367, align 4
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, -84
  store i64 %395, i64* %79, align 8, !tbaa !2428
  br label %block_400ed2

block_401055:                                     ; preds = %block_400fc5
  %396 = add i64 %622, -12
  %397 = add i64 %551, 32
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %399, -1
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDX, align 8, !tbaa !2428
  %402 = icmp eq i32 %399, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %73, align 1, !tbaa !2432
  %404 = and i32 %400, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404) #8
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %74, align 1, !tbaa !2446
  %409 = xor i32 %399, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %75, align 1, !tbaa !2447
  %413 = icmp eq i32 %400, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %76, align 1, !tbaa !2448
  %415 = lshr i32 %400, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %77, align 1, !tbaa !2449
  %417 = lshr i32 %399, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %78, align 1, !tbaa !2450
  %422 = sext i32 %400 to i64
  store i64 %422, i64* %RCX, align 8, !tbaa !2428
  %423 = shl nsw i64 %422, 2
  %424 = add i64 %423, %598
  %425 = add i64 %551, 41
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RDX, align 8, !tbaa !2428
  %429 = add i64 %622, -32
  %430 = add i64 %551, 45
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = add i64 %622, -52
  %434 = add i64 %551, 49
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = mul nsw i64 %437, 24
  store i64 %438, i64* %RCX, align 8, !tbaa !2428
  %439 = lshr i64 %438, 63
  %440 = add i64 %438, %432
  store i64 %440, i64* %RAX, align 8, !tbaa !2428
  %441 = icmp ult i64 %440, %432
  %442 = icmp ult i64 %440, %438
  %443 = or i1 %441, %442
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %73, align 1, !tbaa !2432
  %445 = trunc i64 %440 to i32
  %446 = and i32 %445, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446) #8
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %74, align 1, !tbaa !2446
  %451 = xor i64 %438, %432
  %452 = xor i64 %451, %440
  %453 = lshr i64 %452, 4
  %454 = trunc i64 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %75, align 1, !tbaa !2447
  %456 = icmp eq i64 %440, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %76, align 1, !tbaa !2448
  %458 = lshr i64 %440, 63
  %459 = trunc i64 %458 to i8
  store i8 %459, i8* %77, align 1, !tbaa !2449
  %460 = lshr i64 %432, 63
  %461 = xor i64 %458, %460
  %462 = xor i64 %458, %439
  %463 = add nuw nsw i64 %461, %462
  %464 = icmp eq i64 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %78, align 1, !tbaa !2450
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -48
  %468 = add i64 %551, 60
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  store i64 %471, i64* %RCX, align 8, !tbaa !2428
  %472 = shl nsw i64 %471, 2
  %473 = add i64 %472, %440
  %474 = add i64 %551, 63
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  store i32 %427, i32* %475, align 4
  %476 = load i64, i64* %RBP, align 8
  %477 = add i64 %476, -48
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, 1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RAX, align 8, !tbaa !2428
  %484 = icmp eq i32 %481, -1
  %485 = icmp eq i32 %482, 0
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %73, align 1, !tbaa !2432
  %488 = and i32 %482, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #8
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %74, align 1, !tbaa !2446
  %493 = xor i32 %481, %482
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %75, align 1, !tbaa !2447
  %497 = icmp eq i32 %482, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %76, align 1, !tbaa !2448
  %499 = lshr i32 %482, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %77, align 1, !tbaa !2449
  %501 = lshr i32 %481, 31
  %502 = xor i32 %499, %501
  %503 = add nuw nsw i32 %502, %499
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %78, align 1, !tbaa !2450
  %506 = add i64 %478, 9
  store i64 %506, i64* %PC, align 8
  store i32 %482, i32* %480, align 4
  %507 = load i64, i64* %PC, align 8
  %508 = add i64 %507, -302
  store i64 %508, i64* %79, align 8, !tbaa !2428
  br label %block_400f6f

block_400ecb:                                     ; preds = %block_400eba
  %509 = add i64 %735, -56
  %510 = add i64 %773, 7
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %509 to i32*
  store i32 0, i32* %511, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400ed2

block_400fc5:                                     ; preds = %block_400f80, %block_400fd6
  %512 = phi i64 [ %.pre10, %block_400f80 ], [ %1382, %block_400fd6 ]
  %513 = load i64, i64* %RBP, align 8
  %514 = add i64 %513, -56
  %515 = add i64 %512, 3
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX, align 8, !tbaa !2428
  %519 = add i64 %513, -12
  %520 = add i64 %512, 6
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, -1
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RCX, align 8, !tbaa !2428
  %525 = lshr i32 %523, 31
  %526 = sub i32 %517, %523
  %527 = icmp ult i32 %517, %523
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %73, align 1, !tbaa !2432
  %529 = and i32 %526, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529) #8
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %74, align 1, !tbaa !2446
  %534 = xor i32 %523, %517
  %535 = xor i32 %534, %526
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %75, align 1, !tbaa !2447
  %539 = icmp eq i32 %526, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %76, align 1, !tbaa !2448
  %541 = lshr i32 %526, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %77, align 1, !tbaa !2449
  %543 = lshr i32 %517, 31
  %544 = xor i32 %525, %543
  %545 = xor i32 %541, %543
  %546 = add nuw nsw i32 %545, %544
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %78, align 1, !tbaa !2450
  %549 = icmp ne i8 %542, 0
  %550 = xor i1 %549, %547
  %.demorgan23 = or i1 %539, %550
  %.v24 = select i1 %.demorgan23, i64 17, i64 144
  %551 = add i64 %512, %.v24
  %552 = add i64 %513, 24
  %553 = add i64 %551, 4
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = load i64, i64* %RBP, align 8
  %557 = add i64 %556, -52
  %558 = add i64 %551, 8
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  %562 = mul nsw i64 %561, 1536
  store i64 %562, i64* %RCX, align 8, !tbaa !2428
  %563 = lshr i64 %562, 63
  %564 = add i64 %562, %555
  store i64 %564, i64* %RAX, align 8, !tbaa !2428
  %565 = icmp ult i64 %564, %555
  %566 = icmp ult i64 %564, %562
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %73, align 1, !tbaa !2432
  %569 = trunc i64 %564 to i32
  %570 = and i32 %569, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570) #8
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %74, align 1, !tbaa !2446
  %575 = xor i64 %555, %564
  %576 = lshr i64 %575, 4
  %577 = trunc i64 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %75, align 1, !tbaa !2447
  %579 = icmp eq i64 %564, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %76, align 1, !tbaa !2448
  %581 = lshr i64 %564, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %77, align 1, !tbaa !2449
  %583 = lshr i64 %555, 63
  %584 = xor i64 %581, %583
  %585 = xor i64 %581, %563
  %586 = add nuw nsw i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %78, align 1, !tbaa !2450
  %589 = add i64 %556, -48
  %590 = add i64 %551, 22
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = sext i32 %592 to i64
  %594 = shl nsw i64 %593, 8
  store i64 %594, i64* %RCX, align 8, !tbaa !2428
  %595 = lshr i64 %593, 55
  %596 = and i64 %595, 1
  %597 = add i64 %551, 29
  store i64 %597, i64* %PC, align 8
  %598 = add i64 %594, %564
  store i64 %598, i64* %RAX, align 8, !tbaa !2428
  %599 = icmp ult i64 %598, %564
  %600 = icmp ult i64 %598, %594
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %73, align 1, !tbaa !2432
  %603 = trunc i64 %598 to i32
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604) #8
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %74, align 1, !tbaa !2446
  %609 = xor i64 %564, %598
  %610 = lshr i64 %609, 4
  %611 = trunc i64 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %75, align 1, !tbaa !2447
  %613 = icmp eq i64 %598, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %76, align 1, !tbaa !2448
  %615 = lshr i64 %598, 63
  %616 = trunc i64 %615 to i8
  store i8 %616, i8* %77, align 1, !tbaa !2449
  %617 = xor i64 %615, %581
  %618 = xor i64 %615, %596
  %619 = add nuw nsw i64 %617, %618
  %620 = icmp eq i64 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %78, align 1, !tbaa !2450
  %622 = load i64, i64* %RBP, align 8
  br i1 %.demorgan23, label %block_400fd6, label %block_401055

block_400f3e:                                     ; preds = %block_400eba
  %623 = add i64 %735, -52
  %624 = add i64 %773, 8
  store i64 %624, i64* %PC, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX, align 8, !tbaa !2428
  %629 = icmp eq i32 %626, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %73, align 1, !tbaa !2432
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633) #8
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %74, align 1, !tbaa !2446
  %638 = xor i32 %626, %627
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %75, align 1, !tbaa !2447
  %642 = icmp eq i32 %627, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %76, align 1, !tbaa !2448
  %644 = lshr i32 %627, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %77, align 1, !tbaa !2449
  %646 = lshr i32 %626, 31
  %647 = xor i32 %644, %646
  %648 = add nuw nsw i32 %647, %644
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %78, align 1, !tbaa !2450
  %651 = add i64 %773, 14
  store i64 %651, i64* %PC, align 8
  store i32 %627, i32* %625, align 4
  %652 = load i64, i64* %PC, align 8
  %653 = add i64 %652, -169
  store i64 %653, i64* %79, align 8, !tbaa !2428
  br label %block_400ea3

block_400f6f:                                     ; preds = %block_401055, %block_400f69
  %654 = phi i64 [ %508, %block_401055 ], [ %.pre9, %block_400f69 ]
  %655 = load i64, i64* %RBP, align 8
  %656 = add i64 %655, -48
  %657 = add i64 %654, 3
  store i64 %657, i64* %PC, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX, align 8, !tbaa !2428
  %661 = add i64 %655, -8
  %662 = add i64 %654, 6
  store i64 %662, i64* %PC, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = add i32 %664, -1
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX, align 8, !tbaa !2428
  %667 = lshr i32 %665, 31
  %668 = sub i32 %659, %665
  %669 = icmp ult i32 %659, %665
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %73, align 1, !tbaa !2432
  %671 = and i32 %668, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671) #8
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %74, align 1, !tbaa !2446
  %676 = xor i32 %665, %659
  %677 = xor i32 %676, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %75, align 1, !tbaa !2447
  %681 = icmp eq i32 %668, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %76, align 1, !tbaa !2448
  %683 = lshr i32 %668, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %77, align 1, !tbaa !2449
  %685 = lshr i32 %659, 31
  %686 = xor i32 %667, %685
  %687 = xor i32 %683, %685
  %688 = add nuw nsw i32 %687, %686
  %689 = icmp eq i32 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %78, align 1, !tbaa !2450
  %691 = icmp ne i8 %684, 0
  %692 = xor i1 %691, %689
  %.demorgan21 = or i1 %681, %692
  %.v22 = select i1 %.demorgan21, i64 17, i64 307
  %693 = add i64 %654, %.v22
  store i64 %693, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan21, label %block_400f80, label %block_4010a2

block_4010bc:                                     ; preds = %block_4010cd, %block_4010b5
  %694 = phi i64 [ %1554, %block_4010cd ], [ %.pre11, %block_4010b5 ]
  %695 = load i64, i64* %RBP, align 8
  %696 = add i64 %695, -48
  %697 = add i64 %694, 3
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX, align 8, !tbaa !2428
  %701 = add i64 %695, -8
  %702 = add i64 %694, 6
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, -1
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RCX, align 8, !tbaa !2428
  %707 = lshr i32 %705, 31
  %708 = sub i32 %699, %705
  %709 = icmp ult i32 %699, %705
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %73, align 1, !tbaa !2432
  %711 = and i32 %708, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711) #8
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %74, align 1, !tbaa !2446
  %716 = xor i32 %705, %699
  %717 = xor i32 %716, %708
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %75, align 1, !tbaa !2447
  %721 = icmp eq i32 %708, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %76, align 1, !tbaa !2448
  %723 = lshr i32 %708, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %77, align 1, !tbaa !2449
  %725 = lshr i32 %699, 31
  %726 = xor i32 %707, %725
  %727 = xor i32 %723, %725
  %728 = add nuw nsw i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %78, align 1, !tbaa !2450
  %731 = icmp ne i8 %724, 0
  %732 = xor i1 %731, %729
  %.demorgan25 = or i1 %721, %732
  %.v26 = select i1 %.demorgan25, i64 17, i64 53
  %733 = add i64 %694, %.v26
  store i64 %733, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_4010cd, label %block_4010f1

block_400eba:                                     ; preds = %block_400f2b, %block_400eb4
  %734 = phi i64 [ %822, %block_400f2b ], [ %.pre6, %block_400eb4 ]
  %735 = load i64, i64* %RBP, align 8
  %736 = add i64 %735, -48
  %737 = add i64 %734, 3
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX, align 8, !tbaa !2428
  %741 = add i64 %735, -8
  %742 = add i64 %734, 6
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, -1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RCX, align 8, !tbaa !2428
  %747 = lshr i32 %745, 31
  %748 = sub i32 %739, %745
  %749 = icmp ult i32 %739, %745
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %73, align 1, !tbaa !2432
  %751 = and i32 %748, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751) #8
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %74, align 1, !tbaa !2446
  %756 = xor i32 %745, %739
  %757 = xor i32 %756, %748
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %75, align 1, !tbaa !2447
  %761 = icmp eq i32 %748, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %76, align 1, !tbaa !2448
  %763 = lshr i32 %748, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %77, align 1, !tbaa !2449
  %765 = lshr i32 %739, 31
  %766 = xor i32 %747, %765
  %767 = xor i32 %763, %765
  %768 = add nuw nsw i32 %767, %766
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %78, align 1, !tbaa !2450
  %771 = icmp ne i8 %764, 0
  %772 = xor i1 %771, %769
  %.demorgan15 = or i1 %761, %772
  %.v16 = select i1 %.demorgan15, i64 17, i64 132
  %773 = add i64 %734, %.v16
  store i64 %773, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan15, label %block_400ecb, label %block_400f3e

block_4010b5:                                     ; preds = %block_400f58
  %774 = add i64 %158, -48
  %775 = add i64 %196, 7
  store i64 %775, i64* %PC, align 8
  %776 = inttoptr i64 %774 to i32*
  store i32 0, i32* %776, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_4010bc

block_400eb4:                                     ; preds = %block_400ea3
  %777 = add i64 %865, 3
  store i64 %777, i64* %PC, align 8
  %778 = load i32, i32* %830, align 4
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RAX, align 8, !tbaa !2428
  %780 = add i64 %827, -48
  %781 = add i64 %865, 6
  store i64 %781, i64* %PC, align 8
  %782 = inttoptr i64 %780 to i32*
  store i32 %778, i32* %782, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400eba

block_4011a0:                                     ; preds = %block_400e90
  %783 = add i64 %1420, 1
  store i64 %783, i64* %PC, align 8
  %784 = load i64, i64* %9, align 8, !tbaa !2428
  %785 = add i64 %784, 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RBP, align 8, !tbaa !2428
  store i64 %785, i64* %9, align 8, !tbaa !2428
  %788 = add i64 %1420, 2
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %785 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %79, align 8, !tbaa !2428
  %791 = add i64 %784, 16
  store i64 %791, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400f2b:                                     ; preds = %block_400ed2
  %792 = add i64 %198, -48
  %793 = add i64 %236, 8
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = add i32 %795, 1
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX, align 8, !tbaa !2428
  %798 = icmp eq i32 %795, -1
  %799 = icmp eq i32 %796, 0
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %73, align 1, !tbaa !2432
  %802 = and i32 %796, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802) #8
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %74, align 1, !tbaa !2446
  %807 = xor i32 %795, %796
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %75, align 1, !tbaa !2447
  %811 = icmp eq i32 %796, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %76, align 1, !tbaa !2448
  %813 = lshr i32 %796, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %77, align 1, !tbaa !2449
  %815 = lshr i32 %795, 31
  %816 = xor i32 %813, %815
  %817 = add nuw nsw i32 %816, %813
  %818 = icmp eq i32 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %78, align 1, !tbaa !2450
  %820 = add i64 %236, 14
  store i64 %820, i64* %PC, align 8
  store i32 %796, i32* %794, align 4
  %821 = load i64, i64* %PC, align 8
  %822 = add i64 %821, -127
  store i64 %822, i64* %79, align 8, !tbaa !2428
  br label %block_400eba

block_4010f1:                                     ; preds = %block_4010bc
  %823 = add i64 %695, -52
  %824 = add i64 %733, 7
  store i64 %824, i64* %PC, align 8
  %825 = inttoptr i64 %823 to i32*
  store i32 1, i32* %825, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_4010f8

block_400ea3:                                     ; preds = %block_400e9c, %block_400f3e
  %826 = phi i64 [ %.pre5, %block_400e9c ], [ %653, %block_400f3e ]
  %827 = load i64, i64* %RBP, align 8
  %828 = add i64 %827, -52
  %829 = add i64 %826, 3
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RAX, align 8, !tbaa !2428
  %833 = add i64 %827, -8
  %834 = add i64 %826, 6
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = add i32 %836, -1
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RCX, align 8, !tbaa !2428
  %839 = lshr i32 %837, 31
  %840 = sub i32 %831, %837
  %841 = icmp ult i32 %831, %837
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %73, align 1, !tbaa !2432
  %843 = and i32 %840, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843) #8
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %74, align 1, !tbaa !2446
  %848 = xor i32 %837, %831
  %849 = xor i32 %848, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %75, align 1, !tbaa !2447
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %76, align 1, !tbaa !2448
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %77, align 1, !tbaa !2449
  %857 = lshr i32 %831, 31
  %858 = xor i32 %839, %857
  %859 = xor i32 %855, %857
  %860 = add nuw nsw i32 %859, %858
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %78, align 1, !tbaa !2450
  %863 = icmp ne i8 %856, 0
  %864 = xor i1 %863, %861
  %.demorgan = or i1 %853, %864
  %.v14 = select i1 %.demorgan, i64 17, i64 174
  %865 = add i64 %826, %.v14
  store i64 %865, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400eb4, label %block_400f51

block_401120:                                     ; preds = %block_40110f
  %866 = add i64 %1422, -40
  %867 = add i64 %1460, 4
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RAX, align 8, !tbaa !2428
  %870 = add i64 %1422, -52
  %871 = add i64 %1460, 7
  store i64 %871, i64* %PC, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = add i32 %873, -1
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RCX, align 8, !tbaa !2428
  %876 = sext i32 %874 to i64
  %877 = mul nsw i64 %876, 24
  store i64 %877, i64* %RDX, align 8, !tbaa !2428
  %878 = lshr i64 %877, 63
  %879 = add i64 %877, %869
  store i64 %879, i64* %RAX, align 8, !tbaa !2428
  %880 = icmp ult i64 %879, %869
  %881 = icmp ult i64 %879, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %73, align 1, !tbaa !2432
  %884 = trunc i64 %879 to i32
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885) #8
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %74, align 1, !tbaa !2446
  %890 = xor i64 %877, %869
  %891 = xor i64 %890, %879
  %892 = lshr i64 %891, 4
  %893 = trunc i64 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %75, align 1, !tbaa !2447
  %895 = icmp eq i64 %879, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %76, align 1, !tbaa !2448
  %897 = lshr i64 %879, 63
  %898 = trunc i64 %897 to i8
  store i8 %898, i8* %77, align 1, !tbaa !2449
  %899 = lshr i64 %869, 63
  %900 = xor i64 %897, %899
  %901 = xor i64 %897, %878
  %902 = add nuw nsw i64 %900, %901
  %903 = icmp eq i64 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %78, align 1, !tbaa !2450
  %905 = load i64, i64* %RBP, align 8
  %906 = add i64 %905, -48
  %907 = add i64 %1460, 23
  store i64 %907, i64* %PC, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = add i32 %909, -1
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RCX, align 8, !tbaa !2428
  %912 = icmp eq i32 %909, 0
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %73, align 1, !tbaa !2432
  %914 = and i32 %910, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914) #8
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %74, align 1, !tbaa !2446
  %919 = xor i32 %909, %910
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %75, align 1, !tbaa !2447
  %923 = icmp eq i32 %910, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %76, align 1, !tbaa !2448
  %925 = lshr i32 %910, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %77, align 1, !tbaa !2449
  %927 = lshr i32 %909, 31
  %928 = xor i32 %925, %927
  %929 = add nuw nsw i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %78, align 1, !tbaa !2450
  %932 = sext i32 %910 to i64
  store i64 %932, i64* %RDX, align 8, !tbaa !2428
  %933 = shl nsw i64 %932, 2
  %934 = add i64 %933, %879
  %935 = add i64 %1460, 32
  store i64 %935, i64* %PC, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RCX, align 8, !tbaa !2428
  %939 = add i64 %905, -32
  %940 = add i64 %1460, 36
  store i64 %940, i64* %PC, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RAX, align 8, !tbaa !2428
  %943 = add i64 %905, -52
  %944 = add i64 %1460, 40
  store i64 %944, i64* %PC, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  %948 = mul nsw i64 %947, 24
  store i64 %948, i64* %RDX, align 8, !tbaa !2428
  %949 = lshr i64 %948, 63
  %950 = add i64 %948, %942
  store i64 %950, i64* %RAX, align 8, !tbaa !2428
  %951 = icmp ult i64 %950, %942
  %952 = icmp ult i64 %950, %948
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %73, align 1, !tbaa !2432
  %955 = trunc i64 %950 to i32
  %956 = and i32 %955, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956) #8
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %74, align 1, !tbaa !2446
  %961 = xor i64 %948, %942
  %962 = xor i64 %961, %950
  %963 = lshr i64 %962, 4
  %964 = trunc i64 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %75, align 1, !tbaa !2447
  %966 = icmp eq i64 %950, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %76, align 1, !tbaa !2448
  %968 = lshr i64 %950, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %77, align 1, !tbaa !2449
  %970 = lshr i64 %942, 63
  %971 = xor i64 %968, %970
  %972 = xor i64 %968, %949
  %973 = add nuw nsw i64 %971, %972
  %974 = icmp eq i64 %973, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %78, align 1, !tbaa !2450
  %976 = load i64, i64* %RBP, align 8
  %977 = add i64 %976, -48
  %978 = add i64 %1460, 51
  store i64 %978, i64* %PC, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  store i64 %981, i64* %RDX, align 8, !tbaa !2428
  %982 = shl nsw i64 %981, 2
  %983 = add i64 %982, %950
  %984 = add i64 %1460, 54
  store i64 %984, i64* %PC, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = add i32 %986, %937
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RCX, align 8, !tbaa !2428
  %989 = icmp ult i32 %987, %937
  %990 = icmp ult i32 %987, %986
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %73, align 1, !tbaa !2432
  %993 = and i32 %987, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993) #8
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %74, align 1, !tbaa !2446
  %998 = xor i32 %986, %937
  %999 = xor i32 %998, %987
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %75, align 1, !tbaa !2447
  %1003 = icmp eq i32 %987, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %76, align 1, !tbaa !2448
  %1005 = lshr i32 %987, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %77, align 1, !tbaa !2449
  %1007 = lshr i32 %937, 31
  %1008 = lshr i32 %986, 31
  %1009 = xor i32 %1005, %1007
  %1010 = xor i32 %1005, %1008
  %1011 = add nuw nsw i32 %1009, %1010
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %78, align 1, !tbaa !2450
  %1014 = add i64 %976, -40
  %1015 = add i64 %1460, 58
  store i64 %1015, i64* %PC, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %RAX, align 8, !tbaa !2428
  %1018 = add i64 %976, -52
  %1019 = add i64 %1460, 62
  store i64 %1019, i64* %PC, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = mul nsw i64 %1022, 24
  store i64 %1023, i64* %RDX, align 8, !tbaa !2428
  %1024 = lshr i64 %1023, 63
  %1025 = add i64 %1023, %1017
  store i64 %1025, i64* %RAX, align 8, !tbaa !2428
  %1026 = icmp ult i64 %1025, %1017
  %1027 = icmp ult i64 %1025, %1023
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %73, align 1, !tbaa !2432
  %1030 = trunc i64 %1025 to i32
  %1031 = and i32 %1030, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031) #8
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %74, align 1, !tbaa !2446
  %1036 = xor i64 %1023, %1017
  %1037 = xor i64 %1036, %1025
  %1038 = lshr i64 %1037, 4
  %1039 = trunc i64 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %75, align 1, !tbaa !2447
  %1041 = icmp eq i64 %1025, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %76, align 1, !tbaa !2448
  %1043 = lshr i64 %1025, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %77, align 1, !tbaa !2449
  %1045 = lshr i64 %1017, 63
  %1046 = xor i64 %1043, %1045
  %1047 = xor i64 %1043, %1024
  %1048 = add nuw nsw i64 %1046, %1047
  %1049 = icmp eq i64 %1048, 2
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %78, align 1, !tbaa !2450
  %1051 = load i64, i64* %RBP, align 8
  %1052 = add i64 %1051, -48
  %1053 = add i64 %1460, 73
  store i64 %1053, i64* %PC, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = sext i32 %1055 to i64
  store i64 %1056, i64* %RDX, align 8, !tbaa !2428
  %1057 = shl nsw i64 %1056, 2
  %1058 = add i64 %1057, %1025
  %1059 = load i32, i32* %ECX, align 4
  %1060 = add i64 %1460, 76
  store i64 %1060, i64* %PC, align 8
  %1061 = inttoptr i64 %1058 to i32*
  store i32 %1059, i32* %1061, align 4
  %1062 = load i64, i64* %RBP, align 8
  %1063 = add i64 %1062, -48
  %1064 = load i64, i64* %PC, align 8
  %1065 = add i64 %1064, 3
  store i64 %1065, i64* %PC, align 8
  %1066 = inttoptr i64 %1063 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX, align 8, !tbaa !2428
  %1070 = icmp eq i32 %1067, -1
  %1071 = icmp eq i32 %1068, 0
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %73, align 1, !tbaa !2432
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074) #8
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %74, align 1, !tbaa !2446
  %1079 = xor i32 %1067, %1068
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %75, align 1, !tbaa !2447
  %1083 = icmp eq i32 %1068, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %76, align 1, !tbaa !2448
  %1085 = lshr i32 %1068, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %77, align 1, !tbaa !2449
  %1087 = lshr i32 %1067, 31
  %1088 = xor i32 %1085, %1087
  %1089 = add nuw nsw i32 %1088, %1085
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %78, align 1, !tbaa !2450
  %1092 = add i64 %1064, 9
  store i64 %1092, i64* %PC, align 8
  store i32 %1068, i32* %1066, align 4
  %1093 = load i64, i64* %PC, align 8
  %1094 = add i64 %1093, -102
  store i64 %1094, i64* %79, align 8, !tbaa !2428
  br label %block_40110f

block_4010a2:                                     ; preds = %block_400f6f
  %1095 = add i64 %655, -52
  %1096 = add i64 %693, 8
  store i64 %1096, i64* %PC, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, 1
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX, align 8, !tbaa !2428
  %1101 = icmp eq i32 %1098, -1
  %1102 = icmp eq i32 %1099, 0
  %1103 = or i1 %1101, %1102
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %73, align 1, !tbaa !2432
  %1105 = and i32 %1099, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105) #8
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %74, align 1, !tbaa !2446
  %1110 = xor i32 %1098, %1099
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %75, align 1, !tbaa !2447
  %1114 = icmp eq i32 %1099, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %76, align 1, !tbaa !2448
  %1116 = lshr i32 %1099, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %77, align 1, !tbaa !2449
  %1118 = lshr i32 %1098, 31
  %1119 = xor i32 %1116, %1118
  %1120 = add nuw nsw i32 %1119, %1116
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %78, align 1, !tbaa !2450
  %1123 = add i64 %693, 14
  store i64 %1123, i64* %PC, align 8
  store i32 %1099, i32* %1097, align 4
  %1124 = load i64, i64* %PC, align 8
  %1125 = add i64 %1124, -344
  store i64 %1125, i64* %79, align 8, !tbaa !2428
  br label %block_400f58

block_400e9c:                                     ; preds = %block_400e90
  %1126 = add i64 %1384, -52
  %1127 = add i64 %1420, 7
  store i64 %1127, i64* %PC, align 8
  %1128 = inttoptr i64 %1126 to i32*
  store i32 0, i32* %1128, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400ea3

block_400fd6:                                     ; preds = %block_400fc5
  %1129 = add i64 %622, -56
  %1130 = add i64 %551, 32
  store i64 %1130, i64* %PC, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = add i32 %1132, -1
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RDX, align 8, !tbaa !2428
  %1135 = icmp eq i32 %1132, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %73, align 1, !tbaa !2432
  %1137 = and i32 %1133, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137) #8
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %74, align 1, !tbaa !2446
  %1142 = xor i32 %1132, %1133
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %75, align 1, !tbaa !2447
  %1146 = icmp eq i32 %1133, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %76, align 1, !tbaa !2448
  %1148 = lshr i32 %1133, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %77, align 1, !tbaa !2449
  %1150 = lshr i32 %1132, 31
  %1151 = xor i32 %1148, %1150
  %1152 = add nuw nsw i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %78, align 1, !tbaa !2450
  %1155 = sext i32 %1133 to i64
  store i64 %1155, i64* %RCX, align 8, !tbaa !2428
  %1156 = shl nsw i64 %1155, 2
  %1157 = add i64 %1156, %598
  %1158 = add i64 %551, 41
  store i64 %1158, i64* %PC, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RDX, align 8, !tbaa !2428
  %1162 = add i64 %622, 16
  %1163 = add i64 %551, 45
  store i64 %1163, i64* %PC, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RAX, align 8, !tbaa !2428
  %1166 = add i64 %622, -52
  %1167 = add i64 %551, 49
  store i64 %1167, i64* %PC, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = mul nsw i64 %1170, 1536
  store i64 %1171, i64* %RCX, align 8, !tbaa !2428
  %1172 = lshr i64 %1171, 63
  %1173 = add i64 %1171, %1165
  store i64 %1173, i64* %RAX, align 8, !tbaa !2428
  %1174 = icmp ult i64 %1173, %1165
  %1175 = icmp ult i64 %1173, %1171
  %1176 = or i1 %1174, %1175
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %73, align 1, !tbaa !2432
  %1178 = trunc i64 %1173 to i32
  %1179 = and i32 %1178, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179) #8
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %74, align 1, !tbaa !2446
  %1184 = xor i64 %1165, %1173
  %1185 = lshr i64 %1184, 4
  %1186 = trunc i64 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %75, align 1, !tbaa !2447
  %1188 = icmp eq i64 %1173, 0
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %76, align 1, !tbaa !2448
  %1190 = lshr i64 %1173, 63
  %1191 = trunc i64 %1190 to i8
  store i8 %1191, i8* %77, align 1, !tbaa !2449
  %1192 = lshr i64 %1165, 63
  %1193 = xor i64 %1190, %1192
  %1194 = xor i64 %1190, %1172
  %1195 = add nuw nsw i64 %1193, %1194
  %1196 = icmp eq i64 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %78, align 1, !tbaa !2450
  %1198 = load i64, i64* %RBP, align 8
  %1199 = add i64 %1198, -48
  %1200 = add i64 %551, 63
  store i64 %1200, i64* %PC, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = shl nsw i64 %1203, 8
  store i64 %1204, i64* %RCX, align 8, !tbaa !2428
  %1205 = lshr i64 %1203, 55
  %1206 = and i64 %1205, 1
  %1207 = add i64 %1204, %1173
  store i64 %1207, i64* %RAX, align 8, !tbaa !2428
  %1208 = icmp ult i64 %1207, %1173
  %1209 = icmp ult i64 %1207, %1204
  %1210 = or i1 %1208, %1209
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %73, align 1, !tbaa !2432
  %1212 = trunc i64 %1207 to i32
  %1213 = and i32 %1212, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213) #8
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %74, align 1, !tbaa !2446
  %1218 = xor i64 %1173, %1207
  %1219 = lshr i64 %1218, 4
  %1220 = trunc i64 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %75, align 1, !tbaa !2447
  %1222 = icmp eq i64 %1207, 0
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %76, align 1, !tbaa !2448
  %1224 = lshr i64 %1207, 63
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %77, align 1, !tbaa !2449
  %1226 = xor i64 %1224, %1190
  %1227 = xor i64 %1224, %1206
  %1228 = add nuw nsw i64 %1226, %1227
  %1229 = icmp eq i64 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %78, align 1, !tbaa !2450
  %1231 = add i64 %1198, -56
  %1232 = add i64 %551, 74
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = sext i32 %1234 to i64
  store i64 %1235, i64* %RCX, align 8, !tbaa !2428
  %1236 = load i64, i64* %RDX, align 8
  %1237 = shl nsw i64 %1235, 2
  %1238 = add i64 %1237, %1207
  %1239 = add i64 %551, 77
  store i64 %1239, i64* %PC, align 8
  %1240 = trunc i64 %1236 to i32
  %1241 = inttoptr i64 %1238 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = add i32 %1242, %1240
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RDX, align 8, !tbaa !2428
  %1245 = icmp ult i32 %1243, %1240
  %1246 = icmp ult i32 %1243, %1242
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %73, align 1, !tbaa !2432
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249) #8
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %74, align 1, !tbaa !2446
  %1254 = xor i32 %1242, %1240
  %1255 = xor i32 %1254, %1243
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %75, align 1, !tbaa !2447
  %1259 = icmp eq i32 %1243, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %76, align 1, !tbaa !2448
  %1261 = lshr i32 %1243, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %77, align 1, !tbaa !2449
  %1263 = lshr i32 %1240, 31
  %1264 = lshr i32 %1242, 31
  %1265 = xor i32 %1261, %1263
  %1266 = xor i32 %1261, %1264
  %1267 = add nuw nsw i32 %1265, %1266
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %78, align 1, !tbaa !2450
  %1270 = load i64, i64* %RBP, align 8
  %1271 = add i64 %1270, 24
  %1272 = add i64 %551, 81
  store i64 %1272, i64* %PC, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RAX, align 8, !tbaa !2428
  %1275 = add i64 %1270, -52
  %1276 = add i64 %551, 85
  store i64 %1276, i64* %PC, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sext i32 %1278 to i64
  %1280 = mul nsw i64 %1279, 1536
  store i64 %1280, i64* %RCX, align 8, !tbaa !2428
  %1281 = lshr i64 %1280, 63
  %1282 = add i64 %1280, %1274
  store i64 %1282, i64* %RAX, align 8, !tbaa !2428
  %1283 = icmp ult i64 %1282, %1274
  %1284 = icmp ult i64 %1282, %1280
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %73, align 1, !tbaa !2432
  %1287 = trunc i64 %1282 to i32
  %1288 = and i32 %1287, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288) #8
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %74, align 1, !tbaa !2446
  %1293 = xor i64 %1274, %1282
  %1294 = lshr i64 %1293, 4
  %1295 = trunc i64 %1294 to i8
  %1296 = and i8 %1295, 1
  store i8 %1296, i8* %75, align 1, !tbaa !2447
  %1297 = icmp eq i64 %1282, 0
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %76, align 1, !tbaa !2448
  %1299 = lshr i64 %1282, 63
  %1300 = trunc i64 %1299 to i8
  store i8 %1300, i8* %77, align 1, !tbaa !2449
  %1301 = lshr i64 %1274, 63
  %1302 = xor i64 %1299, %1301
  %1303 = xor i64 %1299, %1281
  %1304 = add nuw nsw i64 %1302, %1303
  %1305 = icmp eq i64 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %78, align 1, !tbaa !2450
  %1307 = add i64 %1270, -48
  %1308 = add i64 %551, 99
  store i64 %1308, i64* %PC, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = shl nsw i64 %1311, 8
  store i64 %1312, i64* %RCX, align 8, !tbaa !2428
  %1313 = lshr i64 %1311, 55
  %1314 = and i64 %1313, 1
  %1315 = add i64 %1312, %1282
  store i64 %1315, i64* %RAX, align 8, !tbaa !2428
  %1316 = icmp ult i64 %1315, %1282
  %1317 = icmp ult i64 %1315, %1312
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %73, align 1, !tbaa !2432
  %1320 = trunc i64 %1315 to i32
  %1321 = and i32 %1320, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321) #8
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %74, align 1, !tbaa !2446
  %1326 = xor i64 %1282, %1315
  %1327 = lshr i64 %1326, 4
  %1328 = trunc i64 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %75, align 1, !tbaa !2447
  %1330 = icmp eq i64 %1315, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %76, align 1, !tbaa !2448
  %1332 = lshr i64 %1315, 63
  %1333 = trunc i64 %1332 to i8
  store i8 %1333, i8* %77, align 1, !tbaa !2449
  %1334 = xor i64 %1332, %1299
  %1335 = xor i64 %1332, %1314
  %1336 = add nuw nsw i64 %1334, %1335
  %1337 = icmp eq i64 %1336, 2
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %78, align 1, !tbaa !2450
  %1339 = load i64, i64* %RBP, align 8
  %1340 = add i64 %1339, -56
  %1341 = add i64 %551, 110
  store i64 %1341, i64* %PC, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = sext i32 %1343 to i64
  store i64 %1344, i64* %RCX, align 8, !tbaa !2428
  %1345 = shl nsw i64 %1344, 2
  %1346 = add i64 %1345, %1315
  %1347 = load i32, i32* %EDX, align 4
  %1348 = add i64 %551, 113
  store i64 %1348, i64* %PC, align 8
  %1349 = inttoptr i64 %1346 to i32*
  store i32 %1347, i32* %1349, align 4
  %1350 = load i64, i64* %RBP, align 8
  %1351 = add i64 %1350, -56
  %1352 = load i64, i64* %PC, align 8
  %1353 = add i64 %1352, 3
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = add i32 %1355, 1
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX, align 8, !tbaa !2428
  %1358 = icmp eq i32 %1355, -1
  %1359 = icmp eq i32 %1356, 0
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %73, align 1, !tbaa !2432
  %1362 = and i32 %1356, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362) #8
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %74, align 1, !tbaa !2446
  %1367 = xor i32 %1355, %1356
  %1368 = lshr i32 %1367, 4
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %75, align 1, !tbaa !2447
  %1371 = icmp eq i32 %1356, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %76, align 1, !tbaa !2448
  %1373 = lshr i32 %1356, 31
  %1374 = trunc i32 %1373 to i8
  store i8 %1374, i8* %77, align 1, !tbaa !2449
  %1375 = lshr i32 %1355, 31
  %1376 = xor i32 %1373, %1375
  %1377 = add nuw nsw i32 %1376, %1373
  %1378 = icmp eq i32 %1377, 2
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %78, align 1, !tbaa !2450
  %1380 = add i64 %1352, 9
  store i64 %1380, i64* %PC, align 8
  store i32 %1356, i32* %1354, align 4
  %1381 = load i64, i64* %PC, align 8
  %1382 = add i64 %1381, -139
  store i64 %1382, i64* %79, align 8, !tbaa !2428
  br label %block_400fc5

block_400e90:                                     ; preds = %block_40118d, %block_400e60
  %1383 = phi i64 [ %1491, %block_40118d ], [ %.pre, %block_400e60 ]
  %1384 = load i64, i64* %RBP, align 8
  %1385 = add i64 %1384, -44
  %1386 = add i64 %1383, 3
  store i64 %1386, i64* %PC, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RAX, align 8, !tbaa !2428
  %1390 = add i64 %1384, -4
  %1391 = add i64 %1383, 6
  store i64 %1391, i64* %PC, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sub i32 %1388, %1393
  %1395 = icmp ult i32 %1388, %1393
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %73, align 1, !tbaa !2432
  %1397 = and i32 %1394, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397) #8
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %74, align 1, !tbaa !2446
  %1402 = xor i32 %1393, %1388
  %1403 = xor i32 %1402, %1394
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %75, align 1, !tbaa !2447
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %76, align 1, !tbaa !2448
  %1409 = lshr i32 %1394, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %77, align 1, !tbaa !2449
  %1411 = lshr i32 %1388, 31
  %1412 = lshr i32 %1393, 31
  %1413 = xor i32 %1412, %1411
  %1414 = xor i32 %1409, %1411
  %1415 = add nuw nsw i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %78, align 1, !tbaa !2450
  %1418 = icmp ne i8 %1410, 0
  %1419 = xor i1 %1418, %1416
  %.v = select i1 %1419, i64 12, i64 784
  %1420 = add i64 %1383, %.v
  store i64 %1420, i64* %79, align 8, !tbaa !2428
  br i1 %1419, label %block_400e9c, label %block_4011a0

block_40110f:                                     ; preds = %block_401109, %block_401120
  %1421 = phi i64 [ %.pre13, %block_401109 ], [ %1094, %block_401120 ]
  %1422 = load i64, i64* %RBP, align 8
  %1423 = add i64 %1422, -48
  %1424 = add i64 %1421, 3
  store i64 %1424, i64* %PC, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RAX, align 8, !tbaa !2428
  %1428 = add i64 %1422, -8
  %1429 = add i64 %1421, 6
  store i64 %1429, i64* %PC, align 8
  %1430 = inttoptr i64 %1428 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = add i32 %1431, -1
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RCX, align 8, !tbaa !2428
  %1434 = lshr i32 %1432, 31
  %1435 = sub i32 %1426, %1432
  %1436 = icmp ult i32 %1426, %1432
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %73, align 1, !tbaa !2432
  %1438 = and i32 %1435, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438) #8
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %74, align 1, !tbaa !2446
  %1443 = xor i32 %1432, %1426
  %1444 = xor i32 %1443, %1435
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %75, align 1, !tbaa !2447
  %1448 = icmp eq i32 %1435, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %76, align 1, !tbaa !2448
  %1450 = lshr i32 %1435, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %77, align 1, !tbaa !2449
  %1452 = lshr i32 %1426, 31
  %1453 = xor i32 %1434, %1452
  %1454 = xor i32 %1450, %1452
  %1455 = add nuw nsw i32 %1454, %1453
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %78, align 1, !tbaa !2450
  %1458 = icmp ne i8 %1451, 0
  %1459 = xor i1 %1458, %1456
  %.demorgan29 = or i1 %1448, %1459
  %.v30 = select i1 %.demorgan29, i64 17, i64 107
  %1460 = add i64 %1421, %.v30
  store i64 %1460, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan29, label %block_401120, label %block_40117a

block_40118d:                                     ; preds = %block_4010f8
  %1461 = add i64 %112, -44
  %1462 = add i64 %150, 8
  store i64 %1462, i64* %PC, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, 1
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RAX, align 8, !tbaa !2428
  %1467 = icmp eq i32 %1464, -1
  %1468 = icmp eq i32 %1465, 0
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %73, align 1, !tbaa !2432
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471) #8
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %74, align 1, !tbaa !2446
  %1476 = xor i32 %1464, %1465
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %75, align 1, !tbaa !2447
  %1480 = icmp eq i32 %1465, 0
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %76, align 1, !tbaa !2448
  %1482 = lshr i32 %1465, 31
  %1483 = trunc i32 %1482 to i8
  store i8 %1483, i8* %77, align 1, !tbaa !2449
  %1484 = lshr i32 %1464, 31
  %1485 = xor i32 %1482, %1484
  %1486 = add nuw nsw i32 %1485, %1482
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %78, align 1, !tbaa !2450
  %1489 = add i64 %150, 14
  store i64 %1489, i64* %PC, align 8
  store i32 %1465, i32* %1463, align 4
  %1490 = load i64, i64* %PC, align 8
  %1491 = add i64 %1490, -779
  store i64 %1491, i64* %79, align 8, !tbaa !2428
  br label %block_400e90

block_401109:                                     ; preds = %block_4010f8
  %1492 = add i64 %150, 3
  store i64 %1492, i64* %PC, align 8
  %1493 = load i32, i32* %115, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RAX, align 8, !tbaa !2428
  %1495 = add i64 %112, -48
  %1496 = add i64 %150, 6
  store i64 %1496, i64* %PC, align 8
  %1497 = inttoptr i64 %1495 to i32*
  store i32 %1493, i32* %1497, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_40110f

block_4010cd:                                     ; preds = %block_4010bc
  %1498 = add i64 %695, -32
  %1499 = add i64 %733, 4
  store i64 %1499, i64* %PC, align 8
  %1500 = inttoptr i64 %1498 to i64*
  %1501 = load i64, i64* %1500, align 8
  store i64 %1501, i64* %RAX, align 8, !tbaa !2428
  %1502 = add i64 %733, 8
  store i64 %1502, i64* %PC, align 8
  %1503 = load i32, i32* %698, align 4
  %1504 = sext i32 %1503 to i64
  store i64 %1504, i64* %RCX, align 8, !tbaa !2428
  %1505 = shl nsw i64 %1504, 2
  %1506 = add i64 %1505, %1501
  %1507 = add i64 %733, 11
  store i64 %1507, i64* %PC, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RDX, align 8, !tbaa !2428
  %1511 = add i64 %695, -40
  %1512 = add i64 %733, 15
  store i64 %1512, i64* %PC, align 8
  %1513 = inttoptr i64 %1511 to i64*
  %1514 = load i64, i64* %1513, align 8
  store i64 %1514, i64* %RAX, align 8, !tbaa !2428
  %1515 = add i64 %733, 19
  store i64 %1515, i64* %PC, align 8
  %1516 = load i32, i32* %698, align 4
  %1517 = sext i32 %1516 to i64
  store i64 %1517, i64* %RCX, align 8, !tbaa !2428
  %1518 = shl nsw i64 %1517, 2
  %1519 = add i64 %1518, %1514
  %1520 = add i64 %733, 22
  store i64 %1520, i64* %PC, align 8
  %1521 = inttoptr i64 %1519 to i32*
  store i32 %1509, i32* %1521, align 4
  %1522 = load i64, i64* %RBP, align 8
  %1523 = add i64 %1522, -48
  %1524 = load i64, i64* %PC, align 8
  %1525 = add i64 %1524, 3
  store i64 %1525, i64* %PC, align 8
  %1526 = inttoptr i64 %1523 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = add i32 %1527, 1
  %1529 = zext i32 %1528 to i64
  store i64 %1529, i64* %RAX, align 8, !tbaa !2428
  %1530 = icmp eq i32 %1527, -1
  %1531 = icmp eq i32 %1528, 0
  %1532 = or i1 %1530, %1531
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %73, align 1, !tbaa !2432
  %1534 = and i32 %1528, 255
  %1535 = tail call i32 @llvm.ctpop.i32(i32 %1534) #8
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %74, align 1, !tbaa !2446
  %1539 = xor i32 %1527, %1528
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %75, align 1, !tbaa !2447
  %1543 = icmp eq i32 %1528, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %76, align 1, !tbaa !2448
  %1545 = lshr i32 %1528, 31
  %1546 = trunc i32 %1545 to i8
  store i8 %1546, i8* %77, align 1, !tbaa !2449
  %1547 = lshr i32 %1527, 31
  %1548 = xor i32 %1545, %1547
  %1549 = add nuw nsw i32 %1548, %1545
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %78, align 1, !tbaa !2450
  %1552 = add i64 %1524, 9
  store i64 %1552, i64* %PC, align 8
  store i32 %1528, i32* %1526, align 4
  %1553 = load i64, i64* %PC, align 8
  %1554 = add i64 %1553, -48
  store i64 %1554, i64* %79, align 8, !tbaa !2428
  br label %block_4010bc

block_400f80:                                     ; preds = %block_400f6f
  %1555 = add i64 %655, 16
  %1556 = add i64 %693, 4
  store i64 %1556, i64* %PC, align 8
  %1557 = inttoptr i64 %1555 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RAX, align 8, !tbaa !2428
  %1559 = add i64 %655, -52
  %1560 = add i64 %693, 8
  store i64 %1560, i64* %PC, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = sext i32 %1562 to i64
  %1564 = mul nsw i64 %1563, 1536
  store i64 %1564, i64* %RCX, align 8, !tbaa !2428
  %1565 = lshr i64 %1564, 63
  %1566 = add i64 %1564, %1558
  store i64 %1566, i64* %RAX, align 8, !tbaa !2428
  %1567 = icmp ult i64 %1566, %1558
  %1568 = icmp ult i64 %1566, %1564
  %1569 = or i1 %1567, %1568
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %73, align 1, !tbaa !2432
  %1571 = trunc i64 %1566 to i32
  %1572 = and i32 %1571, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572) #8
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %74, align 1, !tbaa !2446
  %1577 = xor i64 %1558, %1566
  %1578 = lshr i64 %1577, 4
  %1579 = trunc i64 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %75, align 1, !tbaa !2447
  %1581 = icmp eq i64 %1566, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %76, align 1, !tbaa !2448
  %1583 = lshr i64 %1566, 63
  %1584 = trunc i64 %1583 to i8
  store i8 %1584, i8* %77, align 1, !tbaa !2449
  %1585 = lshr i64 %1558, 63
  %1586 = xor i64 %1583, %1585
  %1587 = xor i64 %1583, %1565
  %1588 = add nuw nsw i64 %1586, %1587
  %1589 = icmp eq i64 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %78, align 1, !tbaa !2450
  %1591 = add i64 %693, 22
  store i64 %1591, i64* %PC, align 8
  %1592 = load i32, i32* %658, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = shl nsw i64 %1593, 8
  store i64 %1594, i64* %RCX, align 8, !tbaa !2428
  %1595 = lshr i64 %1593, 55
  %1596 = and i64 %1595, 1
  %1597 = add i64 %1594, %1566
  store i64 %1597, i64* %RAX, align 8, !tbaa !2428
  %1598 = icmp ult i64 %1597, %1566
  %1599 = icmp ult i64 %1597, %1594
  %1600 = or i1 %1598, %1599
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %73, align 1, !tbaa !2432
  %1602 = trunc i64 %1597 to i32
  %1603 = and i32 %1602, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603) #8
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %74, align 1, !tbaa !2446
  %1608 = xor i64 %1566, %1597
  %1609 = lshr i64 %1608, 4
  %1610 = trunc i64 %1609 to i8
  %1611 = and i8 %1610, 1
  store i8 %1611, i8* %75, align 1, !tbaa !2447
  %1612 = icmp eq i64 %1597, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %76, align 1, !tbaa !2448
  %1614 = lshr i64 %1597, 63
  %1615 = trunc i64 %1614 to i8
  store i8 %1615, i8* %77, align 1, !tbaa !2449
  %1616 = xor i64 %1614, %1583
  %1617 = xor i64 %1614, %1596
  %1618 = add nuw nsw i64 %1616, %1617
  %1619 = icmp eq i64 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %78, align 1, !tbaa !2450
  %1621 = add i64 %693, 31
  store i64 %1621, i64* %PC, align 8
  %1622 = inttoptr i64 %1597 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RDX, align 8, !tbaa !2428
  %1625 = load i64, i64* %RBP, align 8
  %1626 = add i64 %1625, 24
  %1627 = add i64 %693, 35
  store i64 %1627, i64* %PC, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %RAX, align 8, !tbaa !2428
  %1630 = add i64 %1625, -52
  %1631 = add i64 %693, 39
  store i64 %1631, i64* %PC, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = sext i32 %1633 to i64
  %1635 = mul nsw i64 %1634, 1536
  store i64 %1635, i64* %RCX, align 8, !tbaa !2428
  %1636 = lshr i64 %1635, 63
  %1637 = add i64 %1635, %1629
  store i64 %1637, i64* %RAX, align 8, !tbaa !2428
  %1638 = icmp ult i64 %1637, %1629
  %1639 = icmp ult i64 %1637, %1635
  %1640 = or i1 %1638, %1639
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %73, align 1, !tbaa !2432
  %1642 = trunc i64 %1637 to i32
  %1643 = and i32 %1642, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643) #8
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %74, align 1, !tbaa !2446
  %1648 = xor i64 %1629, %1637
  %1649 = lshr i64 %1648, 4
  %1650 = trunc i64 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %75, align 1, !tbaa !2447
  %1652 = icmp eq i64 %1637, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %76, align 1, !tbaa !2448
  %1654 = lshr i64 %1637, 63
  %1655 = trunc i64 %1654 to i8
  store i8 %1655, i8* %77, align 1, !tbaa !2449
  %1656 = lshr i64 %1629, 63
  %1657 = xor i64 %1654, %1656
  %1658 = xor i64 %1654, %1636
  %1659 = add nuw nsw i64 %1657, %1658
  %1660 = icmp eq i64 %1659, 2
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %78, align 1, !tbaa !2450
  %1662 = add i64 %1625, -48
  %1663 = add i64 %693, 53
  store i64 %1663, i64* %PC, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = sext i32 %1665 to i64
  %1667 = shl nsw i64 %1666, 8
  store i64 %1667, i64* %RCX, align 8, !tbaa !2428
  %1668 = lshr i64 %1666, 55
  %1669 = and i64 %1668, 1
  %1670 = add i64 %1667, %1637
  store i64 %1670, i64* %RAX, align 8, !tbaa !2428
  %1671 = icmp ult i64 %1670, %1637
  %1672 = icmp ult i64 %1670, %1667
  %1673 = or i1 %1671, %1672
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %73, align 1, !tbaa !2432
  %1675 = trunc i64 %1670 to i32
  %1676 = and i32 %1675, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676) #8
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %74, align 1, !tbaa !2446
  %1681 = xor i64 %1637, %1670
  %1682 = lshr i64 %1681, 4
  %1683 = trunc i64 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %75, align 1, !tbaa !2447
  %1685 = icmp eq i64 %1670, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %76, align 1, !tbaa !2448
  %1687 = lshr i64 %1670, 63
  %1688 = trunc i64 %1687 to i8
  store i8 %1688, i8* %77, align 1, !tbaa !2449
  %1689 = xor i64 %1687, %1654
  %1690 = xor i64 %1687, %1669
  %1691 = add nuw nsw i64 %1689, %1690
  %1692 = icmp eq i64 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %78, align 1, !tbaa !2450
  %1694 = load i32, i32* %EDX, align 4
  %1695 = add i64 %693, 62
  store i64 %1695, i64* %PC, align 8
  %1696 = inttoptr i64 %1670 to i32*
  store i32 %1694, i32* %1696, align 4
  %1697 = load i64, i64* %RBP, align 8
  %1698 = add i64 %1697, -56
  %1699 = load i64, i64* %PC, align 8
  %1700 = add i64 %1699, 7
  store i64 %1700, i64* %PC, align 8
  %1701 = inttoptr i64 %1698 to i32*
  store i32 1, i32* %1701, align 4
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %7, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -88
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 80
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, 16
  %26 = xor i64 %25, %14
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2449
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2450
  %43 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 8) to i64*), align 8
  %45 = bitcast [32 x %union.VectorReg]* %5 to double*
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %46, align 1, !tbaa !2452
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %49 = add i64 %10, -16
  %50 = load i32, i32* %EDI, align 4
  %51 = add i64 %13, 18
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RSI, align 8
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RDX, align 8
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -40
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 5
  store i64 %68, i64* %PC, align 8
  %69 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %70 = load i64, i64* %69, align 1
  %71 = inttoptr i64 %66 to i64*
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -28
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = bitcast %union.VectorReg* %6 to i8*
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %81 = getelementptr inbounds i8, i8* %78, i64 12
  %82 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %83 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %84 = getelementptr inbounds i8, i8* %43, i64 4
  %85 = bitcast i8* %84 to i32*
  %86 = bitcast i64* %47 to i32*
  %87 = getelementptr inbounds i8, i8* %43, i64 12
  %88 = bitcast i8* %87 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4011d7

block_4012a3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -32
  %91 = add i64 %461, 8
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, 1
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = icmp eq i32 %93, -1
  %97 = icmp eq i32 %94, 0
  %98 = or i1 %96, %97
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %17, align 1, !tbaa !2432
  %100 = and i32 %94, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #8
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %24, align 1, !tbaa !2446
  %105 = xor i32 %93, %94
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %30, align 1, !tbaa !2447
  %109 = icmp eq i32 %94, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %33, align 1, !tbaa !2448
  %111 = lshr i32 %94, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %36, align 1, !tbaa !2449
  %113 = lshr i32 %93, 31
  %114 = xor i32 %111, %113
  %115 = add nuw nsw i32 %114, %111
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %42, align 1, !tbaa !2450
  %118 = add i64 %461, 14
  store i64 %118, i64* %PC, align 8
  store i32 %94, i32* %92, align 4
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, -199
  store i64 %120, i64* %77, align 8, !tbaa !2428
  br label %block_4011ea

block_4012b6:                                     ; preds = %block_4011ea
  %121 = add i64 %192, -28
  %122 = add i64 %228, 8
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, 1
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RAX, align 8, !tbaa !2428
  %127 = icmp eq i32 %124, -1
  %128 = icmp eq i32 %125, 0
  %129 = or i1 %127, %128
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %17, align 1, !tbaa !2432
  %131 = and i32 %125, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131) #8
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %24, align 1, !tbaa !2446
  %136 = xor i32 %124, %125
  %137 = lshr i32 %136, 4
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %30, align 1, !tbaa !2447
  %140 = icmp eq i32 %125, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %33, align 1, !tbaa !2448
  %142 = lshr i32 %125, 31
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %36, align 1, !tbaa !2449
  %144 = lshr i32 %124, 31
  %145 = xor i32 %142, %144
  %146 = add nuw nsw i32 %145, %142
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %42, align 1, !tbaa !2450
  %149 = add i64 %228, 14
  store i64 %149, i64* %PC, align 8
  store i32 %125, i32* %123, align 4
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, -237
  store i64 %151, i64* %77, align 8, !tbaa !2428
  br label %block_4011d7

block_4012d0:                                     ; preds = %block_40125e, %block_4012c9
  %152 = phi i64 [ %.pre8, %block_4012c9 ], [ %288, %block_40125e ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4012c9 ], [ %275, %block_40125e ]
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -4
  %155 = add i64 %152, 3
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = load i64, i64* %RSP, align 8
  %160 = add i64 %159, 80
  store i64 %160, i64* %RSP, align 8, !tbaa !2428
  %161 = icmp ugt i64 %159, -81
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %17, align 1, !tbaa !2432
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164) #8
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %24, align 1, !tbaa !2446
  %169 = xor i64 %159, 16
  %170 = xor i64 %169, %160
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %30, align 1, !tbaa !2447
  %174 = icmp eq i64 %160, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %33, align 1, !tbaa !2448
  %176 = lshr i64 %160, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %36, align 1, !tbaa !2449
  %178 = lshr i64 %159, 63
  %179 = xor i64 %176, %178
  %180 = add nuw nsw i64 %179, %176
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %42, align 1, !tbaa !2450
  %183 = add i64 %152, 8
  store i64 %183, i64* %PC, align 8
  %184 = add i64 %159, 88
  %185 = inttoptr i64 %160 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RBP, align 8, !tbaa !2428
  store i64 %184, i64* %9, align 8, !tbaa !2428
  %187 = add i64 %152, 9
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %184 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %77, align 8, !tbaa !2428
  %190 = add i64 %159, 96
  store i64 %190, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4011ea:                                     ; preds = %block_4011e3, %block_4012a3
  %191 = phi i64 [ %.pre6, %block_4011e3 ], [ %120, %block_4012a3 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_4011e3 ], [ %456, %block_4012a3 ]
  %192 = load i64, i64* %RBP, align 8
  %193 = add i64 %192, -32
  %194 = add i64 %191, 3
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2428
  %198 = add i64 %192, -8
  %199 = add i64 %191, 6
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sub i32 %196, %201
  %203 = icmp ult i32 %196, %201
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %17, align 1, !tbaa !2432
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205) #8
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %24, align 1, !tbaa !2446
  %210 = xor i32 %201, %196
  %211 = xor i32 %210, %202
  %212 = lshr i32 %211, 4
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %30, align 1, !tbaa !2447
  %215 = icmp eq i32 %202, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %33, align 1, !tbaa !2448
  %217 = lshr i32 %202, 31
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %36, align 1, !tbaa !2449
  %219 = lshr i32 %196, 31
  %220 = lshr i32 %201, 31
  %221 = xor i32 %220, %219
  %222 = xor i32 %217, %219
  %223 = add nuw nsw i32 %222, %221
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %42, align 1, !tbaa !2450
  %226 = icmp ne i8 %218, 0
  %227 = xor i1 %226, %224
  %.v9 = select i1 %227, i64 12, i64 204
  %228 = add i64 %191, %.v9
  store i64 %228, i64* %77, align 8, !tbaa !2428
  br i1 %227, label %block_4011f6, label %block_4012b6

block_4012c9:                                     ; preds = %block_4011d7
  %229 = add i64 %466, -4
  %230 = add i64 %502, 7
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  store i32 1, i32* %231, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4012d0

block_40125e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 94), i64* %RSI, align 8, !tbaa !2428
  %232 = load i64, i64* @stderr, align 32
  store i64 %232, i64* %RDI, align 8, !tbaa !2428
  %233 = load i64, i64* %RBP, align 8
  %234 = add i64 %233, -28
  %235 = add i64 %461, 21
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RDX, align 8, !tbaa !2428
  %239 = add i64 %233, -32
  %240 = add i64 %461, 24
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = add i64 %233, -48
  %245 = add i64 %461, 29
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %247, i64* %248, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %250 = add i64 %461, 33
  store i64 %250, i64* %PC, align 8
  %251 = load i32, i32* %236, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %249, align 8, !tbaa !2428
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %254 = add i64 %461, 37
  store i64 %254, i64* %PC, align 8
  %255 = load i32, i32* %241, align 4
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %253, align 8, !tbaa !2428
  %257 = add i64 %233, -56
  %258 = add i64 %461, 42
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %260, i64* %261, align 1, !tbaa !2452
  %262 = bitcast i64* %80 to double*
  store double 0.000000e+00, double* %262, align 1, !tbaa !2452
  %263 = add i64 %233, -40
  %264 = add i64 %461, 47
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %266, i64* %267, align 1, !tbaa !2452
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %269 = bitcast i64* %268 to double*
  store double 0.000000e+00, double* %269, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %270 = add i64 %461, -3294
  %271 = add i64 %461, 54
  %272 = load i64, i64* %9, align 8, !tbaa !2428
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %9, align 8, !tbaa !2428
  store i64 %270, i64* %77, align 8, !tbaa !2428
  %275 = tail call fastcc %struct.Memory* @ext_6020c0_fprintf(%struct.State* nonnull %0, %struct.Memory* %456)
  %276 = load i64, i64* %RBP, align 8
  %277 = add i64 %276, -4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, 7
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %277 to i32*
  store i32 0, i32* %280, align 4
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -68
  %283 = load i32, i32* %EAX, align 4
  %284 = load i64, i64* %PC, align 8
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %282 to i32*
  store i32 %283, i32* %286, align 4
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 50
  store i64 %288, i64* %77, align 8, !tbaa !2428
  br label %block_4012d0

block_4011f6:                                     ; preds = %block_4011ea
  %289 = add i64 %192, -16
  %290 = add i64 %228, 4
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = add i64 %192, -28
  %294 = add i64 %228, 8
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = mul nsw i64 %297, 24
  store i64 %298, i64* %RCX, align 8, !tbaa !2428
  %299 = lshr i64 %298, 63
  %300 = add i64 %298, %292
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = icmp ult i64 %300, %292
  %302 = icmp ult i64 %300, %298
  %303 = or i1 %301, %302
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %17, align 1, !tbaa !2432
  %305 = trunc i64 %300 to i32
  %306 = and i32 %305, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306) #8
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %24, align 1, !tbaa !2446
  %311 = xor i64 %298, %292
  %312 = xor i64 %311, %300
  %313 = lshr i64 %312, 4
  %314 = trunc i64 %313 to i8
  %315 = and i8 %314, 1
  store i8 %315, i8* %30, align 1, !tbaa !2447
  %316 = icmp eq i64 %300, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %33, align 1, !tbaa !2448
  %318 = lshr i64 %300, 63
  %319 = trunc i64 %318 to i8
  store i8 %319, i8* %36, align 1, !tbaa !2449
  %320 = lshr i64 %292, 63
  %321 = xor i64 %318, %320
  %322 = xor i64 %318, %299
  %323 = add nuw nsw i64 %321, %322
  %324 = icmp eq i64 %323, 2
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %42, align 1, !tbaa !2450
  %326 = add i64 %228, 19
  store i64 %326, i64* %PC, align 8
  %327 = load i32, i32* %195, align 4
  %328 = sext i32 %327 to i64
  store i64 %328, i64* %RCX, align 8, !tbaa !2428
  %329 = shl nsw i64 %328, 2
  %330 = add i64 %329, %300
  %331 = add i64 %228, 22
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RDX, align 8, !tbaa !2428
  %335 = sitofp i32 %333 to double
  store double %335, double* %45, align 1, !tbaa !2452
  %336 = add i64 %192, -48
  %337 = add i64 %228, 31
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to double*
  store double %335, double* %338, align 8
  %339 = load i64, i64* %RBP, align 8
  %340 = add i64 %339, -24
  %341 = load i64, i64* %PC, align 8
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %340 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = add i64 %339, -28
  %346 = add i64 %341, 8
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = mul nsw i64 %349, 24
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = lshr i64 %350, 63
  %352 = add i64 %350, %344
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = icmp ult i64 %352, %344
  %354 = icmp ult i64 %352, %350
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %17, align 1, !tbaa !2432
  %357 = trunc i64 %352 to i32
  %358 = and i32 %357, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #8
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %24, align 1, !tbaa !2446
  %363 = xor i64 %350, %344
  %364 = xor i64 %363, %352
  %365 = lshr i64 %364, 4
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %30, align 1, !tbaa !2447
  %368 = icmp eq i64 %352, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %33, align 1, !tbaa !2448
  %370 = lshr i64 %352, 63
  %371 = trunc i64 %370 to i8
  store i8 %371, i8* %36, align 1, !tbaa !2449
  %372 = lshr i64 %344, 63
  %373 = xor i64 %370, %372
  %374 = xor i64 %370, %351
  %375 = add nuw nsw i64 %373, %374
  %376 = icmp eq i64 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %42, align 1, !tbaa !2450
  %378 = add i64 %339, -32
  %379 = add i64 %341, 19
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %RCX, align 8, !tbaa !2428
  %383 = shl nsw i64 %382, 2
  %384 = add i64 %383, %352
  %385 = add i64 %341, 22
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RDX, align 8, !tbaa !2428
  %389 = sitofp i32 %387 to double
  store double %389, double* %45, align 1, !tbaa !2452
  %390 = add i64 %339, -56
  %391 = add i64 %341, 31
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %390 to double*
  store double %389, double* %392, align 8
  %393 = load i64, i64* %RBP, align 8
  %394 = add i64 %393, -48
  %395 = load i64, i64* %PC, align 8
  %396 = add i64 %395, 5
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %394 to double*
  %398 = load double, double* %397, align 8
  store double %398, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %399 = add i64 %393, -56
  %400 = add i64 %395, 10
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to double*
  %402 = load double, double* %401, align 8
  %403 = fsub double %398, %402
  %404 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 16) to i32*), align 16
  %405 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 20) to i32*), align 4
  %406 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 24) to i32*), align 8
  %407 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401460__rodata_type* @seg_401460__rodata to i64), i64 28) to i32*), align 4
  %408 = bitcast %union.VectorReg* %6 to i32*
  store i32 %404, i32* %408, align 1, !tbaa !2455
  %409 = bitcast i8* %79 to i32*
  store i32 %405, i32* %409, align 1, !tbaa !2455
  %410 = bitcast i64* %80 to i32*
  store i32 %406, i32* %410, align 1, !tbaa !2455
  %411 = bitcast i8* %81 to i32*
  store i32 %407, i32* %411, align 1, !tbaa !2455
  %412 = bitcast double %403 to i64
  %413 = load i64, i64* %82, align 1
  %414 = and i64 %413, %412
  %415 = trunc i64 %414 to i32
  %416 = lshr i64 %414, 32
  %417 = trunc i64 %416 to i32
  store i32 %415, i32* %83, align 1, !tbaa !2451
  store i32 %417, i32* %85, align 1, !tbaa !2451
  store i32 0, i32* %86, align 1, !tbaa !2451
  store i32 0, i32* %88, align 1, !tbaa !2451
  %418 = add i64 %393, -64
  %419 = add i64 %395, 26
  store i64 %419, i64* %PC, align 8
  %420 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %421 = load i64, i64* %420, align 1
  %422 = inttoptr i64 %418 to i64*
  store i64 %421, i64* %422, align 8
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -64
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, 5
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %424 to double*
  %428 = load double, double* %427, align 8
  store double %428, double* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %48, align 1, !tbaa !2452
  %429 = add i64 %423, -40
  %430 = add i64 %425, 10
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to double*
  %432 = load double, double* %431, align 8
  %433 = fcmp uno double %428, %432
  br i1 %433, label %434, label %444

; <label>:434:                                    ; preds = %block_4011f6
  %435 = fadd double %428, %432
  %436 = bitcast double %435 to i64
  %437 = and i64 %436, 9221120237041090560
  %438 = icmp eq i64 %437, 9218868437227405312
  %439 = and i64 %436, 2251799813685247
  %440 = icmp ne i64 %439, 0
  %441 = and i1 %438, %440
  br i1 %441, label %442, label %450

; <label>:442:                                    ; preds = %434
  %443 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %430, %struct.Memory* %MEMORY.1) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:444:                                    ; preds = %block_4011f6
  %445 = fcmp ogt double %428, %432
  br i1 %445, label %450, label %446

; <label>:446:                                    ; preds = %444
  %447 = fcmp olt double %428, %432
  br i1 %447, label %450, label %448

; <label>:448:                                    ; preds = %446
  %449 = fcmp oeq double %428, %432
  br i1 %449, label %450, label %454

; <label>:450:                                    ; preds = %448, %446, %444, %434
  %451 = phi i8 [ 0, %444 ], [ 0, %446 ], [ 1, %448 ], [ 1, %434 ]
  %452 = phi i8 [ 0, %444 ], [ 0, %446 ], [ 0, %448 ], [ 1, %434 ]
  %453 = phi i8 [ 0, %444 ], [ 1, %446 ], [ 0, %448 ], [ 1, %434 ]
  store i8 %451, i8* %33, align 1, !tbaa !2454
  store i8 %452, i8* %24, align 1, !tbaa !2454
  store i8 %453, i8* %17, align 1, !tbaa !2454
  br label %454

; <label>:454:                                    ; preds = %450, %448
  store i8 0, i8* %42, align 1, !tbaa !2454
  store i8 0, i8* %36, align 1, !tbaa !2454
  store i8 0, i8* %30, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %454, %442
  %455 = phi i64 [ %.pre7, %442 ], [ %430, %454 ]
  %456 = phi %struct.Memory* [ %443, %442 ], [ %MEMORY.1, %454 ]
  %457 = load i8, i8* %17, align 1, !tbaa !2432
  %458 = load i8, i8* %33, align 1, !tbaa !2448
  %459 = or i8 %458, %457
  %460 = icmp ne i8 %459, 0
  %.v10 = select i1 %460, i64 75, i64 6
  %461 = add i64 %455, %.v10
  store i64 %461, i64* %77, align 8, !tbaa !2428
  br i1 %460, label %block_4012a3, label %block_40125e

block_4011e3:                                     ; preds = %block_4011d7
  %462 = add i64 %466, -32
  %463 = add i64 %502, 7
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  store i32 0, i32* %464, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4011ea

block_4011d7:                                     ; preds = %block_4012b6, %block_4011b0
  %465 = phi i64 [ %.pre, %block_4011b0 ], [ %151, %block_4012b6 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_4011b0 ], [ %MEMORY.1, %block_4012b6 ]
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -28
  %468 = add i64 %465, 3
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX, align 8, !tbaa !2428
  %472 = add i64 %466, -8
  %473 = add i64 %465, 6
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sub i32 %470, %475
  %477 = icmp ult i32 %470, %475
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %17, align 1, !tbaa !2432
  %479 = and i32 %476, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479) #8
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %24, align 1, !tbaa !2446
  %484 = xor i32 %475, %470
  %485 = xor i32 %484, %476
  %486 = lshr i32 %485, 4
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  store i8 %488, i8* %30, align 1, !tbaa !2447
  %489 = icmp eq i32 %476, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %33, align 1, !tbaa !2448
  %491 = lshr i32 %476, 31
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %36, align 1, !tbaa !2449
  %493 = lshr i32 %470, 31
  %494 = lshr i32 %475, 31
  %495 = xor i32 %494, %493
  %496 = xor i32 %491, %493
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %42, align 1, !tbaa !2450
  %500 = icmp ne i8 %492, 0
  %501 = xor i1 %500, %498
  %.v = select i1 %501, i64 12, i64 242
  %502 = add i64 %465, %.v
  store i64 %502, i64* %77, align 8, !tbaa !2428
  br i1 %501, label %block_4011e3, label %block_4012c9
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = add i64 %9, 40
  store i64 %17, i64* %PC, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %9, 41
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %6 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8, !tbaa !2428
  %22 = add i64 %6, 8
  store i64 %22, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401450___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401450:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2428
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8, !tbaa !2428
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8, !tbaa !2428
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10, i64* %14, align 8, !tbaa !2428
  %15 = tail call %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 23
  %18 = add i64 %16, 5
  %19 = load i64, i64* %5, align 8, !tbaa !2428
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  store i64 %20, i64* %5, align 8, !tbaa !2428
  store i64 %17, i64* %14, align 8, !tbaa !2428
  %22 = tail call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* nonnull %0, i64 %17, %struct.Memory* %15)
  %23 = load i64, i64* %PC, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %25 = load i64, i64* %24, align 1
  store i64 %25, i64* bitcast (%polybench_t_start_type* @polybench_t_start to i64*), align 8
  %26 = add i64 %23, 10
  store i64 %26, i64* %PC, align 8
  %27 = load i64, i64* %5, align 8, !tbaa !2428
  %28 = add i64 %27, 8
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RBP, align 8, !tbaa !2428
  store i64 %28, i64* %5, align 8, !tbaa !2428
  %31 = add i64 %23, 11
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %28 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8, !tbaa !2428
  %34 = add i64 %27, 16
  store i64 %34, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %22
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10, i64* %14, align 8, !tbaa !2428
  %15 = tail call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %16 = load i64, i64* %PC, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %18 = load i64, i64* %17, align 1
  store i64 %18, i64* bitcast (%polybench_t_end_type* @polybench_t_end to i64*), align 8
  %19 = add i64 %16, 10
  store i64 %19, i64* %PC, align 8
  %20 = load i64, i64* %5, align 8, !tbaa !2428
  %21 = add i64 %20, 8
  %22 = inttoptr i64 %20 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %21, i64* %5, align 8, !tbaa !2428
  %24 = add i64 %16, 11
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %21 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8, !tbaa !2428
  %27 = add i64 %20, 16
  store i64 %27, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %15
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
