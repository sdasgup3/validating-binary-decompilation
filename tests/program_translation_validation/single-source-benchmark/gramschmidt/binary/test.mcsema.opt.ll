; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401580__rodata_type = type <{ [32 x i8], [7 x i8], [51 x i8], [8 x i8], [76 x i8] }>
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
@stderr = external global i64, align 32
@seg_401580__rodata = internal constant %seg_401580__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006f0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006c0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006c0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401570___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401500___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400700_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400860_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400578__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400780_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400eb0_kernel_gramschmidt_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c40_kernel_gramschmidt_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400650_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401250_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @sqrt(double) local_unnamed_addr #2

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #6

; Function Attrs: noinline
define %struct.Memory* @sub_400578__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400578:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #10
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_400578.block_40058a_crit_edge, label %block_400588

block_400578.block_40058a_crit_edge:              ; preds = %block_400578
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_40058a

block_400588:                                     ; preds = %block_400578
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
  br label %block_40058a

block_40058a:                                     ; preds = %block_400578.block_40058a_crit_edge, %block_400588
  %.pre-phi = phi i64* [ %.pre2, %block_400578.block_40058a_crit_edge ], [ %25, %block_400588 ]
  %29 = phi i64 [ %23, %block_400578.block_40058a_crit_edge ], [ %.pre1, %block_400588 ]
  %30 = phi i64 [ %4, %block_400578.block_40058a_crit_edge ], [ %.pre, %block_400588 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400578.block_40058a_crit_edge ], [ %28, %block_400588 ]
  %31 = add i64 %30, 8
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  %32 = icmp ugt i64 %30, -9
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %5, align 1, !tbaa !2432
  %34 = trunc i64 %31 to i32
  %35 = and i32 %34, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #10
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, i8* %6, align 1, !tbaa !2446
  %40 = xor i64 %30, %31
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %7, align 1, !tbaa !2450
  %44 = icmp eq i64 %31, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %8, align 1, !tbaa !2447
  %46 = lshr i64 %31, 63
  %47 = trunc i64 %46 to i8
  store i8 %47, i8* %9, align 1, !tbaa !2448
  %48 = lshr i64 %30, 63
  %49 = xor i64 %46, %48
  %50 = add nuw nsw i64 %49, %46
  %51 = icmp eq i64 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %10, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400610__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400610:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %4, align 1, !tbaa !2446
  %23 = icmp eq i64 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2447
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2448
  store i8 0, i8* %7, align 1, !tbaa !2449
  store i8 0, i8* %8, align 1, !tbaa !2450
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
  store i64 ptrtoint (void ()* @callback_sub_401570___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401500___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_401120_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401120:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
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
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -88
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 80
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 %12, 16
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2447
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2449
  %44 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %45 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 8) to i64*), align 8
  %46 = bitcast [32 x %union.VectorReg]* %6 to double*
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %45, i64* %47, align 1, !tbaa !2451
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %49 = bitcast i64* %48 to double*
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %50 = add i64 %11, -16
  %51 = load i32, i32* %EDI, align 4
  %52 = add i64 %14, 18
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -12
  %56 = load i32, i32* %ESI, align 4
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RDX, align 8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %RCX, align 8
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -48
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC, align 8
  %76 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %77 = load i64, i64* %76, align 1
  %78 = inttoptr i64 %73 to i64*
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -36
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, 7
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %80 to i32*
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %85 = bitcast %union.VectorReg* %7 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %88 = getelementptr inbounds i8, i8* %85, i64 12
  %89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %90 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %91 = getelementptr inbounds i8, i8* %44, i64 4
  %92 = bitcast i8* %91 to i32*
  %93 = bitcast i64* %48 to i32*
  %94 = getelementptr inbounds i8, i8* %44, i64 12
  %95 = bitcast i8* %94 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40114a

block_40114a:                                     ; preds = %block_401225, %block_401120
  %96 = phi i64 [ %.pre, %block_401120 ], [ %507, %block_401225 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401120 ], [ %MEMORY.1, %block_401225 ]
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -36
  %99 = add i64 %96, 3
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = add i64 %97, -8
  %104 = add i64 %96, 6
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %101, %106
  %108 = icmp ult i32 %101, %106
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %18, align 1, !tbaa !2432
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #10
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %25, align 1, !tbaa !2446
  %115 = xor i32 %106, %101
  %116 = xor i32 %115, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %31, align 1, !tbaa !2450
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %34, align 1, !tbaa !2447
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %37, align 1, !tbaa !2448
  %124 = lshr i32 %101, 31
  %125 = lshr i32 %106, 31
  %126 = xor i32 %125, %124
  %127 = xor i32 %122, %124
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %43, align 1, !tbaa !2449
  %131 = icmp ne i8 %123, 0
  %132 = xor i1 %131, %129
  %.v = select i1 %132, i64 12, i64 238
  %133 = add i64 %96, %.v
  store i64 %133, i64* %84, align 8, !tbaa !2428
  br i1 %132, label %block_401156, label %block_401238

block_401238:                                     ; preds = %block_40114a
  %134 = add i64 %97, -4
  %135 = add i64 %133, 7
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 1, i32* %136, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40123f

block_401156:                                     ; preds = %block_40114a
  %137 = add i64 %97, -40
  %138 = add i64 %133, 7
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 0, i32* %139, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40115d

block_40115d:                                     ; preds = %block_401212, %block_401156
  %140 = phi i64 [ %.pre6, %block_401156 ], [ %266, %block_401212 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401156 ], [ %432, %block_401212 ]
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -40
  %143 = add i64 %140, 3
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = add i64 %141, -12
  %148 = add i64 %140, 6
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sub i32 %145, %150
  %152 = icmp ult i32 %145, %150
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %18, align 1, !tbaa !2432
  %154 = and i32 %151, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154) #10
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %25, align 1, !tbaa !2446
  %159 = xor i32 %150, %145
  %160 = xor i32 %159, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %31, align 1, !tbaa !2450
  %164 = icmp eq i32 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %34, align 1, !tbaa !2447
  %166 = lshr i32 %151, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %37, align 1, !tbaa !2448
  %168 = lshr i32 %145, 31
  %169 = lshr i32 %150, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %166, %168
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %43, align 1, !tbaa !2449
  %175 = icmp ne i8 %167, 0
  %176 = xor i1 %175, %173
  %.v9 = select i1 %176, i64 12, i64 200
  %177 = add i64 %140, %.v9
  store i64 %177, i64* %84, align 8, !tbaa !2428
  br i1 %176, label %block_401169, label %block_401225

block_4011cd:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 98), i64* %RSI, align 8, !tbaa !2428
  %178 = load i64, i64* @stderr, align 32
  store i64 %178, i64* %RDI, align 8, !tbaa !2428
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -36
  %181 = add i64 %437, 21
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = add i64 %179, -40
  %186 = add i64 %437, 24
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = add i64 %179, -56
  %191 = add i64 %437, 29
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %193, i64* %194, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %196 = add i64 %437, 33
  store i64 %196, i64* %PC, align 8
  %197 = load i32, i32* %182, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %195, align 8, !tbaa !2428
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %200 = add i64 %437, 37
  store i64 %200, i64* %PC, align 8
  %201 = load i32, i32* %187, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %199, align 8, !tbaa !2428
  %203 = add i64 %179, -64
  %204 = add i64 %437, 42
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %206, i64* %207, align 1, !tbaa !2451
  %208 = bitcast i64* %87 to double*
  store double 0.000000e+00, double* %208, align 1, !tbaa !2451
  %209 = add i64 %179, -48
  %210 = add i64 %437, 47
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %212, i64* %213, align 1, !tbaa !2451
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %215 = bitcast i64* %214 to double*
  store double 0.000000e+00, double* %215, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %216 = add i64 %437, -3069
  %217 = add i64 %437, 54
  %218 = load i64, i64* %10, align 8, !tbaa !2428
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %217, i64* %220, align 8
  store i64 %219, i64* %10, align 8, !tbaa !2428
  store i64 %216, i64* %84, align 8, !tbaa !2428
  %221 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %432)
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -4
  %224 = load i64, i64* %PC, align 8
  %225 = add i64 %224, 7
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %223 to i32*
  store i32 0, i32* %226, align 4
  %227 = load i64, i64* %RBP, align 8
  %228 = add i64 %227, -76
  %229 = load i32, i32* %EAX, align 4
  %230 = load i64, i64* %PC, align 8
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %232, align 4
  %233 = load i64, i64* %PC, align 8
  %234 = add i64 %233, 50
  store i64 %234, i64* %84, align 8, !tbaa !2428
  br label %block_40123f

block_401212:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -40
  %237 = add i64 %437, 8
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, 1
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = icmp eq i32 %239, -1
  %243 = icmp eq i32 %240, 0
  %244 = or i1 %242, %243
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %18, align 1, !tbaa !2432
  %246 = and i32 %240, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246) #10
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %25, align 1, !tbaa !2446
  %251 = xor i32 %239, %240
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %31, align 1, !tbaa !2450
  %255 = icmp eq i32 %240, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %34, align 1, !tbaa !2447
  %257 = lshr i32 %240, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %37, align 1, !tbaa !2448
  %259 = lshr i32 %239, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %257
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %43, align 1, !tbaa !2449
  %264 = add i64 %437, 14
  store i64 %264, i64* %PC, align 8
  store i32 %240, i32* %238, align 4
  %265 = load i64, i64* %PC, align 8
  %266 = add i64 %265, -195
  store i64 %266, i64* %84, align 8, !tbaa !2428
  br label %block_40115d

block_401169:                                     ; preds = %block_40115d
  %267 = add i64 %141, -24
  %268 = add i64 %177, 4
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RAX, align 8, !tbaa !2428
  %271 = add i64 %141, -36
  %272 = add i64 %177, 8
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = shl nsw i64 %275, 12
  store i64 %276, i64* %RCX, align 8, !tbaa !2428
  %277 = lshr i64 %275, 51
  %278 = and i64 %277, 1
  %279 = add i64 %276, %270
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = icmp ult i64 %279, %270
  %281 = icmp ult i64 %279, %276
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %18, align 1, !tbaa !2432
  %284 = trunc i64 %279 to i32
  %285 = and i32 %284, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285) #10
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %25, align 1, !tbaa !2446
  %290 = xor i64 %270, %279
  %291 = lshr i64 %290, 4
  %292 = trunc i64 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %31, align 1, !tbaa !2450
  %294 = icmp eq i64 %279, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %34, align 1, !tbaa !2447
  %296 = lshr i64 %279, 63
  %297 = trunc i64 %296 to i8
  store i8 %297, i8* %37, align 1, !tbaa !2448
  %298 = lshr i64 %270, 63
  %299 = xor i64 %296, %298
  %300 = xor i64 %296, %278
  %301 = add nuw nsw i64 %299, %300
  %302 = icmp eq i64 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %43, align 1, !tbaa !2449
  %304 = add i64 %177, 19
  store i64 %304, i64* %PC, align 8
  %305 = load i32, i32* %144, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = shl nsw i64 %306, 3
  %308 = add i64 %307, %279
  %309 = add i64 %177, 24
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %311, i64* %312, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %313 = add i64 %141, -56
  %314 = add i64 %177, 29
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %315, align 8
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -32
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = add i64 %316, -36
  %323 = add i64 %318, 8
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = shl nsw i64 %326, 12
  store i64 %327, i64* %RCX, align 8, !tbaa !2428
  %328 = lshr i64 %326, 51
  %329 = and i64 %328, 1
  %330 = add i64 %327, %321
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp ult i64 %330, %321
  %332 = icmp ult i64 %330, %327
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %18, align 1, !tbaa !2432
  %335 = trunc i64 %330 to i32
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336) #10
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %25, align 1, !tbaa !2446
  %341 = xor i64 %321, %330
  %342 = lshr i64 %341, 4
  %343 = trunc i64 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %31, align 1, !tbaa !2450
  %345 = icmp eq i64 %330, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %34, align 1, !tbaa !2447
  %347 = lshr i64 %330, 63
  %348 = trunc i64 %347 to i8
  store i8 %348, i8* %37, align 1, !tbaa !2448
  %349 = lshr i64 %321, 63
  %350 = xor i64 %347, %349
  %351 = xor i64 %347, %329
  %352 = add nuw nsw i64 %350, %351
  %353 = icmp eq i64 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %43, align 1, !tbaa !2449
  %355 = add i64 %316, -40
  %356 = add i64 %318, 19
  store i64 %356, i64* %PC, align 8
  %357 = inttoptr i64 %355 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = shl nsw i64 %359, 3
  %361 = add i64 %360, %330
  %362 = add i64 %318, 24
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %364, i64* %365, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %366 = add i64 %316, -64
  %367 = add i64 %318, 29
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i64*
  store i64 %364, i64* %368, align 8
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -56
  %371 = load i64, i64* %PC, align 8
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %370 to double*
  %374 = load double, double* %373, align 8
  store double %374, double* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %375 = add i64 %369, -64
  %376 = add i64 %371, 10
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to double*
  %378 = load double, double* %377, align 8
  %379 = fsub double %374, %378
  %380 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 16) to i32*), align 16
  %381 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 20) to i32*), align 4
  %382 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 24) to i32*), align 8
  %383 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 28) to i32*), align 4
  %384 = bitcast %union.VectorReg* %7 to i32*
  store i32 %380, i32* %384, align 1, !tbaa !2454
  %385 = bitcast i8* %86 to i32*
  store i32 %381, i32* %385, align 1, !tbaa !2454
  %386 = bitcast i64* %87 to i32*
  store i32 %382, i32* %386, align 1, !tbaa !2454
  %387 = bitcast i8* %88 to i32*
  store i32 %383, i32* %387, align 1, !tbaa !2454
  %388 = bitcast double %379 to i64
  %389 = load i64, i64* %89, align 1
  %390 = and i64 %389, %388
  %391 = trunc i64 %390 to i32
  %392 = lshr i64 %390, 32
  %393 = trunc i64 %392 to i32
  store i32 %391, i32* %90, align 1, !tbaa !2456
  store i32 %393, i32* %92, align 1, !tbaa !2456
  store i32 0, i32* %93, align 1, !tbaa !2456
  store i32 0, i32* %95, align 1, !tbaa !2456
  %394 = add i64 %369, -72
  %395 = add i64 %371, 26
  store i64 %395, i64* %PC, align 8
  %396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %397 = load i64, i64* %396, align 1
  %398 = inttoptr i64 %394 to i64*
  store i64 %397, i64* %398, align 8
  %399 = load i64, i64* %RBP, align 8
  %400 = add i64 %399, -72
  %401 = load i64, i64* %PC, align 8
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403, align 8
  store double %404, double* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %405 = add i64 %399, -48
  %406 = add i64 %401, 10
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to double*
  %408 = load double, double* %407, align 8
  %409 = fcmp uno double %404, %408
  br i1 %409, label %410, label %420

; <label>:410:                                    ; preds = %block_401169
  %411 = fadd double %404, %408
  %412 = bitcast double %411 to i64
  %413 = and i64 %412, 9221120237041090560
  %414 = icmp eq i64 %413, 9218868437227405312
  %415 = and i64 %412, 2251799813685247
  %416 = icmp ne i64 %415, 0
  %417 = and i1 %414, %416
  br i1 %417, label %418, label %426

; <label>:418:                                    ; preds = %410
  %419 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %406, %struct.Memory* %MEMORY.1) #11
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:420:                                    ; preds = %block_401169
  %421 = fcmp ogt double %404, %408
  br i1 %421, label %426, label %422

; <label>:422:                                    ; preds = %420
  %423 = fcmp olt double %404, %408
  br i1 %423, label %426, label %424

; <label>:424:                                    ; preds = %422
  %425 = fcmp oeq double %404, %408
  br i1 %425, label %426, label %430

; <label>:426:                                    ; preds = %424, %422, %420, %410
  %427 = phi i8 [ 0, %420 ], [ 0, %422 ], [ 1, %424 ], [ 1, %410 ]
  %428 = phi i8 [ 0, %420 ], [ 0, %422 ], [ 0, %424 ], [ 1, %410 ]
  %429 = phi i8 [ 0, %420 ], [ 1, %422 ], [ 0, %424 ], [ 1, %410 ]
  store i8 %427, i8* %34, align 1, !tbaa !2453
  store i8 %428, i8* %25, align 1, !tbaa !2453
  store i8 %429, i8* %18, align 1, !tbaa !2453
  br label %430

; <label>:430:                                    ; preds = %426, %424
  store i8 0, i8* %43, align 1, !tbaa !2453
  store i8 0, i8* %37, align 1, !tbaa !2453
  store i8 0, i8* %31, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %430, %418
  %431 = phi i64 [ %.pre7, %418 ], [ %406, %430 ]
  %432 = phi %struct.Memory* [ %419, %418 ], [ %MEMORY.1, %430 ]
  %433 = load i8, i8* %18, align 1, !tbaa !2432
  %434 = load i8, i8* %34, align 1, !tbaa !2447
  %435 = or i8 %434, %433
  %436 = icmp ne i8 %435, 0
  %.v10 = select i1 %436, i64 75, i64 6
  %437 = add i64 %431, %.v10
  store i64 %437, i64* %84, align 8, !tbaa !2428
  br i1 %436, label %block_401212, label %block_4011cd

block_40123f:                                     ; preds = %block_4011cd, %block_401238
  %438 = phi i64 [ %.pre8, %block_401238 ], [ %234, %block_4011cd ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401238 ], [ %221, %block_4011cd ]
  %439 = load i64, i64* %RBP, align 8
  %440 = add i64 %439, -4
  %441 = add i64 %438, 3
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX, align 8, !tbaa !2428
  %445 = load i64, i64* %RSP, align 8
  %446 = add i64 %445, 80
  store i64 %446, i64* %RSP, align 8, !tbaa !2428
  %447 = icmp ugt i64 %445, -81
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %18, align 1, !tbaa !2432
  %449 = trunc i64 %446 to i32
  %450 = and i32 %449, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450) #10
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %25, align 1, !tbaa !2446
  %455 = xor i64 %445, 16
  %456 = xor i64 %455, %446
  %457 = lshr i64 %456, 4
  %458 = trunc i64 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %31, align 1, !tbaa !2450
  %460 = icmp eq i64 %446, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %34, align 1, !tbaa !2447
  %462 = lshr i64 %446, 63
  %463 = trunc i64 %462 to i8
  store i8 %463, i8* %37, align 1, !tbaa !2448
  %464 = lshr i64 %445, 63
  %465 = xor i64 %462, %464
  %466 = add nuw nsw i64 %465, %462
  %467 = icmp eq i64 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %43, align 1, !tbaa !2449
  %469 = add i64 %438, 8
  store i64 %469, i64* %PC, align 8
  %470 = add i64 %445, 88
  %471 = inttoptr i64 %446 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RBP, align 8, !tbaa !2428
  store i64 %470, i64* %10, align 8, !tbaa !2428
  %473 = add i64 %438, 9
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %470 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %84, align 8, !tbaa !2428
  %476 = add i64 %445, 96
  store i64 %476, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_401225:                                     ; preds = %block_40115d
  %477 = add i64 %141, -36
  %478 = add i64 %177, 8
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = icmp eq i32 %480, -1
  %484 = icmp eq i32 %481, 0
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %18, align 1, !tbaa !2432
  %487 = and i32 %481, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #10
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %25, align 1, !tbaa !2446
  %492 = xor i32 %480, %481
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %31, align 1, !tbaa !2450
  %496 = icmp eq i32 %481, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %34, align 1, !tbaa !2447
  %498 = lshr i32 %481, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %37, align 1, !tbaa !2448
  %500 = lshr i32 %480, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %498
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %43, align 1, !tbaa !2449
  %505 = add i64 %177, 14
  store i64 %505, i64* %PC, align 8
  store i32 %481, i32* %479, align 4
  %506 = load i64, i64* %PC, align 8
  %507 = add i64 %506, -233
  store i64 %507, i64* %84, align 8, !tbaa !2428
  br label %block_40114a
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4007e0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
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
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %41 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %42 = bitcast %union.VectorReg* %4 to double*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %45 = fsub double %41, %44
  store double %45, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %43, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %46 = add i64 %11, -561
  %47 = add i64 %11, 42
  %48 = add i64 %8, -32
  %49 = inttoptr i64 %48 to i64*
  store i64 %47, i64* %49, align 8
  store i64 %48, i64* %7, align 8, !tbaa !2428
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %46, i64* %50, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_6020e8_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #10
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %22, align 1, !tbaa !2446
  %69 = xor i64 %58, 16
  %70 = xor i64 %69, %60
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %28, align 1, !tbaa !2450
  %74 = icmp eq i64 %60, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %31, align 1, !tbaa !2447
  %76 = lshr i64 %60, 63
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %34, align 1, !tbaa !2448
  %78 = lshr i64 %58, 63
  %79 = xor i64 %76, %78
  %80 = add nuw nsw i64 %79, %76
  %81 = icmp eq i64 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %40, align 1, !tbaa !2449
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
define %struct.Memory* @sub_4006f0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006f0:
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
  %14 = tail call %struct.Memory* @sub_400680_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400700_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400700:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
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
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
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
  %49 = add i64 %44, -342
  %50 = add i64 %44, 9
  %51 = load i64, i64* %6, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %6, align 8, !tbaa !2428
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %49, i64* %54, align 8, !tbaa !2428
  %55 = tail call fastcc %struct.Memory* @ext_6020f8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %56 = bitcast %union.VectorReg* %3 to i8*
  %57 = load i64, i64* %PC, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2456
  %60 = getelementptr inbounds i8, i8* %56, i64 4
  %61 = bitcast i8* %60 to i32*
  store i32 0, i32* %61, align 1, !tbaa !2456
  %62 = bitcast i64* %58 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2456
  %63 = getelementptr inbounds i8, i8* %56, i64 12
  %64 = bitcast i8* %63 to i32*
  store i32 0, i32* %64, align 1, !tbaa !2456
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
  br label %block_400732

block_40073e:                                     ; preds = %block_400732
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
  store double %91, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %92 = add i64 %170, -32
  %93 = add i64 %206, 18
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to double*
  %95 = load double, double* %94, align 8
  %96 = fadd double %91, %95
  store double %96, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %58, align 1, !tbaa !2451
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
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #10
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1, !tbaa !2446
  %115 = xor i32 %103, %104
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %26, align 1, !tbaa !2450
  %119 = icmp eq i32 %104, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %29, align 1, !tbaa !2447
  %121 = lshr i32 %104, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %32, align 1, !tbaa !2448
  %123 = lshr i32 %103, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %121
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %38, align 1, !tbaa !2449
  %128 = add i64 %100, 9
  store i64 %128, i64* %PC, align 8
  store i32 %104, i32* %102, align 4
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, -44
  store i64 %130, i64* %54, align 8, !tbaa !2428
  br label %block_400732

block_400763:                                     ; preds = %block_400732
  store i64 %210, i64* %RDI, align 8, !tbaa !2428
  %131 = add i64 %206, -451
  %132 = add i64 %206, 12
  %133 = load i64, i64* %6, align 8, !tbaa !2428
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8, !tbaa !2428
  store i64 %131, i64* %54, align 8, !tbaa !2428
  %136 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %55)
  %137 = load i64, i64* %RSP, align 8
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %137, 32
  store i64 %139, i64* %RSP, align 8, !tbaa !2428
  %140 = icmp ugt i64 %137, -33
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1, !tbaa !2432
  %142 = trunc i64 %139 to i32
  %143 = and i32 %142, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #10
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1, !tbaa !2446
  %148 = xor i64 %137, %139
  %149 = lshr i64 %148, 4
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %26, align 1, !tbaa !2450
  %152 = icmp eq i64 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %29, align 1, !tbaa !2447
  %154 = lshr i64 %139, 63
  %155 = trunc i64 %154 to i8
  store i8 %155, i8* %32, align 1, !tbaa !2448
  %156 = lshr i64 %137, 63
  %157 = xor i64 %154, %156
  %158 = add nuw nsw i64 %157, %154
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %38, align 1, !tbaa !2449
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

block_400732:                                     ; preds = %block_40073e, %block_400700
  %169 = phi i64 [ %130, %block_40073e ], [ %.pre, %block_400700 ]
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
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #10
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %21, align 1, !tbaa !2446
  %188 = xor i32 %179, %174
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %26, align 1, !tbaa !2450
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1, !tbaa !2447
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1, !tbaa !2448
  %197 = lshr i32 %174, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1, !tbaa !2449
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
  br i1 %205, label %block_40073e, label %block_400763
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400640:
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
define %struct.Memory* @sub_4007c0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4007c0:
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
  %15 = tail call %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_401500___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401500:
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
  store i8 %53, i8* %45, align 1, !tbaa !2453
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #10
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %47, align 1, !tbaa !2453
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2453
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  %65 = add i64 %40, -4003
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400578__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
  %71 = load i64, i64* %RBP, align 8
  %72 = load i64, i64* %PC, align 8
  store i8 0, i8* %45, align 1, !tbaa !2432
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %46, align 1, !tbaa !2446
  %79 = icmp eq i64 %71, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %48, align 1, !tbaa !2447
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_401556, label %block_401536

block_401556:                                     ; preds = %block_401540, %block_401500
  %84 = phi i64 [ %83, %block_401500 ], [ %182, %block_401540 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_401500 ], [ %152, %block_401540 ]
  %85 = load i64, i64* %RSP, align 8
  %86 = add i64 %85, 8
  store i64 %86, i64* %RSP, align 8, !tbaa !2428
  %87 = icmp ugt i64 %85, -9
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %45, align 1, !tbaa !2432
  %89 = trunc i64 %86 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #10
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %46, align 1, !tbaa !2446
  %95 = xor i64 %85, %86
  %96 = lshr i64 %95, 4
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %47, align 1, !tbaa !2450
  %99 = icmp eq i64 %86, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %48, align 1, !tbaa !2447
  %101 = lshr i64 %86, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %49, align 1, !tbaa !2448
  %103 = lshr i64 %85, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %50, align 1, !tbaa !2449
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

block_401536:                                     ; preds = %block_401500
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401540

block_401540:                                     ; preds = %block_401540, %block_401536
  %137 = phi i64 [ 0, %block_401536 ], [ %155, %block_401540 ]
  %138 = phi i64 [ %136, %block_401536 ], [ %182, %block_401540 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401536 ], [ %152, %block_401540 ]
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
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162) #10
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %46, align 1, !tbaa !2446
  %167 = xor i64 %155, %157
  %168 = xor i64 %167, %158
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %47, align 1, !tbaa !2450
  %172 = icmp eq i64 %158, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %48, align 1, !tbaa !2447
  %174 = lshr i64 %158, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %49, align 1, !tbaa !2448
  %176 = lshr i64 %157, 63
  %177 = xor i64 %156, %176
  %178 = xor i64 %174, %176
  %179 = add nuw nsw i64 %178, %177
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %50, align 1, !tbaa !2449
  %.v1 = select i1 %172, i64 9, i64 -13
  %182 = add i64 %154, %.v1
  store i64 %182, i64* %69, align 8, !tbaa !2428
  br i1 %172, label %block_401556, label %block_401540
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006c0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_4006c9, label %block_4006e0

block_4006e0:                                     ; preds = %block_4006c0
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

block_4006c9:                                     ; preds = %block_4006c0
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
  %37 = tail call %struct.Memory* @sub_400650_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
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
define %struct.Memory* @sub_400c40_kernel_gramschmidt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400c40:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -72
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 64
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #10
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2450
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2447
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2448
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2449
  %42 = add i64 %10, -12
  %43 = load i32, i32* %EDI, align 4
  %44 = add i64 %13, 10
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI, align 4
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %R8, align 8
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -44
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %76 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %78 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %79 = getelementptr inbounds i8, i8* %76, i64 4
  %80 = bitcast i8* %79 to i32*
  %81 = bitcast i64* %77 to i32*
  %82 = getelementptr inbounds i8, i8* %76, i64 12
  %83 = bitcast i8* %82 to i32*
  %84 = bitcast [32 x %union.VectorReg]* %5 to double*
  %85 = bitcast i64* %77 to double*
  %86 = bitcast [32 x %union.VectorReg]* %5 to double*
  %87 = bitcast %union.VectorReg* %6 to double*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c61

block_400e7e:                                     ; preds = %block_400e00
  %90 = add i64 %1223, -40
  %91 = add i64 %1259, 8
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
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #10
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %24, align 1, !tbaa !2446
  %105 = xor i32 %93, %94
  %106 = lshr i32 %105, 4
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %29, align 1, !tbaa !2450
  %109 = icmp eq i32 %94, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %32, align 1, !tbaa !2447
  %111 = lshr i32 %94, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %35, align 1, !tbaa !2448
  %113 = lshr i32 %93, 31
  %114 = xor i32 %111, %113
  %115 = add nuw nsw i32 %114, %111
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %41, align 1, !tbaa !2449
  %118 = add i64 %1259, 14
  store i64 %118, i64* %PC, align 8
  store i32 %94, i32* %92, align 4
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, -296
  store i64 %120, i64* %75, align 8, !tbaa !2428
  br label %block_400d64

block_400c6d:                                     ; preds = %block_400c61
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %80, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  store i32 0, i32* %83, align 1, !tbaa !2456
  %121 = add i64 %132, -56
  %122 = add i64 %168, 8
  store i64 %122, i64* %PC, align 8
  %123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %124 = load i64, i64* %123, align 1
  %125 = inttoptr i64 %121 to i64*
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -36
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 7
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i32*
  store i32 0, i32* %130, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400c7c

block_400c61:                                     ; preds = %block_400e91, %block_400c40
  %131 = phi i64 [ %702, %block_400e91 ], [ %.pre, %block_400c40 ]
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -44
  %134 = add i64 %131, 3
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %138 = add i64 %132, -8
  %139 = add i64 %131, 6
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %136, %141
  %143 = icmp ult i32 %136, %141
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %17, align 1, !tbaa !2432
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #10
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %24, align 1, !tbaa !2446
  %150 = xor i32 %141, %136
  %151 = xor i32 %150, %142
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %29, align 1, !tbaa !2450
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %32, align 1, !tbaa !2447
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %35, align 1, !tbaa !2448
  %159 = lshr i32 %136, 31
  %160 = lshr i32 %141, 31
  %161 = xor i32 %160, %159
  %162 = xor i32 %157, %159
  %163 = add nuw nsw i32 %162, %161
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %41, align 1, !tbaa !2449
  %166 = icmp ne i8 %158, 0
  %167 = xor i1 %166, %164
  %.v = select i1 %167, i64 12, i64 579
  %168 = add i64 %131, %.v
  store i64 %168, i64* %75, align 8, !tbaa !2428
  br i1 %167, label %block_400c6d, label %block_400ea4

block_400d5b:                                     ; preds = %block_400cf9
  %169 = add i64 %201, -44
  %170 = add i64 %237, 3
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, 1
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX, align 8, !tbaa !2428
  %175 = icmp eq i32 %172, -1
  %176 = icmp eq i32 %173, 0
  %177 = or i1 %175, %176
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %17, align 1, !tbaa !2432
  %179 = and i32 %173, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179) #10
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %24, align 1, !tbaa !2446
  %184 = xor i32 %172, %173
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %29, align 1, !tbaa !2450
  %188 = icmp eq i32 %173, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %32, align 1, !tbaa !2447
  %190 = lshr i32 %173, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %35, align 1, !tbaa !2448
  %192 = lshr i32 %172, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %190
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %41, align 1, !tbaa !2449
  %197 = add i64 %201, -40
  %198 = add i64 %237, 9
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 %173, i32* %199, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400d64

block_400cf9:                                     ; preds = %block_400d05, %block_400cd0
  %200 = phi i64 [ %1220, %block_400d05 ], [ %.pre3, %block_400cd0 ]
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -36
  %203 = add i64 %200, 3
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = add i64 %201, -4
  %208 = add i64 %200, 6
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sub i32 %205, %210
  %212 = icmp ult i32 %205, %210
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %17, align 1, !tbaa !2432
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #10
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %24, align 1, !tbaa !2446
  %219 = xor i32 %210, %205
  %220 = xor i32 %219, %211
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %29, align 1, !tbaa !2450
  %224 = icmp eq i32 %211, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %32, align 1, !tbaa !2447
  %226 = lshr i32 %211, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %35, align 1, !tbaa !2448
  %228 = lshr i32 %205, 31
  %229 = lshr i32 %210, 31
  %230 = xor i32 %229, %228
  %231 = xor i32 %226, %228
  %232 = add nuw nsw i32 %231, %230
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %41, align 1, !tbaa !2449
  %235 = icmp ne i8 %227, 0
  %236 = xor i1 %235, %233
  %.v11 = select i1 %236, i64 12, i64 98
  %237 = add i64 %200, %.v11
  store i64 %237, i64* %75, align 8, !tbaa !2428
  br i1 %236, label %block_400d05, label %block_400d5b

block_400cd0:                                     ; preds = %block_400c7c
  %238 = add i64 %305, -56
  %239 = add i64 %341, 5
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %241, i64* %242, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %243 = add i64 %341, -1744
  %244 = add i64 %341, 10
  %245 = load i64, i64* %9, align 8, !tbaa !2428
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %9, align 8, !tbaa !2428
  store i64 %243, i64* %PC, align 8, !alias.scope !2457, !noalias !2460
  %248 = load double, double* %86, align 8, !alias.scope !2457, !noalias !2460
  %249 = load i64, i64* %247, align 8
  store i64 %245, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %250 = tail call double @sqrt(double %248)
  %.repack = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack, align 8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %251, align 8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %252, align 8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %253, align 8
  store double %250, double* %86, align 8, !alias.scope !2457, !noalias !2460
  %254 = load i64, i64* %RBP, align 8
  %255 = add i64 %254, -24
  %256 = add i64 %249, 4
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = add i64 %254, -44
  %260 = add i64 %249, 8
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = shl nsw i64 %263, 12
  store i64 %264, i64* %RCX, align 8, !tbaa !2428
  %265 = lshr i64 %263, 51
  %266 = and i64 %265, 1
  %267 = add i64 %264, %258
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = icmp ult i64 %267, %258
  %269 = icmp ult i64 %267, %264
  %270 = or i1 %268, %269
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %17, align 1, !tbaa !2432
  %272 = trunc i64 %267 to i32
  %273 = and i32 %272, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #10
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %24, align 1, !tbaa !2446
  %278 = xor i64 %258, %267
  %279 = lshr i64 %278, 4
  %280 = trunc i64 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %29, align 1, !tbaa !2450
  %282 = icmp eq i64 %267, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %32, align 1, !tbaa !2447
  %284 = lshr i64 %267, 63
  %285 = trunc i64 %284 to i8
  store i8 %285, i8* %35, align 1, !tbaa !2448
  %286 = lshr i64 %258, 63
  %287 = xor i64 %284, %286
  %288 = xor i64 %284, %266
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %41, align 1, !tbaa !2449
  %292 = add i64 %249, 19
  store i64 %292, i64* %PC, align 8
  %293 = load i32, i32* %261, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %RCX, align 8, !tbaa !2428
  %295 = shl nsw i64 %294, 3
  %296 = add i64 %295, %267
  %297 = add i64 %249, 24
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to double*
  store double %250, double* %298, align 8
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -36
  %301 = load i64, i64* %PC, align 8
  %302 = add i64 %301, 7
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  store i32 0, i32* %303, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400cf9

block_400c7c:                                     ; preds = %block_400c88, %block_400c6d
  %304 = phi i64 [ %1051, %block_400c88 ], [ %.pre2, %block_400c6d ]
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -36
  %307 = add i64 %304, 3
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RAX, align 8, !tbaa !2428
  %311 = add i64 %305, -4
  %312 = add i64 %304, 6
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sub i32 %309, %314
  %316 = icmp ult i32 %309, %314
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %17, align 1, !tbaa !2432
  %318 = and i32 %315, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318) #10
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %24, align 1, !tbaa !2446
  %323 = xor i32 %314, %309
  %324 = xor i32 %323, %315
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %29, align 1, !tbaa !2450
  %328 = icmp eq i32 %315, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %32, align 1, !tbaa !2447
  %330 = lshr i32 %315, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %35, align 1, !tbaa !2448
  %332 = lshr i32 %309, 31
  %333 = lshr i32 %314, 31
  %334 = xor i32 %333, %332
  %335 = xor i32 %330, %332
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %41, align 1, !tbaa !2449
  %339 = icmp ne i8 %331, 0
  %340 = xor i1 %339, %337
  %.v7 = select i1 %340, i64 12, i64 84
  %341 = add i64 %304, %.v7
  store i64 %341, i64* %75, align 8, !tbaa !2428
  br i1 %340, label %block_400c88, label %block_400cd0

block_400ea4:                                     ; preds = %block_400c61
  %342 = load i64, i64* %RSP, align 8
  %343 = add i64 %342, 64
  store i64 %343, i64* %RSP, align 8, !tbaa !2428
  %344 = icmp ugt i64 %342, -65
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %17, align 1, !tbaa !2432
  %346 = trunc i64 %343 to i32
  %347 = and i32 %346, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347) #10
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %24, align 1, !tbaa !2446
  %352 = xor i64 %342, %343
  %353 = lshr i64 %352, 4
  %354 = trunc i64 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %29, align 1, !tbaa !2450
  %356 = icmp eq i64 %343, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %32, align 1, !tbaa !2447
  %358 = lshr i64 %343, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %35, align 1, !tbaa !2448
  %360 = lshr i64 %342, 63
  %361 = xor i64 %358, %360
  %362 = add nuw nsw i64 %361, %358
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %41, align 1, !tbaa !2449
  %365 = add i64 %168, 5
  store i64 %365, i64* %PC, align 8
  %366 = add i64 %342, 72
  %367 = inttoptr i64 %343 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RBP, align 8, !tbaa !2428
  store i64 %366, i64* %9, align 8, !tbaa !2428
  %369 = add i64 %168, 6
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %366 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %75, align 8, !tbaa !2428
  %372 = add i64 %342, 80
  store i64 %372, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400d70:                                     ; preds = %block_400d64
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %80, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  store i32 0, i32* %83, align 1, !tbaa !2456
  %373 = add i64 %597, -24
  %374 = add i64 %633, 7
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i64*
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = add i64 %597, -44
  %378 = add i64 %633, 11
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = shl nsw i64 %381, 12
  store i64 %382, i64* %RCX, align 8, !tbaa !2428
  %383 = lshr i64 %381, 51
  %384 = and i64 %383, 1
  %385 = add i64 %382, %376
  store i64 %385, i64* %RAX, align 8, !tbaa !2428
  %386 = icmp ult i64 %385, %376
  %387 = icmp ult i64 %385, %382
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %17, align 1, !tbaa !2432
  %390 = trunc i64 %385 to i32
  %391 = and i32 %390, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391) #10
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %24, align 1, !tbaa !2446
  %396 = xor i64 %376, %385
  %397 = lshr i64 %396, 4
  %398 = trunc i64 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %29, align 1, !tbaa !2450
  %400 = icmp eq i64 %385, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %32, align 1, !tbaa !2447
  %402 = lshr i64 %385, 63
  %403 = trunc i64 %402 to i8
  store i8 %403, i8* %35, align 1, !tbaa !2448
  %404 = lshr i64 %376, 63
  %405 = xor i64 %402, %404
  %406 = xor i64 %402, %384
  %407 = add nuw nsw i64 %405, %406
  %408 = icmp eq i64 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %41, align 1, !tbaa !2449
  %410 = add i64 %633, 22
  store i64 %410, i64* %PC, align 8
  %411 = load i32, i32* %600, align 4
  %412 = sext i32 %411 to i64
  store i64 %412, i64* %RCX, align 8, !tbaa !2428
  %413 = shl nsw i64 %412, 3
  %414 = add i64 %413, %385
  %415 = add i64 %633, 27
  store i64 %415, i64* %PC, align 8
  %416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %417 = load i64, i64* %416, align 1
  %418 = inttoptr i64 %414 to i64*
  store i64 %417, i64* %418, align 8
  %419 = load i64, i64* %RBP, align 8
  %420 = add i64 %419, -36
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, 7
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %420 to i32*
  store i32 0, i32* %423, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400d92

block_400d9e:                                     ; preds = %block_400d92
  %424 = add i64 %635, -32
  %425 = add i64 %671, 4
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = add i64 %671, 8
  store i64 %428, i64* %PC, align 8
  %429 = load i32, i32* %638, align 4
  %430 = sext i32 %429 to i64
  %431 = shl nsw i64 %430, 12
  store i64 %431, i64* %RCX, align 8, !tbaa !2428
  %432 = lshr i64 %430, 51
  %433 = and i64 %432, 1
  %434 = add i64 %431, %427
  store i64 %434, i64* %RAX, align 8, !tbaa !2428
  %435 = icmp ult i64 %434, %427
  %436 = icmp ult i64 %434, %431
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %17, align 1, !tbaa !2432
  %439 = trunc i64 %434 to i32
  %440 = and i32 %439, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440) #10
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %24, align 1, !tbaa !2446
  %445 = xor i64 %427, %434
  %446 = lshr i64 %445, 4
  %447 = trunc i64 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %29, align 1, !tbaa !2450
  %449 = icmp eq i64 %434, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %32, align 1, !tbaa !2447
  %451 = lshr i64 %434, 63
  %452 = trunc i64 %451 to i8
  store i8 %452, i8* %35, align 1, !tbaa !2448
  %453 = lshr i64 %427, 63
  %454 = xor i64 %451, %453
  %455 = xor i64 %451, %433
  %456 = add nuw nsw i64 %454, %455
  %457 = icmp eq i64 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %41, align 1, !tbaa !2449
  %459 = add i64 %635, -44
  %460 = add i64 %671, 19
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = shl nsw i64 %463, 3
  %465 = add i64 %464, %434
  %466 = add i64 %671, 24
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to double*
  %468 = load double, double* %467, align 8
  store double %468, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %469 = add i64 %635, -16
  %470 = add i64 %671, 28
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RAX, align 8, !tbaa !2428
  %473 = add i64 %671, 32
  store i64 %473, i64* %PC, align 8
  %474 = load i32, i32* %638, align 4
  %475 = sext i32 %474 to i64
  %476 = shl nsw i64 %475, 12
  store i64 %476, i64* %RCX, align 8, !tbaa !2428
  %477 = lshr i64 %475, 51
  %478 = and i64 %477, 1
  %479 = add i64 %476, %472
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = icmp ult i64 %479, %472
  %481 = icmp ult i64 %479, %476
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %17, align 1, !tbaa !2432
  %484 = trunc i64 %479 to i32
  %485 = and i32 %484, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #10
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %24, align 1, !tbaa !2446
  %490 = xor i64 %472, %479
  %491 = lshr i64 %490, 4
  %492 = trunc i64 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %29, align 1, !tbaa !2450
  %494 = icmp eq i64 %479, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %32, align 1, !tbaa !2447
  %496 = lshr i64 %479, 63
  %497 = trunc i64 %496 to i8
  store i8 %497, i8* %35, align 1, !tbaa !2448
  %498 = lshr i64 %472, 63
  %499 = xor i64 %496, %498
  %500 = xor i64 %496, %478
  %501 = add nuw nsw i64 %499, %500
  %502 = icmp eq i64 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %41, align 1, !tbaa !2449
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -40
  %506 = add i64 %671, 43
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  store i64 %509, i64* %RCX, align 8, !tbaa !2428
  %510 = shl nsw i64 %509, 3
  %511 = add i64 %510, %479
  %512 = add i64 %671, 48
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to double*
  %514 = load double, double* %513, align 8
  %515 = fmul double %468, %514
  store double %515, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %516 = add i64 %504, -24
  %517 = add i64 %671, 52
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RAX, align 8, !tbaa !2428
  %520 = add i64 %504, -44
  %521 = add i64 %671, 56
  store i64 %521, i64* %PC, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = sext i32 %523 to i64
  %525 = shl nsw i64 %524, 12
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = lshr i64 %524, 51
  %527 = and i64 %526, 1
  %528 = add i64 %525, %519
  store i64 %528, i64* %RAX, align 8, !tbaa !2428
  %529 = icmp ult i64 %528, %519
  %530 = icmp ult i64 %528, %525
  %531 = or i1 %529, %530
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %17, align 1, !tbaa !2432
  %533 = trunc i64 %528 to i32
  %534 = and i32 %533, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534) #10
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %24, align 1, !tbaa !2446
  %539 = xor i64 %519, %528
  %540 = lshr i64 %539, 4
  %541 = trunc i64 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %29, align 1, !tbaa !2450
  %543 = icmp eq i64 %528, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %32, align 1, !tbaa !2447
  %545 = lshr i64 %528, 63
  %546 = trunc i64 %545 to i8
  store i8 %546, i8* %35, align 1, !tbaa !2448
  %547 = lshr i64 %519, 63
  %548 = xor i64 %545, %547
  %549 = xor i64 %545, %527
  %550 = add nuw nsw i64 %548, %549
  %551 = icmp eq i64 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %41, align 1, !tbaa !2449
  %553 = add i64 %671, 67
  store i64 %553, i64* %PC, align 8
  %554 = load i32, i32* %507, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RCX, align 8, !tbaa !2428
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %556, %528
  %558 = add i64 %671, 72
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to double*
  %560 = load double, double* %559, align 8
  %561 = fadd double %515, %560
  store double %561, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %562 = add i64 %671, 77
  store i64 %562, i64* %PC, align 8
  store double %561, double* %559, align 8
  %563 = load i64, i64* %RBP, align 8
  %564 = add i64 %563, -36
  %565 = load i64, i64* %PC, align 8
  %566 = add i64 %565, 3
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = add i32 %568, 1
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX, align 8, !tbaa !2428
  %571 = icmp eq i32 %568, -1
  %572 = icmp eq i32 %569, 0
  %573 = or i1 %571, %572
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %17, align 1, !tbaa !2432
  %575 = and i32 %569, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575) #10
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %24, align 1, !tbaa !2446
  %580 = xor i32 %568, %569
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %29, align 1, !tbaa !2450
  %584 = icmp eq i32 %569, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %32, align 1, !tbaa !2447
  %586 = lshr i32 %569, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %35, align 1, !tbaa !2448
  %588 = lshr i32 %568, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %586
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %41, align 1, !tbaa !2449
  %593 = add i64 %565, 9
  store i64 %593, i64* %PC, align 8
  store i32 %569, i32* %567, align 4
  %594 = load i64, i64* %PC, align 8
  %595 = add i64 %594, -98
  store i64 %595, i64* %75, align 8, !tbaa !2428
  br label %block_400d92

block_400d64:                                     ; preds = %block_400d5b, %block_400e7e
  %596 = phi i64 [ %.pre4, %block_400d5b ], [ %120, %block_400e7e ]
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -40
  %599 = add i64 %596, 3
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = add i64 %597, -8
  %604 = add i64 %596, 6
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sub i32 %601, %606
  %608 = icmp ult i32 %601, %606
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %17, align 1, !tbaa !2432
  %610 = and i32 %607, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610) #10
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %24, align 1, !tbaa !2446
  %615 = xor i32 %606, %601
  %616 = xor i32 %615, %607
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %29, align 1, !tbaa !2450
  %620 = icmp eq i32 %607, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %32, align 1, !tbaa !2447
  %622 = lshr i32 %607, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %35, align 1, !tbaa !2448
  %624 = lshr i32 %601, 31
  %625 = lshr i32 %606, 31
  %626 = xor i32 %625, %624
  %627 = xor i32 %622, %624
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %41, align 1, !tbaa !2449
  %631 = icmp ne i8 %623, 0
  %632 = xor i1 %631, %629
  %.v12 = select i1 %632, i64 12, i64 301
  %633 = add i64 %596, %.v12
  store i64 %633, i64* %75, align 8, !tbaa !2428
  br i1 %632, label %block_400d70, label %block_400e91

block_400d92:                                     ; preds = %block_400d9e, %block_400d70
  %634 = phi i64 [ %595, %block_400d9e ], [ %.pre5, %block_400d70 ]
  %635 = load i64, i64* %RBP, align 8
  %636 = add i64 %635, -36
  %637 = add i64 %634, 3
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX, align 8, !tbaa !2428
  %641 = add i64 %635, -4
  %642 = add i64 %634, 6
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = sub i32 %639, %644
  %646 = icmp ult i32 %639, %644
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %17, align 1, !tbaa !2432
  %648 = and i32 %645, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648) #10
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %24, align 1, !tbaa !2446
  %653 = xor i32 %644, %639
  %654 = xor i32 %653, %645
  %655 = lshr i32 %654, 4
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  store i8 %657, i8* %29, align 1, !tbaa !2450
  %658 = icmp eq i32 %645, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %32, align 1, !tbaa !2447
  %660 = lshr i32 %645, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %35, align 1, !tbaa !2448
  %662 = lshr i32 %639, 31
  %663 = lshr i32 %644, 31
  %664 = xor i32 %663, %662
  %665 = xor i32 %660, %662
  %666 = add nuw nsw i32 %665, %664
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %41, align 1, !tbaa !2449
  %669 = icmp ne i8 %661, 0
  %670 = xor i1 %669, %667
  %.v13 = select i1 %670, i64 12, i64 103
  %671 = add i64 %634, %.v13
  store i64 %671, i64* %75, align 8, !tbaa !2428
  br i1 %670, label %block_400d9e, label %block_400df9

block_400e91:                                     ; preds = %block_400d64
  %672 = add i64 %597, -44
  %673 = add i64 %633, 8
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = add i32 %675, 1
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RAX, align 8, !tbaa !2428
  %678 = icmp eq i32 %675, -1
  %679 = icmp eq i32 %676, 0
  %680 = or i1 %678, %679
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %17, align 1, !tbaa !2432
  %682 = and i32 %676, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682) #10
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %24, align 1, !tbaa !2446
  %687 = xor i32 %675, %676
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %29, align 1, !tbaa !2450
  %691 = icmp eq i32 %676, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %32, align 1, !tbaa !2447
  %693 = lshr i32 %676, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %35, align 1, !tbaa !2448
  %695 = lshr i32 %675, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %693
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %41, align 1, !tbaa !2449
  %700 = add i64 %633, 14
  store i64 %700, i64* %PC, align 8
  store i32 %676, i32* %674, align 4
  %701 = load i64, i64* %PC, align 8
  %702 = add i64 %701, -574
  store i64 %702, i64* %75, align 8, !tbaa !2428
  br label %block_400c61

block_400e0c:                                     ; preds = %block_400e00
  %703 = add i64 %1223, -16
  %704 = add i64 %1259, 4
  store i64 %704, i64* %PC, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RAX, align 8, !tbaa !2428
  %707 = add i64 %1259, 8
  store i64 %707, i64* %PC, align 8
  %708 = load i32, i32* %1226, align 4
  %709 = sext i32 %708 to i64
  %710 = shl nsw i64 %709, 12
  store i64 %710, i64* %RCX, align 8, !tbaa !2428
  %711 = lshr i64 %709, 51
  %712 = and i64 %711, 1
  %713 = add i64 %710, %706
  store i64 %713, i64* %RAX, align 8, !tbaa !2428
  %714 = icmp ult i64 %713, %706
  %715 = icmp ult i64 %713, %710
  %716 = or i1 %714, %715
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %17, align 1, !tbaa !2432
  %718 = trunc i64 %713 to i32
  %719 = and i32 %718, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719) #10
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %24, align 1, !tbaa !2446
  %724 = xor i64 %706, %713
  %725 = lshr i64 %724, 4
  %726 = trunc i64 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %29, align 1, !tbaa !2450
  %728 = icmp eq i64 %713, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %32, align 1, !tbaa !2447
  %730 = lshr i64 %713, 63
  %731 = trunc i64 %730 to i8
  store i8 %731, i8* %35, align 1, !tbaa !2448
  %732 = lshr i64 %706, 63
  %733 = xor i64 %730, %732
  %734 = xor i64 %730, %712
  %735 = add nuw nsw i64 %733, %734
  %736 = icmp eq i64 %735, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %41, align 1, !tbaa !2449
  %738 = add i64 %1223, -40
  %739 = add i64 %1259, 19
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RCX, align 8, !tbaa !2428
  %743 = shl nsw i64 %742, 3
  %744 = add i64 %743, %713
  %745 = add i64 %1259, 24
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %747, i64* %748, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %749 = add i64 %1223, -32
  %750 = add i64 %1259, 28
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RAX, align 8, !tbaa !2428
  %753 = add i64 %1259, 32
  store i64 %753, i64* %PC, align 8
  %754 = load i32, i32* %1226, align 4
  %755 = sext i32 %754 to i64
  %756 = shl nsw i64 %755, 12
  store i64 %756, i64* %RCX, align 8, !tbaa !2428
  %757 = lshr i64 %755, 51
  %758 = and i64 %757, 1
  %759 = add i64 %756, %752
  store i64 %759, i64* %RAX, align 8, !tbaa !2428
  %760 = icmp ult i64 %759, %752
  %761 = icmp ult i64 %759, %756
  %762 = or i1 %760, %761
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %17, align 1, !tbaa !2432
  %764 = trunc i64 %759 to i32
  %765 = and i32 %764, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765) #10
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %24, align 1, !tbaa !2446
  %770 = xor i64 %752, %759
  %771 = lshr i64 %770, 4
  %772 = trunc i64 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %29, align 1, !tbaa !2450
  %774 = icmp eq i64 %759, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %32, align 1, !tbaa !2447
  %776 = lshr i64 %759, 63
  %777 = trunc i64 %776 to i8
  store i8 %777, i8* %35, align 1, !tbaa !2448
  %778 = lshr i64 %752, 63
  %779 = xor i64 %776, %778
  %780 = xor i64 %776, %758
  %781 = add nuw nsw i64 %779, %780
  %782 = icmp eq i64 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %41, align 1, !tbaa !2449
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -44
  %786 = add i64 %1259, 43
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = sext i32 %788 to i64
  store i64 %789, i64* %RCX, align 8, !tbaa !2428
  %790 = shl nsw i64 %789, 3
  %791 = add i64 %790, %759
  %792 = add i64 %1259, 48
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to double*
  %794 = load double, double* %793, align 8
  store double %794, double* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %795 = add i64 %784, -24
  %796 = add i64 %1259, 52
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %795 to i64*
  %798 = load i64, i64* %797, align 8
  store i64 %798, i64* %RAX, align 8, !tbaa !2428
  %799 = add i64 %1259, 56
  store i64 %799, i64* %PC, align 8
  %800 = load i32, i32* %787, align 4
  %801 = sext i32 %800 to i64
  %802 = shl nsw i64 %801, 12
  store i64 %802, i64* %RCX, align 8, !tbaa !2428
  %803 = lshr i64 %801, 51
  %804 = and i64 %803, 1
  %805 = add i64 %802, %798
  store i64 %805, i64* %RAX, align 8, !tbaa !2428
  %806 = icmp ult i64 %805, %798
  %807 = icmp ult i64 %805, %802
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %17, align 1, !tbaa !2432
  %810 = trunc i64 %805 to i32
  %811 = and i32 %810, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811) #10
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %24, align 1, !tbaa !2446
  %816 = xor i64 %798, %805
  %817 = lshr i64 %816, 4
  %818 = trunc i64 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %29, align 1, !tbaa !2450
  %820 = icmp eq i64 %805, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %32, align 1, !tbaa !2447
  %822 = lshr i64 %805, 63
  %823 = trunc i64 %822 to i8
  store i8 %823, i8* %35, align 1, !tbaa !2448
  %824 = lshr i64 %798, 63
  %825 = xor i64 %822, %824
  %826 = xor i64 %822, %804
  %827 = add nuw nsw i64 %825, %826
  %828 = icmp eq i64 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %41, align 1, !tbaa !2449
  %830 = add i64 %784, -40
  %831 = add i64 %1259, 67
  store i64 %831, i64* %PC, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX, align 8, !tbaa !2428
  %835 = shl nsw i64 %834, 3
  %836 = add i64 %835, %805
  %837 = add i64 %1259, 72
  store i64 %837, i64* %PC, align 8
  %838 = inttoptr i64 %836 to double*
  %839 = load double, double* %838, align 8
  %840 = fmul double %794, %839
  store double %840, double* %87, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %841 = load double, double* %84, align 1
  %842 = fsub double %841, %840
  store double %842, double* %84, align 1, !tbaa !2451
  %843 = load i64, i64* %RBP, align 8
  %844 = add i64 %843, -16
  %845 = add i64 %1259, 80
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = add i64 %843, -36
  %849 = add i64 %1259, 84
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = sext i32 %851 to i64
  %853 = shl nsw i64 %852, 12
  store i64 %853, i64* %RCX, align 8, !tbaa !2428
  %854 = lshr i64 %852, 51
  %855 = and i64 %854, 1
  %856 = add i64 %853, %847
  store i64 %856, i64* %RAX, align 8, !tbaa !2428
  %857 = icmp ult i64 %856, %847
  %858 = icmp ult i64 %856, %853
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %17, align 1, !tbaa !2432
  %861 = trunc i64 %856 to i32
  %862 = and i32 %861, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862) #10
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %24, align 1, !tbaa !2446
  %867 = xor i64 %847, %856
  %868 = lshr i64 %867, 4
  %869 = trunc i64 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %29, align 1, !tbaa !2450
  %871 = icmp eq i64 %856, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %32, align 1, !tbaa !2447
  %873 = lshr i64 %856, 63
  %874 = trunc i64 %873 to i8
  store i8 %874, i8* %35, align 1, !tbaa !2448
  %875 = lshr i64 %847, 63
  %876 = xor i64 %873, %875
  %877 = xor i64 %873, %855
  %878 = add nuw nsw i64 %876, %877
  %879 = icmp eq i64 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %41, align 1, !tbaa !2449
  %881 = add i64 %843, -40
  %882 = add i64 %1259, 95
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = sext i32 %884 to i64
  store i64 %885, i64* %RCX, align 8, !tbaa !2428
  %886 = shl nsw i64 %885, 3
  %887 = add i64 %886, %856
  %888 = add i64 %1259, 100
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to double*
  store double %842, double* %889, align 8
  %890 = load i64, i64* %RBP, align 8
  %891 = add i64 %890, -36
  %892 = load i64, i64* %PC, align 8
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, 1
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX, align 8, !tbaa !2428
  %898 = icmp eq i32 %895, -1
  %899 = icmp eq i32 %896, 0
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %17, align 1, !tbaa !2432
  %902 = and i32 %896, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902) #10
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %24, align 1, !tbaa !2446
  %907 = xor i32 %895, %896
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %29, align 1, !tbaa !2450
  %911 = icmp eq i32 %896, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %32, align 1, !tbaa !2447
  %913 = lshr i32 %896, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %35, align 1, !tbaa !2448
  %915 = lshr i32 %895, 31
  %916 = xor i32 %913, %915
  %917 = add nuw nsw i32 %916, %913
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %41, align 1, !tbaa !2449
  %920 = add i64 %892, 9
  store i64 %920, i64* %PC, align 8
  store i32 %896, i32* %894, align 4
  %921 = load i64, i64* %PC, align 8
  %922 = add i64 %921, -121
  store i64 %922, i64* %75, align 8, !tbaa !2428
  br label %block_400e00

block_400c88:                                     ; preds = %block_400c7c
  %923 = add i64 %305, -16
  %924 = add i64 %341, 4
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RAX, align 8, !tbaa !2428
  %927 = add i64 %341, 8
  store i64 %927, i64* %PC, align 8
  %928 = load i32, i32* %308, align 4
  %929 = sext i32 %928 to i64
  %930 = shl nsw i64 %929, 12
  store i64 %930, i64* %RCX, align 8, !tbaa !2428
  %931 = lshr i64 %929, 51
  %932 = and i64 %931, 1
  %933 = add i64 %930, %926
  store i64 %933, i64* %RAX, align 8, !tbaa !2428
  %934 = icmp ult i64 %933, %926
  %935 = icmp ult i64 %933, %930
  %936 = or i1 %934, %935
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %17, align 1, !tbaa !2432
  %938 = trunc i64 %933 to i32
  %939 = and i32 %938, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939) #10
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %24, align 1, !tbaa !2446
  %944 = xor i64 %926, %933
  %945 = lshr i64 %944, 4
  %946 = trunc i64 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %29, align 1, !tbaa !2450
  %948 = icmp eq i64 %933, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %32, align 1, !tbaa !2447
  %950 = lshr i64 %933, 63
  %951 = trunc i64 %950 to i8
  store i8 %951, i8* %35, align 1, !tbaa !2448
  %952 = lshr i64 %926, 63
  %953 = xor i64 %950, %952
  %954 = xor i64 %950, %932
  %955 = add nuw nsw i64 %953, %954
  %956 = icmp eq i64 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %41, align 1, !tbaa !2449
  %958 = add i64 %305, -44
  %959 = add i64 %341, 19
  store i64 %959, i64* %PC, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = sext i32 %961 to i64
  store i64 %962, i64* %RCX, align 8, !tbaa !2428
  %963 = shl nsw i64 %962, 3
  %964 = add i64 %963, %933
  %965 = add i64 %341, 24
  store i64 %965, i64* %PC, align 8
  %966 = inttoptr i64 %964 to double*
  %967 = load double, double* %966, align 8
  store double %967, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %968 = add i64 %341, 28
  store i64 %968, i64* %PC, align 8
  %969 = load i64, i64* %925, align 8
  store i64 %969, i64* %RAX, align 8, !tbaa !2428
  %970 = add i64 %341, 32
  store i64 %970, i64* %PC, align 8
  %971 = load i32, i32* %308, align 4
  %972 = sext i32 %971 to i64
  %973 = shl nsw i64 %972, 12
  store i64 %973, i64* %RCX, align 8, !tbaa !2428
  %974 = lshr i64 %972, 51
  %975 = and i64 %974, 1
  %976 = add i64 %973, %969
  store i64 %976, i64* %RAX, align 8, !tbaa !2428
  %977 = icmp ult i64 %976, %969
  %978 = icmp ult i64 %976, %973
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %17, align 1, !tbaa !2432
  %981 = trunc i64 %976 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982) #10
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %24, align 1, !tbaa !2446
  %987 = xor i64 %969, %976
  %988 = lshr i64 %987, 4
  %989 = trunc i64 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %29, align 1, !tbaa !2450
  %991 = icmp eq i64 %976, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %32, align 1, !tbaa !2447
  %993 = lshr i64 %976, 63
  %994 = trunc i64 %993 to i8
  store i8 %994, i8* %35, align 1, !tbaa !2448
  %995 = lshr i64 %969, 63
  %996 = xor i64 %993, %995
  %997 = xor i64 %993, %975
  %998 = add nuw nsw i64 %996, %997
  %999 = icmp eq i64 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %41, align 1, !tbaa !2449
  %1001 = load i64, i64* %RBP, align 8
  %1002 = add i64 %1001, -44
  %1003 = add i64 %341, 43
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = shl nsw i64 %1006, 3
  %1008 = add i64 %1007, %976
  %1009 = add i64 %341, 48
  store i64 %1009, i64* %PC, align 8
  %1010 = inttoptr i64 %1008 to double*
  %1011 = load double, double* %1010, align 8
  %1012 = fmul double %967, %1011
  store double %1012, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %1013 = add i64 %1001, -56
  %1014 = add i64 %341, 53
  store i64 %1014, i64* %PC, align 8
  %1015 = inttoptr i64 %1013 to double*
  %1016 = load double, double* %1015, align 8
  %1017 = fadd double %1012, %1016
  store double %1017, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %1018 = add i64 %341, 58
  store i64 %1018, i64* %PC, align 8
  store double %1017, double* %1015, align 8
  %1019 = load i64, i64* %RBP, align 8
  %1020 = add i64 %1019, -36
  %1021 = load i64, i64* %PC, align 8
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, 1
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX, align 8, !tbaa !2428
  %1027 = icmp eq i32 %1024, -1
  %1028 = icmp eq i32 %1025, 0
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %17, align 1, !tbaa !2432
  %1031 = and i32 %1025, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031) #10
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %24, align 1, !tbaa !2446
  %1036 = xor i32 %1024, %1025
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %29, align 1, !tbaa !2450
  %1040 = icmp eq i32 %1025, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %32, align 1, !tbaa !2447
  %1042 = lshr i32 %1025, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %35, align 1, !tbaa !2448
  %1044 = lshr i32 %1024, 31
  %1045 = xor i32 %1042, %1044
  %1046 = add nuw nsw i32 %1045, %1042
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %41, align 1, !tbaa !2449
  %1049 = add i64 %1021, 9
  store i64 %1049, i64* %PC, align 8
  store i32 %1025, i32* %1023, align 4
  %1050 = load i64, i64* %PC, align 8
  %1051 = add i64 %1050, -79
  store i64 %1051, i64* %75, align 8, !tbaa !2428
  br label %block_400c7c

block_400d05:                                     ; preds = %block_400cf9
  %1052 = add i64 %201, -16
  %1053 = add i64 %237, 4
  store i64 %1053, i64* %PC, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RAX, align 8, !tbaa !2428
  %1056 = add i64 %237, 8
  store i64 %1056, i64* %PC, align 8
  %1057 = load i32, i32* %204, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = shl nsw i64 %1058, 12
  store i64 %1059, i64* %RCX, align 8, !tbaa !2428
  %1060 = lshr i64 %1058, 51
  %1061 = and i64 %1060, 1
  %1062 = add i64 %1059, %1055
  store i64 %1062, i64* %RAX, align 8, !tbaa !2428
  %1063 = icmp ult i64 %1062, %1055
  %1064 = icmp ult i64 %1062, %1059
  %1065 = or i1 %1063, %1064
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %17, align 1, !tbaa !2432
  %1067 = trunc i64 %1062 to i32
  %1068 = and i32 %1067, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068) #10
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %24, align 1, !tbaa !2446
  %1073 = xor i64 %1055, %1062
  %1074 = lshr i64 %1073, 4
  %1075 = trunc i64 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %29, align 1, !tbaa !2450
  %1077 = icmp eq i64 %1062, 0
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %32, align 1, !tbaa !2447
  %1079 = lshr i64 %1062, 63
  %1080 = trunc i64 %1079 to i8
  store i8 %1080, i8* %35, align 1, !tbaa !2448
  %1081 = lshr i64 %1055, 63
  %1082 = xor i64 %1079, %1081
  %1083 = xor i64 %1079, %1061
  %1084 = add nuw nsw i64 %1082, %1083
  %1085 = icmp eq i64 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %41, align 1, !tbaa !2449
  %1087 = add i64 %201, -44
  %1088 = add i64 %237, 19
  store i64 %1088, i64* %PC, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = sext i32 %1090 to i64
  store i64 %1091, i64* %RCX, align 8, !tbaa !2428
  %1092 = shl nsw i64 %1091, 3
  %1093 = add i64 %1092, %1062
  %1094 = add i64 %237, 24
  store i64 %1094, i64* %PC, align 8
  %1095 = inttoptr i64 %1093 to double*
  %1096 = load double, double* %1095, align 8
  store double %1096, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1097 = add i64 %201, -24
  %1098 = add i64 %237, 28
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RAX, align 8, !tbaa !2428
  %1101 = add i64 %237, 32
  store i64 %1101, i64* %PC, align 8
  %1102 = load i32, i32* %1089, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = shl nsw i64 %1103, 12
  store i64 %1104, i64* %RCX, align 8, !tbaa !2428
  %1105 = lshr i64 %1103, 51
  %1106 = and i64 %1105, 1
  %1107 = add i64 %1104, %1100
  store i64 %1107, i64* %RAX, align 8, !tbaa !2428
  %1108 = icmp ult i64 %1107, %1100
  %1109 = icmp ult i64 %1107, %1104
  %1110 = or i1 %1108, %1109
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %17, align 1, !tbaa !2432
  %1112 = trunc i64 %1107 to i32
  %1113 = and i32 %1112, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113) #10
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %24, align 1, !tbaa !2446
  %1118 = xor i64 %1100, %1107
  %1119 = lshr i64 %1118, 4
  %1120 = trunc i64 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %29, align 1, !tbaa !2450
  %1122 = icmp eq i64 %1107, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %32, align 1, !tbaa !2447
  %1124 = lshr i64 %1107, 63
  %1125 = trunc i64 %1124 to i8
  store i8 %1125, i8* %35, align 1, !tbaa !2448
  %1126 = lshr i64 %1100, 63
  %1127 = xor i64 %1124, %1126
  %1128 = xor i64 %1124, %1106
  %1129 = add nuw nsw i64 %1127, %1128
  %1130 = icmp eq i64 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %41, align 1, !tbaa !2449
  %1132 = load i64, i64* %RBP, align 8
  %1133 = add i64 %1132, -44
  %1134 = add i64 %237, 43
  store i64 %1134, i64* %PC, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RCX, align 8, !tbaa !2428
  %1138 = shl nsw i64 %1137, 3
  %1139 = add i64 %1138, %1107
  %1140 = add i64 %237, 48
  store i64 %1140, i64* %PC, align 8
  %1141 = inttoptr i64 %1139 to double*
  %1142 = load double, double* %1141, align 8
  %1143 = fdiv double %1096, %1142
  store double %1143, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %1144 = add i64 %1132, -32
  %1145 = add i64 %237, 52
  store i64 %1145, i64* %PC, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RAX, align 8, !tbaa !2428
  %1148 = add i64 %1132, -36
  %1149 = add i64 %237, 56
  store i64 %1149, i64* %PC, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = shl nsw i64 %1152, 12
  store i64 %1153, i64* %RCX, align 8, !tbaa !2428
  %1154 = lshr i64 %1152, 51
  %1155 = and i64 %1154, 1
  %1156 = add i64 %1153, %1147
  store i64 %1156, i64* %RAX, align 8, !tbaa !2428
  %1157 = icmp ult i64 %1156, %1147
  %1158 = icmp ult i64 %1156, %1153
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %17, align 1, !tbaa !2432
  %1161 = trunc i64 %1156 to i32
  %1162 = and i32 %1161, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162) #10
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %24, align 1, !tbaa !2446
  %1167 = xor i64 %1147, %1156
  %1168 = lshr i64 %1167, 4
  %1169 = trunc i64 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %29, align 1, !tbaa !2450
  %1171 = icmp eq i64 %1156, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %32, align 1, !tbaa !2447
  %1173 = lshr i64 %1156, 63
  %1174 = trunc i64 %1173 to i8
  store i8 %1174, i8* %35, align 1, !tbaa !2448
  %1175 = lshr i64 %1147, 63
  %1176 = xor i64 %1173, %1175
  %1177 = xor i64 %1173, %1155
  %1178 = add nuw nsw i64 %1176, %1177
  %1179 = icmp eq i64 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %41, align 1, !tbaa !2449
  %1181 = add i64 %237, 67
  store i64 %1181, i64* %PC, align 8
  %1182 = load i32, i32* %1135, align 4
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RCX, align 8, !tbaa !2428
  %1184 = shl nsw i64 %1183, 3
  %1185 = add i64 %1184, %1156
  %1186 = add i64 %237, 72
  store i64 %1186, i64* %PC, align 8
  %1187 = inttoptr i64 %1185 to double*
  store double %1143, double* %1187, align 8
  %1188 = load i64, i64* %RBP, align 8
  %1189 = add i64 %1188, -36
  %1190 = load i64, i64* %PC, align 8
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC, align 8
  %1192 = inttoptr i64 %1189 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = add i32 %1193, 1
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RAX, align 8, !tbaa !2428
  %1196 = icmp eq i32 %1193, -1
  %1197 = icmp eq i32 %1194, 0
  %1198 = or i1 %1196, %1197
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %17, align 1, !tbaa !2432
  %1200 = and i32 %1194, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200) #10
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %24, align 1, !tbaa !2446
  %1205 = xor i32 %1193, %1194
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %29, align 1, !tbaa !2450
  %1209 = icmp eq i32 %1194, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %32, align 1, !tbaa !2447
  %1211 = lshr i32 %1194, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %35, align 1, !tbaa !2448
  %1213 = lshr i32 %1193, 31
  %1214 = xor i32 %1211, %1213
  %1215 = add nuw nsw i32 %1214, %1211
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %41, align 1, !tbaa !2449
  %1218 = add i64 %1190, 9
  store i64 %1218, i64* %PC, align 8
  store i32 %1194, i32* %1192, align 4
  %1219 = load i64, i64* %PC, align 8
  %1220 = add i64 %1219, -93
  store i64 %1220, i64* %75, align 8, !tbaa !2428
  br label %block_400cf9

block_400df9:                                     ; preds = %block_400d92
  %1221 = add i64 %671, 7
  store i64 %1221, i64* %PC, align 8
  store i32 0, i32* %638, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400e00

block_400e00:                                     ; preds = %block_400df9, %block_400e0c
  %1222 = phi i64 [ %.pre6, %block_400df9 ], [ %922, %block_400e0c ]
  %1223 = load i64, i64* %RBP, align 8
  %1224 = add i64 %1223, -36
  %1225 = add i64 %1222, 3
  store i64 %1225, i64* %PC, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX, align 8, !tbaa !2428
  %1229 = add i64 %1223, -4
  %1230 = add i64 %1222, 6
  store i64 %1230, i64* %PC, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sub i32 %1227, %1232
  %1234 = icmp ult i32 %1227, %1232
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %17, align 1, !tbaa !2432
  %1236 = and i32 %1233, 255
  %1237 = tail call i32 @llvm.ctpop.i32(i32 %1236) #10
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %24, align 1, !tbaa !2446
  %1241 = xor i32 %1232, %1227
  %1242 = xor i32 %1241, %1233
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %29, align 1, !tbaa !2450
  %1246 = icmp eq i32 %1233, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %32, align 1, !tbaa !2447
  %1248 = lshr i32 %1233, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %35, align 1, !tbaa !2448
  %1250 = lshr i32 %1227, 31
  %1251 = lshr i32 %1232, 31
  %1252 = xor i32 %1251, %1250
  %1253 = xor i32 %1248, %1250
  %1254 = add nuw nsw i32 %1253, %1252
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %41, align 1, !tbaa !2449
  %1257 = icmp ne i8 %1249, 0
  %1258 = xor i1 %1257, %1255
  %.v14 = select i1 %1258, i64 12, i64 126
  %1259 = add i64 %1222, %.v14
  store i64 %1259, i64* %75, align 8, !tbaa !2428
  br i1 %1258, label %block_400e0c, label %block_400e7e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400780_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400780:
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
  %15 = tail call %struct.Memory* @sub_400700_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400ad0_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400ad0:
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
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %54 = bitcast [32 x %union.VectorReg]* %5 to double*
  %55 = bitcast %union.VectorReg* %6 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400aed

block_400b9d:                                     ; preds = %block_400b00
  %56 = add i64 %600, 8
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %601 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = icmp eq i32 %58, -1
  %62 = icmp eq i32 %59, 0
  %63 = or i1 %61, %62
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %47, align 1, !tbaa !2432
  %65 = and i32 %59, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #10
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %48, align 1, !tbaa !2446
  %70 = xor i32 %58, %59
  %71 = lshr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %49, align 1, !tbaa !2450
  %74 = icmp eq i32 %59, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %50, align 1, !tbaa !2447
  %76 = lshr i32 %59, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %51, align 1, !tbaa !2448
  %78 = lshr i32 %58, 31
  %79 = xor i32 %76, %78
  %80 = add nuw nsw i32 %79, %76
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %52, align 1, !tbaa !2449
  %83 = add i64 %600, 14
  store i64 %83, i64* %PC, align 8
  store i32 %59, i32* %57, align 4
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, -190
  store i64 %85, i64* %53, align 8, !tbaa !2428
  br label %block_400aed

block_400bb7:                                     ; preds = %block_400c27, %block_400bb0
  %86 = phi i64 [ %550, %block_400c27 ], [ %.pre2, %block_400bb0 ]
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -36
  %89 = add i64 %86, 3
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RAX, align 8, !tbaa !2428
  %93 = add i64 %87, -8
  %94 = add i64 %86, 6
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %91, %96
  %98 = icmp ult i32 %91, %96
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2432
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #10
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %48, align 1, !tbaa !2446
  %105 = xor i32 %96, %91
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %49, align 1, !tbaa !2450
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %50, align 1, !tbaa !2447
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %51, align 1, !tbaa !2448
  %114 = lshr i32 %91, 31
  %115 = lshr i32 %96, 31
  %116 = xor i32 %115, %114
  %117 = xor i32 %112, %114
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %52, align 1, !tbaa !2449
  %121 = icmp ne i8 %113, 0
  %122 = xor i1 %121, %119
  %.v5 = select i1 %122, i64 12, i64 131
  %123 = add i64 %86, %.v5
  store i64 %123, i64* %53, align 8, !tbaa !2428
  br i1 %122, label %block_400bc3, label %block_400c3a

block_400af9:                                     ; preds = %block_400aed
  %124 = add i64 %247, -40
  %125 = add i64 %283, 7
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 0, i32* %126, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400b00

block_400bd6:                                     ; preds = %block_400bca
  %127 = add i64 %321, 3
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %322 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = sitofp i32 %129 to double
  store double %131, double* %54, align 1, !tbaa !2451
  %132 = add i64 %321, 10
  store i64 %132, i64* %PC, align 8
  %133 = load i32, i32* %288, align 4
  %134 = add i32 %133, 2
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %136 = icmp ugt i32 %133, -3
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %47, align 1, !tbaa !2432
  %138 = and i32 %134, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #10
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %48, align 1, !tbaa !2446
  %143 = xor i32 %133, %134
  %144 = lshr i32 %143, 4
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %49, align 1, !tbaa !2450
  %147 = icmp eq i32 %134, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %50, align 1, !tbaa !2447
  %149 = lshr i32 %134, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %51, align 1, !tbaa !2448
  %151 = lshr i32 %133, 31
  %152 = xor i32 %149, %151
  %153 = add nuw nsw i32 %152, %149
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %52, align 1, !tbaa !2449
  %156 = sitofp i32 %134 to double
  store double %156, double* %55, align 1, !tbaa !2451
  %157 = fmul double %131, %156
  store double %157, double* %54, align 1, !tbaa !2451
  %158 = add i64 %321, 24
  store i64 %158, i64* %PC, align 8
  %159 = load i32, i32* %293, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = sitofp i32 %159 to double
  store double %161, double* %55, align 1, !tbaa !2451
  %162 = fadd double %157, %161
  store double %162, double* %54, align 1, !tbaa !2451
  %163 = add i64 %321, 35
  store i64 %163, i64* %PC, align 8
  %164 = load i32, i32* %293, align 4
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = sitofp i32 %164 to double
  store double %166, double* %55, align 1, !tbaa !2451
  %167 = fdiv double %162, %166
  store double %167, double* %54, align 1, !tbaa !2451
  %168 = add i64 %285, -24
  %169 = add i64 %321, 47
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  %172 = add i64 %321, 51
  store i64 %172, i64* %PC, align 8
  %173 = load i32, i32* %128, align 4
  %174 = sext i32 %173 to i64
  %175 = shl nsw i64 %174, 12
  store i64 %175, i64* %RDX, align 8, !tbaa !2428
  %176 = lshr i64 %174, 51
  %177 = and i64 %176, 1
  %178 = add i64 %175, %171
  store i64 %178, i64* %RCX, align 8, !tbaa !2428
  %179 = icmp ult i64 %178, %171
  %180 = icmp ult i64 %178, %175
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %47, align 1, !tbaa !2432
  %183 = trunc i64 %178 to i32
  %184 = and i32 %183, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184) #10
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %48, align 1, !tbaa !2446
  %189 = xor i64 %171, %178
  %190 = lshr i64 %189, 4
  %191 = trunc i64 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %49, align 1, !tbaa !2450
  %193 = icmp eq i64 %178, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %50, align 1, !tbaa !2447
  %195 = lshr i64 %178, 63
  %196 = trunc i64 %195 to i8
  store i8 %196, i8* %51, align 1, !tbaa !2448
  %197 = lshr i64 %171, 63
  %198 = xor i64 %195, %197
  %199 = xor i64 %195, %177
  %200 = add nuw nsw i64 %198, %199
  %201 = icmp eq i64 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %52, align 1, !tbaa !2449
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -40
  %205 = add i64 %321, 62
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %RDX, align 8, !tbaa !2428
  %209 = shl nsw i64 %208, 3
  %210 = add i64 %209, %178
  %211 = add i64 %321, 67
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to double*
  store double %167, double* %212, align 8
  %213 = load i64, i64* %RBP, align 8
  %214 = add i64 %213, -40
  %215 = load i64, i64* %PC, align 8
  %216 = add i64 %215, 3
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %214 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, 1
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %221 = icmp eq i32 %218, -1
  %222 = icmp eq i32 %219, 0
  %223 = or i1 %221, %222
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %47, align 1, !tbaa !2432
  %225 = and i32 %219, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225) #10
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %48, align 1, !tbaa !2446
  %230 = xor i32 %218, %219
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %49, align 1, !tbaa !2450
  %234 = icmp eq i32 %219, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %50, align 1, !tbaa !2447
  %236 = lshr i32 %219, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %51, align 1, !tbaa !2448
  %238 = lshr i32 %218, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %236
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %52, align 1, !tbaa !2449
  %243 = add i64 %215, 9
  store i64 %243, i64* %PC, align 8
  store i32 %219, i32* %217, align 4
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, -88
  store i64 %245, i64* %53, align 8, !tbaa !2428
  br label %block_400bca

block_400aed:                                     ; preds = %block_400b9d, %block_400ad0
  %246 = phi i64 [ %85, %block_400b9d ], [ %.pre, %block_400ad0 ]
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -36
  %249 = add i64 %246, 3
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = add i64 %247, -4
  %254 = add i64 %246, 6
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sub i32 %251, %256
  %258 = icmp ult i32 %251, %256
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %47, align 1, !tbaa !2432
  %260 = and i32 %257, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260) #10
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %48, align 1, !tbaa !2446
  %265 = xor i32 %256, %251
  %266 = xor i32 %265, %257
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %49, align 1, !tbaa !2450
  %270 = icmp eq i32 %257, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %50, align 1, !tbaa !2447
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %51, align 1, !tbaa !2448
  %274 = lshr i32 %251, 31
  %275 = lshr i32 %256, 31
  %276 = xor i32 %275, %274
  %277 = xor i32 %272, %274
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %52, align 1, !tbaa !2449
  %281 = icmp ne i8 %273, 0
  %282 = xor i1 %281, %279
  %.v = select i1 %282, i64 12, i64 195
  %283 = add i64 %246, %.v
  store i64 %283, i64* %53, align 8, !tbaa !2428
  br i1 %282, label %block_400af9, label %block_400bb0

block_400bca:                                     ; preds = %block_400bc3, %block_400bd6
  %284 = phi i64 [ %.pre3, %block_400bc3 ], [ %245, %block_400bd6 ]
  %285 = load i64, i64* %RBP, align 8
  %286 = add i64 %285, -40
  %287 = add i64 %284, 3
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = add i64 %285, -8
  %292 = add i64 %284, 6
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sub i32 %289, %294
  %296 = icmp ult i32 %289, %294
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %47, align 1, !tbaa !2432
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #10
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %48, align 1, !tbaa !2446
  %303 = xor i32 %294, %289
  %304 = xor i32 %303, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %49, align 1, !tbaa !2450
  %308 = icmp eq i32 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %50, align 1, !tbaa !2447
  %310 = lshr i32 %295, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %51, align 1, !tbaa !2448
  %312 = lshr i32 %289, 31
  %313 = lshr i32 %294, 31
  %314 = xor i32 %313, %312
  %315 = xor i32 %310, %312
  %316 = add nuw nsw i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %52, align 1, !tbaa !2449
  %319 = icmp ne i8 %311, 0
  %320 = xor i1 %319, %317
  %.v6 = select i1 %320, i64 12, i64 93
  %321 = add i64 %284, %.v6
  store i64 %321, i64* %53, align 8, !tbaa !2428
  %322 = add i64 %285, -36
  br i1 %320, label %block_400bd6, label %block_400c27

block_400b0c:                                     ; preds = %block_400b00
  %323 = add i64 %600, 3
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %601 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = sitofp i32 %325 to double
  store double %327, double* %54, align 1, !tbaa !2451
  %328 = add i64 %600, 10
  store i64 %328, i64* %PC, align 8
  %329 = load i32, i32* %567, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = sitofp i32 %329 to double
  store double %331, double* %55, align 1, !tbaa !2451
  %332 = fmul double %327, %331
  store double %332, double* %54, align 1, !tbaa !2451
  %333 = add i64 %564, -4
  %334 = add i64 %600, 21
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RAX, align 8, !tbaa !2428
  %338 = sitofp i32 %336 to double
  store double %338, double* %55, align 1, !tbaa !2451
  %339 = fadd double %332, %338
  store double %339, double* %54, align 1, !tbaa !2451
  %340 = add i64 %600, 32
  store i64 %340, i64* %PC, align 8
  %341 = load i32, i32* %335, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX, align 8, !tbaa !2428
  %343 = sitofp i32 %341 to double
  store double %343, double* %55, align 1, !tbaa !2451
  %344 = fdiv double %339, %343
  store double %344, double* %54, align 1, !tbaa !2451
  %345 = add i64 %564, -16
  %346 = add i64 %600, 44
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RCX, align 8, !tbaa !2428
  %349 = add i64 %600, 48
  store i64 %349, i64* %PC, align 8
  %350 = load i32, i32* %324, align 4
  %351 = sext i32 %350 to i64
  %352 = shl nsw i64 %351, 12
  store i64 %352, i64* %RDX, align 8, !tbaa !2428
  %353 = lshr i64 %351, 51
  %354 = and i64 %353, 1
  %355 = add i64 %352, %348
  store i64 %355, i64* %RCX, align 8, !tbaa !2428
  %356 = icmp ult i64 %355, %348
  %357 = icmp ult i64 %355, %352
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %47, align 1, !tbaa !2432
  %360 = trunc i64 %355 to i32
  %361 = and i32 %360, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361) #10
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %48, align 1, !tbaa !2446
  %366 = xor i64 %348, %355
  %367 = lshr i64 %366, 4
  %368 = trunc i64 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %49, align 1, !tbaa !2450
  %370 = icmp eq i64 %355, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %50, align 1, !tbaa !2447
  %372 = lshr i64 %355, 63
  %373 = trunc i64 %372 to i8
  store i8 %373, i8* %51, align 1, !tbaa !2448
  %374 = lshr i64 %348, 63
  %375 = xor i64 %372, %374
  %376 = xor i64 %372, %354
  %377 = add nuw nsw i64 %375, %376
  %378 = icmp eq i64 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %52, align 1, !tbaa !2449
  %380 = load i64, i64* %RBP, align 8
  %381 = add i64 %380, -40
  %382 = add i64 %600, 59
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  store i64 %385, i64* %RDX, align 8, !tbaa !2428
  %386 = shl nsw i64 %385, 3
  %387 = add i64 %386, %355
  %388 = add i64 %600, 64
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %387 to double*
  store double %344, double* %389, align 8
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -36
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, 3
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %391 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX, align 8, !tbaa !2428
  %397 = sitofp i32 %395 to double
  store double %397, double* %54, align 1, !tbaa !2451
  %398 = add i64 %390, -40
  %399 = add i64 %392, 10
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, 1
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = icmp eq i32 %401, -1
  %405 = icmp eq i32 %402, 0
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %47, align 1, !tbaa !2432
  %408 = and i32 %402, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408) #10
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %48, align 1, !tbaa !2446
  %413 = xor i32 %401, %402
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %49, align 1, !tbaa !2450
  %417 = icmp eq i32 %402, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %50, align 1, !tbaa !2447
  %419 = lshr i32 %402, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %51, align 1, !tbaa !2448
  %421 = lshr i32 %401, 31
  %422 = xor i32 %419, %421
  %423 = add nuw nsw i32 %422, %419
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %52, align 1, !tbaa !2449
  %426 = sitofp i32 %402 to double
  store double %426, double* %55, align 1, !tbaa !2451
  %427 = fmul double %397, %426
  store double %427, double* %54, align 1, !tbaa !2451
  %428 = add i64 %390, -8
  %429 = add i64 %392, 24
  store i64 %429, i64* %PC, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = sitofp i32 %431 to double
  store double %433, double* %55, align 1, !tbaa !2451
  %434 = fadd double %427, %433
  store double %434, double* %54, align 1, !tbaa !2451
  %435 = add i64 %392, 35
  store i64 %435, i64* %PC, align 8
  %436 = load i32, i32* %430, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = sitofp i32 %436 to double
  store double %438, double* %55, align 1, !tbaa !2451
  %439 = fdiv double %434, %438
  store double %439, double* %54, align 1, !tbaa !2451
  %440 = add i64 %390, -32
  %441 = add i64 %392, 47
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = load i64, i64* %RBP, align 8
  %445 = add i64 %444, -36
  %446 = add i64 %392, 51
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  %450 = shl nsw i64 %449, 12
  store i64 %450, i64* %RDX, align 8, !tbaa !2428
  %451 = lshr i64 %449, 51
  %452 = and i64 %451, 1
  %453 = add i64 %450, %443
  store i64 %453, i64* %RCX, align 8, !tbaa !2428
  %454 = icmp ult i64 %453, %443
  %455 = icmp ult i64 %453, %450
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %47, align 1, !tbaa !2432
  %458 = trunc i64 %453 to i32
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459) #10
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %48, align 1, !tbaa !2446
  %464 = xor i64 %443, %453
  %465 = lshr i64 %464, 4
  %466 = trunc i64 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %49, align 1, !tbaa !2450
  %468 = icmp eq i64 %453, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %50, align 1, !tbaa !2447
  %470 = lshr i64 %453, 63
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %51, align 1, !tbaa !2448
  %472 = lshr i64 %443, 63
  %473 = xor i64 %470, %472
  %474 = xor i64 %470, %452
  %475 = add nuw nsw i64 %473, %474
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %52, align 1, !tbaa !2449
  %478 = add i64 %444, -40
  %479 = add i64 %392, 62
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  store i64 %482, i64* %RDX, align 8, !tbaa !2428
  %483 = shl nsw i64 %482, 3
  %484 = add i64 %483, %453
  %485 = add i64 %392, 67
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to double*
  store double %439, double* %486, align 8
  %487 = load i64, i64* %RBP, align 8
  %488 = add i64 %487, -40
  %489 = load i64, i64* %PC, align 8
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, 1
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2428
  %495 = icmp eq i32 %492, -1
  %496 = icmp eq i32 %493, 0
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %47, align 1, !tbaa !2432
  %499 = and i32 %493, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499) #10
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %48, align 1, !tbaa !2446
  %504 = xor i32 %492, %493
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %49, align 1, !tbaa !2450
  %508 = icmp eq i32 %493, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %50, align 1, !tbaa !2447
  %510 = lshr i32 %493, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %51, align 1, !tbaa !2448
  %512 = lshr i32 %492, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %510
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %52, align 1, !tbaa !2449
  %517 = add i64 %489, 9
  store i64 %517, i64* %PC, align 8
  store i32 %493, i32* %491, align 4
  %518 = load i64, i64* %PC, align 8
  %519 = add i64 %518, -152
  store i64 %519, i64* %53, align 8, !tbaa !2428
  br label %block_400b00

block_400bb0:                                     ; preds = %block_400aed
  %520 = add i64 %283, 7
  store i64 %520, i64* %PC, align 8
  store i32 0, i32* %250, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400bb7

block_400c27:                                     ; preds = %block_400bca
  %521 = add i64 %321, 8
  store i64 %521, i64* %PC, align 8
  %522 = inttoptr i64 %322 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = add i32 %523, 1
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX, align 8, !tbaa !2428
  %526 = icmp eq i32 %523, -1
  %527 = icmp eq i32 %524, 0
  %528 = or i1 %526, %527
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %47, align 1, !tbaa !2432
  %530 = and i32 %524, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530) #10
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %48, align 1, !tbaa !2446
  %535 = xor i32 %523, %524
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %49, align 1, !tbaa !2450
  %539 = icmp eq i32 %524, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %50, align 1, !tbaa !2447
  %541 = lshr i32 %524, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %51, align 1, !tbaa !2448
  %543 = lshr i32 %523, 31
  %544 = xor i32 %541, %543
  %545 = add nuw nsw i32 %544, %541
  %546 = icmp eq i32 %545, 2
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %52, align 1, !tbaa !2449
  %548 = add i64 %321, 14
  store i64 %548, i64* %PC, align 8
  store i32 %524, i32* %522, align 4
  %549 = load i64, i64* %PC, align 8
  %550 = add i64 %549, -126
  store i64 %550, i64* %53, align 8, !tbaa !2428
  br label %block_400bb7

block_400c3a:                                     ; preds = %block_400bb7
  %551 = add i64 %123, 1
  store i64 %551, i64* %PC, align 8
  %552 = load i64, i64* %9, align 8, !tbaa !2428
  %553 = add i64 %552, 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RBP, align 8, !tbaa !2428
  store i64 %553, i64* %9, align 8, !tbaa !2428
  %556 = add i64 %123, 2
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %553 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %53, align 8, !tbaa !2428
  %559 = add i64 %552, 16
  store i64 %559, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bc3:                                     ; preds = %block_400bb7
  %560 = add i64 %87, -40
  %561 = add i64 %123, 7
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  store i32 0, i32* %562, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400bca

block_400b00:                                     ; preds = %block_400b0c, %block_400af9
  %563 = phi i64 [ %519, %block_400b0c ], [ %.pre1, %block_400af9 ]
  %564 = load i64, i64* %RBP, align 8
  %565 = add i64 %564, -40
  %566 = add i64 %563, 3
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RAX, align 8, !tbaa !2428
  %570 = add i64 %564, -8
  %571 = add i64 %563, 6
  store i64 %571, i64* %PC, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = sub i32 %568, %573
  %575 = icmp ult i32 %568, %573
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %47, align 1, !tbaa !2432
  %577 = and i32 %574, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577) #10
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %48, align 1, !tbaa !2446
  %582 = xor i32 %573, %568
  %583 = xor i32 %582, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %49, align 1, !tbaa !2450
  %587 = icmp eq i32 %574, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %50, align 1, !tbaa !2447
  %589 = lshr i32 %574, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %51, align 1, !tbaa !2448
  %591 = lshr i32 %568, 31
  %592 = lshr i32 %573, 31
  %593 = xor i32 %592, %591
  %594 = xor i32 %589, %591
  %595 = add nuw nsw i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %52, align 1, !tbaa !2449
  %598 = icmp ne i8 %590, 0
  %599 = xor i1 %598, %596
  %.v4 = select i1 %599, i64 12, i64 157
  %600 = add i64 %563, %.v4
  store i64 %600, i64* %53, align 8, !tbaa !2428
  %601 = add i64 %564, -36
  br i1 %599, label %block_400b0c, label %block_400b9d
}

; Function Attrs: noinline
define %struct.Memory* @sub_400eb0_kernel_gramschmidt_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400eb0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
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
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -72
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 64
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2432
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #10
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2446
  %25 = xor i64 %11, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2450
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2447
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2448
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2449
  %42 = add i64 %10, -12
  %43 = load i32, i32* %EDI, align 4
  %44 = add i64 %13, 10
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI, align 4
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %R8, align 8
  %67 = load i64, i64* %PC, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -44
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %76 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %78 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %79 = getelementptr inbounds i8, i8* %76, i64 4
  %80 = bitcast i8* %79 to i32*
  %81 = bitcast i64* %77 to i32*
  %82 = getelementptr inbounds i8, i8* %76, i64 12
  %83 = bitcast i8* %82 to i32*
  %84 = bitcast [32 x %union.VectorReg]* %5 to double*
  %85 = bitcast i64* %77 to double*
  %86 = bitcast [32 x %union.VectorReg]* %5 to double*
  %87 = bitcast %union.VectorReg* %6 to double*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ed1

block_400ef8:                                     ; preds = %block_400eec
  %90 = add i64 %642, -16
  %91 = add i64 %678, 4
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RAX, align 8, !tbaa !2428
  %94 = add i64 %678, 8
  store i64 %94, i64* %PC, align 8
  %95 = load i32, i32* %645, align 4
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 12
  store i64 %97, i64* %RCX, align 8, !tbaa !2428
  %98 = lshr i64 %96, 51
  %99 = and i64 %98, 1
  %100 = add i64 %97, %93
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = icmp ult i64 %100, %93
  %102 = icmp ult i64 %100, %97
  %103 = or i1 %101, %102
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %17, align 1, !tbaa !2432
  %105 = trunc i64 %100 to i32
  %106 = and i32 %105, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106) #10
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %24, align 1, !tbaa !2446
  %111 = xor i64 %93, %100
  %112 = lshr i64 %111, 4
  %113 = trunc i64 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %29, align 1, !tbaa !2450
  %115 = icmp eq i64 %100, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %32, align 1, !tbaa !2447
  %117 = lshr i64 %100, 63
  %118 = trunc i64 %117 to i8
  store i8 %118, i8* %35, align 1, !tbaa !2448
  %119 = lshr i64 %93, 63
  %120 = xor i64 %117, %119
  %121 = xor i64 %117, %99
  %122 = add nuw nsw i64 %120, %121
  %123 = icmp eq i64 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %41, align 1, !tbaa !2449
  %125 = add i64 %642, -44
  %126 = add i64 %678, 19
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %RCX, align 8, !tbaa !2428
  %130 = shl nsw i64 %129, 3
  %131 = add i64 %130, %100
  %132 = add i64 %678, 24
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to double*
  %134 = load double, double* %133, align 8
  store double %134, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %135 = add i64 %678, 28
  store i64 %135, i64* %PC, align 8
  %136 = load i64, i64* %92, align 8
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = add i64 %678, 32
  store i64 %137, i64* %PC, align 8
  %138 = load i32, i32* %645, align 4
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 12
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = lshr i64 %139, 51
  %142 = and i64 %141, 1
  %143 = add i64 %140, %136
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = icmp ult i64 %143, %136
  %145 = icmp ult i64 %143, %140
  %146 = or i1 %144, %145
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %17, align 1, !tbaa !2432
  %148 = trunc i64 %143 to i32
  %149 = and i32 %148, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #10
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %24, align 1, !tbaa !2446
  %154 = xor i64 %136, %143
  %155 = lshr i64 %154, 4
  %156 = trunc i64 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %29, align 1, !tbaa !2450
  %158 = icmp eq i64 %143, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %32, align 1, !tbaa !2447
  %160 = lshr i64 %143, 63
  %161 = trunc i64 %160 to i8
  store i8 %161, i8* %35, align 1, !tbaa !2448
  %162 = lshr i64 %136, 63
  %163 = xor i64 %160, %162
  %164 = xor i64 %160, %142
  %165 = add nuw nsw i64 %163, %164
  %166 = icmp eq i64 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %41, align 1, !tbaa !2449
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -44
  %170 = add i64 %678, 43
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %RCX, align 8, !tbaa !2428
  %174 = shl nsw i64 %173, 3
  %175 = add i64 %174, %143
  %176 = add i64 %678, 48
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %175 to double*
  %178 = load double, double* %177, align 8
  %179 = fmul double %134, %178
  store double %179, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %180 = add i64 %168, -56
  %181 = add i64 %678, 53
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to double*
  %183 = load double, double* %182, align 8
  %184 = fadd double %179, %183
  store double %184, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %185 = add i64 %678, 58
  store i64 %185, i64* %PC, align 8
  store double %184, double* %182, align 8
  %186 = load i64, i64* %RBP, align 8
  %187 = add i64 %186, -36
  %188 = load i64, i64* %PC, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, 1
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = icmp eq i32 %191, -1
  %195 = icmp eq i32 %192, 0
  %196 = or i1 %194, %195
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %17, align 1, !tbaa !2432
  %198 = and i32 %192, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198) #10
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %24, align 1, !tbaa !2446
  %203 = xor i32 %191, %192
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %29, align 1, !tbaa !2450
  %207 = icmp eq i32 %192, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %32, align 1, !tbaa !2447
  %209 = lshr i32 %192, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %35, align 1, !tbaa !2448
  %211 = lshr i32 %191, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %209
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %41, align 1, !tbaa !2449
  %216 = add i64 %188, 9
  store i64 %216, i64* %PC, align 8
  store i32 %192, i32* %190, align 4
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, -79
  store i64 %218, i64* %75, align 8, !tbaa !2428
  br label %block_400eec

block_400f75:                                     ; preds = %block_400f69
  %219 = add i64 %428, -16
  %220 = add i64 %464, 4
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = add i64 %464, 8
  store i64 %223, i64* %PC, align 8
  %224 = load i32, i32* %431, align 4
  %225 = sext i32 %224 to i64
  %226 = shl nsw i64 %225, 12
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = lshr i64 %225, 51
  %228 = and i64 %227, 1
  %229 = add i64 %226, %222
  store i64 %229, i64* %RAX, align 8, !tbaa !2428
  %230 = icmp ult i64 %229, %222
  %231 = icmp ult i64 %229, %226
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %17, align 1, !tbaa !2432
  %234 = trunc i64 %229 to i32
  %235 = and i32 %234, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235) #10
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %24, align 1, !tbaa !2446
  %240 = xor i64 %222, %229
  %241 = lshr i64 %240, 4
  %242 = trunc i64 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %29, align 1, !tbaa !2450
  %244 = icmp eq i64 %229, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %32, align 1, !tbaa !2447
  %246 = lshr i64 %229, 63
  %247 = trunc i64 %246 to i8
  store i8 %247, i8* %35, align 1, !tbaa !2448
  %248 = lshr i64 %222, 63
  %249 = xor i64 %246, %248
  %250 = xor i64 %246, %228
  %251 = add nuw nsw i64 %249, %250
  %252 = icmp eq i64 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %41, align 1, !tbaa !2449
  %254 = add i64 %428, -44
  %255 = add i64 %464, 19
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = shl nsw i64 %258, 3
  %260 = add i64 %259, %229
  %261 = add i64 %464, 24
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to double*
  %263 = load double, double* %262, align 8
  store double %263, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %264 = add i64 %428, -24
  %265 = add i64 %464, 28
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = add i64 %464, 32
  store i64 %268, i64* %PC, align 8
  %269 = load i32, i32* %256, align 4
  %270 = sext i32 %269 to i64
  %271 = shl nsw i64 %270, 12
  store i64 %271, i64* %RCX, align 8, !tbaa !2428
  %272 = lshr i64 %270, 51
  %273 = and i64 %272, 1
  %274 = add i64 %271, %267
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = icmp ult i64 %274, %267
  %276 = icmp ult i64 %274, %271
  %277 = or i1 %275, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %17, align 1, !tbaa !2432
  %279 = trunc i64 %274 to i32
  %280 = and i32 %279, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #10
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %24, align 1, !tbaa !2446
  %285 = xor i64 %267, %274
  %286 = lshr i64 %285, 4
  %287 = trunc i64 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %29, align 1, !tbaa !2450
  %289 = icmp eq i64 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %32, align 1, !tbaa !2447
  %291 = lshr i64 %274, 63
  %292 = trunc i64 %291 to i8
  store i8 %292, i8* %35, align 1, !tbaa !2448
  %293 = lshr i64 %267, 63
  %294 = xor i64 %291, %293
  %295 = xor i64 %291, %273
  %296 = add nuw nsw i64 %294, %295
  %297 = icmp eq i64 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %41, align 1, !tbaa !2449
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -44
  %301 = add i64 %464, 43
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %RCX, align 8, !tbaa !2428
  %305 = shl nsw i64 %304, 3
  %306 = add i64 %305, %274
  %307 = add i64 %464, 48
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to double*
  %309 = load double, double* %308, align 8
  %310 = fdiv double %263, %309
  store double %310, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %311 = add i64 %299, -32
  %312 = add i64 %464, 52
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %299, -36
  %316 = add i64 %464, 56
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = shl nsw i64 %319, 12
  store i64 %320, i64* %RCX, align 8, !tbaa !2428
  %321 = lshr i64 %319, 51
  %322 = and i64 %321, 1
  %323 = add i64 %320, %314
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = icmp ult i64 %323, %314
  %325 = icmp ult i64 %323, %320
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %17, align 1, !tbaa !2432
  %328 = trunc i64 %323 to i32
  %329 = and i32 %328, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #10
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %24, align 1, !tbaa !2446
  %334 = xor i64 %314, %323
  %335 = lshr i64 %334, 4
  %336 = trunc i64 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %29, align 1, !tbaa !2450
  %338 = icmp eq i64 %323, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %32, align 1, !tbaa !2447
  %340 = lshr i64 %323, 63
  %341 = trunc i64 %340 to i8
  store i8 %341, i8* %35, align 1, !tbaa !2448
  %342 = lshr i64 %314, 63
  %343 = xor i64 %340, %342
  %344 = xor i64 %340, %322
  %345 = add nuw nsw i64 %343, %344
  %346 = icmp eq i64 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %41, align 1, !tbaa !2449
  %348 = add i64 %464, 67
  store i64 %348, i64* %PC, align 8
  %349 = load i32, i32* %302, align 4
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = shl nsw i64 %350, 3
  %352 = add i64 %351, %323
  %353 = add i64 %464, 72
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to double*
  store double %310, double* %354, align 8
  %355 = load i64, i64* %RBP, align 8
  %356 = add i64 %355, -36
  %357 = load i64, i64* %PC, align 8
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = add i32 %360, 1
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = icmp eq i32 %360, -1
  %364 = icmp eq i32 %361, 0
  %365 = or i1 %363, %364
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %17, align 1, !tbaa !2432
  %367 = and i32 %361, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #10
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %24, align 1, !tbaa !2446
  %372 = xor i32 %360, %361
  %373 = lshr i32 %372, 4
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %29, align 1, !tbaa !2450
  %376 = icmp eq i32 %361, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %32, align 1, !tbaa !2447
  %378 = lshr i32 %361, 31
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %35, align 1, !tbaa !2448
  %380 = lshr i32 %360, 31
  %381 = xor i32 %378, %380
  %382 = add nuw nsw i32 %381, %378
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %41, align 1, !tbaa !2449
  %385 = add i64 %357, 9
  store i64 %385, i64* %PC, align 8
  store i32 %361, i32* %359, align 4
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, -93
  store i64 %387, i64* %75, align 8, !tbaa !2428
  br label %block_400f69

block_401069:                                     ; preds = %block_401002
  %388 = add i64 %1228, 7
  store i64 %388, i64* %PC, align 8
  store i32 0, i32* %1195, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_401070

block_401070:                                     ; preds = %block_40107c, %block_401069
  %389 = phi i64 [ %1152, %block_40107c ], [ %.pre6, %block_401069 ]
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -36
  %392 = add i64 %389, 3
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = add i64 %390, -4
  %397 = add i64 %389, 6
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = sub i32 %394, %399
  %401 = icmp ult i32 %394, %399
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %17, align 1, !tbaa !2432
  %403 = and i32 %400, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403) #10
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %24, align 1, !tbaa !2446
  %408 = xor i32 %399, %394
  %409 = xor i32 %408, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %29, align 1, !tbaa !2450
  %413 = icmp eq i32 %400, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %32, align 1, !tbaa !2447
  %415 = lshr i32 %400, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %35, align 1, !tbaa !2448
  %417 = lshr i32 %394, 31
  %418 = lshr i32 %399, 31
  %419 = xor i32 %418, %417
  %420 = xor i32 %415, %417
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %41, align 1, !tbaa !2449
  %424 = icmp ne i8 %416, 0
  %425 = xor i1 %424, %422
  %.v14 = select i1 %425, i64 12, i64 126
  %426 = add i64 %389, %.v14
  store i64 %426, i64* %75, align 8, !tbaa !2428
  br i1 %425, label %block_40107c, label %block_4010ee

block_400f69:                                     ; preds = %block_400f40, %block_400f75
  %427 = phi i64 [ %.pre3, %block_400f40 ], [ %387, %block_400f75 ]
  %428 = load i64, i64* %RBP, align 8
  %429 = add i64 %428, -36
  %430 = add i64 %427, 3
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX, align 8, !tbaa !2428
  %434 = add i64 %428, -4
  %435 = add i64 %427, 6
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sub i32 %432, %437
  %439 = icmp ult i32 %432, %437
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %17, align 1, !tbaa !2432
  %441 = and i32 %438, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #10
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %24, align 1, !tbaa !2446
  %446 = xor i32 %437, %432
  %447 = xor i32 %446, %438
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %29, align 1, !tbaa !2450
  %451 = icmp eq i32 %438, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %32, align 1, !tbaa !2447
  %453 = lshr i32 %438, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %35, align 1, !tbaa !2448
  %455 = lshr i32 %432, 31
  %456 = lshr i32 %437, 31
  %457 = xor i32 %456, %455
  %458 = xor i32 %453, %455
  %459 = add nuw nsw i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %41, align 1, !tbaa !2449
  %462 = icmp ne i8 %454, 0
  %463 = xor i1 %462, %460
  %.v11 = select i1 %463, i64 12, i64 98
  %464 = add i64 %427, %.v11
  store i64 %464, i64* %75, align 8, !tbaa !2428
  br i1 %463, label %block_400f75, label %block_400fcb

block_4010ee:                                     ; preds = %block_401070
  %465 = add i64 %390, -40
  %466 = add i64 %426, 8
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = add i32 %468, 1
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX, align 8, !tbaa !2428
  %471 = icmp eq i32 %468, -1
  %472 = icmp eq i32 %469, 0
  %473 = or i1 %471, %472
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %17, align 1, !tbaa !2432
  %475 = and i32 %469, 255
  %476 = tail call i32 @llvm.ctpop.i32(i32 %475) #10
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  store i8 %479, i8* %24, align 1, !tbaa !2446
  %480 = xor i32 %468, %469
  %481 = lshr i32 %480, 4
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %29, align 1, !tbaa !2450
  %484 = icmp eq i32 %469, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %32, align 1, !tbaa !2447
  %486 = lshr i32 %469, 31
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %35, align 1, !tbaa !2448
  %488 = lshr i32 %468, 31
  %489 = xor i32 %486, %488
  %490 = add nuw nsw i32 %489, %486
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %41, align 1, !tbaa !2449
  %493 = add i64 %426, 14
  store i64 %493, i64* %PC, align 8
  store i32 %469, i32* %467, align 4
  %494 = load i64, i64* %PC, align 8
  %495 = add i64 %494, -296
  store i64 %495, i64* %75, align 8, !tbaa !2428
  br label %block_400fd4

block_400edd:                                     ; preds = %block_400ed1
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %80, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  store i32 0, i32* %83, align 1, !tbaa !2456
  %496 = add i64 %507, -56
  %497 = add i64 %543, 8
  store i64 %497, i64* %PC, align 8
  %498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %499 = load i64, i64* %498, align 1
  %500 = inttoptr i64 %496 to i64*
  store i64 %499, i64* %500, align 8
  %501 = load i64, i64* %RBP, align 8
  %502 = add i64 %501, -36
  %503 = load i64, i64* %PC, align 8
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %502 to i32*
  store i32 0, i32* %505, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400eec

block_400ed1:                                     ; preds = %block_401101, %block_400eb0
  %506 = phi i64 [ %1259, %block_401101 ], [ %.pre, %block_400eb0 ]
  %507 = load i64, i64* %RBP, align 8
  %508 = add i64 %507, -44
  %509 = add i64 %506, 3
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = add i64 %507, -8
  %514 = add i64 %506, 6
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sub i32 %511, %516
  %518 = icmp ult i32 %511, %516
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %17, align 1, !tbaa !2432
  %520 = and i32 %517, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520) #10
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %24, align 1, !tbaa !2446
  %525 = xor i32 %516, %511
  %526 = xor i32 %525, %517
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %29, align 1, !tbaa !2450
  %530 = icmp eq i32 %517, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %32, align 1, !tbaa !2447
  %532 = lshr i32 %517, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %35, align 1, !tbaa !2448
  %534 = lshr i32 %511, 31
  %535 = lshr i32 %516, 31
  %536 = xor i32 %535, %534
  %537 = xor i32 %532, %534
  %538 = add nuw nsw i32 %537, %536
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %41, align 1, !tbaa !2449
  %541 = icmp ne i8 %533, 0
  %542 = xor i1 %541, %539
  %.v = select i1 %542, i64 12, i64 579
  %543 = add i64 %506, %.v
  store i64 %543, i64* %75, align 8, !tbaa !2428
  br i1 %542, label %block_400edd, label %block_401114

block_400fcb:                                     ; preds = %block_400f69
  %544 = add i64 %428, -44
  %545 = add i64 %464, 3
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX, align 8, !tbaa !2428
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %17, align 1, !tbaa !2432
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554) #10
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %24, align 1, !tbaa !2446
  %559 = xor i32 %547, %548
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %29, align 1, !tbaa !2450
  %563 = icmp eq i32 %548, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %32, align 1, !tbaa !2447
  %565 = lshr i32 %548, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %35, align 1, !tbaa !2448
  %567 = lshr i32 %547, 31
  %568 = xor i32 %565, %567
  %569 = add nuw nsw i32 %568, %565
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %41, align 1, !tbaa !2449
  %572 = add i64 %428, -40
  %573 = add i64 %464, 9
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 %548, i32* %574, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400fd4

block_400f40:                                     ; preds = %block_400eec
  %575 = add i64 %642, -56
  %576 = add i64 %678, 5
  store i64 %576, i64* %PC, align 8
  %577 = inttoptr i64 %575 to i64*
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %578, i64* %579, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %580 = add i64 %678, -2368
  %581 = add i64 %678, 10
  %582 = load i64, i64* %9, align 8, !tbaa !2428
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %581, i64* %584, align 8
  store i64 %583, i64* %9, align 8, !tbaa !2428
  store i64 %580, i64* %PC, align 8, !alias.scope !2462, !noalias !2465
  %585 = load double, double* %86, align 8, !alias.scope !2462, !noalias !2465
  %586 = load i64, i64* %584, align 8
  store i64 %582, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %587 = tail call double @sqrt(double %585)
  %.repack = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack, align 8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %588, align 8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %589, align 8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %590, align 8
  store double %587, double* %86, align 8, !alias.scope !2462, !noalias !2465
  %591 = load i64, i64* %RBP, align 8
  %592 = add i64 %591, -24
  %593 = add i64 %586, 4
  store i64 %593, i64* %PC, align 8
  %594 = inttoptr i64 %592 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %RAX, align 8, !tbaa !2428
  %596 = add i64 %591, -44
  %597 = add i64 %586, 8
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  %601 = shl nsw i64 %600, 12
  store i64 %601, i64* %RCX, align 8, !tbaa !2428
  %602 = lshr i64 %600, 51
  %603 = and i64 %602, 1
  %604 = add i64 %601, %595
  store i64 %604, i64* %RAX, align 8, !tbaa !2428
  %605 = icmp ult i64 %604, %595
  %606 = icmp ult i64 %604, %601
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %17, align 1, !tbaa !2432
  %609 = trunc i64 %604 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610) #10
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %24, align 1, !tbaa !2446
  %615 = xor i64 %595, %604
  %616 = lshr i64 %615, 4
  %617 = trunc i64 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %29, align 1, !tbaa !2450
  %619 = icmp eq i64 %604, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %32, align 1, !tbaa !2447
  %621 = lshr i64 %604, 63
  %622 = trunc i64 %621 to i8
  store i8 %622, i8* %35, align 1, !tbaa !2448
  %623 = lshr i64 %595, 63
  %624 = xor i64 %621, %623
  %625 = xor i64 %621, %603
  %626 = add nuw nsw i64 %624, %625
  %627 = icmp eq i64 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %41, align 1, !tbaa !2449
  %629 = add i64 %586, 19
  store i64 %629, i64* %PC, align 8
  %630 = load i32, i32* %598, align 4
  %631 = sext i32 %630 to i64
  store i64 %631, i64* %RCX, align 8, !tbaa !2428
  %632 = shl nsw i64 %631, 3
  %633 = add i64 %632, %604
  %634 = add i64 %586, 24
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to double*
  store double %587, double* %635, align 8
  %636 = load i64, i64* %RBP, align 8
  %637 = add i64 %636, -36
  %638 = load i64, i64* %PC, align 8
  %639 = add i64 %638, 7
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %637 to i32*
  store i32 0, i32* %640, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400f69

block_400eec:                                     ; preds = %block_400edd, %block_400ef8
  %641 = phi i64 [ %.pre2, %block_400edd ], [ %218, %block_400ef8 ]
  %642 = load i64, i64* %RBP, align 8
  %643 = add i64 %642, -36
  %644 = add i64 %641, 3
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = add i64 %642, -4
  %649 = add i64 %641, 6
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sub i32 %646, %651
  %653 = icmp ult i32 %646, %651
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %17, align 1, !tbaa !2432
  %655 = and i32 %652, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655) #10
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %24, align 1, !tbaa !2446
  %660 = xor i32 %651, %646
  %661 = xor i32 %660, %652
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %29, align 1, !tbaa !2450
  %665 = icmp eq i32 %652, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %32, align 1, !tbaa !2447
  %667 = lshr i32 %652, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %35, align 1, !tbaa !2448
  %669 = lshr i32 %646, 31
  %670 = lshr i32 %651, 31
  %671 = xor i32 %670, %669
  %672 = xor i32 %667, %669
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %41, align 1, !tbaa !2449
  %676 = icmp ne i8 %668, 0
  %677 = xor i1 %676, %674
  %.v7 = select i1 %677, i64 12, i64 84
  %678 = add i64 %641, %.v7
  store i64 %678, i64* %75, align 8, !tbaa !2428
  br i1 %677, label %block_400ef8, label %block_400f40

block_401114:                                     ; preds = %block_400ed1
  %679 = load i64, i64* %RSP, align 8
  %680 = add i64 %679, 64
  store i64 %680, i64* %RSP, align 8, !tbaa !2428
  %681 = icmp ugt i64 %679, -65
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %17, align 1, !tbaa !2432
  %683 = trunc i64 %680 to i32
  %684 = and i32 %683, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684) #10
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %24, align 1, !tbaa !2446
  %689 = xor i64 %679, %680
  %690 = lshr i64 %689, 4
  %691 = trunc i64 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %29, align 1, !tbaa !2450
  %693 = icmp eq i64 %680, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %32, align 1, !tbaa !2447
  %695 = lshr i64 %680, 63
  %696 = trunc i64 %695 to i8
  store i8 %696, i8* %35, align 1, !tbaa !2448
  %697 = lshr i64 %679, 63
  %698 = xor i64 %695, %697
  %699 = add nuw nsw i64 %698, %695
  %700 = icmp eq i64 %699, 2
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %41, align 1, !tbaa !2449
  %702 = add i64 %543, 5
  store i64 %702, i64* %PC, align 8
  %703 = add i64 %679, 72
  %704 = inttoptr i64 %680 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RBP, align 8, !tbaa !2428
  store i64 %703, i64* %9, align 8, !tbaa !2428
  %706 = add i64 %543, 6
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %703 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %75, align 8, !tbaa !2428
  %709 = add i64 %679, 80
  store i64 %709, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400fe0:                                     ; preds = %block_400fd4
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %80, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  store i32 0, i32* %83, align 1, !tbaa !2456
  %710 = add i64 %1154, -24
  %711 = add i64 %1190, 7
  store i64 %711, i64* %PC, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX, align 8, !tbaa !2428
  %714 = add i64 %1154, -44
  %715 = add i64 %1190, 11
  store i64 %715, i64* %PC, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  %719 = shl nsw i64 %718, 12
  store i64 %719, i64* %RCX, align 8, !tbaa !2428
  %720 = lshr i64 %718, 51
  %721 = and i64 %720, 1
  %722 = add i64 %719, %713
  store i64 %722, i64* %RAX, align 8, !tbaa !2428
  %723 = icmp ult i64 %722, %713
  %724 = icmp ult i64 %722, %719
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %17, align 1, !tbaa !2432
  %727 = trunc i64 %722 to i32
  %728 = and i32 %727, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728) #10
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %24, align 1, !tbaa !2446
  %733 = xor i64 %713, %722
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %29, align 1, !tbaa !2450
  %737 = icmp eq i64 %722, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %32, align 1, !tbaa !2447
  %739 = lshr i64 %722, 63
  %740 = trunc i64 %739 to i8
  store i8 %740, i8* %35, align 1, !tbaa !2448
  %741 = lshr i64 %713, 63
  %742 = xor i64 %739, %741
  %743 = xor i64 %739, %721
  %744 = add nuw nsw i64 %742, %743
  %745 = icmp eq i64 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %41, align 1, !tbaa !2449
  %747 = add i64 %1190, 22
  store i64 %747, i64* %PC, align 8
  %748 = load i32, i32* %1157, align 4
  %749 = sext i32 %748 to i64
  store i64 %749, i64* %RCX, align 8, !tbaa !2428
  %750 = shl nsw i64 %749, 3
  %751 = add i64 %750, %722
  %752 = add i64 %1190, 27
  store i64 %752, i64* %PC, align 8
  %753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %754 = load i64, i64* %753, align 1
  %755 = inttoptr i64 %751 to i64*
  store i64 %754, i64* %755, align 8
  %756 = load i64, i64* %RBP, align 8
  %757 = add i64 %756, -36
  %758 = load i64, i64* %PC, align 8
  %759 = add i64 %758, 7
  store i64 %759, i64* %PC, align 8
  %760 = inttoptr i64 %757 to i32*
  store i32 0, i32* %760, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401002

block_40100e:                                     ; preds = %block_401002
  %761 = add i64 %1192, -32
  %762 = add i64 %1228, 4
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RAX, align 8, !tbaa !2428
  %765 = add i64 %1228, 8
  store i64 %765, i64* %PC, align 8
  %766 = load i32, i32* %1195, align 4
  %767 = sext i32 %766 to i64
  %768 = shl nsw i64 %767, 12
  store i64 %768, i64* %RCX, align 8, !tbaa !2428
  %769 = lshr i64 %767, 51
  %770 = and i64 %769, 1
  %771 = add i64 %768, %764
  store i64 %771, i64* %RAX, align 8, !tbaa !2428
  %772 = icmp ult i64 %771, %764
  %773 = icmp ult i64 %771, %768
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %17, align 1, !tbaa !2432
  %776 = trunc i64 %771 to i32
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777) #10
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %24, align 1, !tbaa !2446
  %782 = xor i64 %764, %771
  %783 = lshr i64 %782, 4
  %784 = trunc i64 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %29, align 1, !tbaa !2450
  %786 = icmp eq i64 %771, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %32, align 1, !tbaa !2447
  %788 = lshr i64 %771, 63
  %789 = trunc i64 %788 to i8
  store i8 %789, i8* %35, align 1, !tbaa !2448
  %790 = lshr i64 %764, 63
  %791 = xor i64 %788, %790
  %792 = xor i64 %788, %770
  %793 = add nuw nsw i64 %791, %792
  %794 = icmp eq i64 %793, 2
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %41, align 1, !tbaa !2449
  %796 = add i64 %1192, -44
  %797 = add i64 %1228, 19
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %RCX, align 8, !tbaa !2428
  %801 = shl nsw i64 %800, 3
  %802 = add i64 %801, %771
  %803 = add i64 %1228, 24
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %802 to double*
  %805 = load double, double* %804, align 8
  store double %805, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %806 = add i64 %1192, -16
  %807 = add i64 %1228, 28
  store i64 %807, i64* %PC, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %RAX, align 8, !tbaa !2428
  %810 = add i64 %1228, 32
  store i64 %810, i64* %PC, align 8
  %811 = load i32, i32* %1195, align 4
  %812 = sext i32 %811 to i64
  %813 = shl nsw i64 %812, 12
  store i64 %813, i64* %RCX, align 8, !tbaa !2428
  %814 = lshr i64 %812, 51
  %815 = and i64 %814, 1
  %816 = add i64 %813, %809
  store i64 %816, i64* %RAX, align 8, !tbaa !2428
  %817 = icmp ult i64 %816, %809
  %818 = icmp ult i64 %816, %813
  %819 = or i1 %817, %818
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %17, align 1, !tbaa !2432
  %821 = trunc i64 %816 to i32
  %822 = and i32 %821, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822) #10
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %24, align 1, !tbaa !2446
  %827 = xor i64 %809, %816
  %828 = lshr i64 %827, 4
  %829 = trunc i64 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %29, align 1, !tbaa !2450
  %831 = icmp eq i64 %816, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %32, align 1, !tbaa !2447
  %833 = lshr i64 %816, 63
  %834 = trunc i64 %833 to i8
  store i8 %834, i8* %35, align 1, !tbaa !2448
  %835 = lshr i64 %809, 63
  %836 = xor i64 %833, %835
  %837 = xor i64 %833, %815
  %838 = add nuw nsw i64 %836, %837
  %839 = icmp eq i64 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %41, align 1, !tbaa !2449
  %841 = load i64, i64* %RBP, align 8
  %842 = add i64 %841, -40
  %843 = add i64 %1228, 43
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX, align 8, !tbaa !2428
  %847 = shl nsw i64 %846, 3
  %848 = add i64 %847, %816
  %849 = add i64 %1228, 48
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %848 to double*
  %851 = load double, double* %850, align 8
  %852 = fmul double %805, %851
  store double %852, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %853 = add i64 %841, -24
  %854 = add i64 %1228, 52
  store i64 %854, i64* %PC, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RAX, align 8, !tbaa !2428
  %857 = add i64 %841, -44
  %858 = add i64 %1228, 56
  store i64 %858, i64* %PC, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = sext i32 %860 to i64
  %862 = shl nsw i64 %861, 12
  store i64 %862, i64* %RCX, align 8, !tbaa !2428
  %863 = lshr i64 %861, 51
  %864 = and i64 %863, 1
  %865 = add i64 %862, %856
  store i64 %865, i64* %RAX, align 8, !tbaa !2428
  %866 = icmp ult i64 %865, %856
  %867 = icmp ult i64 %865, %862
  %868 = or i1 %866, %867
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %17, align 1, !tbaa !2432
  %870 = trunc i64 %865 to i32
  %871 = and i32 %870, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871) #10
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %24, align 1, !tbaa !2446
  %876 = xor i64 %856, %865
  %877 = lshr i64 %876, 4
  %878 = trunc i64 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %29, align 1, !tbaa !2450
  %880 = icmp eq i64 %865, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %32, align 1, !tbaa !2447
  %882 = lshr i64 %865, 63
  %883 = trunc i64 %882 to i8
  store i8 %883, i8* %35, align 1, !tbaa !2448
  %884 = lshr i64 %856, 63
  %885 = xor i64 %882, %884
  %886 = xor i64 %882, %864
  %887 = add nuw nsw i64 %885, %886
  %888 = icmp eq i64 %887, 2
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %41, align 1, !tbaa !2449
  %890 = add i64 %1228, 67
  store i64 %890, i64* %PC, align 8
  %891 = load i32, i32* %844, align 4
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RCX, align 8, !tbaa !2428
  %893 = shl nsw i64 %892, 3
  %894 = add i64 %893, %865
  %895 = add i64 %1228, 72
  store i64 %895, i64* %PC, align 8
  %896 = inttoptr i64 %894 to double*
  %897 = load double, double* %896, align 8
  %898 = fadd double %852, %897
  store double %898, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %77, align 1, !tbaa !2451
  %899 = add i64 %1228, 77
  store i64 %899, i64* %PC, align 8
  store double %898, double* %896, align 8
  %900 = load i64, i64* %RBP, align 8
  %901 = add i64 %900, -36
  %902 = load i64, i64* %PC, align 8
  %903 = add i64 %902, 3
  store i64 %903, i64* %PC, align 8
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = add i32 %905, 1
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RAX, align 8, !tbaa !2428
  %908 = icmp eq i32 %905, -1
  %909 = icmp eq i32 %906, 0
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %17, align 1, !tbaa !2432
  %912 = and i32 %906, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912) #10
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %24, align 1, !tbaa !2446
  %917 = xor i32 %905, %906
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %29, align 1, !tbaa !2450
  %921 = icmp eq i32 %906, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %32, align 1, !tbaa !2447
  %923 = lshr i32 %906, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %35, align 1, !tbaa !2448
  %925 = lshr i32 %905, 31
  %926 = xor i32 %923, %925
  %927 = add nuw nsw i32 %926, %923
  %928 = icmp eq i32 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %41, align 1, !tbaa !2449
  %930 = add i64 %902, 9
  store i64 %930, i64* %PC, align 8
  store i32 %906, i32* %904, align 4
  %931 = load i64, i64* %PC, align 8
  %932 = add i64 %931, -98
  store i64 %932, i64* %75, align 8, !tbaa !2428
  br label %block_401002

block_40107c:                                     ; preds = %block_401070
  %933 = add i64 %390, -16
  %934 = add i64 %426, 4
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i64*
  %936 = load i64, i64* %935, align 8
  store i64 %936, i64* %RAX, align 8, !tbaa !2428
  %937 = add i64 %426, 8
  store i64 %937, i64* %PC, align 8
  %938 = load i32, i32* %393, align 4
  %939 = sext i32 %938 to i64
  %940 = shl nsw i64 %939, 12
  store i64 %940, i64* %RCX, align 8, !tbaa !2428
  %941 = lshr i64 %939, 51
  %942 = and i64 %941, 1
  %943 = add i64 %940, %936
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = icmp ult i64 %943, %936
  %945 = icmp ult i64 %943, %940
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %17, align 1, !tbaa !2432
  %948 = trunc i64 %943 to i32
  %949 = and i32 %948, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949) #10
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %24, align 1, !tbaa !2446
  %954 = xor i64 %936, %943
  %955 = lshr i64 %954, 4
  %956 = trunc i64 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %29, align 1, !tbaa !2450
  %958 = icmp eq i64 %943, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %32, align 1, !tbaa !2447
  %960 = lshr i64 %943, 63
  %961 = trunc i64 %960 to i8
  store i8 %961, i8* %35, align 1, !tbaa !2448
  %962 = lshr i64 %936, 63
  %963 = xor i64 %960, %962
  %964 = xor i64 %960, %942
  %965 = add nuw nsw i64 %963, %964
  %966 = icmp eq i64 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %41, align 1, !tbaa !2449
  %968 = add i64 %390, -40
  %969 = add i64 %426, 19
  store i64 %969, i64* %PC, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RCX, align 8, !tbaa !2428
  %973 = shl nsw i64 %972, 3
  %974 = add i64 %973, %943
  %975 = add i64 %426, 24
  store i64 %975, i64* %PC, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  %978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %977, i64* %978, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %979 = add i64 %390, -32
  %980 = add i64 %426, 28
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RAX, align 8, !tbaa !2428
  %983 = add i64 %426, 32
  store i64 %983, i64* %PC, align 8
  %984 = load i32, i32* %393, align 4
  %985 = sext i32 %984 to i64
  %986 = shl nsw i64 %985, 12
  store i64 %986, i64* %RCX, align 8, !tbaa !2428
  %987 = lshr i64 %985, 51
  %988 = and i64 %987, 1
  %989 = add i64 %986, %982
  store i64 %989, i64* %RAX, align 8, !tbaa !2428
  %990 = icmp ult i64 %989, %982
  %991 = icmp ult i64 %989, %986
  %992 = or i1 %990, %991
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %17, align 1, !tbaa !2432
  %994 = trunc i64 %989 to i32
  %995 = and i32 %994, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995) #10
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %24, align 1, !tbaa !2446
  %1000 = xor i64 %982, %989
  %1001 = lshr i64 %1000, 4
  %1002 = trunc i64 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %29, align 1, !tbaa !2450
  %1004 = icmp eq i64 %989, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %32, align 1, !tbaa !2447
  %1006 = lshr i64 %989, 63
  %1007 = trunc i64 %1006 to i8
  store i8 %1007, i8* %35, align 1, !tbaa !2448
  %1008 = lshr i64 %982, 63
  %1009 = xor i64 %1006, %1008
  %1010 = xor i64 %1006, %988
  %1011 = add nuw nsw i64 %1009, %1010
  %1012 = icmp eq i64 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %41, align 1, !tbaa !2449
  %1014 = load i64, i64* %RBP, align 8
  %1015 = add i64 %1014, -44
  %1016 = add i64 %426, 43
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RCX, align 8, !tbaa !2428
  %1020 = shl nsw i64 %1019, 3
  %1021 = add i64 %1020, %989
  %1022 = add i64 %426, 48
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1021 to double*
  %1024 = load double, double* %1023, align 8
  store double %1024, double* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1025 = add i64 %1014, -24
  %1026 = add i64 %426, 52
  store i64 %1026, i64* %PC, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX, align 8, !tbaa !2428
  %1029 = add i64 %426, 56
  store i64 %1029, i64* %PC, align 8
  %1030 = load i32, i32* %1017, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = shl nsw i64 %1031, 12
  store i64 %1032, i64* %RCX, align 8, !tbaa !2428
  %1033 = lshr i64 %1031, 51
  %1034 = and i64 %1033, 1
  %1035 = add i64 %1032, %1028
  store i64 %1035, i64* %RAX, align 8, !tbaa !2428
  %1036 = icmp ult i64 %1035, %1028
  %1037 = icmp ult i64 %1035, %1032
  %1038 = or i1 %1036, %1037
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %17, align 1, !tbaa !2432
  %1040 = trunc i64 %1035 to i32
  %1041 = and i32 %1040, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041) #10
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %24, align 1, !tbaa !2446
  %1046 = xor i64 %1028, %1035
  %1047 = lshr i64 %1046, 4
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %29, align 1, !tbaa !2450
  %1050 = icmp eq i64 %1035, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %32, align 1, !tbaa !2447
  %1052 = lshr i64 %1035, 63
  %1053 = trunc i64 %1052 to i8
  store i8 %1053, i8* %35, align 1, !tbaa !2448
  %1054 = lshr i64 %1028, 63
  %1055 = xor i64 %1052, %1054
  %1056 = xor i64 %1052, %1034
  %1057 = add nuw nsw i64 %1055, %1056
  %1058 = icmp eq i64 %1057, 2
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %41, align 1, !tbaa !2449
  %1060 = add i64 %1014, -40
  %1061 = add i64 %426, 67
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX, align 8, !tbaa !2428
  %1065 = shl nsw i64 %1064, 3
  %1066 = add i64 %1065, %1035
  %1067 = add i64 %426, 72
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to double*
  %1069 = load double, double* %1068, align 8
  %1070 = fmul double %1024, %1069
  store double %1070, double* %87, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1071 = load double, double* %84, align 1
  %1072 = fsub double %1071, %1070
  store double %1072, double* %84, align 1, !tbaa !2451
  %1073 = load i64, i64* %RBP, align 8
  %1074 = add i64 %1073, -16
  %1075 = add i64 %426, 80
  store i64 %1075, i64* %PC, align 8
  %1076 = inttoptr i64 %1074 to i64*
  %1077 = load i64, i64* %1076, align 8
  store i64 %1077, i64* %RAX, align 8, !tbaa !2428
  %1078 = add i64 %1073, -36
  %1079 = add i64 %426, 84
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = shl nsw i64 %1082, 12
  store i64 %1083, i64* %RCX, align 8, !tbaa !2428
  %1084 = lshr i64 %1082, 51
  %1085 = and i64 %1084, 1
  %1086 = add i64 %1083, %1077
  store i64 %1086, i64* %RAX, align 8, !tbaa !2428
  %1087 = icmp ult i64 %1086, %1077
  %1088 = icmp ult i64 %1086, %1083
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %17, align 1, !tbaa !2432
  %1091 = trunc i64 %1086 to i32
  %1092 = and i32 %1091, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092) #10
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %24, align 1, !tbaa !2446
  %1097 = xor i64 %1077, %1086
  %1098 = lshr i64 %1097, 4
  %1099 = trunc i64 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %29, align 1, !tbaa !2450
  %1101 = icmp eq i64 %1086, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %32, align 1, !tbaa !2447
  %1103 = lshr i64 %1086, 63
  %1104 = trunc i64 %1103 to i8
  store i8 %1104, i8* %35, align 1, !tbaa !2448
  %1105 = lshr i64 %1077, 63
  %1106 = xor i64 %1103, %1105
  %1107 = xor i64 %1103, %1085
  %1108 = add nuw nsw i64 %1106, %1107
  %1109 = icmp eq i64 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %41, align 1, !tbaa !2449
  %1111 = add i64 %1073, -40
  %1112 = add i64 %426, 95
  store i64 %1112, i64* %PC, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX, align 8, !tbaa !2428
  %1116 = shl nsw i64 %1115, 3
  %1117 = add i64 %1116, %1086
  %1118 = add i64 %426, 100
  store i64 %1118, i64* %PC, align 8
  %1119 = inttoptr i64 %1117 to double*
  store double %1072, double* %1119, align 8
  %1120 = load i64, i64* %RBP, align 8
  %1121 = add i64 %1120, -36
  %1122 = load i64, i64* %PC, align 8
  %1123 = add i64 %1122, 3
  store i64 %1123, i64* %PC, align 8
  %1124 = inttoptr i64 %1121 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = add i32 %1125, 1
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RAX, align 8, !tbaa !2428
  %1128 = icmp eq i32 %1125, -1
  %1129 = icmp eq i32 %1126, 0
  %1130 = or i1 %1128, %1129
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %17, align 1, !tbaa !2432
  %1132 = and i32 %1126, 255
  %1133 = tail call i32 @llvm.ctpop.i32(i32 %1132) #10
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  %1136 = xor i8 %1135, 1
  store i8 %1136, i8* %24, align 1, !tbaa !2446
  %1137 = xor i32 %1125, %1126
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %29, align 1, !tbaa !2450
  %1141 = icmp eq i32 %1126, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %32, align 1, !tbaa !2447
  %1143 = lshr i32 %1126, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %35, align 1, !tbaa !2448
  %1145 = lshr i32 %1125, 31
  %1146 = xor i32 %1143, %1145
  %1147 = add nuw nsw i32 %1146, %1143
  %1148 = icmp eq i32 %1147, 2
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %41, align 1, !tbaa !2449
  %1150 = add i64 %1122, 9
  store i64 %1150, i64* %PC, align 8
  store i32 %1126, i32* %1124, align 4
  %1151 = load i64, i64* %PC, align 8
  %1152 = add i64 %1151, -121
  store i64 %1152, i64* %75, align 8, !tbaa !2428
  br label %block_401070

block_400fd4:                                     ; preds = %block_400fcb, %block_4010ee
  %1153 = phi i64 [ %.pre4, %block_400fcb ], [ %495, %block_4010ee ]
  %1154 = load i64, i64* %RBP, align 8
  %1155 = add i64 %1154, -40
  %1156 = add i64 %1153, 3
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX, align 8, !tbaa !2428
  %1160 = add i64 %1154, -8
  %1161 = add i64 %1153, 6
  store i64 %1161, i64* %PC, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = sub i32 %1158, %1163
  %1165 = icmp ult i32 %1158, %1163
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %17, align 1, !tbaa !2432
  %1167 = and i32 %1164, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167) #10
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %24, align 1, !tbaa !2446
  %1172 = xor i32 %1163, %1158
  %1173 = xor i32 %1172, %1164
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %29, align 1, !tbaa !2450
  %1177 = icmp eq i32 %1164, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %32, align 1, !tbaa !2447
  %1179 = lshr i32 %1164, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %35, align 1, !tbaa !2448
  %1181 = lshr i32 %1158, 31
  %1182 = lshr i32 %1163, 31
  %1183 = xor i32 %1182, %1181
  %1184 = xor i32 %1179, %1181
  %1185 = add nuw nsw i32 %1184, %1183
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %41, align 1, !tbaa !2449
  %1188 = icmp ne i8 %1180, 0
  %1189 = xor i1 %1188, %1186
  %.v12 = select i1 %1189, i64 12, i64 301
  %1190 = add i64 %1153, %.v12
  store i64 %1190, i64* %75, align 8, !tbaa !2428
  br i1 %1189, label %block_400fe0, label %block_401101

block_401002:                                     ; preds = %block_40100e, %block_400fe0
  %1191 = phi i64 [ %932, %block_40100e ], [ %.pre5, %block_400fe0 ]
  %1192 = load i64, i64* %RBP, align 8
  %1193 = add i64 %1192, -36
  %1194 = add i64 %1191, 3
  store i64 %1194, i64* %PC, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX, align 8, !tbaa !2428
  %1198 = add i64 %1192, -4
  %1199 = add i64 %1191, 6
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sub i32 %1196, %1201
  %1203 = icmp ult i32 %1196, %1201
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %17, align 1, !tbaa !2432
  %1205 = and i32 %1202, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205) #10
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %24, align 1, !tbaa !2446
  %1210 = xor i32 %1201, %1196
  %1211 = xor i32 %1210, %1202
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %29, align 1, !tbaa !2450
  %1215 = icmp eq i32 %1202, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %32, align 1, !tbaa !2447
  %1217 = lshr i32 %1202, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %35, align 1, !tbaa !2448
  %1219 = lshr i32 %1196, 31
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1220, %1219
  %1222 = xor i32 %1217, %1219
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %41, align 1, !tbaa !2449
  %1226 = icmp ne i8 %1218, 0
  %1227 = xor i1 %1226, %1224
  %.v13 = select i1 %1227, i64 12, i64 103
  %1228 = add i64 %1191, %.v13
  store i64 %1228, i64* %75, align 8, !tbaa !2428
  br i1 %1227, label %block_40100e, label %block_401069

block_401101:                                     ; preds = %block_400fd4
  %1229 = add i64 %1154, -44
  %1230 = add i64 %1190, 8
  store i64 %1230, i64* %PC, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = add i32 %1232, 1
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RAX, align 8, !tbaa !2428
  %1235 = icmp eq i32 %1232, -1
  %1236 = icmp eq i32 %1233, 0
  %1237 = or i1 %1235, %1236
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %17, align 1, !tbaa !2432
  %1239 = and i32 %1233, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239) #10
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %24, align 1, !tbaa !2446
  %1244 = xor i32 %1232, %1233
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %29, align 1, !tbaa !2450
  %1248 = icmp eq i32 %1233, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %32, align 1, !tbaa !2447
  %1250 = lshr i32 %1233, 31
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %35, align 1, !tbaa !2448
  %1252 = lshr i32 %1232, 31
  %1253 = xor i32 %1250, %1252
  %1254 = add nuw nsw i32 %1253, %1250
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %41, align 1, !tbaa !2449
  %1257 = add i64 %1190, 14
  store i64 %1257, i64* %PC, align 8
  store i32 %1233, i32* %1231, align 4
  %1258 = load i64, i64* %PC, align 8
  %1259 = add i64 %1258, -574
  store i64 %1259, i64* %75, align 8, !tbaa !2428
  br label %block_400ed1
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4007b0:
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
  store i32 0, i32* %13, align 1, !tbaa !2456
  %14 = getelementptr inbounds i8, i8* %11, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1, !tbaa !2456
  %16 = bitcast i64* %12 to i32*
  store i32 0, i32* %16, align 1, !tbaa !2456
  %17 = getelementptr inbounds i8, i8* %11, i64 12
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1, !tbaa !2456
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
define %struct.Memory* @sub_401570___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401570:
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
define %struct.Memory* @sub_400790_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400790:
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
  %15 = tail call %struct.Memory* @sub_400780_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 23
  %18 = add i64 %16, 5
  %19 = load i64, i64* %5, align 8, !tbaa !2428
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  store i64 %20, i64* %5, align 8, !tbaa !2428
  store i64 %17, i64* %14, align 8, !tbaa !2428
  %22 = tail call %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* nonnull %0, i64 %17, %struct.Memory* %15)
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
define %struct.Memory* @sub_4008e0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4008e0:
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -88
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 80
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
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
  store i8 %27, i8* %28, align 1, !tbaa !2450
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2449
  store i64 262144, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %41 = add i64 %8, -12
  %42 = add i64 %11, 26
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
  %57 = add i64 %56, -20
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 512, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 7
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  store i32 512, i32* %65, align 4
  %66 = load i64, i64* %RCX, align 8
  %67 = load i64, i64* %PC, align 8
  store i64 %66, i64* %RDI, align 8, !tbaa !2428
  %68 = load i32, i32* %EAX, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RSI, align 8, !tbaa !2428
  %70 = add i64 %67, -240
  %71 = add i64 %67, 10
  %72 = load i64, i64* %7, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %7, align 8, !tbaa !2428
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %70, i64* %75, align 8, !tbaa !2428
  %76 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %70, %struct.Memory* %2)
  %77 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -32
  %80 = load i64, i64* %RAX, align 8
  %81 = add i64 %77, 16
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, -266
  %85 = add i64 %83, 5
  %86 = load i64, i64* %7, align 8, !tbaa !2428
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %85, i64* %88, align 8
  store i64 %87, i64* %7, align 8, !tbaa !2428
  store i64 %84, i64* %75, align 8, !tbaa !2428
  %89 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %84, %struct.Memory* %76)
  %90 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -40
  %93 = load i64, i64* %RAX, align 8
  %94 = add i64 %90, 16
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %PC, align 8
  %97 = add i64 %96, -287
  %98 = add i64 %96, 5
  %99 = load i64, i64* %7, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %7, align 8, !tbaa !2428
  store i64 %97, i64* %75, align 8, !tbaa !2428
  %102 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %97, %struct.Memory* %89)
  %103 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -48
  %106 = load i64, i64* %RAX, align 8
  %107 = add i64 %103, 16
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, -308
  %111 = add i64 %109, 5
  %112 = load i64, i64* %7, align 8, !tbaa !2428
  %113 = add i64 %112, -8
  %114 = inttoptr i64 %113 to i64*
  store i64 %111, i64* %114, align 8
  store i64 %113, i64* %7, align 8, !tbaa !2428
  store i64 %110, i64* %75, align 8, !tbaa !2428
  %115 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %110, %struct.Memory* %102)
  %116 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -56
  %119 = load i64, i64* %RAX, align 8
  %120 = add i64 %116, 16
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, -329
  %124 = add i64 %122, 5
  %125 = load i64, i64* %7, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %7, align 8, !tbaa !2428
  store i64 %123, i64* %75, align 8, !tbaa !2428
  %128 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %123, %struct.Memory* %115)
  %129 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -64
  %132 = load i64, i64* %RAX, align 8
  %133 = add i64 %129, 16
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %135, -350
  %137 = add i64 %135, 5
  %138 = load i64, i64* %7, align 8, !tbaa !2428
  %139 = add i64 %138, -8
  %140 = inttoptr i64 %139 to i64*
  store i64 %137, i64* %140, align 8
  store i64 %139, i64* %7, align 8, !tbaa !2428
  store i64 %136, i64* %75, align 8, !tbaa !2428
  %141 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %136, %struct.Memory* %128)
  %142 = load i64, i64* %RBP, align 8
  %143 = add i64 %142, -72
  %144 = load i64, i64* %RAX, align 8
  %145 = load i64, i64* %PC, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %143 to i64*
  store i64 %144, i64* %147, align 8
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -20
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 3
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RDI, align 8, !tbaa !2428
  %155 = add i64 %148, -24
  %156 = add i64 %150, 6
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RSI, align 8, !tbaa !2428
  %160 = add i64 %148, -32
  %161 = add i64 %150, 10
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RDX, align 8, !tbaa !2428
  %164 = add i64 %148, -40
  %165 = add i64 %150, 14
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = add i64 %148, -48
  %169 = add i64 %150, 18
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %R8, align 8, !tbaa !2428
  %172 = add i64 %150, 329
  %173 = add i64 %150, 23
  %174 = load i64, i64* %7, align 8, !tbaa !2428
  %175 = add i64 %174, -8
  %176 = inttoptr i64 %175 to i64*
  store i64 %173, i64* %176, align 8
  store i64 %175, i64* %7, align 8, !tbaa !2428
  store i64 %172, i64* %75, align 8, !tbaa !2428
  %177 = tail call %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* nonnull %0, i64 %172, %struct.Memory* %141)
  %178 = load i64, i64* %RBP, align 8
  %179 = add i64 %178, -20
  %180 = load i64, i64* %PC, align 8
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RDI, align 8, !tbaa !2428
  %185 = add i64 %178, -24
  %186 = add i64 %180, 6
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RSI, align 8, !tbaa !2428
  %190 = add i64 %178, -32
  %191 = add i64 %180, 10
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RDX, align 8, !tbaa !2428
  %194 = add i64 %178, -40
  %195 = add i64 %180, 14
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX, align 8, !tbaa !2428
  %198 = add i64 %178, -48
  %199 = add i64 %180, 18
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %R8, align 8, !tbaa !2428
  %202 = add i64 %180, 674
  %203 = add i64 %180, 23
  %204 = load i64, i64* %7, align 8, !tbaa !2428
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206, align 8
  store i64 %205, i64* %7, align 8, !tbaa !2428
  store i64 %202, i64* %75, align 8, !tbaa !2428
  %207 = tail call %struct.Memory* @sub_400c40_kernel_gramschmidt_renamed_(%struct.State* nonnull %0, i64 %202, %struct.Memory* %177)
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -20
  %210 = load i64, i64* %PC, align 8
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDI, align 8, !tbaa !2428
  %215 = add i64 %208, -24
  %216 = add i64 %210, 6
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI, align 8, !tbaa !2428
  %220 = add i64 %208, -56
  %221 = add i64 %210, 10
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RDX, align 8, !tbaa !2428
  %224 = add i64 %208, -64
  %225 = add i64 %210, 14
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %RCX, align 8, !tbaa !2428
  %228 = add i64 %208, -72
  %229 = add i64 %210, 18
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %R8, align 8, !tbaa !2428
  %232 = add i64 %210, 283
  %233 = add i64 %210, 23
  %234 = load i64, i64* %7, align 8, !tbaa !2428
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %236, align 8
  store i64 %235, i64* %7, align 8, !tbaa !2428
  store i64 %232, i64* %75, align 8, !tbaa !2428
  %237 = tail call %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* nonnull %0, i64 %232, %struct.Memory* %207)
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -20
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RDI, align 8, !tbaa !2428
  %245 = add i64 %238, -24
  %246 = add i64 %240, 6
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RSI, align 8, !tbaa !2428
  %250 = add i64 %238, -56
  %251 = add i64 %240, 10
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RDX, align 8, !tbaa !2428
  %254 = add i64 %238, -64
  %255 = add i64 %240, 14
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RCX, align 8, !tbaa !2428
  %258 = add i64 %238, -72
  %259 = add i64 %240, 18
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %R8, align 8, !tbaa !2428
  %262 = add i64 %240, 1252
  %263 = add i64 %240, 23
  %264 = load i64, i64* %7, align 8, !tbaa !2428
  %265 = add i64 %264, -8
  %266 = inttoptr i64 %265 to i64*
  store i64 %263, i64* %266, align 8
  store i64 %265, i64* %7, align 8, !tbaa !2428
  store i64 %262, i64* %75, align 8, !tbaa !2428
  %267 = tail call %struct.Memory* @sub_400eb0_kernel_gramschmidt_StrictFP_renamed_(%struct.State* nonnull %0, i64 %262, %struct.Memory* %237)
  %268 = load i64, i64* %RBP, align 8
  %269 = add i64 %268, -20
  %270 = load i64, i64* %PC, align 8
  %271 = add i64 %270, 3
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RDI, align 8, !tbaa !2428
  %275 = add i64 %268, -24
  %276 = add i64 %270, 6
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RSI, align 8, !tbaa !2428
  %280 = add i64 %268, -32
  %281 = add i64 %270, 10
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RDX, align 8, !tbaa !2428
  %284 = add i64 %268, -56
  %285 = add i64 %270, 14
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RCX, align 8, !tbaa !2428
  %288 = add i64 %270, 1853
  %289 = add i64 %270, 19
  %290 = load i64, i64* %7, align 8, !tbaa !2428
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  store i64 %291, i64* %7, align 8, !tbaa !2428
  store i64 %288, i64* %75, align 8, !tbaa !2428
  %293 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %288, %struct.Memory* %267)
  %294 = load i32, i32* %EAX, align 4
  %295 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %296 = and i32 %294, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #10
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2450
  %301 = icmp eq i32 %294, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %31, align 1, !tbaa !2447
  %303 = lshr i32 %294, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  %.v = select i1 %301, i64 9, i64 21
  %305 = add i64 %295, %.v
  store i64 %305, i64* %75, align 8, !tbaa !2428
  %306 = load i64, i64* %RBP, align 8
  br i1 %301, label %block_4009ff, label %block_400a0b

block_4009ff:                                     ; preds = %block_4008e0
  %307 = add i64 %306, -4
  %308 = add i64 %305, 7
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 1, i32* %309, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, 187
  store i64 %311, i64* %75, align 8, !tbaa !2428
  br label %block_400ac1

block_400a5b:                                     ; preds = %block_400a33
  %312 = add i64 %453, -20
  %313 = add i64 %452, 3
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RDI, align 8, !tbaa !2428
  %317 = add i64 %453, -24
  %318 = add i64 %452, 6
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RSI, align 8, !tbaa !2428
  %322 = add i64 %453, -56
  %323 = add i64 %452, 10
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %RDX, align 8, !tbaa !2428
  %326 = add i64 %453, -64
  %327 = add i64 %452, 14
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = add i64 %453, -72
  %331 = add i64 %452, 18
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %R8, align 8, !tbaa !2428
  %334 = add i64 %452, 2037
  %335 = add i64 %452, 23
  %336 = load i64, i64* %7, align 8, !tbaa !2428
  %337 = add i64 %336, -8
  %338 = inttoptr i64 %337 to i64*
  store i64 %335, i64* %338, align 8
  store i64 %337, i64* %7, align 8, !tbaa !2428
  store i64 %334, i64* %75, align 8, !tbaa !2428
  %339 = tail call %struct.Memory* @sub_401250_print_array_renamed_(%struct.State* nonnull %0, i64 %334, %struct.Memory* %440)
  %340 = load i64, i64* %RBP, align 8
  %341 = add i64 %340, -32
  %342 = load i64, i64* %PC, align 8
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %341 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  store i64 %345, i64* %RDI, align 8, !tbaa !2428
  %346 = add i64 %342, -1234
  %347 = add i64 %342, 12
  %348 = load i64, i64* %7, align 8, !tbaa !2428
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 %347, i64* %350, align 8
  store i64 %349, i64* %7, align 8, !tbaa !2428
  store i64 %346, i64* %75, align 8, !tbaa !2428
  %351 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %339)
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -40
  %354 = load i64, i64* %PC, align 8
  %355 = add i64 %354, 4
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %353 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %RCX, align 8, !tbaa !2428
  store i64 %357, i64* %RDI, align 8, !tbaa !2428
  %358 = add i64 %354, -1246
  %359 = add i64 %354, 12
  %360 = load i64, i64* %7, align 8, !tbaa !2428
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %359, i64* %362, align 8
  store i64 %361, i64* %7, align 8, !tbaa !2428
  store i64 %358, i64* %75, align 8, !tbaa !2428
  %363 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %351)
  %364 = load i64, i64* %RBP, align 8
  %365 = add i64 %364, -48
  %366 = load i64, i64* %PC, align 8
  %367 = add i64 %366, 4
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RCX, align 8, !tbaa !2428
  store i64 %369, i64* %RDI, align 8, !tbaa !2428
  %370 = add i64 %366, -1258
  %371 = add i64 %366, 12
  %372 = load i64, i64* %7, align 8, !tbaa !2428
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %7, align 8, !tbaa !2428
  store i64 %370, i64* %75, align 8, !tbaa !2428
  %375 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %363)
  %376 = load i64, i64* %RBP, align 8
  %377 = add i64 %376, -56
  %378 = load i64, i64* %PC, align 8
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %377 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %RCX, align 8, !tbaa !2428
  store i64 %381, i64* %RDI, align 8, !tbaa !2428
  %382 = add i64 %378, -1270
  %383 = add i64 %378, 12
  %384 = load i64, i64* %7, align 8, !tbaa !2428
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %7, align 8, !tbaa !2428
  store i64 %382, i64* %75, align 8, !tbaa !2428
  %387 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %375)
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -64
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  store i64 %393, i64* %RDI, align 8, !tbaa !2428
  %394 = add i64 %390, -1282
  %395 = add i64 %390, 12
  %396 = load i64, i64* %7, align 8, !tbaa !2428
  %397 = add i64 %396, -8
  %398 = inttoptr i64 %397 to i64*
  store i64 %395, i64* %398, align 8
  store i64 %397, i64* %7, align 8, !tbaa !2428
  store i64 %394, i64* %75, align 8, !tbaa !2428
  %399 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %387)
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -72
  %402 = load i64, i64* %PC, align 8
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RCX, align 8, !tbaa !2428
  store i64 %405, i64* %RDI, align 8, !tbaa !2428
  %406 = add i64 %402, -1294
  %407 = add i64 %402, 12
  %408 = load i64, i64* %7, align 8, !tbaa !2428
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %7, align 8, !tbaa !2428
  store i64 %406, i64* %75, align 8, !tbaa !2428
  %411 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %399)
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -4
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, 7
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %413 to i32*
  store i32 0, i32* %416, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ac1

block_400a33:                                     ; preds = %block_400a0b
  %417 = add i64 %495, -20
  %418 = add i64 %494, 3
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RDI, align 8, !tbaa !2428
  %422 = add i64 %495, -24
  %423 = add i64 %494, 6
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RSI, align 8, !tbaa !2428
  %427 = add i64 %495, -48
  %428 = add i64 %494, 10
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RDX, align 8, !tbaa !2428
  %431 = add i64 %495, -72
  %432 = add i64 %494, 14
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i64*
  %434 = load i64, i64* %433, align 8
  store i64 %434, i64* %RCX, align 8, !tbaa !2428
  %435 = add i64 %494, 1773
  %436 = add i64 %494, 19
  %437 = load i64, i64* %7, align 8, !tbaa !2428
  %438 = add i64 %437, -8
  %439 = inttoptr i64 %438 to i64*
  store i64 %436, i64* %439, align 8
  store i64 %438, i64* %7, align 8, !tbaa !2428
  store i64 %435, i64* %75, align 8, !tbaa !2428
  %440 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %435, %struct.Memory* %482)
  %441 = load i32, i32* %EAX, align 4
  %442 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %443 = and i32 %441, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443) #10
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2450
  %448 = icmp eq i32 %441, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %31, align 1, !tbaa !2447
  %450 = lshr i32 %441, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  %.v2 = select i1 %448, i64 9, i64 21
  %452 = add i64 %442, %.v2
  store i64 %452, i64* %75, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP, align 8
  br i1 %448, label %block_400a4f, label %block_400a5b

block_400a4f:                                     ; preds = %block_400a33
  %454 = add i64 %453, -4
  %455 = add i64 %452, 7
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 1, i32* %456, align 4
  %457 = load i64, i64* %PC, align 8
  %458 = add i64 %457, 107
  store i64 %458, i64* %75, align 8, !tbaa !2428
  br label %block_400ac1

block_400a0b:                                     ; preds = %block_4008e0
  %459 = add i64 %306, -20
  %460 = add i64 %305, 3
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RDI, align 8, !tbaa !2428
  %464 = add i64 %306, -24
  %465 = add i64 %305, 6
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RSI, align 8, !tbaa !2428
  %469 = add i64 %306, -40
  %470 = add i64 %305, 10
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RDX, align 8, !tbaa !2428
  %473 = add i64 %306, -64
  %474 = add i64 %305, 14
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RCX, align 8, !tbaa !2428
  %477 = add i64 %305, 1813
  %478 = add i64 %305, 19
  %479 = load i64, i64* %7, align 8, !tbaa !2428
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %478, i64* %481, align 8
  store i64 %480, i64* %7, align 8, !tbaa !2428
  store i64 %477, i64* %75, align 8, !tbaa !2428
  %482 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %477, %struct.Memory* %293)
  %483 = load i32, i32* %EAX, align 4
  %484 = load i64, i64* %PC, align 8
  store i8 0, i8* %15, align 1, !tbaa !2432
  %485 = and i32 %483, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #10
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %22, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2450
  %490 = icmp eq i32 %483, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %31, align 1, !tbaa !2447
  %492 = lshr i32 %483, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  %.v1 = select i1 %490, i64 9, i64 21
  %494 = add i64 %484, %.v1
  store i64 %494, i64* %75, align 8, !tbaa !2428
  %495 = load i64, i64* %RBP, align 8
  br i1 %490, label %block_400a27, label %block_400a33

block_400a27:                                     ; preds = %block_400a0b
  %496 = add i64 %495, -4
  %497 = add i64 %494, 7
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 1, i32* %498, align 4
  %499 = load i64, i64* %PC, align 8
  %500 = add i64 %499, 147
  store i64 %500, i64* %75, align 8, !tbaa !2428
  br label %block_400ac1

block_400ac1:                                     ; preds = %block_400a27, %block_400a4f, %block_400a5b, %block_4009ff
  %501 = phi i64 [ %.pre, %block_400a5b ], [ %458, %block_400a4f ], [ %500, %block_400a27 ], [ %311, %block_4009ff ]
  %MEMORY.0 = phi %struct.Memory* [ %411, %block_400a5b ], [ %440, %block_400a4f ], [ %482, %block_400a27 ], [ %293, %block_4009ff ]
  %502 = load i64, i64* %RBP, align 8
  %503 = add i64 %502, -4
  %504 = add i64 %501, 3
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX, align 8, !tbaa !2428
  %508 = load i64, i64* %RSP, align 8
  %509 = add i64 %508, 80
  store i64 %509, i64* %RSP, align 8, !tbaa !2428
  %510 = icmp ugt i64 %508, -81
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %15, align 1, !tbaa !2432
  %512 = trunc i64 %509 to i32
  %513 = and i32 %512, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513) #10
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %22, align 1, !tbaa !2446
  %518 = xor i64 %508, 16
  %519 = xor i64 %518, %509
  %520 = lshr i64 %519, 4
  %521 = trunc i64 %520 to i8
  %522 = and i8 %521, 1
  store i8 %522, i8* %28, align 1, !tbaa !2450
  %523 = icmp eq i64 %509, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %31, align 1, !tbaa !2447
  %525 = lshr i64 %509, 63
  %526 = trunc i64 %525 to i8
  store i8 %526, i8* %34, align 1, !tbaa !2448
  %527 = lshr i64 %508, 63
  %528 = xor i64 %525, %527
  %529 = add nuw nsw i64 %528, %525
  %530 = icmp eq i64 %529, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %40, align 1, !tbaa !2449
  %532 = add i64 %501, 8
  store i64 %532, i64* %PC, align 8
  %533 = add i64 %508, 88
  %534 = inttoptr i64 %509 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RBP, align 8, !tbaa !2428
  store i64 %533, i64* %7, align 8, !tbaa !2428
  %536 = add i64 %501, 9
  store i64 %536, i64* %PC, align 8
  %537 = inttoptr i64 %533 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %75, align 8, !tbaa !2428
  %539 = add i64 %508, 96
  store i64 %539, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400650:
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
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i8), i8* %10, align 1, !tbaa !2432
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #10
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64* @stderr to i64), i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64))), i64 4) to i8), i8 1), i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0) to i8), i8* %17, align 1, !tbaa !2447
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63) to i8), i8* %18, align 1, !tbaa !2448
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64* @stderr to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %19, align 1, !tbaa !2449
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %21, i64* %20, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_400678, label %block_400661

block_400678:                                     ; preds = %block_400661, %block_400650
  %22 = phi i64 [ %29, %block_400661 ], [ %21, %block_400650 ]
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %25 = add i64 %22, 2
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %6 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %20, align 8, !tbaa !2428
  %28 = add i64 %6, 8
  store i64 %28, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400661:                                     ; preds = %block_400650
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2447
  store i8 0, i8* %18, align 1, !tbaa !2448
  store i8 0, i8* %19, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %29 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %29, i64* %20, align 8, !tbaa !2428
  br label %block_400678
}

; Function Attrs: noinline
define %struct.Memory* @sub_401250_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401250:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %7 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %9 = load i64, i64* %RBP, align 8
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14, align 8
  %15 = load i64, i64* %PC, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  %16 = add i64 %12, -104
  store i64 %16, i64* %RSP, align 8, !tbaa !2428
  %17 = icmp ult i64 %13, 96
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1, !tbaa !2432
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #10
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1, !tbaa !2446
  %27 = xor i64 %13, %16
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = icmp eq i64 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2447
  %35 = lshr i64 %16, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i64 %13, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2449
  %44 = add i64 %12, -12
  %45 = load i32, i32* %EDI, align 4
  %46 = add i64 %15, 10
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %RBP, align 8
  %49 = add i64 %48, -8
  %50 = load i32, i32* %ESI, align 4
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -16
  %56 = load i64, i64* %RDX, align 8
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX, align 8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %R8, align 8
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -36
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to double*
  %80 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %83 = bitcast %union.anon* %82 to i32*
  %84 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401271

block_4013fe:                                     ; preds = %block_401349
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %86 = load i64, i64* @stderr, align 32
  store i64 %86, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %87 = add i64 %633, -3630
  %88 = add i64 %633, 25
  %89 = load i64, i64* %11, align 8, !tbaa !2428
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 %88, i64* %91, align 8
  store i64 %90, i64* %11, align 8, !tbaa !2428
  store i64 %87, i64* %77, align 8, !tbaa !2428
  %92 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -36
  %95 = load i64, i64* %PC, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP, align 8
  %99 = add i64 %98, -72
  %100 = load i32, i32* %EAX, align 4
  %101 = load i64, i64* %PC, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %103, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_401421

block_40127d:                                     ; preds = %block_401271
  %104 = add i64 %746, -40
  %105 = add i64 %782, 7
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 0, i32* %106, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_401284

block_4013eb:                                     ; preds = %block_40135c
  %107 = add i64 %139, -36
  %108 = add i64 %175, 8
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = icmp eq i32 %110, -1
  %114 = icmp eq i32 %111, 0
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %19, align 1, !tbaa !2432
  %117 = and i32 %111, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #10
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %26, align 1, !tbaa !2446
  %122 = xor i32 %110, %111
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %31, align 1, !tbaa !2450
  %126 = icmp eq i32 %111, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %34, align 1, !tbaa !2447
  %128 = lshr i32 %111, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %37, align 1, !tbaa !2448
  %130 = lshr i32 %110, 31
  %131 = xor i32 %128, %130
  %132 = add nuw nsw i32 %131, %128
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %43, align 1, !tbaa !2449
  %135 = add i64 %175, 14
  store i64 %135, i64* %PC, align 8
  store i32 %111, i32* %109, align 4
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, -176
  store i64 %137, i64* %77, align 8, !tbaa !2428
  br label %block_401349

block_40135c:                                     ; preds = %block_401355, %block_4013d8
  %138 = phi i64 [ %.pre8, %block_401355 ], [ %208, %block_4013d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.5, %block_401355 ], [ %MEMORY.1, %block_4013d8 ]
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -40
  %141 = add i64 %138, 3
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = add i64 %139, -8
  %146 = add i64 %138, 6
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 %143, %148
  %150 = icmp ult i32 %143, %148
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %19, align 1, !tbaa !2432
  %152 = and i32 %149, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #10
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %26, align 1, !tbaa !2446
  %157 = xor i32 %148, %143
  %158 = xor i32 %157, %149
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %31, align 1, !tbaa !2450
  %162 = icmp eq i32 %149, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %34, align 1, !tbaa !2447
  %164 = lshr i32 %149, 31
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %37, align 1, !tbaa !2448
  %166 = lshr i32 %143, 31
  %167 = lshr i32 %148, 31
  %168 = xor i32 %167, %166
  %169 = xor i32 %164, %166
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %43, align 1, !tbaa !2449
  %173 = icmp ne i8 %165, 0
  %174 = xor i1 %173, %171
  %.v20 = select i1 %174, i64 12, i64 143
  %175 = add i64 %138, %.v20
  store i64 %175, i64* %77, align 8, !tbaa !2428
  br i1 %174, label %block_401368, label %block_4013eb

block_4013d8:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2, %block_4013bc
  %176 = phi i64 [ %513, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %.pre11, %block_4013bc ]
  %MEMORY.1 = phi %struct.Memory* [ %503, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %307, %block_4013bc ]
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -40
  %179 = add i64 %176, 8
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, 1
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = icmp eq i32 %181, -1
  %185 = icmp eq i32 %182, 0
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %19, align 1, !tbaa !2432
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188) #10
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %26, align 1, !tbaa !2446
  %193 = xor i32 %181, %182
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %31, align 1, !tbaa !2450
  %197 = icmp eq i32 %182, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %34, align 1, !tbaa !2447
  %199 = lshr i32 %182, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %37, align 1, !tbaa !2448
  %201 = lshr i32 %181, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %199
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %43, align 1, !tbaa !2449
  %206 = add i64 %176, 14
  store i64 %206, i64* %PC, align 8
  store i32 %182, i32* %180, align 4
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, -138
  store i64 %208, i64* %77, align 8, !tbaa !2428
  br label %block_40135c

block_4014d6:                                     ; preds = %block_401421
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %209 = load i64, i64* @stderr, align 32
  store i64 %209, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %210 = add i64 %551, -3846
  %211 = add i64 %551, 25
  %212 = load i64, i64* %11, align 8, !tbaa !2428
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %11, align 8, !tbaa !2428
  store i64 %210, i64* %77, align 8, !tbaa !2428
  %215 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -88
  %218 = load i32, i32* %EAX, align 4
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 3
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %217 to i32*
  store i32 %218, i32* %221, align 4
  %222 = load i64, i64* %RSP, align 8
  %223 = load i64, i64* %PC, align 8
  %224 = add i64 %222, 96
  store i64 %224, i64* %RSP, align 8, !tbaa !2428
  %225 = icmp ugt i64 %222, -97
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %19, align 1, !tbaa !2432
  %227 = trunc i64 %224 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #10
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %26, align 1, !tbaa !2446
  %233 = xor i64 %222, %224
  %234 = lshr i64 %233, 4
  %235 = trunc i64 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %31, align 1, !tbaa !2450
  %237 = icmp eq i64 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %34, align 1, !tbaa !2447
  %239 = lshr i64 %224, 63
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %37, align 1, !tbaa !2448
  %241 = lshr i64 %222, 63
  %242 = xor i64 %239, %241
  %243 = add nuw nsw i64 %242, %239
  %244 = icmp eq i64 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %43, align 1, !tbaa !2449
  %246 = add i64 %223, 5
  store i64 %246, i64* %PC, align 8
  %247 = add i64 %222, 104
  %248 = inttoptr i64 %224 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RBP, align 8, !tbaa !2428
  store i64 %247, i64* %11, align 8, !tbaa !2428
  %250 = add i64 %223, 6
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %247 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %77, align 8, !tbaa !2428
  %253 = add i64 %222, 112
  store i64 %253, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %215

block_401355:                                     ; preds = %block_401349
  %254 = add i64 %597, -40
  %255 = add i64 %633, 7
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 0, i32* %256, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40135c

block_4012e4:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %257 = load i64, i64* @stderr, align 32
  store i64 %257, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %258 = add i64 %744, -3348
  %259 = add i64 %744, 25
  %260 = load i64, i64* %11, align 8, !tbaa !2428
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %259, i64* %262, align 8
  store i64 %261, i64* %11, align 8, !tbaa !2428
  store i64 %258, i64* %77, align 8, !tbaa !2428
  %263 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %734)
  %264 = load i64, i64* %RBP, align 8
  %265 = add i64 %264, -52
  %266 = load i32, i32* %EAX, align 4
  %267 = load i64, i64* %PC, align 8
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %265 to i32*
  store i32 %266, i32* %269, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_401300

block_4014c3:                                     ; preds = %block_401434
  %270 = add i64 %315, -36
  %271 = add i64 %351, 8
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = icmp eq i32 %273, -1
  %277 = icmp eq i32 %274, 0
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %19, align 1, !tbaa !2432
  %280 = and i32 %274, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #10
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %26, align 1, !tbaa !2446
  %285 = xor i32 %273, %274
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %31, align 1, !tbaa !2450
  %289 = icmp eq i32 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %34, align 1, !tbaa !2447
  %291 = lshr i32 %274, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %37, align 1, !tbaa !2448
  %293 = lshr i32 %273, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %43, align 1, !tbaa !2449
  %298 = add i64 %351, 14
  store i64 %298, i64* %PC, align 8
  store i32 %274, i32* %272, align 4
  %299 = load i64, i64* %PC, align 8
  %300 = add i64 %299, -176
  store i64 %300, i64* %77, align 8, !tbaa !2428
  br label %block_401421

block_4013bc:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %301 = load i64, i64* @stderr, align 32
  store i64 %301, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %302 = add i64 %513, -3564
  %303 = add i64 %513, 25
  %304 = load i64, i64* %11, align 8, !tbaa !2428
  %305 = add i64 %304, -8
  %306 = inttoptr i64 %305 to i64*
  store i64 %303, i64* %306, align 8
  store i64 %305, i64* %11, align 8, !tbaa !2428
  store i64 %302, i64* %77, align 8, !tbaa !2428
  %307 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %503)
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -68
  %310 = load i32, i32* %EAX, align 4
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %309 to i32*
  store i32 %310, i32* %313, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_4013d8

block_401434:                                     ; preds = %block_40142d, %block_4014b0
  %314 = phi i64 [ %.pre13, %block_40142d ], [ %384, %block_4014b0 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_40142d ], [ %MEMORY.3, %block_4014b0 ]
  %315 = load i64, i64* %RBP, align 8
  %316 = add i64 %315, -40
  %317 = add i64 %314, 3
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX, align 8, !tbaa !2428
  %321 = add i64 %315, -8
  %322 = add i64 %314, 6
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sub i32 %319, %324
  %326 = icmp ult i32 %319, %324
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %19, align 1, !tbaa !2432
  %328 = and i32 %325, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328) #10
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %26, align 1, !tbaa !2446
  %333 = xor i32 %324, %319
  %334 = xor i32 %333, %325
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %31, align 1, !tbaa !2450
  %338 = icmp eq i32 %325, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %34, align 1, !tbaa !2447
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %37, align 1, !tbaa !2448
  %342 = lshr i32 %319, 31
  %343 = lshr i32 %324, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %340, %342
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %43, align 1, !tbaa !2449
  %349 = icmp ne i8 %341, 0
  %350 = xor i1 %349, %347
  %.v23 = select i1 %350, i64 12, i64 143
  %351 = add i64 %314, %.v23
  store i64 %351, i64* %77, align 8, !tbaa !2428
  br i1 %350, label %block_401440, label %block_4014c3

block_4014b0:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401494
  %352 = phi i64 [ %896, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre16, %block_401494 ]
  %MEMORY.3 = phi %struct.Memory* [ %886, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %558, %block_401494 ]
  %353 = load i64, i64* %RBP, align 8
  %354 = add i64 %353, -40
  %355 = add i64 %352, 8
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = add i32 %357, 1
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX, align 8, !tbaa !2428
  %360 = icmp eq i32 %357, -1
  %361 = icmp eq i32 %358, 0
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %19, align 1, !tbaa !2432
  %364 = and i32 %358, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364) #10
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %26, align 1, !tbaa !2446
  %369 = xor i32 %357, %358
  %370 = lshr i32 %369, 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %31, align 1, !tbaa !2450
  %373 = icmp eq i32 %358, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %34, align 1, !tbaa !2447
  %375 = lshr i32 %358, 31
  %376 = trunc i32 %375 to i8
  store i8 %376, i8* %37, align 1, !tbaa !2448
  %377 = lshr i32 %357, 31
  %378 = xor i32 %375, %377
  %379 = add nuw nsw i32 %378, %375
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %43, align 1, !tbaa !2449
  %382 = add i64 %352, 14
  store i64 %382, i64* %PC, align 8
  store i32 %358, i32* %356, align 4
  %383 = load i64, i64* %PC, align 8
  %384 = add i64 %383, -138
  store i64 %384, i64* %77, align 8, !tbaa !2428
  br label %block_401434

block_401326:                                     ; preds = %block_401271
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %385 = load i64, i64* @stderr, align 32
  store i64 %385, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %386 = add i64 %782, -3414
  %387 = add i64 %782, 25
  %388 = load i64, i64* %11, align 8, !tbaa !2428
  %389 = add i64 %388, -8
  %390 = inttoptr i64 %389 to i64*
  store i64 %387, i64* %390, align 8
  store i64 %389, i64* %11, align 8, !tbaa !2428
  store i64 %386, i64* %77, align 8, !tbaa !2428
  %391 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %392 = load i64, i64* %RBP, align 8
  %393 = add i64 %392, -36
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, 7
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %393 to i32*
  store i32 0, i32* %396, align 4
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -56
  %399 = load i32, i32* %EAX, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 3
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %402, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401349

block_401368:                                     ; preds = %block_40135c
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %403 = load i64, i64* @stderr, align 32
  store i64 %403, i64* %RDI, align 8, !tbaa !2428
  %404 = add i64 %139, -24
  %405 = add i64 %175, 22
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX, align 8, !tbaa !2428
  %408 = add i64 %139, -36
  %409 = add i64 %175, 26
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = shl nsw i64 %412, 12
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = lshr i64 %412, 51
  %415 = and i64 %414, 1
  %416 = add i64 %413, %407
  store i64 %416, i64* %RAX, align 8, !tbaa !2428
  %417 = icmp ult i64 %416, %407
  %418 = icmp ult i64 %416, %413
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %19, align 1, !tbaa !2432
  %421 = trunc i64 %416 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422) #10
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %26, align 1, !tbaa !2446
  %427 = xor i64 %407, %416
  %428 = lshr i64 %427, 4
  %429 = trunc i64 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %31, align 1, !tbaa !2450
  %431 = icmp eq i64 %416, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %34, align 1, !tbaa !2447
  %433 = lshr i64 %416, 63
  %434 = trunc i64 %433 to i8
  store i8 %434, i8* %37, align 1, !tbaa !2448
  %435 = lshr i64 %407, 63
  %436 = xor i64 %433, %435
  %437 = xor i64 %433, %415
  %438 = add nuw nsw i64 %436, %437
  %439 = icmp eq i64 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %43, align 1, !tbaa !2449
  %441 = add i64 %175, 37
  store i64 %441, i64* %PC, align 8
  %442 = load i32, i32* %142, align 4
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = shl nsw i64 %443, 3
  %445 = add i64 %444, %416
  %446 = add i64 %175, 42
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %448, i64* %449, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %450 = add i64 %175, -3480
  %451 = add i64 %175, 49
  %452 = load i64, i64* %11, align 8, !tbaa !2428
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %11, align 8, !tbaa !2428
  store i64 %450, i64* %77, align 8, !tbaa !2428
  %455 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %456 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %457 = load i64, i64* %RBP, align 8
  %458 = add i64 %457, -36
  %459 = add i64 %456, 9
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %80, align 8, !tbaa !2428
  %463 = add i64 %457, -60
  %464 = load i32, i32* %EAX, align 4
  %465 = add i64 %456, 12
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %466, align 4
  %467 = load i32, i32* %R8D, align 4
  %468 = zext i32 %467 to i64
  %469 = load i64, i64* %PC, align 8
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %470 = load i64, i64* %RBP, align 8
  %471 = add i64 %470, -64
  %472 = load i32, i32* %EDX, align 4
  %473 = add i64 %469, 6
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %471 to i32*
  store i32 %472, i32* %474, align 4
  %475 = load i64, i64* %PC, align 8
  %476 = load i32, i32* %83, align 8, !tbaa !2456
  %477 = sext i32 %476 to i64
  %478 = lshr i64 %477, 32
  store i64 %478, i64* %81, align 8, !tbaa !2428
  %479 = load i64, i64* %RBP, align 8
  %480 = add i64 %479, -64
  %481 = add i64 %475, 5
  store i64 %481, i64* %PC, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %80, align 8, !tbaa !2428
  %485 = add i64 %475, 8
  store i64 %485, i64* %PC, align 8
  %486 = zext i32 %476 to i64
  %487 = sext i32 %483 to i64
  %488 = shl nuw i64 %478, 32
  %489 = or i64 %488, %486
  %490 = sdiv i64 %489, %487
  %491 = shl i64 %490, 32
  %492 = ashr exact i64 %491, 32
  %493 = icmp eq i64 %490, %492
  br i1 %493, label %496, label %494

; <label>:494:                                    ; preds = %block_401368
  %495 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %485, %struct.Memory* %455) #11
  %.pre9 = load i32, i32* %EDX, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:496:                                    ; preds = %block_401368
  %497 = srem i64 %489, %487
  %498 = and i64 %490, 4294967295
  store i64 %498, i64* %84, align 8, !tbaa !2428
  %499 = and i64 %497, 4294967295
  store i64 %499, i64* %85, align 8, !tbaa !2428
  store i8 0, i8* %19, align 1, !tbaa !2432
  store i8 0, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %500 = trunc i64 %497 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %496, %494
  %501 = phi i64 [ %.pre10, %494 ], [ %485, %496 ]
  %502 = phi i32 [ %.pre9, %494 ], [ %500, %496 ]
  %503 = phi %struct.Memory* [ %495, %494 ], [ %455, %496 ]
  store i8 0, i8* %19, align 1, !tbaa !2432
  %504 = and i32 %502, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504) #10
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  %509 = icmp eq i32 %502, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %34, align 1, !tbaa !2447
  %511 = lshr i32 %502, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %.v21 = select i1 %509, i64 9, i64 37
  %513 = add i64 %501, %.v21
  store i64 %513, i64* %77, align 8, !tbaa !2428
  br i1 %509, label %block_4013bc, label %block_4013d8

block_401421:                                     ; preds = %block_4014c3, %block_4013fe
  %514 = phi i64 [ %.pre12, %block_4013fe ], [ %300, %block_4014c3 ]
  %MEMORY.4 = phi %struct.Memory* [ %92, %block_4013fe ], [ %MEMORY.2, %block_4014c3 ]
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -36
  %517 = add i64 %514, 3
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = add i64 %515, -4
  %522 = add i64 %514, 6
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sub i32 %519, %524
  %526 = icmp ult i32 %519, %524
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %19, align 1, !tbaa !2432
  %528 = and i32 %525, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528) #10
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %26, align 1, !tbaa !2446
  %533 = xor i32 %524, %519
  %534 = xor i32 %533, %525
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %31, align 1, !tbaa !2450
  %538 = icmp eq i32 %525, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %34, align 1, !tbaa !2447
  %540 = lshr i32 %525, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %37, align 1, !tbaa !2448
  %542 = lshr i32 %519, 31
  %543 = lshr i32 %524, 31
  %544 = xor i32 %543, %542
  %545 = xor i32 %540, %542
  %546 = add nuw nsw i32 %545, %544
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %43, align 1, !tbaa !2449
  %549 = icmp ne i8 %541, 0
  %550 = xor i1 %549, %547
  %.v22 = select i1 %550, i64 12, i64 181
  %551 = add i64 %514, %.v22
  store i64 %551, i64* %77, align 8, !tbaa !2428
  br i1 %550, label %block_40142d, label %block_4014d6

block_401494:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %552 = load i64, i64* @stderr, align 32
  store i64 %552, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %553 = add i64 %896, -3780
  %554 = add i64 %896, 25
  %555 = load i64, i64* %11, align 8, !tbaa !2428
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %11, align 8, !tbaa !2428
  store i64 %553, i64* %77, align 8, !tbaa !2428
  %558 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %886)
  %559 = load i64, i64* %RBP, align 8
  %560 = add i64 %559, -84
  %561 = load i32, i32* %EAX, align 4
  %562 = load i64, i64* %PC, align 8
  %563 = add i64 %562, 3
  store i64 %563, i64* %PC, align 8
  %564 = inttoptr i64 %560 to i32*
  store i32 %561, i32* %564, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_4014b0

block_401313:                                     ; preds = %block_401284
  %565 = add i64 %898, -36
  %566 = add i64 %934, 8
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = add i32 %568, 1
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX, align 8, !tbaa !2428
  %571 = icmp eq i32 %568, -1
  %572 = icmp eq i32 %569, 0
  %573 = or i1 %571, %572
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %19, align 1, !tbaa !2432
  %575 = and i32 %569, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575) #10
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %26, align 1, !tbaa !2446
  %580 = xor i32 %568, %569
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %31, align 1, !tbaa !2450
  %584 = icmp eq i32 %569, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %34, align 1, !tbaa !2447
  %586 = lshr i32 %569, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %37, align 1, !tbaa !2448
  %588 = lshr i32 %568, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %586
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %43, align 1, !tbaa !2449
  %593 = add i64 %934, 14
  store i64 %593, i64* %PC, align 8
  store i32 %569, i32* %567, align 4
  %594 = load i64, i64* %PC, align 8
  %595 = add i64 %594, -176
  store i64 %595, i64* %77, align 8, !tbaa !2428
  br label %block_401271

block_401349:                                     ; preds = %block_401326, %block_4013eb
  %596 = phi i64 [ %.pre7, %block_401326 ], [ %137, %block_4013eb ]
  %MEMORY.5 = phi %struct.Memory* [ %391, %block_401326 ], [ %MEMORY.0, %block_4013eb ]
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -36
  %599 = add i64 %596, 3
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = add i64 %597, -8
  %604 = add i64 %596, 6
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sub i32 %601, %606
  %608 = icmp ult i32 %601, %606
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %19, align 1, !tbaa !2432
  %610 = and i32 %607, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610) #10
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %26, align 1, !tbaa !2446
  %615 = xor i32 %606, %601
  %616 = xor i32 %615, %607
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %31, align 1, !tbaa !2450
  %620 = icmp eq i32 %607, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %34, align 1, !tbaa !2447
  %622 = lshr i32 %607, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %37, align 1, !tbaa !2448
  %624 = lshr i32 %601, 31
  %625 = lshr i32 %606, 31
  %626 = xor i32 %625, %624
  %627 = xor i32 %622, %624
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %43, align 1, !tbaa !2449
  %631 = icmp ne i8 %623, 0
  %632 = xor i1 %631, %629
  %.v19 = select i1 %632, i64 12, i64 181
  %633 = add i64 %596, %.v19
  store i64 %633, i64* %77, align 8, !tbaa !2428
  br i1 %632, label %block_401355, label %block_4013fe

block_401290:                                     ; preds = %block_401284
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %634 = load i64, i64* @stderr, align 32
  store i64 %634, i64* %RDI, align 8, !tbaa !2428
  %635 = add i64 %898, -16
  %636 = add i64 %934, 22
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = add i64 %898, -36
  %640 = add i64 %934, 26
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = sext i32 %642 to i64
  %644 = shl nsw i64 %643, 12
  store i64 %644, i64* %RCX, align 8, !tbaa !2428
  %645 = lshr i64 %643, 51
  %646 = and i64 %645, 1
  %647 = add i64 %644, %638
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = icmp ult i64 %647, %638
  %649 = icmp ult i64 %647, %644
  %650 = or i1 %648, %649
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %19, align 1, !tbaa !2432
  %652 = trunc i64 %647 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #10
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %26, align 1, !tbaa !2446
  %658 = xor i64 %638, %647
  %659 = lshr i64 %658, 4
  %660 = trunc i64 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %31, align 1, !tbaa !2450
  %662 = icmp eq i64 %647, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %34, align 1, !tbaa !2447
  %664 = lshr i64 %647, 63
  %665 = trunc i64 %664 to i8
  store i8 %665, i8* %37, align 1, !tbaa !2448
  %666 = lshr i64 %638, 63
  %667 = xor i64 %664, %666
  %668 = xor i64 %664, %646
  %669 = add nuw nsw i64 %667, %668
  %670 = icmp eq i64 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %43, align 1, !tbaa !2449
  %672 = add i64 %934, 37
  store i64 %672, i64* %PC, align 8
  %673 = load i32, i32* %901, align 4
  %674 = sext i32 %673 to i64
  store i64 %674, i64* %RCX, align 8, !tbaa !2428
  %675 = shl nsw i64 %674, 3
  %676 = add i64 %675, %647
  %677 = add i64 %934, 42
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  %680 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %679, i64* %680, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %681 = add i64 %934, -3264
  %682 = add i64 %934, 49
  %683 = load i64, i64* %11, align 8, !tbaa !2428
  %684 = add i64 %683, -8
  %685 = inttoptr i64 %684 to i64*
  store i64 %682, i64* %685, align 8
  store i64 %684, i64* %11, align 8, !tbaa !2428
  store i64 %681, i64* %77, align 8, !tbaa !2428
  %686 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %687 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %688 = load i64, i64* %RBP, align 8
  %689 = add i64 %688, -36
  %690 = add i64 %687, 9
  store i64 %690, i64* %PC, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %80, align 8, !tbaa !2428
  %694 = add i64 %688, -44
  %695 = load i32, i32* %EAX, align 4
  %696 = add i64 %687, 12
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %694 to i32*
  store i32 %695, i32* %697, align 4
  %698 = load i32, i32* %R8D, align 4
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %PC, align 8
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %701 = load i64, i64* %RBP, align 8
  %702 = add i64 %701, -48
  %703 = load i32, i32* %EDX, align 4
  %704 = add i64 %700, 6
  store i64 %704, i64* %PC, align 8
  %705 = inttoptr i64 %702 to i32*
  store i32 %703, i32* %705, align 4
  %706 = load i64, i64* %PC, align 8
  %707 = load i32, i32* %83, align 8, !tbaa !2456
  %708 = sext i32 %707 to i64
  %709 = lshr i64 %708, 32
  store i64 %709, i64* %81, align 8, !tbaa !2428
  %710 = load i64, i64* %RBP, align 8
  %711 = add i64 %710, -48
  %712 = add i64 %706, 5
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %80, align 8, !tbaa !2428
  %716 = add i64 %706, 8
  store i64 %716, i64* %PC, align 8
  %717 = zext i32 %707 to i64
  %718 = sext i32 %714 to i64
  %719 = shl nuw i64 %709, 32
  %720 = or i64 %719, %717
  %721 = sdiv i64 %720, %718
  %722 = shl i64 %721, 32
  %723 = ashr exact i64 %722, 32
  %724 = icmp eq i64 %721, %723
  br i1 %724, label %727, label %725

; <label>:725:                                    ; preds = %block_401290
  %726 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %716, %struct.Memory* %686) #11
  %.pre4 = load i32, i32* %EDX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:727:                                    ; preds = %block_401290
  %728 = srem i64 %720, %718
  %729 = and i64 %721, 4294967295
  store i64 %729, i64* %84, align 8, !tbaa !2428
  %730 = and i64 %728, 4294967295
  store i64 %730, i64* %85, align 8, !tbaa !2428
  store i8 0, i8* %19, align 1, !tbaa !2432
  store i8 0, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %731 = trunc i64 %728 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %727, %725
  %732 = phi i64 [ %.pre5, %725 ], [ %716, %727 ]
  %733 = phi i32 [ %.pre4, %725 ], [ %731, %727 ]
  %734 = phi %struct.Memory* [ %726, %725 ], [ %686, %727 ]
  store i8 0, i8* %19, align 1, !tbaa !2432
  %735 = and i32 %733, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735) #10
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  %740 = icmp eq i32 %733, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %34, align 1, !tbaa !2447
  %742 = lshr i32 %733, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %.v18 = select i1 %740, i64 9, i64 37
  %744 = add i64 %732, %.v18
  store i64 %744, i64* %77, align 8, !tbaa !2428
  br i1 %740, label %block_4012e4, label %block_401300

block_401271:                                     ; preds = %block_401313, %block_401250
  %745 = phi i64 [ %.pre, %block_401250 ], [ %595, %block_401313 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_401250 ], [ %MEMORY.7, %block_401313 ]
  %746 = load i64, i64* %RBP, align 8
  %747 = add i64 %746, -36
  %748 = add i64 %745, 3
  store i64 %748, i64* %PC, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %752 = add i64 %746, -4
  %753 = add i64 %745, 6
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sub i32 %750, %755
  %757 = icmp ult i32 %750, %755
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %19, align 1, !tbaa !2432
  %759 = and i32 %756, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759) #10
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %26, align 1, !tbaa !2446
  %764 = xor i32 %755, %750
  %765 = xor i32 %764, %756
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %31, align 1, !tbaa !2450
  %769 = icmp eq i32 %756, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %34, align 1, !tbaa !2447
  %771 = lshr i32 %756, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %37, align 1, !tbaa !2448
  %773 = lshr i32 %750, 31
  %774 = lshr i32 %755, 31
  %775 = xor i32 %774, %773
  %776 = xor i32 %771, %773
  %777 = add nuw nsw i32 %776, %775
  %778 = icmp eq i32 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %43, align 1, !tbaa !2449
  %780 = icmp ne i8 %772, 0
  %781 = xor i1 %780, %778
  %.v = select i1 %781, i64 12, i64 181
  %782 = add i64 %745, %.v
  store i64 %782, i64* %77, align 8, !tbaa !2428
  br i1 %781, label %block_40127d, label %block_401326

block_40142d:                                     ; preds = %block_401421
  %783 = add i64 %515, -40
  %784 = add i64 %551, 7
  store i64 %784, i64* %PC, align 8
  %785 = inttoptr i64 %783 to i32*
  store i32 0, i32* %785, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_401434

block_401440:                                     ; preds = %block_401434
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %786 = load i64, i64* @stderr, align 32
  store i64 %786, i64* %RDI, align 8, !tbaa !2428
  %787 = add i64 %315, -32
  %788 = add i64 %351, 22
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RAX, align 8, !tbaa !2428
  %791 = add i64 %315, -36
  %792 = add i64 %351, 26
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  %796 = shl nsw i64 %795, 12
  store i64 %796, i64* %RCX, align 8, !tbaa !2428
  %797 = lshr i64 %795, 51
  %798 = and i64 %797, 1
  %799 = add i64 %796, %790
  store i64 %799, i64* %RAX, align 8, !tbaa !2428
  %800 = icmp ult i64 %799, %790
  %801 = icmp ult i64 %799, %796
  %802 = or i1 %800, %801
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %19, align 1, !tbaa !2432
  %804 = trunc i64 %799 to i32
  %805 = and i32 %804, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805) #10
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %26, align 1, !tbaa !2446
  %810 = xor i64 %790, %799
  %811 = lshr i64 %810, 4
  %812 = trunc i64 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %31, align 1, !tbaa !2450
  %814 = icmp eq i64 %799, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %34, align 1, !tbaa !2447
  %816 = lshr i64 %799, 63
  %817 = trunc i64 %816 to i8
  store i8 %817, i8* %37, align 1, !tbaa !2448
  %818 = lshr i64 %790, 63
  %819 = xor i64 %816, %818
  %820 = xor i64 %816, %798
  %821 = add nuw nsw i64 %819, %820
  %822 = icmp eq i64 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %43, align 1, !tbaa !2449
  %824 = add i64 %351, 37
  store i64 %824, i64* %PC, align 8
  %825 = load i32, i32* %318, align 4
  %826 = sext i32 %825 to i64
  store i64 %826, i64* %RCX, align 8, !tbaa !2428
  %827 = shl nsw i64 %826, 3
  %828 = add i64 %827, %799
  %829 = add i64 %351, 42
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  %832 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %831, i64* %832, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %833 = add i64 %351, -3696
  %834 = add i64 %351, 49
  %835 = load i64, i64* %11, align 8, !tbaa !2428
  %836 = add i64 %835, -8
  %837 = inttoptr i64 %836 to i64*
  store i64 %834, i64* %837, align 8
  store i64 %836, i64* %11, align 8, !tbaa !2428
  store i64 %833, i64* %77, align 8, !tbaa !2428
  %838 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %839 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %840 = load i64, i64* %RBP, align 8
  %841 = add i64 %840, -36
  %842 = add i64 %839, 9
  store i64 %842, i64* %PC, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %80, align 8, !tbaa !2428
  %846 = add i64 %840, -76
  %847 = load i32, i32* %EAX, align 4
  %848 = add i64 %839, 12
  store i64 %848, i64* %PC, align 8
  %849 = inttoptr i64 %846 to i32*
  store i32 %847, i32* %849, align 4
  %850 = load i32, i32* %R8D, align 4
  %851 = zext i32 %850 to i64
  %852 = load i64, i64* %PC, align 8
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %853 = load i64, i64* %RBP, align 8
  %854 = add i64 %853, -80
  %855 = load i32, i32* %EDX, align 4
  %856 = add i64 %852, 6
  store i64 %856, i64* %PC, align 8
  %857 = inttoptr i64 %854 to i32*
  store i32 %855, i32* %857, align 4
  %858 = load i64, i64* %PC, align 8
  %859 = load i32, i32* %83, align 8, !tbaa !2456
  %860 = sext i32 %859 to i64
  %861 = lshr i64 %860, 32
  store i64 %861, i64* %81, align 8, !tbaa !2428
  %862 = load i64, i64* %RBP, align 8
  %863 = add i64 %862, -80
  %864 = add i64 %858, 5
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %80, align 8, !tbaa !2428
  %868 = add i64 %858, 8
  store i64 %868, i64* %PC, align 8
  %869 = zext i32 %859 to i64
  %870 = sext i32 %866 to i64
  %871 = shl nuw i64 %861, 32
  %872 = or i64 %871, %869
  %873 = sdiv i64 %872, %870
  %874 = shl i64 %873, 32
  %875 = ashr exact i64 %874, 32
  %876 = icmp eq i64 %873, %875
  br i1 %876, label %879, label %877

; <label>:877:                                    ; preds = %block_401440
  %878 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %868, %struct.Memory* %838) #11
  %.pre14 = load i32, i32* %EDX, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:879:                                    ; preds = %block_401440
  %880 = srem i64 %872, %870
  %881 = and i64 %873, 4294967295
  store i64 %881, i64* %84, align 8, !tbaa !2428
  %882 = and i64 %880, 4294967295
  store i64 %882, i64* %85, align 8, !tbaa !2428
  store i8 0, i8* %19, align 1, !tbaa !2432
  store i8 0, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2447
  store i8 0, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %883 = trunc i64 %880 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %879, %877
  %884 = phi i64 [ %.pre15, %877 ], [ %868, %879 ]
  %885 = phi i32 [ %.pre14, %877 ], [ %883, %879 ]
  %886 = phi %struct.Memory* [ %878, %877 ], [ %838, %879 ]
  store i8 0, i8* %19, align 1, !tbaa !2432
  %887 = and i32 %885, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887) #10
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  %892 = icmp eq i32 %885, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %34, align 1, !tbaa !2447
  %894 = lshr i32 %885, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %.v24 = select i1 %892, i64 9, i64 37
  %896 = add i64 %884, %.v24
  store i64 %896, i64* %77, align 8, !tbaa !2428
  br i1 %892, label %block_401494, label %block_4014b0

block_401284:                                     ; preds = %block_401300, %block_40127d
  %897 = phi i64 [ %.pre3, %block_40127d ], [ %967, %block_401300 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_40127d ], [ %MEMORY.8, %block_401300 ]
  %898 = load i64, i64* %RBP, align 8
  %899 = add i64 %898, -40
  %900 = add i64 %897, 3
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX, align 8, !tbaa !2428
  %904 = add i64 %898, -8
  %905 = add i64 %897, 6
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = sub i32 %902, %907
  %909 = icmp ult i32 %902, %907
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %19, align 1, !tbaa !2432
  %911 = and i32 %908, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911) #10
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %26, align 1, !tbaa !2446
  %916 = xor i32 %907, %902
  %917 = xor i32 %916, %908
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %31, align 1, !tbaa !2450
  %921 = icmp eq i32 %908, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %34, align 1, !tbaa !2447
  %923 = lshr i32 %908, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %37, align 1, !tbaa !2448
  %925 = lshr i32 %902, 31
  %926 = lshr i32 %907, 31
  %927 = xor i32 %926, %925
  %928 = xor i32 %923, %925
  %929 = add nuw nsw i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %43, align 1, !tbaa !2449
  %932 = icmp ne i8 %924, 0
  %933 = xor i1 %932, %930
  %.v17 = select i1 %933, i64 12, i64 143
  %934 = add i64 %897, %.v17
  store i64 %934, i64* %77, align 8, !tbaa !2428
  br i1 %933, label %block_401290, label %block_401313

block_401300:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_4012e4
  %935 = phi i64 [ %744, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %.pre6, %block_4012e4 ]
  %MEMORY.8 = phi %struct.Memory* [ %734, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %263, %block_4012e4 ]
  %936 = load i64, i64* %RBP, align 8
  %937 = add i64 %936, -40
  %938 = add i64 %935, 8
  store i64 %938, i64* %PC, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = add i32 %940, 1
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX, align 8, !tbaa !2428
  %943 = icmp eq i32 %940, -1
  %944 = icmp eq i32 %941, 0
  %945 = or i1 %943, %944
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %19, align 1, !tbaa !2432
  %947 = and i32 %941, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947) #10
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %26, align 1, !tbaa !2446
  %952 = xor i32 %940, %941
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %31, align 1, !tbaa !2450
  %956 = icmp eq i32 %941, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %34, align 1, !tbaa !2447
  %958 = lshr i32 %941, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %37, align 1, !tbaa !2448
  %960 = lshr i32 %940, 31
  %961 = xor i32 %958, %960
  %962 = add nuw nsw i32 %961, %958
  %963 = icmp eq i32 %962, 2
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %43, align 1, !tbaa !2449
  %965 = add i64 %935, 14
  store i64 %965, i64* %PC, align 8
  store i32 %941, i32* %939, align 4
  %966 = load i64, i64* %PC, align 8
  %967 = add i64 %966, -138
  store i64 %967, i64* %77, align 8, !tbaa !2428
  br label %block_401284
}

; Function Attrs: noinline
define %struct.Memory* @sub_400860_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400860:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
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
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
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
  %56 = add i64 %51, -655
  %57 = add i64 %51, 12
  %58 = load i64, i64* %6, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8, !tbaa !2428
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %56, i64* %61, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_4005f0_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76) #10
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2450
  %81 = icmp eq i64 %74, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1, !tbaa !2447
  %83 = lshr i64 %74, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %38, align 1, !tbaa !2449
  %.v = select i1 %81, i64 21, i64 11
  %85 = add i64 %71, %.v
  store i64 %85, i64* %61, align 8, !tbaa !2428
  br i1 %81, label %block_4008a3, label %block_400899

block_4008a3:                                     ; preds = %block_400899, %block_400860
  %86 = phi i64 [ %122, %block_400899 ], [ %85, %block_400860 ]
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %87 = load i64, i64* @stderr, align 32
  store i64 %87, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %88 = add i64 %86, -723
  %89 = add i64 %86, 25
  %90 = load i64, i64* %6, align 8, !tbaa !2428
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8, !tbaa !2428
  store i64 %88, i64* %61, align 8, !tbaa !2428
  %93 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %62)
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
  %101 = add i64 %100, -740
  %102 = add i64 %100, 5
  %103 = load i64, i64* %6, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %6, align 8, !tbaa !2428
  store i64 %101, i64* %61, align 8, !tbaa !2428
  %106 = tail call fastcc %struct.Memory* @ext_4005e0_exit(%struct.State* nonnull %0, %struct.Memory* %93)
  %107 = load i64, i64* %PC, align 8
  %108 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %107, %struct.Memory* %106)
  ret %struct.Memory* %108

block_400899:                                     ; preds = %block_400860
  %109 = add i64 %69, -20
  %110 = add i64 %85, 4
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  store i8 0, i8* %14, align 1, !tbaa !2432
  %113 = and i32 %112, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #10
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2450
  %118 = icmp eq i32 %112, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1, !tbaa !2447
  %120 = lshr i32 %112, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %38, align 1, !tbaa !2449
  %.v1 = select i1 %118, i64 48, i64 10
  %122 = add i64 %85, %.v1
  store i64 %122, i64* %61, align 8, !tbaa !2428
  br i1 %118, label %block_4008c9, label %block_4008a3

block_4008c9:                                     ; preds = %block_400899
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
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #10
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1, !tbaa !2446
  %135 = xor i64 %125, %126
  %136 = lshr i64 %135, 4
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %26, align 1, !tbaa !2450
  %139 = icmp eq i64 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %29, align 1, !tbaa !2447
  %141 = lshr i64 %126, 63
  %142 = trunc i64 %141 to i8
  store i8 %142, i8* %32, align 1, !tbaa !2448
  %143 = lshr i64 %125, 63
  %144 = xor i64 %141, %143
  %145 = add nuw nsw i64 %144, %141
  %146 = icmp eq i64 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %38, align 1, !tbaa !2449
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
define %struct.Memory* @sub_401574__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401574:
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
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %7, align 1, !tbaa !2446
  %25 = xor i64 %4, %3
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %8, align 1, !tbaa !2450
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2447
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2448
  store i8 %16, i8* %17, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400820_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400820:
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #10
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
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
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
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #10
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %88 = lshr i64 %78, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %32, align 1, !tbaa !2448
  store i8 %81, i8* %38, align 1, !tbaa !2449
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
  %103 = tail call %struct.Memory* @sub_400860_xmalloc_renamed_(%struct.State* nonnull %0, i64 %97, %struct.Memory* %2)
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
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121) #10
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1, !tbaa !2446
  %126 = xor i64 %116, %117
  %127 = lshr i64 %126, 4
  %128 = trunc i64 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %26, align 1, !tbaa !2450
  %130 = icmp eq i64 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %29, align 1, !tbaa !2447
  %132 = lshr i64 %117, 63
  %133 = trunc i64 %132 to i8
  store i8 %133, i8* %32, align 1, !tbaa !2448
  %134 = lshr i64 %116, 63
  %135 = xor i64 %132, %134
  %136 = add nuw nsw i64 %135, %132
  %137 = icmp eq i64 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400680_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400680:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %11 = sub i64 %9, ptrtoint (i64* @stderr to i64)
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
  store i8 %22, i8* %12, align 1, !tbaa !2453
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #10
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2453
  store i8 0, i8* %14, align 1, !tbaa !2453
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2453
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_4006b8, label %block_4006a3

block_4006b8:                                     ; preds = %block_4006a3, %block_400680
  %36 = phi i64 [ %46, %block_4006a3 ], [ %35, %block_400680 ]
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

block_4006a3:                                     ; preds = %block_400680
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %46 = add i64 %35, 21
  store i64 %46, i64* %34, align 8, !tbaa !2428
  br label %block_4006b8
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_4006f0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006c0___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_4006c0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006c0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401570___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_401570___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401570___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401500___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_401500___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401500___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008e0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e8_printf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e0_free(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f8_calloc(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6020d8_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
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
  %.repack = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %14, align 8
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005e0_exit(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005f0_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400578;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400578__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401574;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401574__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007e0_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400700;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400700_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400780_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400820;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400820_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400790_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401500___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401570___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { naked nobuiltin noinline }
attributes #9 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline nobuiltin nounwind }

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
!2454 = !{!2455, !2455, i64 0}
!2455 = !{!"float", !2430, i64 0}
!2456 = !{!2445, !2445, i64 0}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"ext_6020d8_sqrt: argument 0"}
!2459 = distinct !{!2459, !"ext_6020d8_sqrt"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2459, !"ext_6020d8_sqrt: argument 1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"ext_6020d8_sqrt: argument 0"}
!2464 = distinct !{!2464, !"ext_6020d8_sqrt"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2464, !"ext_6020d8_sqrt: argument 1"}
