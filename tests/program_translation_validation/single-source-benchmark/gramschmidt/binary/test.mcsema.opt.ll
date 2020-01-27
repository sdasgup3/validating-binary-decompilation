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

declare %struct.Memory* @sub_400780_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400eb0_kernel_gramschmidt_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400860_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400578__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400650_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400700_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401250_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c40_kernel_gramschmidt_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #11
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
  br i1 %18, label %block_400578.block_40058a_crit_edge, label %block_400588

block_400578.block_40058a_crit_edge:              ; preds = %block_400578
  br label %block_40058a

block_400588:                                     ; preds = %block_400578
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40058a

block_40058a:                                     ; preds = %block_400578.block_40058a_crit_edge, %block_400588
  %27 = phi i64 [ %22, %block_400578.block_40058a_crit_edge ], [ %.pre1, %block_400588 ]
  %28 = phi i64 [ %4, %block_400578.block_40058a_crit_edge ], [ %.pre, %block_400588 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400578.block_40058a_crit_edge ], [ %26, %block_400588 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #11
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %28, %29
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #11
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
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
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
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
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
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #11
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
  store i8 %29, i8* %30, align 1, !tbaa !2450
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2447
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2448
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2449
  %43 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 8) to i64*), align 8
  %45 = bitcast [32 x %union.VectorReg]* %6 to double*
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %46, align 1, !tbaa !2451
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %49 = add i64 %10, -16
  %50 = load i32, i32* %EDI, align 4
  %51 = add i64 %13, 18
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %ESI, align 4
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RDX, align 8
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %RCX, align 8
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -48
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC, align 8
  %75 = load i64, i64* %46, align 1
  %76 = inttoptr i64 %72 to i64*
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -36
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4
  %82 = bitcast %union.VectorReg* %7 to i8*
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %85 = getelementptr inbounds i8, i8* %82, i64 12
  %86 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %87 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %88 = getelementptr inbounds i8, i8* %43, i64 4
  %89 = bitcast i8* %88 to i32*
  %90 = bitcast i64* %47 to i32*
  %91 = getelementptr inbounds i8, i8* %43, i64 12
  %92 = bitcast i8* %91 to i32*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40114a

block_40114a:                                     ; preds = %block_401225, %block_401120
  %93 = phi i64 [ %.pre, %block_401120 ], [ %497, %block_401225 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401120 ], [ %MEMORY.1, %block_401225 ]
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -36
  %96 = add i64 %93, 3
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX, align 8, !tbaa !2428
  %100 = add i64 %94, -8
  %101 = add i64 %93, 6
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = sub i32 %98, %103
  %105 = icmp ult i32 %98, %103
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %17, align 1, !tbaa !2432
  %107 = and i32 %104, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #11
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %24, align 1, !tbaa !2446
  %112 = xor i32 %103, %98
  %113 = xor i32 %112, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %30, align 1, !tbaa !2450
  %117 = icmp eq i32 %104, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %33, align 1, !tbaa !2447
  %119 = lshr i32 %104, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %36, align 1, !tbaa !2448
  %121 = lshr i32 %98, 31
  %122 = lshr i32 %103, 31
  %123 = xor i32 %122, %121
  %124 = xor i32 %119, %121
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %42, align 1, !tbaa !2449
  %128 = icmp ne i8 %120, 0
  %129 = xor i1 %128, %126
  %.v = select i1 %129, i64 12, i64 238
  %130 = add i64 %93, %.v
  store i64 %130, i64* %PC, align 8, !tbaa !2428
  br i1 %129, label %block_401156, label %block_401238

block_401238:                                     ; preds = %block_40114a
  %131 = add i64 %94, -4
  %132 = add i64 %130, 7
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 1, i32* %133, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40123f

block_401156:                                     ; preds = %block_40114a
  %134 = add i64 %94, -40
  %135 = add i64 %130, 7
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 0, i32* %136, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40115d

block_40115d:                                     ; preds = %block_401212, %block_401156
  %137 = phi i64 [ %.pre6, %block_401156 ], [ %260, %block_401212 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401156 ], [ %423, %block_401212 ]
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -40
  %140 = add i64 %137, 3
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = add i64 %138, -12
  %145 = add i64 %137, 6
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %142, %147
  %149 = icmp ult i32 %142, %147
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2432
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #11
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %24, align 1, !tbaa !2446
  %156 = xor i32 %147, %142
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %30, align 1, !tbaa !2450
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %33, align 1, !tbaa !2447
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %36, align 1, !tbaa !2448
  %165 = lshr i32 %142, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %42, align 1, !tbaa !2449
  %172 = icmp ne i8 %164, 0
  %173 = xor i1 %172, %170
  %.v9 = select i1 %173, i64 12, i64 200
  %174 = add i64 %137, %.v9
  store i64 %174, i64* %PC, align 8, !tbaa !2428
  br i1 %173, label %block_401169, label %block_401225

block_4011cd:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 98), i64* %RSI, align 8, !tbaa !2428
  %175 = load i64, i64* @stderr, align 32
  store i64 %175, i64* %RDI, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -36
  %178 = add i64 %428, 21
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RDX, align 8, !tbaa !2428
  %182 = add i64 %176, -40
  %183 = add i64 %428, 24
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RCX, align 8, !tbaa !2428
  %187 = add i64 %176, -56
  %188 = add i64 %428, 29
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %192 = add i64 %428, 33
  store i64 %192, i64* %PC, align 8
  %193 = load i32, i32* %179, align 4
  %194 = zext i32 %193 to i64
  store i64 %194, i64* %191, align 8, !tbaa !2428
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %196 = add i64 %428, 37
  store i64 %196, i64* %PC, align 8
  %197 = load i32, i32* %184, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %195, align 8, !tbaa !2428
  %199 = add i64 %176, -64
  %200 = add i64 %428, 42
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %86, align 1, !tbaa !2451
  %203 = bitcast i64* %84 to double*
  store double 0.000000e+00, double* %203, align 1, !tbaa !2451
  %204 = add i64 %176, -48
  %205 = add i64 %428, 47
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %207, i64* %208, align 1, !tbaa !2451
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %210 = bitcast i64* %209 to double*
  store double 0.000000e+00, double* %210, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %211 = add i64 %428, -3069
  %212 = add i64 %428, 54
  %213 = load i64, i64* %RSP, align 8, !tbaa !2428
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %RSP, align 8, !tbaa !2428
  store i64 %211, i64* %PC, align 8, !tbaa !2428
  %216 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %423)
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -4
  %219 = load i64, i64* %PC, align 8
  %220 = add i64 %219, 7
  store i64 %220, i64* %PC, align 8
  %221 = inttoptr i64 %218 to i32*
  store i32 0, i32* %221, align 4
  %222 = load i64, i64* %RBP, align 8
  %223 = add i64 %222, -76
  %224 = load i32, i32* %EAX, align 4
  %225 = load i64, i64* %PC, align 8
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %227, align 4
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, 50
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br label %block_40123f

block_401212:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -40
  %232 = add i64 %428, 8
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, 1
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = icmp eq i32 %234, -1
  %238 = icmp eq i32 %235, 0
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %17, align 1, !tbaa !2432
  %241 = and i32 %235, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241) #11
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %24, align 1, !tbaa !2446
  %246 = xor i32 %234, %235
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %30, align 1, !tbaa !2450
  %250 = zext i1 %238 to i8
  store i8 %250, i8* %33, align 1, !tbaa !2447
  %251 = lshr i32 %235, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %36, align 1, !tbaa !2448
  %253 = lshr i32 %234, 31
  %254 = xor i32 %251, %253
  %255 = add nuw nsw i32 %254, %251
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %42, align 1, !tbaa !2449
  %258 = add i64 %428, 14
  store i64 %258, i64* %PC, align 8
  store i32 %235, i32* %233, align 4
  %259 = load i64, i64* %PC, align 8
  %260 = add i64 %259, -195
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  br label %block_40115d

block_401169:                                     ; preds = %block_40115d
  %261 = add i64 %138, -24
  %262 = add i64 %174, 4
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = add i64 %138, -36
  %266 = add i64 %174, 8
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = shl nsw i64 %269, 12
  store i64 %270, i64* %RCX, align 8, !tbaa !2428
  %271 = lshr i64 %269, 51
  %272 = and i64 %271, 1
  %273 = add i64 %270, %264
  store i64 %273, i64* %RAX, align 8, !tbaa !2428
  %274 = icmp ult i64 %273, %264
  %275 = icmp ult i64 %273, %270
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %17, align 1, !tbaa !2432
  %278 = trunc i64 %273 to i32
  %279 = and i32 %278, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279) #11
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %24, align 1, !tbaa !2446
  %284 = xor i64 %264, %273
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %30, align 1, !tbaa !2450
  %288 = icmp eq i64 %273, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %33, align 1, !tbaa !2447
  %290 = lshr i64 %273, 63
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %36, align 1, !tbaa !2448
  %292 = lshr i64 %264, 63
  %293 = xor i64 %290, %292
  %294 = xor i64 %290, %272
  %295 = add nuw nsw i64 %293, %294
  %296 = icmp eq i64 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %42, align 1, !tbaa !2449
  %298 = add i64 %174, 19
  store i64 %298, i64* %PC, align 8
  %299 = load i32, i32* %141, align 4
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = shl nsw i64 %300, 3
  %302 = add i64 %301, %273
  %303 = add i64 %174, 24
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %306 = add i64 %138, -56
  %307 = add i64 %174, 29
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i64*
  store i64 %305, i64* %308, align 8
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -32
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %309, -36
  %316 = add i64 %311, 8
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
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #11
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %24, align 1, !tbaa !2446
  %334 = xor i64 %314, %323
  %335 = lshr i64 %334, 4
  %336 = trunc i64 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %30, align 1, !tbaa !2450
  %338 = icmp eq i64 %323, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %33, align 1, !tbaa !2447
  %340 = lshr i64 %323, 63
  %341 = trunc i64 %340 to i8
  store i8 %341, i8* %36, align 1, !tbaa !2448
  %342 = lshr i64 %314, 63
  %343 = xor i64 %340, %342
  %344 = xor i64 %340, %322
  %345 = add nuw nsw i64 %343, %344
  %346 = icmp eq i64 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %42, align 1, !tbaa !2449
  %348 = add i64 %309, -40
  %349 = add i64 %311, 19
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %RCX, align 8, !tbaa !2428
  %353 = shl nsw i64 %352, 3
  %354 = add i64 %353, %323
  %355 = add i64 %311, 24
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %358 = add i64 %309, -64
  %359 = add i64 %311, 29
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  store i64 %357, i64* %360, align 8
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -56
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %362 to double*
  %366 = load double, double* %365, align 8
  store double %366, double* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %367 = add i64 %361, -64
  %368 = add i64 %363, 10
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to double*
  %370 = load double, double* %369, align 8
  %371 = fsub double %366, %370
  %372 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 16) to i32*), align 16
  %373 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 20) to i32*), align 4
  %374 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 24) to i32*), align 8
  %375 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 28) to i32*), align 4
  %376 = bitcast %union.VectorReg* %7 to i32*
  store i32 %372, i32* %376, align 1, !tbaa !2454
  %377 = bitcast i8* %83 to i32*
  store i32 %373, i32* %377, align 1, !tbaa !2454
  %378 = bitcast i64* %84 to i32*
  store i32 %374, i32* %378, align 1, !tbaa !2454
  %379 = bitcast i8* %85 to i32*
  store i32 %375, i32* %379, align 1, !tbaa !2454
  %380 = bitcast double %371 to i64
  %381 = load i64, i64* %86, align 1
  %382 = and i64 %381, %380
  %383 = trunc i64 %382 to i32
  %384 = lshr i64 %382, 32
  %385 = trunc i64 %384 to i32
  store i32 %383, i32* %87, align 1, !tbaa !2456
  store i32 %385, i32* %89, align 1, !tbaa !2456
  store i32 0, i32* %90, align 1, !tbaa !2456
  store i32 0, i32* %92, align 1, !tbaa !2456
  %386 = add i64 %361, -72
  %387 = add i64 %363, 26
  store i64 %387, i64* %PC, align 8
  %388 = load i64, i64* %46, align 1
  %389 = inttoptr i64 %386 to i64*
  store i64 %388, i64* %389, align 8
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -72
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %391 to double*
  %395 = load double, double* %394, align 8
  store double %395, double* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %396 = add i64 %390, -48
  %397 = add i64 %392, 10
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to double*
  %399 = load double, double* %398, align 8
  %400 = fcmp uno double %395, %399
  br i1 %400, label %401, label %411

; <label>:401:                                    ; preds = %block_401169
  %402 = fadd double %395, %399
  %403 = bitcast double %402 to i64
  %404 = and i64 %403, 9221120237041090560
  %405 = icmp eq i64 %404, 9218868437227405312
  %406 = and i64 %403, 2251799813685247
  %407 = icmp ne i64 %406, 0
  %408 = and i1 %405, %407
  br i1 %408, label %409, label %417

; <label>:409:                                    ; preds = %401
  %410 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %397, %struct.Memory* %MEMORY.1) #12
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:411:                                    ; preds = %block_401169
  %412 = fcmp ogt double %395, %399
  br i1 %412, label %417, label %413

; <label>:413:                                    ; preds = %411
  %414 = fcmp olt double %395, %399
  br i1 %414, label %417, label %415

; <label>:415:                                    ; preds = %413
  %416 = fcmp oeq double %395, %399
  br i1 %416, label %417, label %421

; <label>:417:                                    ; preds = %415, %413, %411, %401
  %418 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 1, %415 ], [ 1, %401 ]
  %419 = phi i8 [ 0, %411 ], [ 0, %413 ], [ 0, %415 ], [ 1, %401 ]
  %420 = phi i8 [ 0, %411 ], [ 1, %413 ], [ 0, %415 ], [ 1, %401 ]
  store i8 %418, i8* %33, align 1, !tbaa !2453
  store i8 %419, i8* %24, align 1, !tbaa !2453
  store i8 %420, i8* %17, align 1, !tbaa !2453
  br label %421

; <label>:421:                                    ; preds = %417, %415
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  store i8 0, i8* %30, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %421, %409
  %422 = phi i64 [ %.pre7, %409 ], [ %397, %421 ]
  %423 = phi %struct.Memory* [ %410, %409 ], [ %MEMORY.1, %421 ]
  %424 = load i8, i8* %17, align 1, !tbaa !2432
  %425 = load i8, i8* %33, align 1, !tbaa !2447
  %426 = or i8 %425, %424
  %427 = icmp ne i8 %426, 0
  %.v10 = select i1 %427, i64 75, i64 6
  %428 = add i64 %422, %.v10
  store i64 %428, i64* %PC, align 8, !tbaa !2428
  br i1 %427, label %block_401212, label %block_4011cd

block_40123f:                                     ; preds = %block_4011cd, %block_401238
  %429 = phi i64 [ %.pre8, %block_401238 ], [ %229, %block_4011cd ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401238 ], [ %216, %block_4011cd ]
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -4
  %432 = add i64 %429, 3
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2428
  %436 = load i64, i64* %RSP, align 8
  %437 = add i64 %436, 80
  store i64 %437, i64* %RSP, align 8, !tbaa !2428
  %438 = icmp ugt i64 %436, -81
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %17, align 1, !tbaa !2432
  %440 = trunc i64 %437 to i32
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #11
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %24, align 1, !tbaa !2446
  %446 = xor i64 %436, 16
  %447 = xor i64 %446, %437
  %448 = lshr i64 %447, 4
  %449 = trunc i64 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %30, align 1, !tbaa !2450
  %451 = icmp eq i64 %437, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %33, align 1, !tbaa !2447
  %453 = lshr i64 %437, 63
  %454 = trunc i64 %453 to i8
  store i8 %454, i8* %36, align 1, !tbaa !2448
  %455 = lshr i64 %436, 63
  %456 = xor i64 %453, %455
  %457 = add nuw nsw i64 %456, %453
  %458 = icmp eq i64 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %42, align 1, !tbaa !2449
  %460 = add i64 %429, 8
  store i64 %460, i64* %PC, align 8
  %461 = add i64 %436, 88
  %462 = inttoptr i64 %437 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RBP, align 8, !tbaa !2428
  store i64 %461, i64* %RSP, align 8, !tbaa !2428
  %464 = add i64 %429, 9
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %461 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %PC, align 8, !tbaa !2428
  %467 = add i64 %436, 96
  store i64 %467, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_401225:                                     ; preds = %block_40115d
  %468 = add i64 %138, -36
  %469 = add i64 %174, 8
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, 1
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = icmp eq i32 %471, -1
  %475 = icmp eq i32 %472, 0
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %17, align 1, !tbaa !2432
  %478 = and i32 %472, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478) #11
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %24, align 1, !tbaa !2446
  %483 = xor i32 %471, %472
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %30, align 1, !tbaa !2450
  %487 = zext i1 %475 to i8
  store i8 %487, i8* %33, align 1, !tbaa !2447
  %488 = lshr i32 %472, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %36, align 1, !tbaa !2448
  %490 = lshr i32 %471, 31
  %491 = xor i32 %488, %490
  %492 = add nuw nsw i32 %491, %488
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %42, align 1, !tbaa !2449
  %495 = add i64 %174, 14
  store i64 %495, i64* %PC, align 8
  store i32 %472, i32* %470, align 4
  %496 = load i64, i64* %PC, align 8
  %497 = add i64 %496, -233
  store i64 %497, i64* %PC, align 8, !tbaa !2428
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
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #11
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
  store i8 %26, i8* %27, align 1, !tbaa !2450
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %40 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %41 = bitcast %union.VectorReg* %4 to double*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %44 = fsub double %40, %43
  store double %44, double* %41, align 1, !tbaa !2451
  store i64 0, i64* %42, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %45 = add i64 %10, -561
  %46 = add i64 %10, 42
  %47 = add i64 %7, -32
  %48 = inttoptr i64 %47 to i64*
  store i64 %46, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_6020e8_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62) #11
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1, !tbaa !2446
  %67 = xor i64 %56, 16
  %68 = xor i64 %67, %58
  %69 = lshr i64 %68, 4
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %27, align 1, !tbaa !2450
  %72 = icmp eq i64 %58, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %30, align 1, !tbaa !2447
  %74 = lshr i64 %58, 63
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %33, align 1, !tbaa !2448
  %76 = lshr i64 %56, 63
  %77 = xor i64 %74, %76
  %78 = add nuw nsw i64 %77, %74
  %79 = icmp eq i64 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %39, align 1, !tbaa !2449
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_400680_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #11
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
  store i8 %24, i8* %25, align 1, !tbaa !2450
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2449
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
  %53 = tail call fastcc %struct.Memory* @ext_6020f8_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %54 = bitcast %union.VectorReg* %3 to i8*
  %55 = load i64, i64* %PC, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %57, align 1, !tbaa !2456
  %58 = getelementptr inbounds i8, i8* %54, i64 4
  %59 = bitcast i8* %58 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2456
  %60 = bitcast i64* %56 to i32*
  store i32 0, i32* %60, align 1, !tbaa !2456
  %61 = getelementptr inbounds i8, i8* %54, i64 12
  %62 = bitcast i8* %61 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2456
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
  br label %block_400732

block_40073e:                                     ; preds = %block_400732
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
  store double %89, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %81, align 1, !tbaa !2451
  %90 = add i64 %167, -32
  %91 = add i64 %203, 18
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to double*
  %93 = load double, double* %92, align 8
  %94 = fadd double %89, %93
  store double %94, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %56, align 1, !tbaa !2451
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
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #11
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %20, align 1, !tbaa !2446
  %113 = xor i32 %101, %102
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %25, align 1, !tbaa !2450
  %117 = zext i1 %105 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2447
  %118 = lshr i32 %102, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2448
  %120 = lshr i32 %101, 31
  %121 = xor i32 %118, %120
  %122 = add nuw nsw i32 %121, %118
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %37, align 1, !tbaa !2449
  %125 = add i64 %98, 9
  store i64 %125, i64* %PC, align 8
  store i32 %102, i32* %100, align 4
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %126, -44
  store i64 %127, i64* %PC, align 8, !tbaa !2428
  br label %block_400732

block_400763:                                     ; preds = %block_400732
  store i64 %207, i64* %RDI, align 8, !tbaa !2428
  %128 = add i64 %203, -451
  %129 = add i64 %203, 12
  %130 = load i64, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %RSP, align 8, !tbaa !2428
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  %133 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %53)
  %134 = load i64, i64* %RSP, align 8
  %135 = load i64, i64* %PC, align 8
  %136 = add i64 %134, 32
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  %137 = icmp ugt i64 %134, -33
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %13, align 1, !tbaa !2432
  %139 = trunc i64 %136 to i32
  %140 = and i32 %139, 255
  %141 = tail call i32 @llvm.ctpop.i32(i32 %140) #11
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %20, align 1, !tbaa !2446
  %145 = xor i64 %134, %136
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2450
  %149 = icmp eq i64 %136, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %28, align 1, !tbaa !2447
  %151 = lshr i64 %136, 63
  %152 = trunc i64 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2448
  %153 = lshr i64 %134, 63
  %154 = xor i64 %151, %153
  %155 = add nuw nsw i64 %154, %151
  %156 = icmp eq i64 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %37, align 1, !tbaa !2449
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

block_400732:                                     ; preds = %block_40073e, %block_400700
  %166 = phi i64 [ %127, %block_40073e ], [ %.pre, %block_400700 ]
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
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #11
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %20, align 1, !tbaa !2446
  %185 = xor i32 %176, %171
  %186 = xor i32 %185, %177
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %25, align 1, !tbaa !2450
  %190 = icmp eq i32 %177, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %28, align 1, !tbaa !2447
  %192 = lshr i32 %177, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %31, align 1, !tbaa !2448
  %194 = lshr i32 %171, 31
  %195 = lshr i32 %176, 31
  %196 = xor i32 %195, %194
  %197 = xor i32 %192, %194
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %37, align 1, !tbaa !2449
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
  br i1 %202, label %block_40073e, label %block_400763
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400640:
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #11
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
  %63 = add i64 %38, -4003
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400578__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #11
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
  br i1 %76, label %block_401556, label %block_401536

block_401556:                                     ; preds = %block_401540, %block_401500
  %81 = phi i64 [ %80, %block_401500 ], [ %179, %block_401540 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401500 ], [ %149, %block_401540 ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #11
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %82, %83
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

block_401536:                                     ; preds = %block_401500
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401540

block_401540:                                     ; preds = %block_401540, %block_401536
  %134 = phi i64 [ 0, %block_401536 ], [ %152, %block_401540 ]
  %135 = phi i64 [ %133, %block_401536 ], [ %179, %block_401540 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401536 ], [ %149, %block_401540 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #11
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
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_401556, label %block_401540
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
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #11
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
  br i1 %12, label %block_4006c9, label %block_4006e0

block_4006e0:                                     ; preds = %block_4006c0
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

block_4006c9:                                     ; preds = %block_4006c0
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
  %36 = tail call %struct.Memory* @sub_400650_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #11
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
  %42 = load i32, i32* %EDI, align 4
  %43 = add i64 %12, 10
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RDX, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RCX, align 8
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %R8, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -44
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %74 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %76 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %77 = getelementptr inbounds i8, i8* %74, i64 4
  %78 = bitcast i8* %77 to i32*
  %79 = bitcast i64* %75 to i32*
  %80 = getelementptr inbounds i8, i8* %74, i64 12
  %81 = bitcast i8* %80 to i32*
  %82 = bitcast [32 x %union.VectorReg]* %5 to double*
  %83 = bitcast i64* %75 to double*
  %84 = bitcast %union.VectorReg* %6 to double*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c61

block_400e7e:                                     ; preds = %block_400e00
  %87 = add i64 %1207, -40
  %88 = add i64 %1243, 8
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
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #11
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %23, align 1, !tbaa !2446
  %102 = xor i32 %90, %91
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %28, align 1, !tbaa !2450
  %106 = zext i1 %94 to i8
  store i8 %106, i8* %31, align 1, !tbaa !2447
  %107 = lshr i32 %91, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %34, align 1, !tbaa !2448
  %109 = lshr i32 %90, 31
  %110 = xor i32 %107, %109
  %111 = add nuw nsw i32 %110, %107
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %40, align 1, !tbaa !2449
  %114 = add i64 %1243, 14
  store i64 %114, i64* %PC, align 8
  store i32 %91, i32* %89, align 4
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, -296
  store i64 %116, i64* %PC, align 8, !tbaa !2428
  br label %block_400d64

block_400c6d:                                     ; preds = %block_400c61
  store i32 0, i32* %76, align 1, !tbaa !2456
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %79, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  %117 = add i64 %128, -56
  %118 = add i64 %164, 8
  store i64 %118, i64* %PC, align 8
  %119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %120 = load i64, i64* %119, align 1
  %121 = inttoptr i64 %117 to i64*
  store i64 %120, i64* %121, align 8
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -36
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, 7
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %123 to i32*
  store i32 0, i32* %126, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400c7c

block_400c61:                                     ; preds = %block_400e91, %block_400c40
  %127 = phi i64 [ %693, %block_400e91 ], [ %.pre, %block_400c40 ]
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -44
  %130 = add i64 %127, 3
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = add i64 %128, -8
  %135 = add i64 %127, 6
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %132, %137
  %139 = icmp ult i32 %132, %137
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %16, align 1, !tbaa !2432
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #11
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %23, align 1, !tbaa !2446
  %146 = xor i32 %137, %132
  %147 = xor i32 %146, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %28, align 1, !tbaa !2450
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %31, align 1, !tbaa !2447
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %34, align 1, !tbaa !2448
  %155 = lshr i32 %132, 31
  %156 = lshr i32 %137, 31
  %157 = xor i32 %156, %155
  %158 = xor i32 %153, %155
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %40, align 1, !tbaa !2449
  %162 = icmp ne i8 %154, 0
  %163 = xor i1 %162, %160
  %.v = select i1 %163, i64 12, i64 579
  %164 = add i64 %127, %.v
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  br i1 %163, label %block_400c6d, label %block_400ea4

block_400d5b:                                     ; preds = %block_400cf9
  %165 = add i64 %196, -44
  %166 = add i64 %232, 3
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, 1
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = icmp eq i32 %168, -1
  %172 = icmp eq i32 %169, 0
  %173 = or i1 %171, %172
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %16, align 1, !tbaa !2432
  %175 = and i32 %169, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #11
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %23, align 1, !tbaa !2446
  %180 = xor i32 %168, %169
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %28, align 1, !tbaa !2450
  %184 = zext i1 %172 to i8
  store i8 %184, i8* %31, align 1, !tbaa !2447
  %185 = lshr i32 %169, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %34, align 1, !tbaa !2448
  %187 = lshr i32 %168, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %185
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %40, align 1, !tbaa !2449
  %192 = add i64 %196, -40
  %193 = add i64 %232, 9
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 %169, i32* %194, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400d64

block_400cf9:                                     ; preds = %block_400d05, %block_400cd0
  %195 = phi i64 [ %1204, %block_400d05 ], [ %.pre3, %block_400cd0 ]
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -36
  %198 = add i64 %195, 3
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = add i64 %196, -4
  %203 = add i64 %195, 6
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = sub i32 %200, %205
  %207 = icmp ult i32 %200, %205
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %16, align 1, !tbaa !2432
  %209 = and i32 %206, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #11
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %23, align 1, !tbaa !2446
  %214 = xor i32 %205, %200
  %215 = xor i32 %214, %206
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %28, align 1, !tbaa !2450
  %219 = icmp eq i32 %206, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %31, align 1, !tbaa !2447
  %221 = lshr i32 %206, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %34, align 1, !tbaa !2448
  %223 = lshr i32 %200, 31
  %224 = lshr i32 %205, 31
  %225 = xor i32 %224, %223
  %226 = xor i32 %221, %223
  %227 = add nuw nsw i32 %226, %225
  %228 = icmp eq i32 %227, 2
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %40, align 1, !tbaa !2449
  %230 = icmp ne i8 %222, 0
  %231 = xor i1 %230, %228
  %.v11 = select i1 %231, i64 12, i64 98
  %232 = add i64 %195, %.v11
  store i64 %232, i64* %PC, align 8, !tbaa !2428
  br i1 %231, label %block_400d05, label %block_400d5b

block_400cd0:                                     ; preds = %block_400c7c
  %233 = add i64 %299, -56
  %234 = add i64 %335, 5
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %119, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %237 = add i64 %335, -1744
  %238 = add i64 %335, 10
  %239 = load i64, i64* %RSP, align 8, !tbaa !2428
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %238, i64* %241, align 8
  store i64 %240, i64* %RSP, align 8, !tbaa !2428
  store i64 %237, i64* %PC, align 8, !alias.scope !2457, !noalias !2460
  %242 = load double, double* %82, align 8, !alias.scope !2457, !noalias !2460
  %243 = load i64, i64* %241, align 8
  store i64 %239, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %244 = tail call double @sqrt(double %242)
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  %247 = bitcast i64* %75 to i8*
  call void @llvm.memset.p0i8.i64(i8* %247, i8 0, i64 24, i32 8, i1 false)
  store double %244, double* %82, align 8, !alias.scope !2457, !noalias !2460
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -24
  %250 = add i64 %243, 4
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = add i64 %248, -44
  %254 = add i64 %243, 8
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = shl nsw i64 %257, 12
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = lshr i64 %257, 51
  %260 = and i64 %259, 1
  %261 = add i64 %258, %252
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = icmp ult i64 %261, %252
  %263 = icmp ult i64 %261, %258
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %16, align 1, !tbaa !2432
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #11
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %23, align 1, !tbaa !2446
  %272 = xor i64 %252, %261
  %273 = lshr i64 %272, 4
  %274 = trunc i64 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %28, align 1, !tbaa !2450
  %276 = icmp eq i64 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %31, align 1, !tbaa !2447
  %278 = lshr i64 %261, 63
  %279 = trunc i64 %278 to i8
  store i8 %279, i8* %34, align 1, !tbaa !2448
  %280 = lshr i64 %252, 63
  %281 = xor i64 %278, %280
  %282 = xor i64 %278, %260
  %283 = add nuw nsw i64 %281, %282
  %284 = icmp eq i64 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %40, align 1, !tbaa !2449
  %286 = add i64 %243, 19
  store i64 %286, i64* %PC, align 8
  %287 = load i32, i32* %255, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %RCX, align 8, !tbaa !2428
  %289 = shl nsw i64 %288, 3
  %290 = add i64 %289, %261
  %291 = add i64 %243, 24
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to double*
  store double %244, double* %292, align 8
  %293 = load i64, i64* %RBP, align 8
  %294 = add i64 %293, -36
  %295 = load i64, i64* %PC, align 8
  %296 = add i64 %295, 7
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %294 to i32*
  store i32 0, i32* %297, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400cf9

block_400c7c:                                     ; preds = %block_400c88, %block_400c6d
  %298 = phi i64 [ %1036, %block_400c88 ], [ %.pre2, %block_400c6d ]
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -36
  %301 = add i64 %298, 3
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RAX, align 8, !tbaa !2428
  %305 = add i64 %299, -4
  %306 = add i64 %298, 6
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sub i32 %303, %308
  %310 = icmp ult i32 %303, %308
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %16, align 1, !tbaa !2432
  %312 = and i32 %309, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312) #11
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %23, align 1, !tbaa !2446
  %317 = xor i32 %308, %303
  %318 = xor i32 %317, %309
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %28, align 1, !tbaa !2450
  %322 = icmp eq i32 %309, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %31, align 1, !tbaa !2447
  %324 = lshr i32 %309, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %34, align 1, !tbaa !2448
  %326 = lshr i32 %303, 31
  %327 = lshr i32 %308, 31
  %328 = xor i32 %327, %326
  %329 = xor i32 %324, %326
  %330 = add nuw nsw i32 %329, %328
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %40, align 1, !tbaa !2449
  %333 = icmp ne i8 %325, 0
  %334 = xor i1 %333, %331
  %.v7 = select i1 %334, i64 12, i64 84
  %335 = add i64 %298, %.v7
  store i64 %335, i64* %PC, align 8, !tbaa !2428
  br i1 %334, label %block_400c88, label %block_400cd0

block_400ea4:                                     ; preds = %block_400c61
  %336 = load i64, i64* %RSP, align 8
  %337 = add i64 %336, 64
  store i64 %337, i64* %RSP, align 8, !tbaa !2428
  %338 = icmp ugt i64 %336, -65
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %16, align 1, !tbaa !2432
  %340 = trunc i64 %337 to i32
  %341 = and i32 %340, 255
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341) #11
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %23, align 1, !tbaa !2446
  %346 = xor i64 %336, %337
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %28, align 1, !tbaa !2450
  %350 = icmp eq i64 %337, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %31, align 1, !tbaa !2447
  %352 = lshr i64 %337, 63
  %353 = trunc i64 %352 to i8
  store i8 %353, i8* %34, align 1, !tbaa !2448
  %354 = lshr i64 %336, 63
  %355 = xor i64 %352, %354
  %356 = add nuw nsw i64 %355, %352
  %357 = icmp eq i64 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %40, align 1, !tbaa !2449
  %359 = add i64 %164, 5
  store i64 %359, i64* %PC, align 8
  %360 = add i64 %336, 72
  %361 = inttoptr i64 %337 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %RBP, align 8, !tbaa !2428
  store i64 %360, i64* %RSP, align 8, !tbaa !2428
  %363 = add i64 %164, 6
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %360 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %PC, align 8, !tbaa !2428
  %366 = add i64 %336, 80
  store i64 %366, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400d70:                                     ; preds = %block_400d64
  store i32 0, i32* %76, align 1, !tbaa !2456
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %79, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  %367 = add i64 %589, -24
  %368 = add i64 %625, 7
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = add i64 %589, -44
  %372 = add i64 %625, 11
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = shl nsw i64 %375, 12
  store i64 %376, i64* %RCX, align 8, !tbaa !2428
  %377 = lshr i64 %375, 51
  %378 = and i64 %377, 1
  %379 = add i64 %376, %370
  store i64 %379, i64* %RAX, align 8, !tbaa !2428
  %380 = icmp ult i64 %379, %370
  %381 = icmp ult i64 %379, %376
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %16, align 1, !tbaa !2432
  %384 = trunc i64 %379 to i32
  %385 = and i32 %384, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #11
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %23, align 1, !tbaa !2446
  %390 = xor i64 %370, %379
  %391 = lshr i64 %390, 4
  %392 = trunc i64 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %28, align 1, !tbaa !2450
  %394 = icmp eq i64 %379, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %31, align 1, !tbaa !2447
  %396 = lshr i64 %379, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %34, align 1, !tbaa !2448
  %398 = lshr i64 %370, 63
  %399 = xor i64 %396, %398
  %400 = xor i64 %396, %378
  %401 = add nuw nsw i64 %399, %400
  %402 = icmp eq i64 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %40, align 1, !tbaa !2449
  %404 = add i64 %625, 22
  store i64 %404, i64* %PC, align 8
  %405 = load i32, i32* %592, align 4
  %406 = sext i32 %405 to i64
  store i64 %406, i64* %RCX, align 8, !tbaa !2428
  %407 = shl nsw i64 %406, 3
  %408 = add i64 %407, %379
  %409 = add i64 %625, 27
  store i64 %409, i64* %PC, align 8
  %410 = load i64, i64* %119, align 1
  %411 = inttoptr i64 %408 to i64*
  store i64 %410, i64* %411, align 8
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -36
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, 7
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %413 to i32*
  store i32 0, i32* %416, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400d92

block_400d9e:                                     ; preds = %block_400d92
  %417 = add i64 %627, -32
  %418 = add i64 %663, 4
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RAX, align 8, !tbaa !2428
  %421 = add i64 %663, 8
  store i64 %421, i64* %PC, align 8
  %422 = load i32, i32* %630, align 4
  %423 = sext i32 %422 to i64
  %424 = shl nsw i64 %423, 12
  store i64 %424, i64* %RCX, align 8, !tbaa !2428
  %425 = lshr i64 %423, 51
  %426 = and i64 %425, 1
  %427 = add i64 %424, %420
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = icmp ult i64 %427, %420
  %429 = icmp ult i64 %427, %424
  %430 = or i1 %428, %429
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %16, align 1, !tbaa !2432
  %432 = trunc i64 %427 to i32
  %433 = and i32 %432, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #11
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %23, align 1, !tbaa !2446
  %438 = xor i64 %420, %427
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %28, align 1, !tbaa !2450
  %442 = icmp eq i64 %427, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %31, align 1, !tbaa !2447
  %444 = lshr i64 %427, 63
  %445 = trunc i64 %444 to i8
  store i8 %445, i8* %34, align 1, !tbaa !2448
  %446 = lshr i64 %420, 63
  %447 = xor i64 %444, %446
  %448 = xor i64 %444, %426
  %449 = add nuw nsw i64 %447, %448
  %450 = icmp eq i64 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %40, align 1, !tbaa !2449
  %452 = add i64 %627, -44
  %453 = add i64 %663, 19
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  store i64 %456, i64* %RCX, align 8, !tbaa !2428
  %457 = shl nsw i64 %456, 3
  %458 = add i64 %457, %427
  %459 = add i64 %663, 24
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to double*
  %461 = load double, double* %460, align 8
  store double %461, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %462 = add i64 %627, -16
  %463 = add i64 %663, 28
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = add i64 %663, 32
  store i64 %466, i64* %PC, align 8
  %467 = load i32, i32* %630, align 4
  %468 = sext i32 %467 to i64
  %469 = shl nsw i64 %468, 12
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = lshr i64 %468, 51
  %471 = and i64 %470, 1
  %472 = add i64 %469, %465
  store i64 %472, i64* %RAX, align 8, !tbaa !2428
  %473 = icmp ult i64 %472, %465
  %474 = icmp ult i64 %472, %469
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %16, align 1, !tbaa !2432
  %477 = trunc i64 %472 to i32
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478) #11
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %23, align 1, !tbaa !2446
  %483 = xor i64 %465, %472
  %484 = lshr i64 %483, 4
  %485 = trunc i64 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %28, align 1, !tbaa !2450
  %487 = icmp eq i64 %472, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %31, align 1, !tbaa !2447
  %489 = lshr i64 %472, 63
  %490 = trunc i64 %489 to i8
  store i8 %490, i8* %34, align 1, !tbaa !2448
  %491 = lshr i64 %465, 63
  %492 = xor i64 %489, %491
  %493 = xor i64 %489, %471
  %494 = add nuw nsw i64 %492, %493
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %40, align 1, !tbaa !2449
  %497 = load i64, i64* %RBP, align 8
  %498 = add i64 %497, -40
  %499 = add i64 %663, 43
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RCX, align 8, !tbaa !2428
  %503 = shl nsw i64 %502, 3
  %504 = add i64 %503, %472
  %505 = add i64 %663, 48
  store i64 %505, i64* %PC, align 8
  %506 = inttoptr i64 %504 to double*
  %507 = load double, double* %506, align 8
  %508 = fmul double %461, %507
  store double %508, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %509 = add i64 %497, -24
  %510 = add i64 %663, 52
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = add i64 %497, -44
  %514 = add i64 %663, 56
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sext i32 %516 to i64
  %518 = shl nsw i64 %517, 12
  store i64 %518, i64* %RCX, align 8, !tbaa !2428
  %519 = lshr i64 %517, 51
  %520 = and i64 %519, 1
  %521 = add i64 %518, %512
  store i64 %521, i64* %RAX, align 8, !tbaa !2428
  %522 = icmp ult i64 %521, %512
  %523 = icmp ult i64 %521, %518
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %16, align 1, !tbaa !2432
  %526 = trunc i64 %521 to i32
  %527 = and i32 %526, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527) #11
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %23, align 1, !tbaa !2446
  %532 = xor i64 %512, %521
  %533 = lshr i64 %532, 4
  %534 = trunc i64 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %28, align 1, !tbaa !2450
  %536 = icmp eq i64 %521, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %31, align 1, !tbaa !2447
  %538 = lshr i64 %521, 63
  %539 = trunc i64 %538 to i8
  store i8 %539, i8* %34, align 1, !tbaa !2448
  %540 = lshr i64 %512, 63
  %541 = xor i64 %538, %540
  %542 = xor i64 %538, %520
  %543 = add nuw nsw i64 %541, %542
  %544 = icmp eq i64 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %40, align 1, !tbaa !2449
  %546 = add i64 %663, 67
  store i64 %546, i64* %PC, align 8
  %547 = load i32, i32* %500, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  %549 = shl nsw i64 %548, 3
  %550 = add i64 %549, %521
  %551 = add i64 %663, 72
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %550 to double*
  %553 = load double, double* %552, align 8
  %554 = fadd double %508, %553
  store double %554, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %555 = add i64 %663, 77
  store i64 %555, i64* %PC, align 8
  store double %554, double* %552, align 8
  %556 = load i64, i64* %RBP, align 8
  %557 = add i64 %556, -36
  %558 = load i64, i64* %PC, align 8
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC, align 8
  %560 = inttoptr i64 %557 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, 1
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RAX, align 8, !tbaa !2428
  %564 = icmp eq i32 %561, -1
  %565 = icmp eq i32 %562, 0
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %16, align 1, !tbaa !2432
  %568 = and i32 %562, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568) #11
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %23, align 1, !tbaa !2446
  %573 = xor i32 %561, %562
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %28, align 1, !tbaa !2450
  %577 = zext i1 %565 to i8
  store i8 %577, i8* %31, align 1, !tbaa !2447
  %578 = lshr i32 %562, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %34, align 1, !tbaa !2448
  %580 = lshr i32 %561, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %578
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %40, align 1, !tbaa !2449
  %585 = add i64 %558, 9
  store i64 %585, i64* %PC, align 8
  store i32 %562, i32* %560, align 4
  %586 = load i64, i64* %PC, align 8
  %587 = add i64 %586, -98
  store i64 %587, i64* %PC, align 8, !tbaa !2428
  br label %block_400d92

block_400d64:                                     ; preds = %block_400d5b, %block_400e7e
  %588 = phi i64 [ %.pre4, %block_400d5b ], [ %116, %block_400e7e ]
  %589 = load i64, i64* %RBP, align 8
  %590 = add i64 %589, -40
  %591 = add i64 %588, 3
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX, align 8, !tbaa !2428
  %595 = add i64 %589, -8
  %596 = add i64 %588, 6
  store i64 %596, i64* %PC, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = sub i32 %593, %598
  %600 = icmp ult i32 %593, %598
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %16, align 1, !tbaa !2432
  %602 = and i32 %599, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602) #11
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %23, align 1, !tbaa !2446
  %607 = xor i32 %598, %593
  %608 = xor i32 %607, %599
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %28, align 1, !tbaa !2450
  %612 = icmp eq i32 %599, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %31, align 1, !tbaa !2447
  %614 = lshr i32 %599, 31
  %615 = trunc i32 %614 to i8
  store i8 %615, i8* %34, align 1, !tbaa !2448
  %616 = lshr i32 %593, 31
  %617 = lshr i32 %598, 31
  %618 = xor i32 %617, %616
  %619 = xor i32 %614, %616
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %40, align 1, !tbaa !2449
  %623 = icmp ne i8 %615, 0
  %624 = xor i1 %623, %621
  %.v12 = select i1 %624, i64 12, i64 301
  %625 = add i64 %588, %.v12
  store i64 %625, i64* %PC, align 8, !tbaa !2428
  br i1 %624, label %block_400d70, label %block_400e91

block_400d92:                                     ; preds = %block_400d9e, %block_400d70
  %626 = phi i64 [ %587, %block_400d9e ], [ %.pre5, %block_400d70 ]
  %627 = load i64, i64* %RBP, align 8
  %628 = add i64 %627, -36
  %629 = add i64 %626, 3
  store i64 %629, i64* %PC, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX, align 8, !tbaa !2428
  %633 = add i64 %627, -4
  %634 = add i64 %626, 6
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = sub i32 %631, %636
  %638 = icmp ult i32 %631, %636
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %16, align 1, !tbaa !2432
  %640 = and i32 %637, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640) #11
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %23, align 1, !tbaa !2446
  %645 = xor i32 %636, %631
  %646 = xor i32 %645, %637
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %28, align 1, !tbaa !2450
  %650 = icmp eq i32 %637, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %31, align 1, !tbaa !2447
  %652 = lshr i32 %637, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %34, align 1, !tbaa !2448
  %654 = lshr i32 %631, 31
  %655 = lshr i32 %636, 31
  %656 = xor i32 %655, %654
  %657 = xor i32 %652, %654
  %658 = add nuw nsw i32 %657, %656
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %40, align 1, !tbaa !2449
  %661 = icmp ne i8 %653, 0
  %662 = xor i1 %661, %659
  %.v13 = select i1 %662, i64 12, i64 103
  %663 = add i64 %626, %.v13
  store i64 %663, i64* %PC, align 8, !tbaa !2428
  br i1 %662, label %block_400d9e, label %block_400df9

block_400e91:                                     ; preds = %block_400d64
  %664 = add i64 %589, -44
  %665 = add i64 %625, 8
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
  store i8 %673, i8* %16, align 1, !tbaa !2432
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674) #11
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %23, align 1, !tbaa !2446
  %679 = xor i32 %667, %668
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %28, align 1, !tbaa !2450
  %683 = zext i1 %671 to i8
  store i8 %683, i8* %31, align 1, !tbaa !2447
  %684 = lshr i32 %668, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %34, align 1, !tbaa !2448
  %686 = lshr i32 %667, 31
  %687 = xor i32 %684, %686
  %688 = add nuw nsw i32 %687, %684
  %689 = icmp eq i32 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %40, align 1, !tbaa !2449
  %691 = add i64 %625, 14
  store i64 %691, i64* %PC, align 8
  store i32 %668, i32* %666, align 4
  %692 = load i64, i64* %PC, align 8
  %693 = add i64 %692, -574
  store i64 %693, i64* %PC, align 8, !tbaa !2428
  br label %block_400c61

block_400e0c:                                     ; preds = %block_400e00
  %694 = add i64 %1207, -16
  %695 = add i64 %1243, 4
  store i64 %695, i64* %PC, align 8
  %696 = inttoptr i64 %694 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RAX, align 8, !tbaa !2428
  %698 = add i64 %1243, 8
  store i64 %698, i64* %PC, align 8
  %699 = load i32, i32* %1210, align 4
  %700 = sext i32 %699 to i64
  %701 = shl nsw i64 %700, 12
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = lshr i64 %700, 51
  %703 = and i64 %702, 1
  %704 = add i64 %701, %697
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = icmp ult i64 %704, %697
  %706 = icmp ult i64 %704, %701
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %16, align 1, !tbaa !2432
  %709 = trunc i64 %704 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710) #11
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %23, align 1, !tbaa !2446
  %715 = xor i64 %697, %704
  %716 = lshr i64 %715, 4
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %28, align 1, !tbaa !2450
  %719 = icmp eq i64 %704, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %31, align 1, !tbaa !2447
  %721 = lshr i64 %704, 63
  %722 = trunc i64 %721 to i8
  store i8 %722, i8* %34, align 1, !tbaa !2448
  %723 = lshr i64 %697, 63
  %724 = xor i64 %721, %723
  %725 = xor i64 %721, %703
  %726 = add nuw nsw i64 %724, %725
  %727 = icmp eq i64 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %40, align 1, !tbaa !2449
  %729 = add i64 %1207, -40
  %730 = add i64 %1243, 19
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RCX, align 8, !tbaa !2428
  %734 = shl nsw i64 %733, 3
  %735 = add i64 %734, %704
  %736 = add i64 %1243, 24
  store i64 %736, i64* %PC, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %119, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %739 = add i64 %1207, -32
  %740 = add i64 %1243, 28
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %739 to i64*
  %742 = load i64, i64* %741, align 8
  store i64 %742, i64* %RAX, align 8, !tbaa !2428
  %743 = add i64 %1243, 32
  store i64 %743, i64* %PC, align 8
  %744 = load i32, i32* %1210, align 4
  %745 = sext i32 %744 to i64
  %746 = shl nsw i64 %745, 12
  store i64 %746, i64* %RCX, align 8, !tbaa !2428
  %747 = lshr i64 %745, 51
  %748 = and i64 %747, 1
  %749 = add i64 %746, %742
  store i64 %749, i64* %RAX, align 8, !tbaa !2428
  %750 = icmp ult i64 %749, %742
  %751 = icmp ult i64 %749, %746
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %16, align 1, !tbaa !2432
  %754 = trunc i64 %749 to i32
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755) #11
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %23, align 1, !tbaa !2446
  %760 = xor i64 %742, %749
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %28, align 1, !tbaa !2450
  %764 = icmp eq i64 %749, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %31, align 1, !tbaa !2447
  %766 = lshr i64 %749, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %34, align 1, !tbaa !2448
  %768 = lshr i64 %742, 63
  %769 = xor i64 %766, %768
  %770 = xor i64 %766, %748
  %771 = add nuw nsw i64 %769, %770
  %772 = icmp eq i64 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %40, align 1, !tbaa !2449
  %774 = load i64, i64* %RBP, align 8
  %775 = add i64 %774, -44
  %776 = add i64 %1243, 43
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX, align 8, !tbaa !2428
  %780 = shl nsw i64 %779, 3
  %781 = add i64 %780, %749
  %782 = add i64 %1243, 48
  store i64 %782, i64* %PC, align 8
  %783 = inttoptr i64 %781 to double*
  %784 = load double, double* %783, align 8
  store double %784, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %86, align 1, !tbaa !2451
  %785 = add i64 %774, -24
  %786 = add i64 %1243, 52
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX, align 8, !tbaa !2428
  %789 = add i64 %1243, 56
  store i64 %789, i64* %PC, align 8
  %790 = load i32, i32* %777, align 4
  %791 = sext i32 %790 to i64
  %792 = shl nsw i64 %791, 12
  store i64 %792, i64* %RCX, align 8, !tbaa !2428
  %793 = lshr i64 %791, 51
  %794 = and i64 %793, 1
  %795 = add i64 %792, %788
  store i64 %795, i64* %RAX, align 8, !tbaa !2428
  %796 = icmp ult i64 %795, %788
  %797 = icmp ult i64 %795, %792
  %798 = or i1 %796, %797
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %16, align 1, !tbaa !2432
  %800 = trunc i64 %795 to i32
  %801 = and i32 %800, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801) #11
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %23, align 1, !tbaa !2446
  %806 = xor i64 %788, %795
  %807 = lshr i64 %806, 4
  %808 = trunc i64 %807 to i8
  %809 = and i8 %808, 1
  store i8 %809, i8* %28, align 1, !tbaa !2450
  %810 = icmp eq i64 %795, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %31, align 1, !tbaa !2447
  %812 = lshr i64 %795, 63
  %813 = trunc i64 %812 to i8
  store i8 %813, i8* %34, align 1, !tbaa !2448
  %814 = lshr i64 %788, 63
  %815 = xor i64 %812, %814
  %816 = xor i64 %812, %794
  %817 = add nuw nsw i64 %815, %816
  %818 = icmp eq i64 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %40, align 1, !tbaa !2449
  %820 = add i64 %774, -40
  %821 = add i64 %1243, 67
  store i64 %821, i64* %PC, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = sext i32 %823 to i64
  store i64 %824, i64* %RCX, align 8, !tbaa !2428
  %825 = shl nsw i64 %824, 3
  %826 = add i64 %825, %795
  %827 = add i64 %1243, 72
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %826 to double*
  %829 = load double, double* %828, align 8
  %830 = fmul double %784, %829
  store double %830, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %85, align 1, !tbaa !2451
  %831 = load double, double* %82, align 1
  %832 = fsub double %831, %830
  store double %832, double* %82, align 1, !tbaa !2451
  %833 = add i64 %774, -16
  %834 = add i64 %1243, 80
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i64*
  %836 = load i64, i64* %835, align 8
  store i64 %836, i64* %RAX, align 8, !tbaa !2428
  %837 = add i64 %774, -36
  %838 = add i64 %1243, 84
  store i64 %838, i64* %PC, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = sext i32 %840 to i64
  %842 = shl nsw i64 %841, 12
  store i64 %842, i64* %RCX, align 8, !tbaa !2428
  %843 = lshr i64 %841, 51
  %844 = and i64 %843, 1
  %845 = add i64 %842, %836
  store i64 %845, i64* %RAX, align 8, !tbaa !2428
  %846 = icmp ult i64 %845, %836
  %847 = icmp ult i64 %845, %842
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %16, align 1, !tbaa !2432
  %850 = trunc i64 %845 to i32
  %851 = and i32 %850, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851) #11
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %23, align 1, !tbaa !2446
  %856 = xor i64 %836, %845
  %857 = lshr i64 %856, 4
  %858 = trunc i64 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %28, align 1, !tbaa !2450
  %860 = icmp eq i64 %845, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %31, align 1, !tbaa !2447
  %862 = lshr i64 %845, 63
  %863 = trunc i64 %862 to i8
  store i8 %863, i8* %34, align 1, !tbaa !2448
  %864 = lshr i64 %836, 63
  %865 = xor i64 %862, %864
  %866 = xor i64 %862, %844
  %867 = add nuw nsw i64 %865, %866
  %868 = icmp eq i64 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %40, align 1, !tbaa !2449
  %870 = add i64 %1243, 95
  store i64 %870, i64* %PC, align 8
  %871 = load i32, i32* %822, align 4
  %872 = sext i32 %871 to i64
  store i64 %872, i64* %RCX, align 8, !tbaa !2428
  %873 = shl nsw i64 %872, 3
  %874 = add i64 %873, %845
  %875 = add i64 %1243, 100
  store i64 %875, i64* %PC, align 8
  %876 = inttoptr i64 %874 to double*
  store double %832, double* %876, align 8
  %877 = load i64, i64* %RBP, align 8
  %878 = add i64 %877, -36
  %879 = load i64, i64* %PC, align 8
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC, align 8
  %881 = inttoptr i64 %878 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = add i32 %882, 1
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = icmp eq i32 %882, -1
  %886 = icmp eq i32 %883, 0
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %16, align 1, !tbaa !2432
  %889 = and i32 %883, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889) #11
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %23, align 1, !tbaa !2446
  %894 = xor i32 %882, %883
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %28, align 1, !tbaa !2450
  %898 = zext i1 %886 to i8
  store i8 %898, i8* %31, align 1, !tbaa !2447
  %899 = lshr i32 %883, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %34, align 1, !tbaa !2448
  %901 = lshr i32 %882, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %899
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %40, align 1, !tbaa !2449
  %906 = add i64 %879, 9
  store i64 %906, i64* %PC, align 8
  store i32 %883, i32* %881, align 4
  %907 = load i64, i64* %PC, align 8
  %908 = add i64 %907, -121
  store i64 %908, i64* %PC, align 8, !tbaa !2428
  br label %block_400e00

block_400c88:                                     ; preds = %block_400c7c
  %909 = add i64 %299, -16
  %910 = add i64 %335, 4
  store i64 %910, i64* %PC, align 8
  %911 = inttoptr i64 %909 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RAX, align 8, !tbaa !2428
  %913 = add i64 %335, 8
  store i64 %913, i64* %PC, align 8
  %914 = load i32, i32* %302, align 4
  %915 = sext i32 %914 to i64
  %916 = shl nsw i64 %915, 12
  store i64 %916, i64* %RCX, align 8, !tbaa !2428
  %917 = lshr i64 %915, 51
  %918 = and i64 %917, 1
  %919 = add i64 %916, %912
  store i64 %919, i64* %RAX, align 8, !tbaa !2428
  %920 = icmp ult i64 %919, %912
  %921 = icmp ult i64 %919, %916
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %16, align 1, !tbaa !2432
  %924 = trunc i64 %919 to i32
  %925 = and i32 %924, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925) #11
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %23, align 1, !tbaa !2446
  %930 = xor i64 %912, %919
  %931 = lshr i64 %930, 4
  %932 = trunc i64 %931 to i8
  %933 = and i8 %932, 1
  store i8 %933, i8* %28, align 1, !tbaa !2450
  %934 = icmp eq i64 %919, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %31, align 1, !tbaa !2447
  %936 = lshr i64 %919, 63
  %937 = trunc i64 %936 to i8
  store i8 %937, i8* %34, align 1, !tbaa !2448
  %938 = lshr i64 %912, 63
  %939 = xor i64 %936, %938
  %940 = xor i64 %936, %918
  %941 = add nuw nsw i64 %939, %940
  %942 = icmp eq i64 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %40, align 1, !tbaa !2449
  %944 = add i64 %299, -44
  %945 = add i64 %335, 19
  store i64 %945, i64* %PC, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = shl nsw i64 %948, 3
  %950 = add i64 %949, %919
  %951 = add i64 %335, 24
  store i64 %951, i64* %PC, align 8
  %952 = inttoptr i64 %950 to double*
  %953 = load double, double* %952, align 8
  store double %953, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %954 = add i64 %335, 28
  store i64 %954, i64* %PC, align 8
  %955 = load i64, i64* %911, align 8
  store i64 %955, i64* %RAX, align 8, !tbaa !2428
  %956 = add i64 %335, 32
  store i64 %956, i64* %PC, align 8
  %957 = load i32, i32* %302, align 4
  %958 = sext i32 %957 to i64
  %959 = shl nsw i64 %958, 12
  store i64 %959, i64* %RCX, align 8, !tbaa !2428
  %960 = lshr i64 %958, 51
  %961 = and i64 %960, 1
  %962 = add i64 %959, %955
  store i64 %962, i64* %RAX, align 8, !tbaa !2428
  %963 = icmp ult i64 %962, %955
  %964 = icmp ult i64 %962, %959
  %965 = or i1 %963, %964
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %16, align 1, !tbaa !2432
  %967 = trunc i64 %962 to i32
  %968 = and i32 %967, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968) #11
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %23, align 1, !tbaa !2446
  %973 = xor i64 %955, %962
  %974 = lshr i64 %973, 4
  %975 = trunc i64 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %28, align 1, !tbaa !2450
  %977 = icmp eq i64 %962, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %31, align 1, !tbaa !2447
  %979 = lshr i64 %962, 63
  %980 = trunc i64 %979 to i8
  store i8 %980, i8* %34, align 1, !tbaa !2448
  %981 = lshr i64 %955, 63
  %982 = xor i64 %979, %981
  %983 = xor i64 %979, %961
  %984 = add nuw nsw i64 %982, %983
  %985 = icmp eq i64 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %40, align 1, !tbaa !2449
  %987 = load i64, i64* %RBP, align 8
  %988 = add i64 %987, -44
  %989 = add i64 %335, 43
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = sext i32 %991 to i64
  store i64 %992, i64* %RCX, align 8, !tbaa !2428
  %993 = shl nsw i64 %992, 3
  %994 = add i64 %993, %962
  %995 = add i64 %335, 48
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %994 to double*
  %997 = load double, double* %996, align 8
  %998 = fmul double %953, %997
  store double %998, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %999 = add i64 %987, -56
  %1000 = add i64 %335, 53
  store i64 %1000, i64* %PC, align 8
  %1001 = inttoptr i64 %999 to double*
  %1002 = load double, double* %1001, align 8
  %1003 = fadd double %998, %1002
  store double %1003, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %1004 = add i64 %335, 58
  store i64 %1004, i64* %PC, align 8
  store double %1003, double* %1001, align 8
  %1005 = load i64, i64* %RBP, align 8
  %1006 = add i64 %1005, -36
  %1007 = load i64, i64* %PC, align 8
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC, align 8
  %1009 = inttoptr i64 %1006 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = add i32 %1010, 1
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX, align 8, !tbaa !2428
  %1013 = icmp eq i32 %1010, -1
  %1014 = icmp eq i32 %1011, 0
  %1015 = or i1 %1013, %1014
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %16, align 1, !tbaa !2432
  %1017 = and i32 %1011, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017) #11
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %23, align 1, !tbaa !2446
  %1022 = xor i32 %1010, %1011
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %28, align 1, !tbaa !2450
  %1026 = zext i1 %1014 to i8
  store i8 %1026, i8* %31, align 1, !tbaa !2447
  %1027 = lshr i32 %1011, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %34, align 1, !tbaa !2448
  %1029 = lshr i32 %1010, 31
  %1030 = xor i32 %1027, %1029
  %1031 = add nuw nsw i32 %1030, %1027
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %40, align 1, !tbaa !2449
  %1034 = add i64 %1007, 9
  store i64 %1034, i64* %PC, align 8
  store i32 %1011, i32* %1009, align 4
  %1035 = load i64, i64* %PC, align 8
  %1036 = add i64 %1035, -79
  store i64 %1036, i64* %PC, align 8, !tbaa !2428
  br label %block_400c7c

block_400d05:                                     ; preds = %block_400cf9
  %1037 = add i64 %196, -16
  %1038 = add i64 %232, 4
  store i64 %1038, i64* %PC, align 8
  %1039 = inttoptr i64 %1037 to i64*
  %1040 = load i64, i64* %1039, align 8
  store i64 %1040, i64* %RAX, align 8, !tbaa !2428
  %1041 = add i64 %232, 8
  store i64 %1041, i64* %PC, align 8
  %1042 = load i32, i32* %199, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = shl nsw i64 %1043, 12
  store i64 %1044, i64* %RCX, align 8, !tbaa !2428
  %1045 = lshr i64 %1043, 51
  %1046 = and i64 %1045, 1
  %1047 = add i64 %1044, %1040
  store i64 %1047, i64* %RAX, align 8, !tbaa !2428
  %1048 = icmp ult i64 %1047, %1040
  %1049 = icmp ult i64 %1047, %1044
  %1050 = or i1 %1048, %1049
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %16, align 1, !tbaa !2432
  %1052 = trunc i64 %1047 to i32
  %1053 = and i32 %1052, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053) #11
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %23, align 1, !tbaa !2446
  %1058 = xor i64 %1040, %1047
  %1059 = lshr i64 %1058, 4
  %1060 = trunc i64 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %28, align 1, !tbaa !2450
  %1062 = icmp eq i64 %1047, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %31, align 1, !tbaa !2447
  %1064 = lshr i64 %1047, 63
  %1065 = trunc i64 %1064 to i8
  store i8 %1065, i8* %34, align 1, !tbaa !2448
  %1066 = lshr i64 %1040, 63
  %1067 = xor i64 %1064, %1066
  %1068 = xor i64 %1064, %1046
  %1069 = add nuw nsw i64 %1067, %1068
  %1070 = icmp eq i64 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %40, align 1, !tbaa !2449
  %1072 = add i64 %196, -44
  %1073 = add i64 %232, 19
  store i64 %1073, i64* %PC, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = sext i32 %1075 to i64
  store i64 %1076, i64* %RCX, align 8, !tbaa !2428
  %1077 = shl nsw i64 %1076, 3
  %1078 = add i64 %1077, %1047
  %1079 = add i64 %232, 24
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1078 to double*
  %1081 = load double, double* %1080, align 8
  store double %1081, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1082 = add i64 %196, -24
  %1083 = add i64 %232, 28
  store i64 %1083, i64* %PC, align 8
  %1084 = inttoptr i64 %1082 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RAX, align 8, !tbaa !2428
  %1086 = add i64 %232, 32
  store i64 %1086, i64* %PC, align 8
  %1087 = load i32, i32* %1074, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = shl nsw i64 %1088, 12
  store i64 %1089, i64* %RCX, align 8, !tbaa !2428
  %1090 = lshr i64 %1088, 51
  %1091 = and i64 %1090, 1
  %1092 = add i64 %1089, %1085
  store i64 %1092, i64* %RAX, align 8, !tbaa !2428
  %1093 = icmp ult i64 %1092, %1085
  %1094 = icmp ult i64 %1092, %1089
  %1095 = or i1 %1093, %1094
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %16, align 1, !tbaa !2432
  %1097 = trunc i64 %1092 to i32
  %1098 = and i32 %1097, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098) #11
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %23, align 1, !tbaa !2446
  %1103 = xor i64 %1085, %1092
  %1104 = lshr i64 %1103, 4
  %1105 = trunc i64 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %28, align 1, !tbaa !2450
  %1107 = icmp eq i64 %1092, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %31, align 1, !tbaa !2447
  %1109 = lshr i64 %1092, 63
  %1110 = trunc i64 %1109 to i8
  store i8 %1110, i8* %34, align 1, !tbaa !2448
  %1111 = lshr i64 %1085, 63
  %1112 = xor i64 %1109, %1111
  %1113 = xor i64 %1109, %1091
  %1114 = add nuw nsw i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %40, align 1, !tbaa !2449
  %1117 = load i64, i64* %RBP, align 8
  %1118 = add i64 %1117, -44
  %1119 = add i64 %232, 43
  store i64 %1119, i64* %PC, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sext i32 %1121 to i64
  store i64 %1122, i64* %RCX, align 8, !tbaa !2428
  %1123 = shl nsw i64 %1122, 3
  %1124 = add i64 %1123, %1092
  %1125 = add i64 %232, 48
  store i64 %1125, i64* %PC, align 8
  %1126 = inttoptr i64 %1124 to double*
  %1127 = load double, double* %1126, align 8
  %1128 = fdiv double %1081, %1127
  store double %1128, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %1129 = add i64 %1117, -32
  %1130 = add i64 %232, 52
  store i64 %1130, i64* %PC, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %RAX, align 8, !tbaa !2428
  %1133 = add i64 %1117, -36
  %1134 = add i64 %232, 56
  store i64 %1134, i64* %PC, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = shl nsw i64 %1137, 12
  store i64 %1138, i64* %RCX, align 8, !tbaa !2428
  %1139 = lshr i64 %1137, 51
  %1140 = and i64 %1139, 1
  %1141 = add i64 %1138, %1132
  store i64 %1141, i64* %RAX, align 8, !tbaa !2428
  %1142 = icmp ult i64 %1141, %1132
  %1143 = icmp ult i64 %1141, %1138
  %1144 = or i1 %1142, %1143
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %16, align 1, !tbaa !2432
  %1146 = trunc i64 %1141 to i32
  %1147 = and i32 %1146, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147) #11
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %23, align 1, !tbaa !2446
  %1152 = xor i64 %1132, %1141
  %1153 = lshr i64 %1152, 4
  %1154 = trunc i64 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %28, align 1, !tbaa !2450
  %1156 = icmp eq i64 %1141, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %31, align 1, !tbaa !2447
  %1158 = lshr i64 %1141, 63
  %1159 = trunc i64 %1158 to i8
  store i8 %1159, i8* %34, align 1, !tbaa !2448
  %1160 = lshr i64 %1132, 63
  %1161 = xor i64 %1158, %1160
  %1162 = xor i64 %1158, %1140
  %1163 = add nuw nsw i64 %1161, %1162
  %1164 = icmp eq i64 %1163, 2
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %40, align 1, !tbaa !2449
  %1166 = add i64 %232, 67
  store i64 %1166, i64* %PC, align 8
  %1167 = load i32, i32* %1120, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RCX, align 8, !tbaa !2428
  %1169 = shl nsw i64 %1168, 3
  %1170 = add i64 %1169, %1141
  %1171 = add i64 %232, 72
  store i64 %1171, i64* %PC, align 8
  %1172 = inttoptr i64 %1170 to double*
  store double %1128, double* %1172, align 8
  %1173 = load i64, i64* %RBP, align 8
  %1174 = add i64 %1173, -36
  %1175 = load i64, i64* %PC, align 8
  %1176 = add i64 %1175, 3
  store i64 %1176, i64* %PC, align 8
  %1177 = inttoptr i64 %1174 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = add i32 %1178, 1
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp eq i32 %1178, -1
  %1182 = icmp eq i32 %1179, 0
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %16, align 1, !tbaa !2432
  %1185 = and i32 %1179, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185) #11
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %23, align 1, !tbaa !2446
  %1190 = xor i32 %1178, %1179
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  store i8 %1193, i8* %28, align 1, !tbaa !2450
  %1194 = zext i1 %1182 to i8
  store i8 %1194, i8* %31, align 1, !tbaa !2447
  %1195 = lshr i32 %1179, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %34, align 1, !tbaa !2448
  %1197 = lshr i32 %1178, 31
  %1198 = xor i32 %1195, %1197
  %1199 = add nuw nsw i32 %1198, %1195
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %40, align 1, !tbaa !2449
  %1202 = add i64 %1175, 9
  store i64 %1202, i64* %PC, align 8
  store i32 %1179, i32* %1177, align 4
  %1203 = load i64, i64* %PC, align 8
  %1204 = add i64 %1203, -93
  store i64 %1204, i64* %PC, align 8, !tbaa !2428
  br label %block_400cf9

block_400df9:                                     ; preds = %block_400d92
  %1205 = add i64 %663, 7
  store i64 %1205, i64* %PC, align 8
  store i32 0, i32* %630, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400e00

block_400e00:                                     ; preds = %block_400df9, %block_400e0c
  %1206 = phi i64 [ %.pre6, %block_400df9 ], [ %908, %block_400e0c ]
  %1207 = load i64, i64* %RBP, align 8
  %1208 = add i64 %1207, -36
  %1209 = add i64 %1206, 3
  store i64 %1209, i64* %PC, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX, align 8, !tbaa !2428
  %1213 = add i64 %1207, -4
  %1214 = add i64 %1206, 6
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i32*
  %1216 = load i32, i32* %1215, align 4
  %1217 = sub i32 %1211, %1216
  %1218 = icmp ult i32 %1211, %1216
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %16, align 1, !tbaa !2432
  %1220 = and i32 %1217, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220) #11
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %23, align 1, !tbaa !2446
  %1225 = xor i32 %1216, %1211
  %1226 = xor i32 %1225, %1217
  %1227 = lshr i32 %1226, 4
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  store i8 %1229, i8* %28, align 1, !tbaa !2450
  %1230 = icmp eq i32 %1217, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %31, align 1, !tbaa !2447
  %1232 = lshr i32 %1217, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %34, align 1, !tbaa !2448
  %1234 = lshr i32 %1211, 31
  %1235 = lshr i32 %1216, 31
  %1236 = xor i32 %1235, %1234
  %1237 = xor i32 %1232, %1234
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %40, align 1, !tbaa !2449
  %1241 = icmp ne i8 %1233, 0
  %1242 = xor i1 %1241, %1239
  %.v14 = select i1 %1242, i64 12, i64 126
  %1243 = add i64 %1206, %.v14
  store i64 %1243, i64* %PC, align 8, !tbaa !2428
  br i1 %1242, label %block_400e0c, label %block_400e7e
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400700_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
  %53 = bitcast [32 x %union.VectorReg]* %5 to double*
  %54 = bitcast %union.VectorReg* %6 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400aed

block_400b9d:                                     ; preds = %block_400b00
  %55 = add i64 %586, 8
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %587 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = icmp eq i32 %57, -1
  %61 = icmp eq i32 %58, 0
  %62 = or i1 %60, %61
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %47, align 1, !tbaa !2432
  %64 = and i32 %58, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #11
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %48, align 1, !tbaa !2446
  %69 = xor i32 %57, %58
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %49, align 1, !tbaa !2450
  %73 = zext i1 %61 to i8
  store i8 %73, i8* %50, align 1, !tbaa !2447
  %74 = lshr i32 %58, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %51, align 1, !tbaa !2448
  %76 = lshr i32 %57, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %74
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %52, align 1, !tbaa !2449
  %81 = add i64 %586, 14
  store i64 %81, i64* %PC, align 8
  store i32 %58, i32* %56, align 4
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, -190
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br label %block_400aed

block_400bb7:                                     ; preds = %block_400c27, %block_400bb0
  %84 = phi i64 [ %536, %block_400c27 ], [ %.pre2, %block_400bb0 ]
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -36
  %87 = add i64 %84, 3
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = add i64 %85, -8
  %92 = add i64 %84, 6
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sub i32 %89, %94
  %96 = icmp ult i32 %89, %94
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %47, align 1, !tbaa !2432
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98) #11
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %48, align 1, !tbaa !2446
  %103 = xor i32 %94, %89
  %104 = xor i32 %103, %95
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %49, align 1, !tbaa !2450
  %108 = icmp eq i32 %95, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %50, align 1, !tbaa !2447
  %110 = lshr i32 %95, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %51, align 1, !tbaa !2448
  %112 = lshr i32 %89, 31
  %113 = lshr i32 %94, 31
  %114 = xor i32 %113, %112
  %115 = xor i32 %110, %112
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %52, align 1, !tbaa !2449
  %119 = icmp ne i8 %111, 0
  %120 = xor i1 %119, %117
  %.v5 = select i1 %120, i64 12, i64 131
  %121 = add i64 %84, %.v5
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  br i1 %120, label %block_400bc3, label %block_400c3a

block_400af9:                                     ; preds = %block_400aed
  %122 = add i64 %244, -40
  %123 = add i64 %280, 7
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 0, i32* %124, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400b00

block_400bd6:                                     ; preds = %block_400bca
  %125 = add i64 %318, 3
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %319 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = sitofp i32 %127 to double
  store double %129, double* %53, align 1, !tbaa !2451
  %130 = add i64 %318, 10
  store i64 %130, i64* %PC, align 8
  %131 = load i32, i32* %285, align 4
  %132 = add i32 %131, 2
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = icmp ugt i32 %131, -3
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %47, align 1, !tbaa !2432
  %136 = and i32 %132, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136) #11
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %48, align 1, !tbaa !2446
  %141 = xor i32 %131, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %49, align 1, !tbaa !2450
  %145 = icmp eq i32 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %50, align 1, !tbaa !2447
  %147 = lshr i32 %132, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %51, align 1, !tbaa !2448
  %149 = lshr i32 %131, 31
  %150 = xor i32 %147, %149
  %151 = add nuw nsw i32 %150, %147
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %52, align 1, !tbaa !2449
  %154 = sitofp i32 %132 to double
  store double %154, double* %54, align 1, !tbaa !2451
  %155 = fmul double %129, %154
  store double %155, double* %53, align 1, !tbaa !2451
  %156 = add i64 %318, 24
  store i64 %156, i64* %PC, align 8
  %157 = load i32, i32* %290, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = sitofp i32 %157 to double
  store double %159, double* %54, align 1, !tbaa !2451
  %160 = fadd double %155, %159
  store double %160, double* %53, align 1, !tbaa !2451
  %161 = add i64 %318, 35
  store i64 %161, i64* %PC, align 8
  %162 = load i32, i32* %290, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = sitofp i32 %162 to double
  store double %164, double* %54, align 1, !tbaa !2451
  %165 = fdiv double %160, %164
  store double %165, double* %53, align 1, !tbaa !2451
  %166 = add i64 %282, -24
  %167 = add i64 %318, 47
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = add i64 %318, 51
  store i64 %170, i64* %PC, align 8
  %171 = load i32, i32* %126, align 4
  %172 = sext i32 %171 to i64
  %173 = shl nsw i64 %172, 12
  store i64 %173, i64* %RDX, align 8, !tbaa !2428
  %174 = lshr i64 %172, 51
  %175 = and i64 %174, 1
  %176 = add i64 %173, %169
  store i64 %176, i64* %RCX, align 8, !tbaa !2428
  %177 = icmp ult i64 %176, %169
  %178 = icmp ult i64 %176, %173
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %47, align 1, !tbaa !2432
  %181 = trunc i64 %176 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #11
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %48, align 1, !tbaa !2446
  %187 = xor i64 %169, %176
  %188 = lshr i64 %187, 4
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %49, align 1, !tbaa !2450
  %191 = icmp eq i64 %176, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %50, align 1, !tbaa !2447
  %193 = lshr i64 %176, 63
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %51, align 1, !tbaa !2448
  %195 = lshr i64 %169, 63
  %196 = xor i64 %193, %195
  %197 = xor i64 %193, %175
  %198 = add nuw nsw i64 %196, %197
  %199 = icmp eq i64 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %52, align 1, !tbaa !2449
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -40
  %203 = add i64 %318, 62
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %RDX, align 8, !tbaa !2428
  %207 = shl nsw i64 %206, 3
  %208 = add i64 %207, %176
  %209 = add i64 %318, 67
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to double*
  store double %165, double* %210, align 8
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -40
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, 1
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = icmp eq i32 %216, -1
  %220 = icmp eq i32 %217, 0
  %221 = or i1 %219, %220
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %47, align 1, !tbaa !2432
  %223 = and i32 %217, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223) #11
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %48, align 1, !tbaa !2446
  %228 = xor i32 %216, %217
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %49, align 1, !tbaa !2450
  %232 = zext i1 %220 to i8
  store i8 %232, i8* %50, align 1, !tbaa !2447
  %233 = lshr i32 %217, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %51, align 1, !tbaa !2448
  %235 = lshr i32 %216, 31
  %236 = xor i32 %233, %235
  %237 = add nuw nsw i32 %236, %233
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %52, align 1, !tbaa !2449
  %240 = add i64 %213, 9
  store i64 %240, i64* %PC, align 8
  store i32 %217, i32* %215, align 4
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, -88
  store i64 %242, i64* %PC, align 8, !tbaa !2428
  br label %block_400bca

block_400aed:                                     ; preds = %block_400b9d, %block_400ad0
  %243 = phi i64 [ %83, %block_400b9d ], [ %.pre, %block_400ad0 ]
  %244 = load i64, i64* %RBP, align 8
  %245 = add i64 %244, -36
  %246 = add i64 %243, 3
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = add i64 %244, -4
  %251 = add i64 %243, 6
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sub i32 %248, %253
  %255 = icmp ult i32 %248, %253
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %47, align 1, !tbaa !2432
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257) #11
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %48, align 1, !tbaa !2446
  %262 = xor i32 %253, %248
  %263 = xor i32 %262, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %49, align 1, !tbaa !2450
  %267 = icmp eq i32 %254, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %50, align 1, !tbaa !2447
  %269 = lshr i32 %254, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %51, align 1, !tbaa !2448
  %271 = lshr i32 %248, 31
  %272 = lshr i32 %253, 31
  %273 = xor i32 %272, %271
  %274 = xor i32 %269, %271
  %275 = add nuw nsw i32 %274, %273
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %52, align 1, !tbaa !2449
  %278 = icmp ne i8 %270, 0
  %279 = xor i1 %278, %276
  %.v = select i1 %279, i64 12, i64 195
  %280 = add i64 %243, %.v
  store i64 %280, i64* %PC, align 8, !tbaa !2428
  br i1 %279, label %block_400af9, label %block_400bb0

block_400bca:                                     ; preds = %block_400bc3, %block_400bd6
  %281 = phi i64 [ %.pre3, %block_400bc3 ], [ %242, %block_400bd6 ]
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -40
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
  %292 = sub i32 %286, %291
  %293 = icmp ult i32 %286, %291
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %47, align 1, !tbaa !2432
  %295 = and i32 %292, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #11
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %48, align 1, !tbaa !2446
  %300 = xor i32 %291, %286
  %301 = xor i32 %300, %292
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %49, align 1, !tbaa !2450
  %305 = icmp eq i32 %292, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %50, align 1, !tbaa !2447
  %307 = lshr i32 %292, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %51, align 1, !tbaa !2448
  %309 = lshr i32 %286, 31
  %310 = lshr i32 %291, 31
  %311 = xor i32 %310, %309
  %312 = xor i32 %307, %309
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %52, align 1, !tbaa !2449
  %316 = icmp ne i8 %308, 0
  %317 = xor i1 %316, %314
  %.v6 = select i1 %317, i64 12, i64 93
  %318 = add i64 %281, %.v6
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %319 = add i64 %282, -36
  br i1 %317, label %block_400bd6, label %block_400c27

block_400b0c:                                     ; preds = %block_400b00
  %320 = add i64 %586, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %587 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = sitofp i32 %322 to double
  store double %324, double* %53, align 1, !tbaa !2451
  %325 = add i64 %586, 10
  store i64 %325, i64* %PC, align 8
  %326 = load i32, i32* %553, align 4
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = sitofp i32 %326 to double
  store double %328, double* %54, align 1, !tbaa !2451
  %329 = fmul double %324, %328
  store double %329, double* %53, align 1, !tbaa !2451
  %330 = add i64 %550, -4
  %331 = add i64 %586, 21
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX, align 8, !tbaa !2428
  %335 = sitofp i32 %333 to double
  store double %335, double* %54, align 1, !tbaa !2451
  %336 = fadd double %329, %335
  store double %336, double* %53, align 1, !tbaa !2451
  %337 = add i64 %586, 32
  store i64 %337, i64* %PC, align 8
  %338 = load i32, i32* %332, align 4
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = sitofp i32 %338 to double
  store double %340, double* %54, align 1, !tbaa !2451
  %341 = fdiv double %336, %340
  store double %341, double* %53, align 1, !tbaa !2451
  %342 = add i64 %550, -16
  %343 = add i64 %586, 44
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = add i64 %586, 48
  store i64 %346, i64* %PC, align 8
  %347 = load i32, i32* %321, align 4
  %348 = sext i32 %347 to i64
  %349 = shl nsw i64 %348, 12
  store i64 %349, i64* %RDX, align 8, !tbaa !2428
  %350 = lshr i64 %348, 51
  %351 = and i64 %350, 1
  %352 = add i64 %349, %345
  store i64 %352, i64* %RCX, align 8, !tbaa !2428
  %353 = icmp ult i64 %352, %345
  %354 = icmp ult i64 %352, %349
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %47, align 1, !tbaa !2432
  %357 = trunc i64 %352 to i32
  %358 = and i32 %357, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #11
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %48, align 1, !tbaa !2446
  %363 = xor i64 %345, %352
  %364 = lshr i64 %363, 4
  %365 = trunc i64 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %49, align 1, !tbaa !2450
  %367 = icmp eq i64 %352, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %50, align 1, !tbaa !2447
  %369 = lshr i64 %352, 63
  %370 = trunc i64 %369 to i8
  store i8 %370, i8* %51, align 1, !tbaa !2448
  %371 = lshr i64 %345, 63
  %372 = xor i64 %369, %371
  %373 = xor i64 %369, %351
  %374 = add nuw nsw i64 %372, %373
  %375 = icmp eq i64 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %52, align 1, !tbaa !2449
  %377 = add i64 %586, 59
  store i64 %377, i64* %PC, align 8
  %378 = load i32, i32* %553, align 4
  %379 = sext i32 %378 to i64
  store i64 %379, i64* %RDX, align 8, !tbaa !2428
  %380 = shl nsw i64 %379, 3
  %381 = add i64 %380, %352
  %382 = add i64 %586, 64
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to double*
  store double %341, double* %383, align 8
  %384 = load i64, i64* %RBP, align 8
  %385 = add i64 %384, -36
  %386 = load i64, i64* %PC, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = sitofp i32 %389 to double
  store double %391, double* %53, align 1, !tbaa !2451
  %392 = add i64 %384, -40
  %393 = add i64 %386, 10
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = add i32 %395, 1
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RAX, align 8, !tbaa !2428
  %398 = icmp eq i32 %395, -1
  %399 = icmp eq i32 %396, 0
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %47, align 1, !tbaa !2432
  %402 = and i32 %396, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #11
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %48, align 1, !tbaa !2446
  %407 = xor i32 %395, %396
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %49, align 1, !tbaa !2450
  %411 = zext i1 %399 to i8
  store i8 %411, i8* %50, align 1, !tbaa !2447
  %412 = lshr i32 %396, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %51, align 1, !tbaa !2448
  %414 = lshr i32 %395, 31
  %415 = xor i32 %412, %414
  %416 = add nuw nsw i32 %415, %412
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %52, align 1, !tbaa !2449
  %419 = sitofp i32 %396 to double
  store double %419, double* %54, align 1, !tbaa !2451
  %420 = fmul double %391, %419
  store double %420, double* %53, align 1, !tbaa !2451
  %421 = add i64 %384, -8
  %422 = add i64 %386, 24
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RAX, align 8, !tbaa !2428
  %426 = sitofp i32 %424 to double
  store double %426, double* %54, align 1, !tbaa !2451
  %427 = fadd double %420, %426
  store double %427, double* %53, align 1, !tbaa !2451
  %428 = add i64 %386, 35
  store i64 %428, i64* %PC, align 8
  %429 = load i32, i32* %423, align 4
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = sitofp i32 %429 to double
  store double %431, double* %54, align 1, !tbaa !2451
  %432 = fdiv double %427, %431
  store double %432, double* %53, align 1, !tbaa !2451
  %433 = add i64 %384, -32
  %434 = add i64 %386, 47
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = add i64 %386, 51
  store i64 %437, i64* %PC, align 8
  %438 = load i32, i32* %388, align 4
  %439 = sext i32 %438 to i64
  %440 = shl nsw i64 %439, 12
  store i64 %440, i64* %RDX, align 8, !tbaa !2428
  %441 = lshr i64 %439, 51
  %442 = and i64 %441, 1
  %443 = add i64 %440, %436
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = icmp ult i64 %443, %436
  %445 = icmp ult i64 %443, %440
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %47, align 1, !tbaa !2432
  %448 = trunc i64 %443 to i32
  %449 = and i32 %448, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #11
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %48, align 1, !tbaa !2446
  %454 = xor i64 %436, %443
  %455 = lshr i64 %454, 4
  %456 = trunc i64 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %49, align 1, !tbaa !2450
  %458 = icmp eq i64 %443, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %50, align 1, !tbaa !2447
  %460 = lshr i64 %443, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %51, align 1, !tbaa !2448
  %462 = lshr i64 %436, 63
  %463 = xor i64 %460, %462
  %464 = xor i64 %460, %442
  %465 = add nuw nsw i64 %463, %464
  %466 = icmp eq i64 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %52, align 1, !tbaa !2449
  %468 = add i64 %386, 62
  store i64 %468, i64* %PC, align 8
  %469 = load i32, i32* %394, align 4
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RDX, align 8, !tbaa !2428
  %471 = shl nsw i64 %470, 3
  %472 = add i64 %471, %443
  %473 = add i64 %386, 67
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to double*
  store double %432, double* %474, align 8
  %475 = load i64, i64* %RBP, align 8
  %476 = add i64 %475, -40
  %477 = load i64, i64* %PC, align 8
  %478 = add i64 %477, 3
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = icmp eq i32 %480, -1
  %484 = icmp eq i32 %481, 0
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %47, align 1, !tbaa !2432
  %487 = and i32 %481, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #11
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %48, align 1, !tbaa !2446
  %492 = xor i32 %480, %481
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %49, align 1, !tbaa !2450
  %496 = zext i1 %484 to i8
  store i8 %496, i8* %50, align 1, !tbaa !2447
  %497 = lshr i32 %481, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %51, align 1, !tbaa !2448
  %499 = lshr i32 %480, 31
  %500 = xor i32 %497, %499
  %501 = add nuw nsw i32 %500, %497
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %52, align 1, !tbaa !2449
  %504 = add i64 %477, 9
  store i64 %504, i64* %PC, align 8
  store i32 %481, i32* %479, align 4
  %505 = load i64, i64* %PC, align 8
  %506 = add i64 %505, -152
  store i64 %506, i64* %PC, align 8, !tbaa !2428
  br label %block_400b00

block_400bb0:                                     ; preds = %block_400aed
  %507 = add i64 %280, 7
  store i64 %507, i64* %PC, align 8
  store i32 0, i32* %247, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400bb7

block_400c27:                                     ; preds = %block_400bca
  %508 = add i64 %318, 8
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %319 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = add i32 %510, 1
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = icmp eq i32 %510, -1
  %514 = icmp eq i32 %511, 0
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %47, align 1, !tbaa !2432
  %517 = and i32 %511, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517) #11
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %48, align 1, !tbaa !2446
  %522 = xor i32 %510, %511
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %49, align 1, !tbaa !2450
  %526 = zext i1 %514 to i8
  store i8 %526, i8* %50, align 1, !tbaa !2447
  %527 = lshr i32 %511, 31
  %528 = trunc i32 %527 to i8
  store i8 %528, i8* %51, align 1, !tbaa !2448
  %529 = lshr i32 %510, 31
  %530 = xor i32 %527, %529
  %531 = add nuw nsw i32 %530, %527
  %532 = icmp eq i32 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %52, align 1, !tbaa !2449
  %534 = add i64 %318, 14
  store i64 %534, i64* %PC, align 8
  store i32 %511, i32* %509, align 4
  %535 = load i64, i64* %PC, align 8
  %536 = add i64 %535, -126
  store i64 %536, i64* %PC, align 8, !tbaa !2428
  br label %block_400bb7

block_400c3a:                                     ; preds = %block_400bb7
  %537 = add i64 %121, 1
  store i64 %537, i64* %PC, align 8
  %538 = load i64, i64* %9, align 8, !tbaa !2428
  %539 = add i64 %538, 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RBP, align 8, !tbaa !2428
  store i64 %539, i64* %9, align 8, !tbaa !2428
  %542 = add i64 %121, 2
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %539 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  %545 = add i64 %538, 16
  store i64 %545, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bc3:                                     ; preds = %block_400bb7
  %546 = add i64 %85, -40
  %547 = add i64 %121, 7
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %546 to i32*
  store i32 0, i32* %548, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400bca

block_400b00:                                     ; preds = %block_400b0c, %block_400af9
  %549 = phi i64 [ %506, %block_400b0c ], [ %.pre1, %block_400af9 ]
  %550 = load i64, i64* %RBP, align 8
  %551 = add i64 %550, -40
  %552 = add i64 %549, 3
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = add i64 %550, -8
  %557 = add i64 %549, 6
  store i64 %557, i64* %PC, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sub i32 %554, %559
  %561 = icmp ult i32 %554, %559
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %47, align 1, !tbaa !2432
  %563 = and i32 %560, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #11
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %48, align 1, !tbaa !2446
  %568 = xor i32 %559, %554
  %569 = xor i32 %568, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %49, align 1, !tbaa !2450
  %573 = icmp eq i32 %560, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %50, align 1, !tbaa !2447
  %575 = lshr i32 %560, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %51, align 1, !tbaa !2448
  %577 = lshr i32 %554, 31
  %578 = lshr i32 %559, 31
  %579 = xor i32 %578, %577
  %580 = xor i32 %575, %577
  %581 = add nuw nsw i32 %580, %579
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %52, align 1, !tbaa !2449
  %584 = icmp ne i8 %576, 0
  %585 = xor i1 %584, %582
  %.v4 = select i1 %585, i64 12, i64 157
  %586 = add i64 %549, %.v4
  store i64 %586, i64* %PC, align 8, !tbaa !2428
  %587 = add i64 %550, -36
  br i1 %585, label %block_400b0c, label %block_400b9d
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #11
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
  %42 = load i32, i32* %EDI, align 4
  %43 = add i64 %12, 10
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RDX, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RCX, align 8
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %R8, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -44
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %74 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %76 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %77 = getelementptr inbounds i8, i8* %74, i64 4
  %78 = bitcast i8* %77 to i32*
  %79 = bitcast i64* %75 to i32*
  %80 = getelementptr inbounds i8, i8* %74, i64 12
  %81 = bitcast i8* %80 to i32*
  %82 = bitcast [32 x %union.VectorReg]* %5 to double*
  %83 = bitcast i64* %75 to double*
  %84 = bitcast %union.VectorReg* %6 to double*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ed1

block_400ef8:                                     ; preds = %block_400eec
  %87 = add i64 %634, -16
  %88 = add i64 %670, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = add i64 %670, 8
  store i64 %91, i64* %PC, align 8
  %92 = load i32, i32* %637, align 4
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 12
  store i64 %94, i64* %RCX, align 8, !tbaa !2428
  %95 = lshr i64 %93, 51
  %96 = and i64 %95, 1
  %97 = add i64 %94, %90
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp ult i64 %97, %90
  %99 = icmp ult i64 %97, %94
  %100 = or i1 %98, %99
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %16, align 1, !tbaa !2432
  %102 = trunc i64 %97 to i32
  %103 = and i32 %102, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #11
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %23, align 1, !tbaa !2446
  %108 = xor i64 %90, %97
  %109 = lshr i64 %108, 4
  %110 = trunc i64 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %28, align 1, !tbaa !2450
  %112 = icmp eq i64 %97, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %31, align 1, !tbaa !2447
  %114 = lshr i64 %97, 63
  %115 = trunc i64 %114 to i8
  store i8 %115, i8* %34, align 1, !tbaa !2448
  %116 = lshr i64 %90, 63
  %117 = xor i64 %114, %116
  %118 = xor i64 %114, %96
  %119 = add nuw nsw i64 %117, %118
  %120 = icmp eq i64 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %40, align 1, !tbaa !2449
  %122 = add i64 %634, -44
  %123 = add i64 %670, 19
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = shl nsw i64 %126, 3
  %128 = add i64 %127, %97
  %129 = add i64 %670, 24
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to double*
  %131 = load double, double* %130, align 8
  store double %131, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %132 = add i64 %670, 28
  store i64 %132, i64* %PC, align 8
  %133 = load i64, i64* %89, align 8
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = add i64 %670, 32
  store i64 %134, i64* %PC, align 8
  %135 = load i32, i32* %637, align 4
  %136 = sext i32 %135 to i64
  %137 = shl nsw i64 %136, 12
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = lshr i64 %136, 51
  %139 = and i64 %138, 1
  %140 = add i64 %137, %133
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = icmp ult i64 %140, %133
  %142 = icmp ult i64 %140, %137
  %143 = or i1 %141, %142
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %16, align 1, !tbaa !2432
  %145 = trunc i64 %140 to i32
  %146 = and i32 %145, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #11
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %23, align 1, !tbaa !2446
  %151 = xor i64 %133, %140
  %152 = lshr i64 %151, 4
  %153 = trunc i64 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %28, align 1, !tbaa !2450
  %155 = icmp eq i64 %140, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %31, align 1, !tbaa !2447
  %157 = lshr i64 %140, 63
  %158 = trunc i64 %157 to i8
  store i8 %158, i8* %34, align 1, !tbaa !2448
  %159 = lshr i64 %133, 63
  %160 = xor i64 %157, %159
  %161 = xor i64 %157, %139
  %162 = add nuw nsw i64 %160, %161
  %163 = icmp eq i64 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %40, align 1, !tbaa !2449
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -44
  %167 = add i64 %670, 43
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = shl nsw i64 %170, 3
  %172 = add i64 %171, %140
  %173 = add i64 %670, 48
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to double*
  %175 = load double, double* %174, align 8
  %176 = fmul double %131, %175
  store double %176, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %177 = add i64 %165, -56
  %178 = add i64 %670, 53
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to double*
  %180 = load double, double* %179, align 8
  %181 = fadd double %176, %180
  store double %181, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %182 = add i64 %670, 58
  store i64 %182, i64* %PC, align 8
  store double %181, double* %179, align 8
  %183 = load i64, i64* %RBP, align 8
  %184 = add i64 %183, -36
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %184 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, 1
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RAX, align 8, !tbaa !2428
  %191 = icmp eq i32 %188, -1
  %192 = icmp eq i32 %189, 0
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %16, align 1, !tbaa !2432
  %195 = and i32 %189, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #11
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %23, align 1, !tbaa !2446
  %200 = xor i32 %188, %189
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %28, align 1, !tbaa !2450
  %204 = zext i1 %192 to i8
  store i8 %204, i8* %31, align 1, !tbaa !2447
  %205 = lshr i32 %189, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %34, align 1, !tbaa !2448
  %207 = lshr i32 %188, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %205
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %40, align 1, !tbaa !2449
  %212 = add i64 %185, 9
  store i64 %212, i64* %PC, align 8
  store i32 %189, i32* %187, align 4
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, -79
  store i64 %214, i64* %PC, align 8, !tbaa !2428
  br label %block_400eec

block_400f75:                                     ; preds = %block_400f69
  %215 = add i64 %423, -16
  %216 = add i64 %459, 4
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = add i64 %459, 8
  store i64 %219, i64* %PC, align 8
  %220 = load i32, i32* %426, align 4
  %221 = sext i32 %220 to i64
  %222 = shl nsw i64 %221, 12
  store i64 %222, i64* %RCX, align 8, !tbaa !2428
  %223 = lshr i64 %221, 51
  %224 = and i64 %223, 1
  %225 = add i64 %222, %218
  store i64 %225, i64* %RAX, align 8, !tbaa !2428
  %226 = icmp ult i64 %225, %218
  %227 = icmp ult i64 %225, %222
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %16, align 1, !tbaa !2432
  %230 = trunc i64 %225 to i32
  %231 = and i32 %230, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231) #11
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %23, align 1, !tbaa !2446
  %236 = xor i64 %218, %225
  %237 = lshr i64 %236, 4
  %238 = trunc i64 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %28, align 1, !tbaa !2450
  %240 = icmp eq i64 %225, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %31, align 1, !tbaa !2447
  %242 = lshr i64 %225, 63
  %243 = trunc i64 %242 to i8
  store i8 %243, i8* %34, align 1, !tbaa !2448
  %244 = lshr i64 %218, 63
  %245 = xor i64 %242, %244
  %246 = xor i64 %242, %224
  %247 = add nuw nsw i64 %245, %246
  %248 = icmp eq i64 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %40, align 1, !tbaa !2449
  %250 = add i64 %423, -44
  %251 = add i64 %459, 19
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX, align 8, !tbaa !2428
  %255 = shl nsw i64 %254, 3
  %256 = add i64 %255, %225
  %257 = add i64 %459, 24
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to double*
  %259 = load double, double* %258, align 8
  store double %259, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %260 = add i64 %423, -24
  %261 = add i64 %459, 28
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %RAX, align 8, !tbaa !2428
  %264 = add i64 %459, 32
  store i64 %264, i64* %PC, align 8
  %265 = load i32, i32* %252, align 4
  %266 = sext i32 %265 to i64
  %267 = shl nsw i64 %266, 12
  store i64 %267, i64* %RCX, align 8, !tbaa !2428
  %268 = lshr i64 %266, 51
  %269 = and i64 %268, 1
  %270 = add i64 %267, %263
  store i64 %270, i64* %RAX, align 8, !tbaa !2428
  %271 = icmp ult i64 %270, %263
  %272 = icmp ult i64 %270, %267
  %273 = or i1 %271, %272
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %16, align 1, !tbaa !2432
  %275 = trunc i64 %270 to i32
  %276 = and i32 %275, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276) #11
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %23, align 1, !tbaa !2446
  %281 = xor i64 %263, %270
  %282 = lshr i64 %281, 4
  %283 = trunc i64 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %28, align 1, !tbaa !2450
  %285 = icmp eq i64 %270, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %31, align 1, !tbaa !2447
  %287 = lshr i64 %270, 63
  %288 = trunc i64 %287 to i8
  store i8 %288, i8* %34, align 1, !tbaa !2448
  %289 = lshr i64 %263, 63
  %290 = xor i64 %287, %289
  %291 = xor i64 %287, %269
  %292 = add nuw nsw i64 %290, %291
  %293 = icmp eq i64 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %40, align 1, !tbaa !2449
  %295 = load i64, i64* %RBP, align 8
  %296 = add i64 %295, -44
  %297 = add i64 %459, 43
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = shl nsw i64 %300, 3
  %302 = add i64 %301, %270
  %303 = add i64 %459, 48
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to double*
  %305 = load double, double* %304, align 8
  %306 = fdiv double %259, %305
  store double %306, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %307 = add i64 %295, -32
  %308 = add i64 %459, 52
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RAX, align 8, !tbaa !2428
  %311 = add i64 %295, -36
  %312 = add i64 %459, 56
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = shl nsw i64 %315, 12
  store i64 %316, i64* %RCX, align 8, !tbaa !2428
  %317 = lshr i64 %315, 51
  %318 = and i64 %317, 1
  %319 = add i64 %316, %310
  store i64 %319, i64* %RAX, align 8, !tbaa !2428
  %320 = icmp ult i64 %319, %310
  %321 = icmp ult i64 %319, %316
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %16, align 1, !tbaa !2432
  %324 = trunc i64 %319 to i32
  %325 = and i32 %324, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #11
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %23, align 1, !tbaa !2446
  %330 = xor i64 %310, %319
  %331 = lshr i64 %330, 4
  %332 = trunc i64 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %28, align 1, !tbaa !2450
  %334 = icmp eq i64 %319, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %31, align 1, !tbaa !2447
  %336 = lshr i64 %319, 63
  %337 = trunc i64 %336 to i8
  store i8 %337, i8* %34, align 1, !tbaa !2448
  %338 = lshr i64 %310, 63
  %339 = xor i64 %336, %338
  %340 = xor i64 %336, %318
  %341 = add nuw nsw i64 %339, %340
  %342 = icmp eq i64 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %40, align 1, !tbaa !2449
  %344 = add i64 %459, 67
  store i64 %344, i64* %PC, align 8
  %345 = load i32, i32* %298, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RCX, align 8, !tbaa !2428
  %347 = shl nsw i64 %346, 3
  %348 = add i64 %347, %319
  %349 = add i64 %459, 72
  store i64 %349, i64* %PC, align 8
  %350 = inttoptr i64 %348 to double*
  store double %306, double* %350, align 8
  %351 = load i64, i64* %RBP, align 8
  %352 = add i64 %351, -36
  %353 = load i64, i64* %PC, align 8
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, 1
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %359 = icmp eq i32 %356, -1
  %360 = icmp eq i32 %357, 0
  %361 = or i1 %359, %360
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %16, align 1, !tbaa !2432
  %363 = and i32 %357, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363) #11
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %23, align 1, !tbaa !2446
  %368 = xor i32 %356, %357
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %28, align 1, !tbaa !2450
  %372 = zext i1 %360 to i8
  store i8 %372, i8* %31, align 1, !tbaa !2447
  %373 = lshr i32 %357, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %34, align 1, !tbaa !2448
  %375 = lshr i32 %356, 31
  %376 = xor i32 %373, %375
  %377 = add nuw nsw i32 %376, %373
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %40, align 1, !tbaa !2449
  %380 = add i64 %353, 9
  store i64 %380, i64* %PC, align 8
  store i32 %357, i32* %355, align 4
  %381 = load i64, i64* %PC, align 8
  %382 = add i64 %381, -93
  store i64 %382, i64* %PC, align 8, !tbaa !2428
  br label %block_400f69

block_401069:                                     ; preds = %block_401002
  %383 = add i64 %1213, 7
  store i64 %383, i64* %PC, align 8
  store i32 0, i32* %1180, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_401070

block_401070:                                     ; preds = %block_40107c, %block_401069
  %384 = phi i64 [ %1137, %block_40107c ], [ %.pre6, %block_401069 ]
  %385 = load i64, i64* %RBP, align 8
  %386 = add i64 %385, -36
  %387 = add i64 %384, 3
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = add i64 %385, -4
  %392 = add i64 %384, 6
  store i64 %392, i64* %PC, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sub i32 %389, %394
  %396 = icmp ult i32 %389, %394
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %16, align 1, !tbaa !2432
  %398 = and i32 %395, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398) #11
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %23, align 1, !tbaa !2446
  %403 = xor i32 %394, %389
  %404 = xor i32 %403, %395
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %28, align 1, !tbaa !2450
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %31, align 1, !tbaa !2447
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %34, align 1, !tbaa !2448
  %412 = lshr i32 %389, 31
  %413 = lshr i32 %394, 31
  %414 = xor i32 %413, %412
  %415 = xor i32 %410, %412
  %416 = add nuw nsw i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %40, align 1, !tbaa !2449
  %419 = icmp ne i8 %411, 0
  %420 = xor i1 %419, %417
  %.v14 = select i1 %420, i64 12, i64 126
  %421 = add i64 %384, %.v14
  store i64 %421, i64* %PC, align 8, !tbaa !2428
  br i1 %420, label %block_40107c, label %block_4010ee

block_400f69:                                     ; preds = %block_400f40, %block_400f75
  %422 = phi i64 [ %.pre3, %block_400f40 ], [ %382, %block_400f75 ]
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -36
  %425 = add i64 %422, 3
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = add i64 %423, -4
  %430 = add i64 %422, 6
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sub i32 %427, %432
  %434 = icmp ult i32 %427, %432
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %16, align 1, !tbaa !2432
  %436 = and i32 %433, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436) #11
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %23, align 1, !tbaa !2446
  %441 = xor i32 %432, %427
  %442 = xor i32 %441, %433
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %28, align 1, !tbaa !2450
  %446 = icmp eq i32 %433, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %31, align 1, !tbaa !2447
  %448 = lshr i32 %433, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %34, align 1, !tbaa !2448
  %450 = lshr i32 %427, 31
  %451 = lshr i32 %432, 31
  %452 = xor i32 %451, %450
  %453 = xor i32 %448, %450
  %454 = add nuw nsw i32 %453, %452
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %40, align 1, !tbaa !2449
  %457 = icmp ne i8 %449, 0
  %458 = xor i1 %457, %455
  %.v11 = select i1 %458, i64 12, i64 98
  %459 = add i64 %422, %.v11
  store i64 %459, i64* %PC, align 8, !tbaa !2428
  br i1 %458, label %block_400f75, label %block_400fcb

block_4010ee:                                     ; preds = %block_401070
  %460 = add i64 %385, -40
  %461 = add i64 %421, 8
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, 1
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX, align 8, !tbaa !2428
  %466 = icmp eq i32 %463, -1
  %467 = icmp eq i32 %464, 0
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %16, align 1, !tbaa !2432
  %470 = and i32 %464, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470) #11
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %23, align 1, !tbaa !2446
  %475 = xor i32 %463, %464
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %28, align 1, !tbaa !2450
  %479 = zext i1 %467 to i8
  store i8 %479, i8* %31, align 1, !tbaa !2447
  %480 = lshr i32 %464, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %34, align 1, !tbaa !2448
  %482 = lshr i32 %463, 31
  %483 = xor i32 %480, %482
  %484 = add nuw nsw i32 %483, %480
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %40, align 1, !tbaa !2449
  %487 = add i64 %421, 14
  store i64 %487, i64* %PC, align 8
  store i32 %464, i32* %462, align 4
  %488 = load i64, i64* %PC, align 8
  %489 = add i64 %488, -296
  store i64 %489, i64* %PC, align 8, !tbaa !2428
  br label %block_400fd4

block_400edd:                                     ; preds = %block_400ed1
  store i32 0, i32* %76, align 1, !tbaa !2456
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %79, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  %490 = add i64 %501, -56
  %491 = add i64 %537, 8
  store i64 %491, i64* %PC, align 8
  %492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %493 = load i64, i64* %492, align 1
  %494 = inttoptr i64 %490 to i64*
  store i64 %493, i64* %494, align 8
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -36
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 7
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %496 to i32*
  store i32 0, i32* %499, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400eec

block_400ed1:                                     ; preds = %block_401101, %block_400eb0
  %500 = phi i64 [ %1243, %block_401101 ], [ %.pre, %block_400eb0 ]
  %501 = load i64, i64* %RBP, align 8
  %502 = add i64 %501, -44
  %503 = add i64 %500, 3
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX, align 8, !tbaa !2428
  %507 = add i64 %501, -8
  %508 = add i64 %500, 6
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sub i32 %505, %510
  %512 = icmp ult i32 %505, %510
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %16, align 1, !tbaa !2432
  %514 = and i32 %511, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514) #11
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %23, align 1, !tbaa !2446
  %519 = xor i32 %510, %505
  %520 = xor i32 %519, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %28, align 1, !tbaa !2450
  %524 = icmp eq i32 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %31, align 1, !tbaa !2447
  %526 = lshr i32 %511, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %34, align 1, !tbaa !2448
  %528 = lshr i32 %505, 31
  %529 = lshr i32 %510, 31
  %530 = xor i32 %529, %528
  %531 = xor i32 %526, %528
  %532 = add nuw nsw i32 %531, %530
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %40, align 1, !tbaa !2449
  %535 = icmp ne i8 %527, 0
  %536 = xor i1 %535, %533
  %.v = select i1 %536, i64 12, i64 579
  %537 = add i64 %500, %.v
  store i64 %537, i64* %PC, align 8, !tbaa !2428
  br i1 %536, label %block_400edd, label %block_401114

block_400fcb:                                     ; preds = %block_400f69
  %538 = add i64 %423, -44
  %539 = add i64 %459, 3
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = add i32 %541, 1
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = icmp eq i32 %541, -1
  %545 = icmp eq i32 %542, 0
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %16, align 1, !tbaa !2432
  %548 = and i32 %542, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548) #11
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %23, align 1, !tbaa !2446
  %553 = xor i32 %541, %542
  %554 = lshr i32 %553, 4
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %28, align 1, !tbaa !2450
  %557 = zext i1 %545 to i8
  store i8 %557, i8* %31, align 1, !tbaa !2447
  %558 = lshr i32 %542, 31
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %34, align 1, !tbaa !2448
  %560 = lshr i32 %541, 31
  %561 = xor i32 %558, %560
  %562 = add nuw nsw i32 %561, %558
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %40, align 1, !tbaa !2449
  %565 = add i64 %423, -40
  %566 = add i64 %459, 9
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i32*
  store i32 %542, i32* %567, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400fd4

block_400f40:                                     ; preds = %block_400eec
  %568 = add i64 %634, -56
  %569 = add i64 %670, 5
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %492, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %572 = add i64 %670, -2368
  %573 = add i64 %670, 10
  %574 = load i64, i64* %RSP, align 8, !tbaa !2428
  %575 = add i64 %574, -8
  %576 = inttoptr i64 %575 to i64*
  store i64 %573, i64* %576, align 8
  store i64 %575, i64* %RSP, align 8, !tbaa !2428
  store i64 %572, i64* %PC, align 8, !alias.scope !2462, !noalias !2465
  %577 = load double, double* %82, align 8, !alias.scope !2462, !noalias !2465
  %578 = load i64, i64* %576, align 8
  store i64 %574, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %579 = tail call double @sqrt(double %577)
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  %582 = bitcast i64* %75 to i8*
  call void @llvm.memset.p0i8.i64(i8* %582, i8 0, i64 24, i32 8, i1 false)
  store double %579, double* %82, align 8, !alias.scope !2462, !noalias !2465
  %583 = load i64, i64* %RBP, align 8
  %584 = add i64 %583, -24
  %585 = add i64 %578, 4
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %584 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RAX, align 8, !tbaa !2428
  %588 = add i64 %583, -44
  %589 = add i64 %578, 8
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = sext i32 %591 to i64
  %593 = shl nsw i64 %592, 12
  store i64 %593, i64* %RCX, align 8, !tbaa !2428
  %594 = lshr i64 %592, 51
  %595 = and i64 %594, 1
  %596 = add i64 %593, %587
  store i64 %596, i64* %RAX, align 8, !tbaa !2428
  %597 = icmp ult i64 %596, %587
  %598 = icmp ult i64 %596, %593
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %16, align 1, !tbaa !2432
  %601 = trunc i64 %596 to i32
  %602 = and i32 %601, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602) #11
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %23, align 1, !tbaa !2446
  %607 = xor i64 %587, %596
  %608 = lshr i64 %607, 4
  %609 = trunc i64 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %28, align 1, !tbaa !2450
  %611 = icmp eq i64 %596, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %31, align 1, !tbaa !2447
  %613 = lshr i64 %596, 63
  %614 = trunc i64 %613 to i8
  store i8 %614, i8* %34, align 1, !tbaa !2448
  %615 = lshr i64 %587, 63
  %616 = xor i64 %613, %615
  %617 = xor i64 %613, %595
  %618 = add nuw nsw i64 %616, %617
  %619 = icmp eq i64 %618, 2
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %40, align 1, !tbaa !2449
  %621 = add i64 %578, 19
  store i64 %621, i64* %PC, align 8
  %622 = load i32, i32* %590, align 4
  %623 = sext i32 %622 to i64
  store i64 %623, i64* %RCX, align 8, !tbaa !2428
  %624 = shl nsw i64 %623, 3
  %625 = add i64 %624, %596
  %626 = add i64 %578, 24
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %625 to double*
  store double %579, double* %627, align 8
  %628 = load i64, i64* %RBP, align 8
  %629 = add i64 %628, -36
  %630 = load i64, i64* %PC, align 8
  %631 = add i64 %630, 7
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %629 to i32*
  store i32 0, i32* %632, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400f69

block_400eec:                                     ; preds = %block_400edd, %block_400ef8
  %633 = phi i64 [ %.pre2, %block_400edd ], [ %214, %block_400ef8 ]
  %634 = load i64, i64* %RBP, align 8
  %635 = add i64 %634, -36
  %636 = add i64 %633, 3
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RAX, align 8, !tbaa !2428
  %640 = add i64 %634, -4
  %641 = add i64 %633, 6
  store i64 %641, i64* %PC, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sub i32 %638, %643
  %645 = icmp ult i32 %638, %643
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %16, align 1, !tbaa !2432
  %647 = and i32 %644, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647) #11
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %23, align 1, !tbaa !2446
  %652 = xor i32 %643, %638
  %653 = xor i32 %652, %644
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %28, align 1, !tbaa !2450
  %657 = icmp eq i32 %644, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %31, align 1, !tbaa !2447
  %659 = lshr i32 %644, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %34, align 1, !tbaa !2448
  %661 = lshr i32 %638, 31
  %662 = lshr i32 %643, 31
  %663 = xor i32 %662, %661
  %664 = xor i32 %659, %661
  %665 = add nuw nsw i32 %664, %663
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %40, align 1, !tbaa !2449
  %668 = icmp ne i8 %660, 0
  %669 = xor i1 %668, %666
  %.v7 = select i1 %669, i64 12, i64 84
  %670 = add i64 %633, %.v7
  store i64 %670, i64* %PC, align 8, !tbaa !2428
  br i1 %669, label %block_400ef8, label %block_400f40

block_401114:                                     ; preds = %block_400ed1
  %671 = load i64, i64* %RSP, align 8
  %672 = add i64 %671, 64
  store i64 %672, i64* %RSP, align 8, !tbaa !2428
  %673 = icmp ugt i64 %671, -65
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %16, align 1, !tbaa !2432
  %675 = trunc i64 %672 to i32
  %676 = and i32 %675, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676) #11
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %23, align 1, !tbaa !2446
  %681 = xor i64 %671, %672
  %682 = lshr i64 %681, 4
  %683 = trunc i64 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %28, align 1, !tbaa !2450
  %685 = icmp eq i64 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %31, align 1, !tbaa !2447
  %687 = lshr i64 %672, 63
  %688 = trunc i64 %687 to i8
  store i8 %688, i8* %34, align 1, !tbaa !2448
  %689 = lshr i64 %671, 63
  %690 = xor i64 %687, %689
  %691 = add nuw nsw i64 %690, %687
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %40, align 1, !tbaa !2449
  %694 = add i64 %537, 5
  store i64 %694, i64* %PC, align 8
  %695 = add i64 %671, 72
  %696 = inttoptr i64 %672 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RBP, align 8, !tbaa !2428
  store i64 %695, i64* %RSP, align 8, !tbaa !2428
  %698 = add i64 %537, 6
  store i64 %698, i64* %PC, align 8
  %699 = inttoptr i64 %695 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %PC, align 8, !tbaa !2428
  %701 = add i64 %671, 80
  store i64 %701, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400fe0:                                     ; preds = %block_400fd4
  store i32 0, i32* %76, align 1, !tbaa !2456
  store i32 0, i32* %78, align 1, !tbaa !2456
  store i32 0, i32* %79, align 1, !tbaa !2456
  store i32 0, i32* %81, align 1, !tbaa !2456
  %702 = add i64 %1139, -24
  %703 = add i64 %1175, 7
  store i64 %703, i64* %PC, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RAX, align 8, !tbaa !2428
  %706 = add i64 %1139, -44
  %707 = add i64 %1175, 11
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = sext i32 %709 to i64
  %711 = shl nsw i64 %710, 12
  store i64 %711, i64* %RCX, align 8, !tbaa !2428
  %712 = lshr i64 %710, 51
  %713 = and i64 %712, 1
  %714 = add i64 %711, %705
  store i64 %714, i64* %RAX, align 8, !tbaa !2428
  %715 = icmp ult i64 %714, %705
  %716 = icmp ult i64 %714, %711
  %717 = or i1 %715, %716
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %16, align 1, !tbaa !2432
  %719 = trunc i64 %714 to i32
  %720 = and i32 %719, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720) #11
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %23, align 1, !tbaa !2446
  %725 = xor i64 %705, %714
  %726 = lshr i64 %725, 4
  %727 = trunc i64 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %28, align 1, !tbaa !2450
  %729 = icmp eq i64 %714, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %31, align 1, !tbaa !2447
  %731 = lshr i64 %714, 63
  %732 = trunc i64 %731 to i8
  store i8 %732, i8* %34, align 1, !tbaa !2448
  %733 = lshr i64 %705, 63
  %734 = xor i64 %731, %733
  %735 = xor i64 %731, %713
  %736 = add nuw nsw i64 %734, %735
  %737 = icmp eq i64 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %40, align 1, !tbaa !2449
  %739 = add i64 %1175, 22
  store i64 %739, i64* %PC, align 8
  %740 = load i32, i32* %1142, align 4
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RCX, align 8, !tbaa !2428
  %742 = shl nsw i64 %741, 3
  %743 = add i64 %742, %714
  %744 = add i64 %1175, 27
  store i64 %744, i64* %PC, align 8
  %745 = load i64, i64* %492, align 1
  %746 = inttoptr i64 %743 to i64*
  store i64 %745, i64* %746, align 8
  %747 = load i64, i64* %RBP, align 8
  %748 = add i64 %747, -36
  %749 = load i64, i64* %PC, align 8
  %750 = add i64 %749, 7
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %748 to i32*
  store i32 0, i32* %751, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401002

block_40100e:                                     ; preds = %block_401002
  %752 = add i64 %1177, -32
  %753 = add i64 %1213, 4
  store i64 %753, i64* %PC, align 8
  %754 = inttoptr i64 %752 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RAX, align 8, !tbaa !2428
  %756 = add i64 %1213, 8
  store i64 %756, i64* %PC, align 8
  %757 = load i32, i32* %1180, align 4
  %758 = sext i32 %757 to i64
  %759 = shl nsw i64 %758, 12
  store i64 %759, i64* %RCX, align 8, !tbaa !2428
  %760 = lshr i64 %758, 51
  %761 = and i64 %760, 1
  %762 = add i64 %759, %755
  store i64 %762, i64* %RAX, align 8, !tbaa !2428
  %763 = icmp ult i64 %762, %755
  %764 = icmp ult i64 %762, %759
  %765 = or i1 %763, %764
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %16, align 1, !tbaa !2432
  %767 = trunc i64 %762 to i32
  %768 = and i32 %767, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768) #11
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %23, align 1, !tbaa !2446
  %773 = xor i64 %755, %762
  %774 = lshr i64 %773, 4
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %28, align 1, !tbaa !2450
  %777 = icmp eq i64 %762, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %31, align 1, !tbaa !2447
  %779 = lshr i64 %762, 63
  %780 = trunc i64 %779 to i8
  store i8 %780, i8* %34, align 1, !tbaa !2448
  %781 = lshr i64 %755, 63
  %782 = xor i64 %779, %781
  %783 = xor i64 %779, %761
  %784 = add nuw nsw i64 %782, %783
  %785 = icmp eq i64 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %40, align 1, !tbaa !2449
  %787 = add i64 %1177, -44
  %788 = add i64 %1213, 19
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  store i64 %791, i64* %RCX, align 8, !tbaa !2428
  %792 = shl nsw i64 %791, 3
  %793 = add i64 %792, %762
  %794 = add i64 %1213, 24
  store i64 %794, i64* %PC, align 8
  %795 = inttoptr i64 %793 to double*
  %796 = load double, double* %795, align 8
  store double %796, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %797 = add i64 %1177, -16
  %798 = add i64 %1213, 28
  store i64 %798, i64* %PC, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX, align 8, !tbaa !2428
  %801 = add i64 %1213, 32
  store i64 %801, i64* %PC, align 8
  %802 = load i32, i32* %1180, align 4
  %803 = sext i32 %802 to i64
  %804 = shl nsw i64 %803, 12
  store i64 %804, i64* %RCX, align 8, !tbaa !2428
  %805 = lshr i64 %803, 51
  %806 = and i64 %805, 1
  %807 = add i64 %804, %800
  store i64 %807, i64* %RAX, align 8, !tbaa !2428
  %808 = icmp ult i64 %807, %800
  %809 = icmp ult i64 %807, %804
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %16, align 1, !tbaa !2432
  %812 = trunc i64 %807 to i32
  %813 = and i32 %812, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813) #11
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %23, align 1, !tbaa !2446
  %818 = xor i64 %800, %807
  %819 = lshr i64 %818, 4
  %820 = trunc i64 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %28, align 1, !tbaa !2450
  %822 = icmp eq i64 %807, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %31, align 1, !tbaa !2447
  %824 = lshr i64 %807, 63
  %825 = trunc i64 %824 to i8
  store i8 %825, i8* %34, align 1, !tbaa !2448
  %826 = lshr i64 %800, 63
  %827 = xor i64 %824, %826
  %828 = xor i64 %824, %806
  %829 = add nuw nsw i64 %827, %828
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %40, align 1, !tbaa !2449
  %832 = load i64, i64* %RBP, align 8
  %833 = add i64 %832, -40
  %834 = add i64 %1213, 43
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  store i64 %837, i64* %RCX, align 8, !tbaa !2428
  %838 = shl nsw i64 %837, 3
  %839 = add i64 %838, %807
  %840 = add i64 %1213, 48
  store i64 %840, i64* %PC, align 8
  %841 = inttoptr i64 %839 to double*
  %842 = load double, double* %841, align 8
  %843 = fmul double %796, %842
  store double %843, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %844 = add i64 %832, -24
  %845 = add i64 %1213, 52
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = add i64 %832, -44
  %849 = add i64 %1213, 56
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
  store i8 %860, i8* %16, align 1, !tbaa !2432
  %861 = trunc i64 %856 to i32
  %862 = and i32 %861, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862) #11
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %23, align 1, !tbaa !2446
  %867 = xor i64 %847, %856
  %868 = lshr i64 %867, 4
  %869 = trunc i64 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %28, align 1, !tbaa !2450
  %871 = icmp eq i64 %856, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %31, align 1, !tbaa !2447
  %873 = lshr i64 %856, 63
  %874 = trunc i64 %873 to i8
  store i8 %874, i8* %34, align 1, !tbaa !2448
  %875 = lshr i64 %847, 63
  %876 = xor i64 %873, %875
  %877 = xor i64 %873, %855
  %878 = add nuw nsw i64 %876, %877
  %879 = icmp eq i64 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %40, align 1, !tbaa !2449
  %881 = add i64 %1213, 67
  store i64 %881, i64* %PC, align 8
  %882 = load i32, i32* %835, align 4
  %883 = sext i32 %882 to i64
  store i64 %883, i64* %RCX, align 8, !tbaa !2428
  %884 = shl nsw i64 %883, 3
  %885 = add i64 %884, %856
  %886 = add i64 %1213, 72
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to double*
  %888 = load double, double* %887, align 8
  %889 = fadd double %843, %888
  store double %889, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %75, align 1, !tbaa !2451
  %890 = add i64 %1213, 77
  store i64 %890, i64* %PC, align 8
  store double %889, double* %887, align 8
  %891 = load i64, i64* %RBP, align 8
  %892 = add i64 %891, -36
  %893 = load i64, i64* %PC, align 8
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC, align 8
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = add i32 %896, 1
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX, align 8, !tbaa !2428
  %899 = icmp eq i32 %896, -1
  %900 = icmp eq i32 %897, 0
  %901 = or i1 %899, %900
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %16, align 1, !tbaa !2432
  %903 = and i32 %897, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903) #11
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %23, align 1, !tbaa !2446
  %908 = xor i32 %896, %897
  %909 = lshr i32 %908, 4
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  store i8 %911, i8* %28, align 1, !tbaa !2450
  %912 = zext i1 %900 to i8
  store i8 %912, i8* %31, align 1, !tbaa !2447
  %913 = lshr i32 %897, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %34, align 1, !tbaa !2448
  %915 = lshr i32 %896, 31
  %916 = xor i32 %913, %915
  %917 = add nuw nsw i32 %916, %913
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %40, align 1, !tbaa !2449
  %920 = add i64 %893, 9
  store i64 %920, i64* %PC, align 8
  store i32 %897, i32* %895, align 4
  %921 = load i64, i64* %PC, align 8
  %922 = add i64 %921, -98
  store i64 %922, i64* %PC, align 8, !tbaa !2428
  br label %block_401002

block_40107c:                                     ; preds = %block_401070
  %923 = add i64 %385, -16
  %924 = add i64 %421, 4
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RAX, align 8, !tbaa !2428
  %927 = add i64 %421, 8
  store i64 %927, i64* %PC, align 8
  %928 = load i32, i32* %388, align 4
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
  store i8 %937, i8* %16, align 1, !tbaa !2432
  %938 = trunc i64 %933 to i32
  %939 = and i32 %938, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939) #11
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %23, align 1, !tbaa !2446
  %944 = xor i64 %926, %933
  %945 = lshr i64 %944, 4
  %946 = trunc i64 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %28, align 1, !tbaa !2450
  %948 = icmp eq i64 %933, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %31, align 1, !tbaa !2447
  %950 = lshr i64 %933, 63
  %951 = trunc i64 %950 to i8
  store i8 %951, i8* %34, align 1, !tbaa !2448
  %952 = lshr i64 %926, 63
  %953 = xor i64 %950, %952
  %954 = xor i64 %950, %932
  %955 = add nuw nsw i64 %953, %954
  %956 = icmp eq i64 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %40, align 1, !tbaa !2449
  %958 = add i64 %385, -40
  %959 = add i64 %421, 19
  store i64 %959, i64* %PC, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = sext i32 %961 to i64
  store i64 %962, i64* %RCX, align 8, !tbaa !2428
  %963 = shl nsw i64 %962, 3
  %964 = add i64 %963, %933
  %965 = add i64 %421, 24
  store i64 %965, i64* %PC, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %492, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %968 = add i64 %385, -32
  %969 = add i64 %421, 28
  store i64 %969, i64* %PC, align 8
  %970 = inttoptr i64 %968 to i64*
  %971 = load i64, i64* %970, align 8
  store i64 %971, i64* %RAX, align 8, !tbaa !2428
  %972 = add i64 %421, 32
  store i64 %972, i64* %PC, align 8
  %973 = load i32, i32* %388, align 4
  %974 = sext i32 %973 to i64
  %975 = shl nsw i64 %974, 12
  store i64 %975, i64* %RCX, align 8, !tbaa !2428
  %976 = lshr i64 %974, 51
  %977 = and i64 %976, 1
  %978 = add i64 %975, %971
  store i64 %978, i64* %RAX, align 8, !tbaa !2428
  %979 = icmp ult i64 %978, %971
  %980 = icmp ult i64 %978, %975
  %981 = or i1 %979, %980
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %16, align 1, !tbaa !2432
  %983 = trunc i64 %978 to i32
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984) #11
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %23, align 1, !tbaa !2446
  %989 = xor i64 %971, %978
  %990 = lshr i64 %989, 4
  %991 = trunc i64 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %28, align 1, !tbaa !2450
  %993 = icmp eq i64 %978, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %31, align 1, !tbaa !2447
  %995 = lshr i64 %978, 63
  %996 = trunc i64 %995 to i8
  store i8 %996, i8* %34, align 1, !tbaa !2448
  %997 = lshr i64 %971, 63
  %998 = xor i64 %995, %997
  %999 = xor i64 %995, %977
  %1000 = add nuw nsw i64 %998, %999
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %40, align 1, !tbaa !2449
  %1003 = load i64, i64* %RBP, align 8
  %1004 = add i64 %1003, -44
  %1005 = add i64 %421, 43
  store i64 %1005, i64* %PC, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RCX, align 8, !tbaa !2428
  %1009 = shl nsw i64 %1008, 3
  %1010 = add i64 %1009, %978
  %1011 = add i64 %421, 48
  store i64 %1011, i64* %PC, align 8
  %1012 = inttoptr i64 %1010 to double*
  %1013 = load double, double* %1012, align 8
  store double %1013, double* %84, align 1, !tbaa !2451
  store double 0.000000e+00, double* %86, align 1, !tbaa !2451
  %1014 = add i64 %1003, -24
  %1015 = add i64 %421, 52
  store i64 %1015, i64* %PC, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %RAX, align 8, !tbaa !2428
  %1018 = add i64 %421, 56
  store i64 %1018, i64* %PC, align 8
  %1019 = load i32, i32* %1006, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = shl nsw i64 %1020, 12
  store i64 %1021, i64* %RCX, align 8, !tbaa !2428
  %1022 = lshr i64 %1020, 51
  %1023 = and i64 %1022, 1
  %1024 = add i64 %1021, %1017
  store i64 %1024, i64* %RAX, align 8, !tbaa !2428
  %1025 = icmp ult i64 %1024, %1017
  %1026 = icmp ult i64 %1024, %1021
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %16, align 1, !tbaa !2432
  %1029 = trunc i64 %1024 to i32
  %1030 = and i32 %1029, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030) #11
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %23, align 1, !tbaa !2446
  %1035 = xor i64 %1017, %1024
  %1036 = lshr i64 %1035, 4
  %1037 = trunc i64 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %28, align 1, !tbaa !2450
  %1039 = icmp eq i64 %1024, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %31, align 1, !tbaa !2447
  %1041 = lshr i64 %1024, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %34, align 1, !tbaa !2448
  %1043 = lshr i64 %1017, 63
  %1044 = xor i64 %1041, %1043
  %1045 = xor i64 %1041, %1023
  %1046 = add nuw nsw i64 %1044, %1045
  %1047 = icmp eq i64 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %40, align 1, !tbaa !2449
  %1049 = add i64 %1003, -40
  %1050 = add i64 %421, 67
  store i64 %1050, i64* %PC, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  store i64 %1053, i64* %RCX, align 8, !tbaa !2428
  %1054 = shl nsw i64 %1053, 3
  %1055 = add i64 %1054, %1024
  %1056 = add i64 %421, 72
  store i64 %1056, i64* %PC, align 8
  %1057 = inttoptr i64 %1055 to double*
  %1058 = load double, double* %1057, align 8
  %1059 = fmul double %1013, %1058
  store double %1059, double* %84, align 1, !tbaa !2451
  store i64 0, i64* %85, align 1, !tbaa !2451
  %1060 = load double, double* %82, align 1
  %1061 = fsub double %1060, %1059
  store double %1061, double* %82, align 1, !tbaa !2451
  %1062 = add i64 %1003, -16
  %1063 = add i64 %421, 80
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RAX, align 8, !tbaa !2428
  %1066 = add i64 %1003, -36
  %1067 = add i64 %421, 84
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = shl nsw i64 %1070, 12
  store i64 %1071, i64* %RCX, align 8, !tbaa !2428
  %1072 = lshr i64 %1070, 51
  %1073 = and i64 %1072, 1
  %1074 = add i64 %1071, %1065
  store i64 %1074, i64* %RAX, align 8, !tbaa !2428
  %1075 = icmp ult i64 %1074, %1065
  %1076 = icmp ult i64 %1074, %1071
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %16, align 1, !tbaa !2432
  %1079 = trunc i64 %1074 to i32
  %1080 = and i32 %1079, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080) #11
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %23, align 1, !tbaa !2446
  %1085 = xor i64 %1065, %1074
  %1086 = lshr i64 %1085, 4
  %1087 = trunc i64 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %28, align 1, !tbaa !2450
  %1089 = icmp eq i64 %1074, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %31, align 1, !tbaa !2447
  %1091 = lshr i64 %1074, 63
  %1092 = trunc i64 %1091 to i8
  store i8 %1092, i8* %34, align 1, !tbaa !2448
  %1093 = lshr i64 %1065, 63
  %1094 = xor i64 %1091, %1093
  %1095 = xor i64 %1091, %1073
  %1096 = add nuw nsw i64 %1094, %1095
  %1097 = icmp eq i64 %1096, 2
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %40, align 1, !tbaa !2449
  %1099 = add i64 %421, 95
  store i64 %1099, i64* %PC, align 8
  %1100 = load i32, i32* %1051, align 4
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RCX, align 8, !tbaa !2428
  %1102 = shl nsw i64 %1101, 3
  %1103 = add i64 %1102, %1074
  %1104 = add i64 %421, 100
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1103 to double*
  store double %1061, double* %1105, align 8
  %1106 = load i64, i64* %RBP, align 8
  %1107 = add i64 %1106, -36
  %1108 = load i64, i64* %PC, align 8
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC, align 8
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = add i32 %1111, 1
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX, align 8, !tbaa !2428
  %1114 = icmp eq i32 %1111, -1
  %1115 = icmp eq i32 %1112, 0
  %1116 = or i1 %1114, %1115
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %16, align 1, !tbaa !2432
  %1118 = and i32 %1112, 255
  %1119 = tail call i32 @llvm.ctpop.i32(i32 %1118) #11
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  store i8 %1122, i8* %23, align 1, !tbaa !2446
  %1123 = xor i32 %1111, %1112
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  store i8 %1126, i8* %28, align 1, !tbaa !2450
  %1127 = zext i1 %1115 to i8
  store i8 %1127, i8* %31, align 1, !tbaa !2447
  %1128 = lshr i32 %1112, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %34, align 1, !tbaa !2448
  %1130 = lshr i32 %1111, 31
  %1131 = xor i32 %1128, %1130
  %1132 = add nuw nsw i32 %1131, %1128
  %1133 = icmp eq i32 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %40, align 1, !tbaa !2449
  %1135 = add i64 %1108, 9
  store i64 %1135, i64* %PC, align 8
  store i32 %1112, i32* %1110, align 4
  %1136 = load i64, i64* %PC, align 8
  %1137 = add i64 %1136, -121
  store i64 %1137, i64* %PC, align 8, !tbaa !2428
  br label %block_401070

block_400fd4:                                     ; preds = %block_400fcb, %block_4010ee
  %1138 = phi i64 [ %.pre4, %block_400fcb ], [ %489, %block_4010ee ]
  %1139 = load i64, i64* %RBP, align 8
  %1140 = add i64 %1139, -40
  %1141 = add i64 %1138, 3
  store i64 %1141, i64* %PC, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX, align 8, !tbaa !2428
  %1145 = add i64 %1139, -8
  %1146 = add i64 %1138, 6
  store i64 %1146, i64* %PC, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sub i32 %1143, %1148
  %1150 = icmp ult i32 %1143, %1148
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %16, align 1, !tbaa !2432
  %1152 = and i32 %1149, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152) #11
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %23, align 1, !tbaa !2446
  %1157 = xor i32 %1148, %1143
  %1158 = xor i32 %1157, %1149
  %1159 = lshr i32 %1158, 4
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  store i8 %1161, i8* %28, align 1, !tbaa !2450
  %1162 = icmp eq i32 %1149, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %31, align 1, !tbaa !2447
  %1164 = lshr i32 %1149, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %34, align 1, !tbaa !2448
  %1166 = lshr i32 %1143, 31
  %1167 = lshr i32 %1148, 31
  %1168 = xor i32 %1167, %1166
  %1169 = xor i32 %1164, %1166
  %1170 = add nuw nsw i32 %1169, %1168
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %40, align 1, !tbaa !2449
  %1173 = icmp ne i8 %1165, 0
  %1174 = xor i1 %1173, %1171
  %.v12 = select i1 %1174, i64 12, i64 301
  %1175 = add i64 %1138, %.v12
  store i64 %1175, i64* %PC, align 8, !tbaa !2428
  br i1 %1174, label %block_400fe0, label %block_401101

block_401002:                                     ; preds = %block_40100e, %block_400fe0
  %1176 = phi i64 [ %922, %block_40100e ], [ %.pre5, %block_400fe0 ]
  %1177 = load i64, i64* %RBP, align 8
  %1178 = add i64 %1177, -36
  %1179 = add i64 %1176, 3
  store i64 %1179, i64* %PC, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RAX, align 8, !tbaa !2428
  %1183 = add i64 %1177, -4
  %1184 = add i64 %1176, 6
  store i64 %1184, i64* %PC, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = sub i32 %1181, %1186
  %1188 = icmp ult i32 %1181, %1186
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %16, align 1, !tbaa !2432
  %1190 = and i32 %1187, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190) #11
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %23, align 1, !tbaa !2446
  %1195 = xor i32 %1186, %1181
  %1196 = xor i32 %1195, %1187
  %1197 = lshr i32 %1196, 4
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %28, align 1, !tbaa !2450
  %1200 = icmp eq i32 %1187, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %31, align 1, !tbaa !2447
  %1202 = lshr i32 %1187, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %34, align 1, !tbaa !2448
  %1204 = lshr i32 %1181, 31
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1205, %1204
  %1207 = xor i32 %1202, %1204
  %1208 = add nuw nsw i32 %1207, %1206
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %40, align 1, !tbaa !2449
  %1211 = icmp ne i8 %1203, 0
  %1212 = xor i1 %1211, %1209
  %.v13 = select i1 %1212, i64 12, i64 103
  %1213 = add i64 %1176, %.v13
  store i64 %1213, i64* %PC, align 8, !tbaa !2428
  br i1 %1212, label %block_40100e, label %block_401069

block_401101:                                     ; preds = %block_400fd4
  %1214 = add i64 %1139, -44
  %1215 = add i64 %1175, 8
  store i64 %1215, i64* %PC, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = add i32 %1217, 1
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX, align 8, !tbaa !2428
  %1220 = icmp eq i32 %1217, -1
  %1221 = icmp eq i32 %1218, 0
  %1222 = or i1 %1220, %1221
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %16, align 1, !tbaa !2432
  %1224 = and i32 %1218, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224) #11
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %23, align 1, !tbaa !2446
  %1229 = xor i32 %1217, %1218
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %28, align 1, !tbaa !2450
  %1233 = zext i1 %1221 to i8
  store i8 %1233, i8* %31, align 1, !tbaa !2447
  %1234 = lshr i32 %1218, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %34, align 1, !tbaa !2448
  %1236 = lshr i32 %1217, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1234
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %40, align 1, !tbaa !2449
  %1241 = add i64 %1175, 14
  store i64 %1241, i64* %PC, align 8
  store i32 %1218, i32* %1216, align 4
  %1242 = load i64, i64* %PC, align 8
  %1243 = add i64 %1242, -574
  store i64 %1243, i64* %PC, align 8, !tbaa !2428
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
  %22 = inttoptr i64 %7 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2428
  %24 = add i64 %7, 8
  store i64 %24, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401570___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401570:
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400780_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_4007b0_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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
  %7 = load i64, i64* %RSP, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -88
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 80
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !2432
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #11
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
  store i8 %26, i8* %27, align 1, !tbaa !2450
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2449
  store i64 262144, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %40 = add i64 %7, -12
  %41 = add i64 %10, 26
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
  store i32 512, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 512, i32* %64, align 4
  %65 = load i64, i64* %RCX, align 8
  %66 = load i64, i64* %PC, align 8
  store i64 %65, i64* %RDI, align 8, !tbaa !2428
  %67 = load i32, i32* %EAX, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  %69 = add i64 %66, -240
  %70 = add i64 %66, 10
  %71 = load i64, i64* %RSP, align 8, !tbaa !2428
  %72 = add i64 %71, -8
  %73 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %73, align 8
  store i64 %72, i64* %RSP, align 8, !tbaa !2428
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  %74 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %69, %struct.Memory* %2)
  %75 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %RAX, align 8
  %79 = add i64 %75, 16
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, -266
  %83 = add i64 %81, 5
  %84 = load i64, i64* %RSP, align 8, !tbaa !2428
  %85 = add i64 %84, -8
  %86 = inttoptr i64 %85 to i64*
  store i64 %83, i64* %86, align 8
  store i64 %85, i64* %RSP, align 8, !tbaa !2428
  store i64 %82, i64* %PC, align 8, !tbaa !2428
  %87 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %82, %struct.Memory* %74)
  %88 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -40
  %91 = load i64, i64* %RAX, align 8
  %92 = add i64 %88, 16
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, -287
  %96 = add i64 %94, 5
  %97 = load i64, i64* %RSP, align 8, !tbaa !2428
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %RSP, align 8, !tbaa !2428
  store i64 %95, i64* %PC, align 8, !tbaa !2428
  %100 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %95, %struct.Memory* %87)
  %101 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %102 = load i64, i64* %RBP, align 8
  %103 = add i64 %102, -48
  %104 = load i64, i64* %RAX, align 8
  %105 = add i64 %101, 16
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, -308
  %109 = add i64 %107, 5
  %110 = load i64, i64* %RSP, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %RSP, align 8, !tbaa !2428
  store i64 %108, i64* %PC, align 8, !tbaa !2428
  %113 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %108, %struct.Memory* %100)
  %114 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %115 = load i64, i64* %RBP, align 8
  %116 = add i64 %115, -56
  %117 = load i64, i64* %RAX, align 8
  %118 = add i64 %114, 16
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, -329
  %122 = add i64 %120, 5
  %123 = load i64, i64* %RSP, align 8, !tbaa !2428
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %RSP, align 8, !tbaa !2428
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  %126 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %121, %struct.Memory* %113)
  %127 = load i64, i64* %PC, align 8
  store i64 262144, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -64
  %130 = load i64, i64* %RAX, align 8
  %131 = add i64 %127, 16
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %PC, align 8
  %134 = add i64 %133, -350
  %135 = add i64 %133, 5
  %136 = load i64, i64* %RSP, align 8, !tbaa !2428
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %135, i64* %138, align 8
  store i64 %137, i64* %RSP, align 8, !tbaa !2428
  store i64 %134, i64* %PC, align 8, !tbaa !2428
  %139 = tail call %struct.Memory* @sub_400820_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %134, %struct.Memory* %126)
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -72
  %142 = load i64, i64* %RAX, align 8
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %145, align 8
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -20
  %148 = load i64, i64* %PC, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RDI, align 8, !tbaa !2428
  %153 = add i64 %146, -24
  %154 = add i64 %148, 6
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RSI, align 8, !tbaa !2428
  %158 = add i64 %146, -32
  %159 = add i64 %148, 10
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RDX, align 8, !tbaa !2428
  %162 = add i64 %146, -40
  %163 = add i64 %148, 14
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %162 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = add i64 %146, -48
  %167 = add i64 %148, 18
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %R8, align 8, !tbaa !2428
  %170 = add i64 %148, 329
  %171 = add i64 %148, 23
  %172 = load i64, i64* %RSP, align 8, !tbaa !2428
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %RSP, align 8, !tbaa !2428
  store i64 %170, i64* %PC, align 8, !tbaa !2428
  %175 = tail call %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* nonnull %0, i64 %170, %struct.Memory* %139)
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -20
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %177 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RDI, align 8, !tbaa !2428
  %183 = add i64 %176, -24
  %184 = add i64 %178, 6
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RSI, align 8, !tbaa !2428
  %188 = add i64 %176, -32
  %189 = add i64 %178, 10
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RDX, align 8, !tbaa !2428
  %192 = add i64 %176, -40
  %193 = add i64 %178, 14
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RCX, align 8, !tbaa !2428
  %196 = add i64 %176, -48
  %197 = add i64 %178, 18
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %R8, align 8, !tbaa !2428
  %200 = add i64 %178, 674
  %201 = add i64 %178, 23
  %202 = load i64, i64* %RSP, align 8, !tbaa !2428
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %RSP, align 8, !tbaa !2428
  store i64 %200, i64* %PC, align 8, !tbaa !2428
  %205 = tail call %struct.Memory* @sub_400c40_kernel_gramschmidt_renamed_(%struct.State* nonnull %0, i64 %200, %struct.Memory* %175)
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
  %218 = add i64 %206, -56
  %219 = add i64 %208, 10
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RDX, align 8, !tbaa !2428
  %222 = add i64 %206, -64
  %223 = add i64 %208, 14
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  %226 = add i64 %206, -72
  %227 = add i64 %208, 18
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %R8, align 8, !tbaa !2428
  %230 = add i64 %208, 283
  %231 = add i64 %208, 23
  %232 = load i64, i64* %RSP, align 8, !tbaa !2428
  %233 = add i64 %232, -8
  %234 = inttoptr i64 %233 to i64*
  store i64 %231, i64* %234, align 8
  store i64 %233, i64* %RSP, align 8, !tbaa !2428
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  %235 = tail call %struct.Memory* @sub_400ad0_init_array_renamed_(%struct.State* nonnull %0, i64 %230, %struct.Memory* %205)
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -20
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %237 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RDI, align 8, !tbaa !2428
  %243 = add i64 %236, -24
  %244 = add i64 %238, 6
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RSI, align 8, !tbaa !2428
  %248 = add i64 %236, -56
  %249 = add i64 %238, 10
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RDX, align 8, !tbaa !2428
  %252 = add i64 %236, -64
  %253 = add i64 %238, 14
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RCX, align 8, !tbaa !2428
  %256 = add i64 %236, -72
  %257 = add i64 %238, 18
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %R8, align 8, !tbaa !2428
  %260 = add i64 %238, 1252
  %261 = add i64 %238, 23
  %262 = load i64, i64* %RSP, align 8, !tbaa !2428
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %RSP, align 8, !tbaa !2428
  store i64 %260, i64* %PC, align 8, !tbaa !2428
  %265 = tail call %struct.Memory* @sub_400eb0_kernel_gramschmidt_StrictFP_renamed_(%struct.State* nonnull %0, i64 %260, %struct.Memory* %235)
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -20
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  %273 = add i64 %266, -24
  %274 = add i64 %268, 6
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI, align 8, !tbaa !2428
  %278 = add i64 %266, -32
  %279 = add i64 %268, 10
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RDX, align 8, !tbaa !2428
  %282 = add i64 %266, -56
  %283 = add i64 %268, 14
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RCX, align 8, !tbaa !2428
  %286 = add i64 %268, 1853
  %287 = add i64 %268, 19
  %288 = load i64, i64* %RSP, align 8, !tbaa !2428
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %RSP, align 8, !tbaa !2428
  store i64 %286, i64* %PC, align 8, !tbaa !2428
  %291 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %286, %struct.Memory* %265)
  %292 = load i32, i32* %EAX, align 4
  %293 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %294 = and i32 %292, 255
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294) #11
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  %299 = icmp eq i32 %292, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %30, align 1, !tbaa !2447
  %301 = lshr i32 %292, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %39, align 1, !tbaa !2449
  %.v = select i1 %299, i64 9, i64 21
  %303 = add i64 %293, %.v
  store i64 %303, i64* %PC, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP, align 8
  br i1 %299, label %block_4009ff, label %block_400a0b

block_4009ff:                                     ; preds = %block_4008e0
  %305 = add i64 %304, -4
  %306 = add i64 %303, 7
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 1, i32* %307, align 4
  %308 = load i64, i64* %PC, align 8
  %309 = add i64 %308, 187
  store i64 %309, i64* %PC, align 8, !tbaa !2428
  br label %block_400ac1

block_400a5b:                                     ; preds = %block_400a33
  %310 = add i64 %451, -20
  %311 = add i64 %450, 3
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %451, -24
  %316 = add i64 %450, 6
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RSI, align 8, !tbaa !2428
  %320 = add i64 %451, -56
  %321 = add i64 %450, 10
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RDX, align 8, !tbaa !2428
  %324 = add i64 %451, -64
  %325 = add i64 %450, 14
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RCX, align 8, !tbaa !2428
  %328 = add i64 %451, -72
  %329 = add i64 %450, 18
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %R8, align 8, !tbaa !2428
  %332 = add i64 %450, 2037
  %333 = add i64 %450, 23
  %334 = load i64, i64* %RSP, align 8, !tbaa !2428
  %335 = add i64 %334, -8
  %336 = inttoptr i64 %335 to i64*
  store i64 %333, i64* %336, align 8
  store i64 %335, i64* %RSP, align 8, !tbaa !2428
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  %337 = tail call %struct.Memory* @sub_401250_print_array_renamed_(%struct.State* nonnull %0, i64 %332, %struct.Memory* %438)
  %338 = load i64, i64* %RBP, align 8
  %339 = add i64 %338, -32
  %340 = load i64, i64* %PC, align 8
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RCX, align 8, !tbaa !2428
  store i64 %343, i64* %RDI, align 8, !tbaa !2428
  %344 = add i64 %340, -1234
  %345 = add i64 %340, 12
  %346 = load i64, i64* %RSP, align 8, !tbaa !2428
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %345, i64* %348, align 8
  store i64 %347, i64* %RSP, align 8, !tbaa !2428
  store i64 %344, i64* %PC, align 8, !tbaa !2428
  %349 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %337)
  %350 = load i64, i64* %RBP, align 8
  %351 = add i64 %350, -40
  %352 = load i64, i64* %PC, align 8
  %353 = add i64 %352, 4
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %351 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RCX, align 8, !tbaa !2428
  store i64 %355, i64* %RDI, align 8, !tbaa !2428
  %356 = add i64 %352, -1246
  %357 = add i64 %352, 12
  %358 = load i64, i64* %RSP, align 8, !tbaa !2428
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %RSP, align 8, !tbaa !2428
  store i64 %356, i64* %PC, align 8, !tbaa !2428
  %361 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %349)
  %362 = load i64, i64* %RBP, align 8
  %363 = add i64 %362, -48
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  store i64 %367, i64* %RDI, align 8, !tbaa !2428
  %368 = add i64 %364, -1258
  %369 = add i64 %364, 12
  %370 = load i64, i64* %RSP, align 8, !tbaa !2428
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372, align 8
  store i64 %371, i64* %RSP, align 8, !tbaa !2428
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  %373 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %361)
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -56
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  %380 = add i64 %376, -1270
  %381 = add i64 %376, 12
  %382 = load i64, i64* %RSP, align 8, !tbaa !2428
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %RSP, align 8, !tbaa !2428
  store i64 %380, i64* %PC, align 8, !tbaa !2428
  %385 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %373)
  %386 = load i64, i64* %RBP, align 8
  %387 = add i64 %386, -64
  %388 = load i64, i64* %PC, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RCX, align 8, !tbaa !2428
  store i64 %391, i64* %RDI, align 8, !tbaa !2428
  %392 = add i64 %388, -1282
  %393 = add i64 %388, 12
  %394 = load i64, i64* %RSP, align 8, !tbaa !2428
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %393, i64* %396, align 8
  store i64 %395, i64* %RSP, align 8, !tbaa !2428
  store i64 %392, i64* %PC, align 8, !tbaa !2428
  %397 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %385)
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -72
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RCX, align 8, !tbaa !2428
  store i64 %403, i64* %RDI, align 8, !tbaa !2428
  %404 = add i64 %400, -1294
  %405 = add i64 %400, 12
  %406 = load i64, i64* %RSP, align 8, !tbaa !2428
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %RSP, align 8, !tbaa !2428
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  %409 = tail call fastcc %struct.Memory* @ext_6020e0_free(%struct.State* nonnull %0, %struct.Memory* %397)
  %410 = load i64, i64* %RBP, align 8
  %411 = add i64 %410, -4
  %412 = load i64, i64* %PC, align 8
  %413 = add i64 %412, 7
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %411 to i32*
  store i32 0, i32* %414, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400ac1

block_400a33:                                     ; preds = %block_400a0b
  %415 = add i64 %493, -20
  %416 = add i64 %492, 3
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RDI, align 8, !tbaa !2428
  %420 = add i64 %493, -24
  %421 = add i64 %492, 6
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RSI, align 8, !tbaa !2428
  %425 = add i64 %493, -48
  %426 = add i64 %492, 10
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i64*
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %RDX, align 8, !tbaa !2428
  %429 = add i64 %493, -72
  %430 = add i64 %492, 14
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i64*
  %432 = load i64, i64* %431, align 8
  store i64 %432, i64* %RCX, align 8, !tbaa !2428
  %433 = add i64 %492, 1773
  %434 = add i64 %492, 19
  %435 = load i64, i64* %RSP, align 8, !tbaa !2428
  %436 = add i64 %435, -8
  %437 = inttoptr i64 %436 to i64*
  store i64 %434, i64* %437, align 8
  store i64 %436, i64* %RSP, align 8, !tbaa !2428
  store i64 %433, i64* %PC, align 8, !tbaa !2428
  %438 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %433, %struct.Memory* %480)
  %439 = load i32, i32* %EAX, align 4
  %440 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %441 = and i32 %439, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #11
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  %446 = icmp eq i32 %439, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %30, align 1, !tbaa !2447
  %448 = lshr i32 %439, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %39, align 1, !tbaa !2449
  %.v2 = select i1 %446, i64 9, i64 21
  %450 = add i64 %440, %.v2
  store i64 %450, i64* %PC, align 8, !tbaa !2428
  %451 = load i64, i64* %RBP, align 8
  br i1 %446, label %block_400a4f, label %block_400a5b

block_400a4f:                                     ; preds = %block_400a33
  %452 = add i64 %451, -4
  %453 = add i64 %450, 7
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 1, i32* %454, align 4
  %455 = load i64, i64* %PC, align 8
  %456 = add i64 %455, 107
  store i64 %456, i64* %PC, align 8, !tbaa !2428
  br label %block_400ac1

block_400a0b:                                     ; preds = %block_4008e0
  %457 = add i64 %304, -20
  %458 = add i64 %303, 3
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RDI, align 8, !tbaa !2428
  %462 = add i64 %304, -24
  %463 = add i64 %303, 6
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RSI, align 8, !tbaa !2428
  %467 = add i64 %304, -40
  %468 = add i64 %303, 10
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RDX, align 8, !tbaa !2428
  %471 = add i64 %304, -64
  %472 = add i64 %303, 14
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %471 to i64*
  %474 = load i64, i64* %473, align 8
  store i64 %474, i64* %RCX, align 8, !tbaa !2428
  %475 = add i64 %303, 1813
  %476 = add i64 %303, 19
  %477 = load i64, i64* %RSP, align 8, !tbaa !2428
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %RSP, align 8, !tbaa !2428
  store i64 %475, i64* %PC, align 8, !tbaa !2428
  %480 = tail call %struct.Memory* @sub_401120_check_FP_renamed_(%struct.State* nonnull %0, i64 %475, %struct.Memory* %291)
  %481 = load i32, i32* %EAX, align 4
  %482 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %483 = and i32 %481, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483) #11
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  %488 = icmp eq i32 %481, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %30, align 1, !tbaa !2447
  %490 = lshr i32 %481, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %39, align 1, !tbaa !2449
  %.v1 = select i1 %488, i64 9, i64 21
  %492 = add i64 %482, %.v1
  store i64 %492, i64* %PC, align 8, !tbaa !2428
  %493 = load i64, i64* %RBP, align 8
  br i1 %488, label %block_400a27, label %block_400a33

block_400a27:                                     ; preds = %block_400a0b
  %494 = add i64 %493, -4
  %495 = add i64 %492, 7
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i32*
  store i32 1, i32* %496, align 4
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 147
  store i64 %498, i64* %PC, align 8, !tbaa !2428
  br label %block_400ac1

block_400ac1:                                     ; preds = %block_400a27, %block_400a4f, %block_400a5b, %block_4009ff
  %499 = phi i64 [ %.pre, %block_400a5b ], [ %456, %block_400a4f ], [ %498, %block_400a27 ], [ %309, %block_4009ff ]
  %MEMORY.0 = phi %struct.Memory* [ %409, %block_400a5b ], [ %438, %block_400a4f ], [ %480, %block_400a27 ], [ %291, %block_4009ff ]
  %500 = load i64, i64* %RBP, align 8
  %501 = add i64 %500, -4
  %502 = add i64 %499, 3
  store i64 %502, i64* %PC, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RAX, align 8, !tbaa !2428
  %506 = load i64, i64* %RSP, align 8
  %507 = add i64 %506, 80
  store i64 %507, i64* %RSP, align 8, !tbaa !2428
  %508 = icmp ugt i64 %506, -81
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %14, align 1, !tbaa !2432
  %510 = trunc i64 %507 to i32
  %511 = and i32 %510, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511) #11
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1, !tbaa !2446
  %516 = xor i64 %506, 16
  %517 = xor i64 %516, %507
  %518 = lshr i64 %517, 4
  %519 = trunc i64 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %27, align 1, !tbaa !2450
  %521 = icmp eq i64 %507, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %30, align 1, !tbaa !2447
  %523 = lshr i64 %507, 63
  %524 = trunc i64 %523 to i8
  store i8 %524, i8* %33, align 1, !tbaa !2448
  %525 = lshr i64 %506, 63
  %526 = xor i64 %523, %525
  %527 = add nuw nsw i64 %526, %523
  %528 = icmp eq i64 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %39, align 1, !tbaa !2449
  %530 = add i64 %499, 8
  store i64 %530, i64* %PC, align 8
  %531 = add i64 %506, 88
  %532 = inttoptr i64 %507 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RBP, align 8, !tbaa !2428
  store i64 %531, i64* %RSP, align 8, !tbaa !2428
  %534 = add i64 %499, 9
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %531 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %PC, align 8, !tbaa !2428
  %537 = add i64 %506, 96
  store i64 %537, i64* %RSP, align 8, !tbaa !2428
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
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)) to i32), i32 255)) #11
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
  %20 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), label %block_400678, label %block_400661

block_400678:                                     ; preds = %block_400661, %block_400650
  %21 = phi i64 [ %28, %block_400661 ], [ %20, %block_400650 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %6 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %27 = add i64 %6, 8
  store i64 %27, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400661:                                     ; preds = %block_400650
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2447
  store i8 0, i8* %18, align 1, !tbaa !2448
  store i8 0, i8* %19, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %28 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64* @stderr to i64), i64 4294967295), i64 ptrtoint (i64* @stderr to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %28, i64* %PC, align 8, !tbaa !2428
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
  %11 = load i64, i64* %RSP, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %9, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -104
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 96
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #11
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 %12, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2450
  %31 = icmp eq i64 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2447
  %34 = lshr i64 %15, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2448
  %37 = lshr i64 %12, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2449
  %43 = add i64 %11, -12
  %44 = load i32, i32* %EDI, align 4
  %45 = add i64 %14, 10
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -8
  %49 = load i32, i32* %ESI, align 4
  %50 = load i64, i64* %PC, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RDX, align 8
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RCX, align 8
  %62 = load i64, i64* %PC, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %R8, align 8
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -36
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401271

block_4013fe:                                     ; preds = %block_401349
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %79 = load i64, i64* @stderr, align 32
  store i64 %79, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %80 = add i64 %621, -3630
  %81 = add i64 %621, 25
  %82 = load i64, i64* %RSP, align 8, !tbaa !2428
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  %85 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -36
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 7
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 0, i32* %90, align 4
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -72
  %93 = load i32, i32* %EAX, align 4
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_401421

block_40127d:                                     ; preds = %block_401271
  %97 = add i64 %734, -40
  %98 = add i64 %770, 7
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i32*
  store i32 0, i32* %99, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_401284

block_4013eb:                                     ; preds = %block_40135c
  %100 = add i64 %131, -36
  %101 = add i64 %167, 8
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  %106 = icmp eq i32 %103, -1
  %107 = icmp eq i32 %104, 0
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %18, align 1, !tbaa !2432
  %110 = and i32 %104, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #11
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %25, align 1, !tbaa !2446
  %115 = xor i32 %103, %104
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %30, align 1, !tbaa !2450
  %119 = zext i1 %107 to i8
  store i8 %119, i8* %33, align 1, !tbaa !2447
  %120 = lshr i32 %104, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %36, align 1, !tbaa !2448
  %122 = lshr i32 %103, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %120
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %42, align 1, !tbaa !2449
  %127 = add i64 %167, 14
  store i64 %127, i64* %PC, align 8
  store i32 %104, i32* %102, align 4
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, -176
  store i64 %129, i64* %PC, align 8, !tbaa !2428
  br label %block_401349

block_40135c:                                     ; preds = %block_401355, %block_4013d8
  %130 = phi i64 [ %.pre8, %block_401355 ], [ %199, %block_4013d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.5, %block_401355 ], [ %MEMORY.1, %block_4013d8 ]
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -40
  %133 = add i64 %130, 3
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = add i64 %131, -8
  %138 = add i64 %130, 6
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sub i32 %135, %140
  %142 = icmp ult i32 %135, %140
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %18, align 1, !tbaa !2432
  %144 = and i32 %141, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #11
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2446
  %149 = xor i32 %140, %135
  %150 = xor i32 %149, %141
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %30, align 1, !tbaa !2450
  %154 = icmp eq i32 %141, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %33, align 1, !tbaa !2447
  %156 = lshr i32 %141, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %36, align 1, !tbaa !2448
  %158 = lshr i32 %135, 31
  %159 = lshr i32 %140, 31
  %160 = xor i32 %159, %158
  %161 = xor i32 %156, %158
  %162 = add nuw nsw i32 %161, %160
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %42, align 1, !tbaa !2449
  %165 = icmp ne i8 %157, 0
  %166 = xor i1 %165, %163
  %.v20 = select i1 %166, i64 12, i64 143
  %167 = add i64 %130, %.v20
  store i64 %167, i64* %PC, align 8, !tbaa !2428
  br i1 %166, label %block_401368, label %block_4013eb

block_4013d8:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2, %block_4013bc
  %168 = phi i64 [ %502, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %.pre11, %block_4013bc ]
  %MEMORY.1 = phi %struct.Memory* [ %492, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ], [ %297, %block_4013bc ]
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -40
  %171 = add i64 %168, 8
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = icmp eq i32 %173, -1
  %177 = icmp eq i32 %174, 0
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %18, align 1, !tbaa !2432
  %180 = and i32 %174, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #11
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %25, align 1, !tbaa !2446
  %185 = xor i32 %173, %174
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %30, align 1, !tbaa !2450
  %189 = zext i1 %177 to i8
  store i8 %189, i8* %33, align 1, !tbaa !2447
  %190 = lshr i32 %174, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %36, align 1, !tbaa !2448
  %192 = lshr i32 %173, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %190
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %42, align 1, !tbaa !2449
  %197 = add i64 %168, 14
  store i64 %197, i64* %PC, align 8
  store i32 %174, i32* %172, align 4
  %198 = load i64, i64* %PC, align 8
  %199 = add i64 %198, -138
  store i64 %199, i64* %PC, align 8, !tbaa !2428
  br label %block_40135c

block_4014d6:                                     ; preds = %block_401421
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %200 = load i64, i64* @stderr, align 32
  store i64 %200, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %201 = add i64 %540, -3846
  %202 = add i64 %540, 25
  %203 = load i64, i64* %RSP, align 8, !tbaa !2428
  %204 = add i64 %203, -8
  %205 = inttoptr i64 %204 to i64*
  store i64 %202, i64* %205, align 8
  store i64 %204, i64* %RSP, align 8, !tbaa !2428
  store i64 %201, i64* %PC, align 8, !tbaa !2428
  %206 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -88
  %209 = load i32, i32* %EAX, align 4
  %210 = load i64, i64* %PC, align 8
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %208 to i32*
  store i32 %209, i32* %212, align 4
  %213 = load i64, i64* %RSP, align 8
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %213, 96
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  %216 = icmp ugt i64 %213, -97
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %18, align 1, !tbaa !2432
  %218 = trunc i64 %215 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #11
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %25, align 1, !tbaa !2446
  %224 = xor i64 %213, %215
  %225 = lshr i64 %224, 4
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %30, align 1, !tbaa !2450
  %228 = icmp eq i64 %215, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %33, align 1, !tbaa !2447
  %230 = lshr i64 %215, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %36, align 1, !tbaa !2448
  %232 = lshr i64 %213, 63
  %233 = xor i64 %230, %232
  %234 = add nuw nsw i64 %233, %230
  %235 = icmp eq i64 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %42, align 1, !tbaa !2449
  %237 = add i64 %214, 5
  store i64 %237, i64* %PC, align 8
  %238 = add i64 %213, 104
  %239 = inttoptr i64 %215 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RBP, align 8, !tbaa !2428
  store i64 %238, i64* %RSP, align 8, !tbaa !2428
  %241 = add i64 %214, 6
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %238 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  %244 = add i64 %213, 112
  store i64 %244, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %206

block_401355:                                     ; preds = %block_401349
  %245 = add i64 %585, -40
  %246 = add i64 %621, 7
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  store i32 0, i32* %247, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40135c

block_4012e4:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %248 = load i64, i64* @stderr, align 32
  store i64 %248, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %249 = add i64 %732, -3348
  %250 = add i64 %732, 25
  %251 = load i64, i64* %RSP, align 8, !tbaa !2428
  %252 = add i64 %251, -8
  %253 = inttoptr i64 %252 to i64*
  store i64 %250, i64* %253, align 8
  store i64 %252, i64* %RSP, align 8, !tbaa !2428
  store i64 %249, i64* %PC, align 8, !tbaa !2428
  %254 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %722)
  %255 = load i64, i64* %RBP, align 8
  %256 = add i64 %255, -52
  %257 = load i32, i32* %EAX, align 4
  %258 = load i64, i64* %PC, align 8
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC, align 8
  %260 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %260, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_401300

block_4014c3:                                     ; preds = %block_401434
  %261 = add i64 %305, -36
  %262 = add i64 %341, 8
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %264, 1
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  %267 = icmp eq i32 %264, -1
  %268 = icmp eq i32 %265, 0
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %18, align 1, !tbaa !2432
  %271 = and i32 %265, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #11
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %25, align 1, !tbaa !2446
  %276 = xor i32 %264, %265
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %30, align 1, !tbaa !2450
  %280 = zext i1 %268 to i8
  store i8 %280, i8* %33, align 1, !tbaa !2447
  %281 = lshr i32 %265, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %36, align 1, !tbaa !2448
  %283 = lshr i32 %264, 31
  %284 = xor i32 %281, %283
  %285 = add nuw nsw i32 %284, %281
  %286 = icmp eq i32 %285, 2
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %42, align 1, !tbaa !2449
  %288 = add i64 %341, 14
  store i64 %288, i64* %PC, align 8
  store i32 %265, i32* %263, align 4
  %289 = load i64, i64* %PC, align 8
  %290 = add i64 %289, -176
  store i64 %290, i64* %PC, align 8, !tbaa !2428
  br label %block_401421

block_4013bc:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %291 = load i64, i64* @stderr, align 32
  store i64 %291, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %292 = add i64 %502, -3564
  %293 = add i64 %502, 25
  %294 = load i64, i64* %RSP, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %RSP, align 8, !tbaa !2428
  store i64 %292, i64* %PC, align 8, !tbaa !2428
  %297 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %492)
  %298 = load i64, i64* %RBP, align 8
  %299 = add i64 %298, -68
  %300 = load i32, i32* %EAX, align 4
  %301 = load i64, i64* %PC, align 8
  %302 = add i64 %301, 3
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %299 to i32*
  store i32 %300, i32* %303, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_4013d8

block_401434:                                     ; preds = %block_40142d, %block_4014b0
  %304 = phi i64 [ %.pre13, %block_40142d ], [ %373, %block_4014b0 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_40142d ], [ %MEMORY.3, %block_4014b0 ]
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -40
  %307 = add i64 %304, 3
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RAX, align 8, !tbaa !2428
  %311 = add i64 %305, -8
  %312 = add i64 %304, 6
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sub i32 %309, %314
  %316 = icmp ult i32 %309, %314
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %18, align 1, !tbaa !2432
  %318 = and i32 %315, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318) #11
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %25, align 1, !tbaa !2446
  %323 = xor i32 %314, %309
  %324 = xor i32 %323, %315
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %30, align 1, !tbaa !2450
  %328 = icmp eq i32 %315, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %33, align 1, !tbaa !2447
  %330 = lshr i32 %315, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %36, align 1, !tbaa !2448
  %332 = lshr i32 %309, 31
  %333 = lshr i32 %314, 31
  %334 = xor i32 %333, %332
  %335 = xor i32 %330, %332
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %42, align 1, !tbaa !2449
  %339 = icmp ne i8 %331, 0
  %340 = xor i1 %339, %337
  %.v23 = select i1 %340, i64 12, i64 143
  %341 = add i64 %304, %.v23
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  br i1 %340, label %block_401440, label %block_4014c3

block_4014b0:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401494
  %342 = phi i64 [ %884, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %.pre16, %block_401494 ]
  %MEMORY.3 = phi %struct.Memory* [ %874, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %547, %block_401494 ]
  %343 = load i64, i64* %RBP, align 8
  %344 = add i64 %343, -40
  %345 = add i64 %342, 8
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = add i32 %347, 1
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX, align 8, !tbaa !2428
  %350 = icmp eq i32 %347, -1
  %351 = icmp eq i32 %348, 0
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %18, align 1, !tbaa !2432
  %354 = and i32 %348, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354) #11
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %25, align 1, !tbaa !2446
  %359 = xor i32 %347, %348
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %30, align 1, !tbaa !2450
  %363 = zext i1 %351 to i8
  store i8 %363, i8* %33, align 1, !tbaa !2447
  %364 = lshr i32 %348, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %36, align 1, !tbaa !2448
  %366 = lshr i32 %347, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %364
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %42, align 1, !tbaa !2449
  %371 = add i64 %342, 14
  store i64 %371, i64* %PC, align 8
  store i32 %348, i32* %346, align 4
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, -138
  store i64 %373, i64* %PC, align 8, !tbaa !2428
  br label %block_401434

block_401326:                                     ; preds = %block_401271
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %374 = load i64, i64* @stderr, align 32
  store i64 %374, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %375 = add i64 %770, -3414
  %376 = add i64 %770, 25
  %377 = load i64, i64* %RSP, align 8, !tbaa !2428
  %378 = add i64 %377, -8
  %379 = inttoptr i64 %378 to i64*
  store i64 %376, i64* %379, align 8
  store i64 %378, i64* %RSP, align 8, !tbaa !2428
  store i64 %375, i64* %PC, align 8, !tbaa !2428
  %380 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %381 = load i64, i64* %RBP, align 8
  %382 = add i64 %381, -36
  %383 = load i64, i64* %PC, align 8
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %382 to i32*
  store i32 0, i32* %385, align 4
  %386 = load i64, i64* %RBP, align 8
  %387 = add i64 %386, -56
  %388 = load i32, i32* %EAX, align 4
  %389 = load i64, i64* %PC, align 8
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %387 to i32*
  store i32 %388, i32* %391, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401349

block_401368:                                     ; preds = %block_40135c
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %392 = load i64, i64* @stderr, align 32
  store i64 %392, i64* %RDI, align 8, !tbaa !2428
  %393 = add i64 %131, -24
  %394 = add i64 %167, 22
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX, align 8, !tbaa !2428
  %397 = add i64 %131, -36
  %398 = add i64 %167, 26
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = shl nsw i64 %401, 12
  store i64 %402, i64* %RCX, align 8, !tbaa !2428
  %403 = lshr i64 %401, 51
  %404 = and i64 %403, 1
  %405 = add i64 %402, %396
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = icmp ult i64 %405, %396
  %407 = icmp ult i64 %405, %402
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %18, align 1, !tbaa !2432
  %410 = trunc i64 %405 to i32
  %411 = and i32 %410, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #11
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %25, align 1, !tbaa !2446
  %416 = xor i64 %396, %405
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %30, align 1, !tbaa !2450
  %420 = icmp eq i64 %405, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %33, align 1, !tbaa !2447
  %422 = lshr i64 %405, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %36, align 1, !tbaa !2448
  %424 = lshr i64 %396, 63
  %425 = xor i64 %422, %424
  %426 = xor i64 %422, %404
  %427 = add nuw nsw i64 %425, %426
  %428 = icmp eq i64 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %42, align 1, !tbaa !2449
  %430 = add i64 %167, 37
  store i64 %430, i64* %PC, align 8
  %431 = load i32, i32* %134, align 4
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RCX, align 8, !tbaa !2428
  %433 = shl nsw i64 %432, 3
  %434 = add i64 %433, %405
  %435 = add i64 %167, 42
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i64*
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %437, i64* %438, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %439 = add i64 %167, -3480
  %440 = add i64 %167, 49
  %441 = load i64, i64* %RSP, align 8, !tbaa !2428
  %442 = add i64 %441, -8
  %443 = inttoptr i64 %442 to i64*
  store i64 %440, i64* %443, align 8
  store i64 %442, i64* %RSP, align 8, !tbaa !2428
  store i64 %439, i64* %PC, align 8, !tbaa !2428
  %444 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %445 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP, align 8
  %447 = add i64 %446, -36
  %448 = add i64 %445, 9
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %447 to i32*
  %450 = load i32, i32* %449, align 4
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %R8, align 8, !tbaa !2428
  %452 = add i64 %446, -60
  %453 = load i32, i32* %EAX, align 4
  %454 = add i64 %445, 12
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* %R8D, align 4
  %457 = zext i32 %456 to i64
  %458 = load i64, i64* %PC, align 8
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %459 = load i64, i64* %RBP, align 8
  %460 = add i64 %459, -64
  %461 = load i32, i32* %EDX, align 4
  %462 = add i64 %458, 6
  store i64 %462, i64* %PC, align 8
  %463 = inttoptr i64 %460 to i32*
  store i32 %461, i32* %463, align 4
  %464 = load i64, i64* %PC, align 8
  %465 = load i32, i32* %EAX, align 8, !tbaa !2456
  %466 = sext i32 %465 to i64
  %467 = lshr i64 %466, 32
  store i64 %467, i64* %78, align 8, !tbaa !2428
  %468 = load i64, i64* %RBP, align 8
  %469 = add i64 %468, -64
  %470 = add i64 %464, 5
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %R8, align 8, !tbaa !2428
  %474 = add i64 %464, 8
  store i64 %474, i64* %PC, align 8
  %475 = zext i32 %465 to i64
  %476 = sext i32 %472 to i64
  %477 = shl nuw i64 %467, 32
  %478 = or i64 %477, %475
  %479 = sdiv i64 %478, %476
  %480 = shl i64 %479, 32
  %481 = ashr exact i64 %480, 32
  %482 = icmp eq i64 %479, %481
  br i1 %482, label %485, label %483

; <label>:483:                                    ; preds = %block_401368
  %484 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %474, %struct.Memory* %444) #12
  %.pre9 = load i32, i32* %EDX, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:485:                                    ; preds = %block_401368
  %486 = srem i64 %478, %476
  %487 = and i64 %479, 4294967295
  store i64 %487, i64* %RAX, align 8, !tbaa !2428
  %488 = and i64 %486, 4294967295
  store i64 %488, i64* %78, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %33, align 1, !tbaa !2447
  store i8 0, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %489 = trunc i64 %486 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %485, %483
  %490 = phi i64 [ %.pre10, %483 ], [ %474, %485 ]
  %491 = phi i32 [ %.pre9, %483 ], [ %489, %485 ]
  %492 = phi %struct.Memory* [ %484, %483 ], [ %444, %485 ]
  store i8 0, i8* %18, align 1, !tbaa !2432
  %493 = and i32 %491, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493) #11
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  %498 = icmp eq i32 %491, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %33, align 1, !tbaa !2447
  %500 = lshr i32 %491, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %.v21 = select i1 %498, i64 9, i64 37
  %502 = add i64 %490, %.v21
  store i64 %502, i64* %PC, align 8, !tbaa !2428
  br i1 %498, label %block_4013bc, label %block_4013d8

block_401421:                                     ; preds = %block_4014c3, %block_4013fe
  %503 = phi i64 [ %.pre12, %block_4013fe ], [ %290, %block_4014c3 ]
  %MEMORY.4 = phi %struct.Memory* [ %85, %block_4013fe ], [ %MEMORY.2, %block_4014c3 ]
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -36
  %506 = add i64 %503, 3
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = add i64 %504, -4
  %511 = add i64 %503, 6
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = sub i32 %508, %513
  %515 = icmp ult i32 %508, %513
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %18, align 1, !tbaa !2432
  %517 = and i32 %514, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517) #11
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %25, align 1, !tbaa !2446
  %522 = xor i32 %513, %508
  %523 = xor i32 %522, %514
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %30, align 1, !tbaa !2450
  %527 = icmp eq i32 %514, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %33, align 1, !tbaa !2447
  %529 = lshr i32 %514, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %36, align 1, !tbaa !2448
  %531 = lshr i32 %508, 31
  %532 = lshr i32 %513, 31
  %533 = xor i32 %532, %531
  %534 = xor i32 %529, %531
  %535 = add nuw nsw i32 %534, %533
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %42, align 1, !tbaa !2449
  %538 = icmp ne i8 %530, 0
  %539 = xor i1 %538, %536
  %.v22 = select i1 %539, i64 12, i64 181
  %540 = add i64 %503, %.v22
  store i64 %540, i64* %PC, align 8, !tbaa !2428
  br i1 %539, label %block_40142d, label %block_4014d6

block_401494:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %541 = load i64, i64* @stderr, align 32
  store i64 %541, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %542 = add i64 %884, -3780
  %543 = add i64 %884, 25
  %544 = load i64, i64* %RSP, align 8, !tbaa !2428
  %545 = add i64 %544, -8
  %546 = inttoptr i64 %545 to i64*
  store i64 %543, i64* %546, align 8
  store i64 %545, i64* %RSP, align 8, !tbaa !2428
  store i64 %542, i64* %PC, align 8, !tbaa !2428
  %547 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %874)
  %548 = load i64, i64* %RBP, align 8
  %549 = add i64 %548, -84
  %550 = load i32, i32* %EAX, align 4
  %551 = load i64, i64* %PC, align 8
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %549 to i32*
  store i32 %550, i32* %553, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_4014b0

block_401313:                                     ; preds = %block_401284
  %554 = add i64 %886, -36
  %555 = add i64 %922, 8
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, 1
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = icmp eq i32 %557, -1
  %561 = icmp eq i32 %558, 0
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %18, align 1, !tbaa !2432
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564) #11
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %25, align 1, !tbaa !2446
  %569 = xor i32 %557, %558
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %30, align 1, !tbaa !2450
  %573 = zext i1 %561 to i8
  store i8 %573, i8* %33, align 1, !tbaa !2447
  %574 = lshr i32 %558, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %36, align 1, !tbaa !2448
  %576 = lshr i32 %557, 31
  %577 = xor i32 %574, %576
  %578 = add nuw nsw i32 %577, %574
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %42, align 1, !tbaa !2449
  %581 = add i64 %922, 14
  store i64 %581, i64* %PC, align 8
  store i32 %558, i32* %556, align 4
  %582 = load i64, i64* %PC, align 8
  %583 = add i64 %582, -176
  store i64 %583, i64* %PC, align 8, !tbaa !2428
  br label %block_401271

block_401349:                                     ; preds = %block_401326, %block_4013eb
  %584 = phi i64 [ %.pre7, %block_401326 ], [ %129, %block_4013eb ]
  %MEMORY.5 = phi %struct.Memory* [ %380, %block_401326 ], [ %MEMORY.0, %block_4013eb ]
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -36
  %587 = add i64 %584, 3
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX, align 8, !tbaa !2428
  %591 = add i64 %585, -8
  %592 = add i64 %584, 6
  store i64 %592, i64* %PC, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sub i32 %589, %594
  %596 = icmp ult i32 %589, %594
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %18, align 1, !tbaa !2432
  %598 = and i32 %595, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598) #11
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %25, align 1, !tbaa !2446
  %603 = xor i32 %594, %589
  %604 = xor i32 %603, %595
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %30, align 1, !tbaa !2450
  %608 = icmp eq i32 %595, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %33, align 1, !tbaa !2447
  %610 = lshr i32 %595, 31
  %611 = trunc i32 %610 to i8
  store i8 %611, i8* %36, align 1, !tbaa !2448
  %612 = lshr i32 %589, 31
  %613 = lshr i32 %594, 31
  %614 = xor i32 %613, %612
  %615 = xor i32 %610, %612
  %616 = add nuw nsw i32 %615, %614
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %42, align 1, !tbaa !2449
  %619 = icmp ne i8 %611, 0
  %620 = xor i1 %619, %617
  %.v19 = select i1 %620, i64 12, i64 181
  %621 = add i64 %584, %.v19
  store i64 %621, i64* %PC, align 8, !tbaa !2428
  br i1 %620, label %block_401355, label %block_4013fe

block_401290:                                     ; preds = %block_401284
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %622 = load i64, i64* @stderr, align 32
  store i64 %622, i64* %RDI, align 8, !tbaa !2428
  %623 = add i64 %886, -16
  %624 = add i64 %922, 22
  store i64 %624, i64* %PC, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RAX, align 8, !tbaa !2428
  %627 = add i64 %886, -36
  %628 = add i64 %922, 26
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  %632 = shl nsw i64 %631, 12
  store i64 %632, i64* %RCX, align 8, !tbaa !2428
  %633 = lshr i64 %631, 51
  %634 = and i64 %633, 1
  %635 = add i64 %632, %626
  store i64 %635, i64* %RAX, align 8, !tbaa !2428
  %636 = icmp ult i64 %635, %626
  %637 = icmp ult i64 %635, %632
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %18, align 1, !tbaa !2432
  %640 = trunc i64 %635 to i32
  %641 = and i32 %640, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641) #11
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %25, align 1, !tbaa !2446
  %646 = xor i64 %626, %635
  %647 = lshr i64 %646, 4
  %648 = trunc i64 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %30, align 1, !tbaa !2450
  %650 = icmp eq i64 %635, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %33, align 1, !tbaa !2447
  %652 = lshr i64 %635, 63
  %653 = trunc i64 %652 to i8
  store i8 %653, i8* %36, align 1, !tbaa !2448
  %654 = lshr i64 %626, 63
  %655 = xor i64 %652, %654
  %656 = xor i64 %652, %634
  %657 = add nuw nsw i64 %655, %656
  %658 = icmp eq i64 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %42, align 1, !tbaa !2449
  %660 = add i64 %922, 37
  store i64 %660, i64* %PC, align 8
  %661 = load i32, i32* %889, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %RCX, align 8, !tbaa !2428
  %663 = shl nsw i64 %662, 3
  %664 = add i64 %663, %635
  %665 = add i64 %922, 42
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  %668 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %667, i64* %668, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %669 = add i64 %922, -3264
  %670 = add i64 %922, 49
  %671 = load i64, i64* %RSP, align 8, !tbaa !2428
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %673, align 8
  store i64 %672, i64* %RSP, align 8, !tbaa !2428
  store i64 %669, i64* %PC, align 8, !tbaa !2428
  %674 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %675 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %676 = load i64, i64* %RBP, align 8
  %677 = add i64 %676, -36
  %678 = add i64 %675, 9
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %R8, align 8, !tbaa !2428
  %682 = add i64 %676, -44
  %683 = load i32, i32* %EAX, align 4
  %684 = add i64 %675, 12
  store i64 %684, i64* %PC, align 8
  %685 = inttoptr i64 %682 to i32*
  store i32 %683, i32* %685, align 4
  %686 = load i32, i32* %R8D, align 4
  %687 = zext i32 %686 to i64
  %688 = load i64, i64* %PC, align 8
  store i64 %687, i64* %RAX, align 8, !tbaa !2428
  %689 = load i64, i64* %RBP, align 8
  %690 = add i64 %689, -48
  %691 = load i32, i32* %EDX, align 4
  %692 = add i64 %688, 6
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %690 to i32*
  store i32 %691, i32* %693, align 4
  %694 = load i64, i64* %PC, align 8
  %695 = load i32, i32* %EAX, align 8, !tbaa !2456
  %696 = sext i32 %695 to i64
  %697 = lshr i64 %696, 32
  store i64 %697, i64* %78, align 8, !tbaa !2428
  %698 = load i64, i64* %RBP, align 8
  %699 = add i64 %698, -48
  %700 = add i64 %694, 5
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %R8, align 8, !tbaa !2428
  %704 = add i64 %694, 8
  store i64 %704, i64* %PC, align 8
  %705 = zext i32 %695 to i64
  %706 = sext i32 %702 to i64
  %707 = shl nuw i64 %697, 32
  %708 = or i64 %707, %705
  %709 = sdiv i64 %708, %706
  %710 = shl i64 %709, 32
  %711 = ashr exact i64 %710, 32
  %712 = icmp eq i64 %709, %711
  br i1 %712, label %715, label %713

; <label>:713:                                    ; preds = %block_401290
  %714 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %704, %struct.Memory* %674) #12
  %.pre4 = load i32, i32* %EDX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:715:                                    ; preds = %block_401290
  %716 = srem i64 %708, %706
  %717 = and i64 %709, 4294967295
  store i64 %717, i64* %RAX, align 8, !tbaa !2428
  %718 = and i64 %716, 4294967295
  store i64 %718, i64* %78, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %33, align 1, !tbaa !2447
  store i8 0, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %719 = trunc i64 %716 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %715, %713
  %720 = phi i64 [ %.pre5, %713 ], [ %704, %715 ]
  %721 = phi i32 [ %.pre4, %713 ], [ %719, %715 ]
  %722 = phi %struct.Memory* [ %714, %713 ], [ %674, %715 ]
  store i8 0, i8* %18, align 1, !tbaa !2432
  %723 = and i32 %721, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723) #11
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  %728 = icmp eq i32 %721, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %33, align 1, !tbaa !2447
  %730 = lshr i32 %721, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %.v18 = select i1 %728, i64 9, i64 37
  %732 = add i64 %720, %.v18
  store i64 %732, i64* %PC, align 8, !tbaa !2428
  br i1 %728, label %block_4012e4, label %block_401300

block_401271:                                     ; preds = %block_401313, %block_401250
  %733 = phi i64 [ %.pre, %block_401250 ], [ %583, %block_401313 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_401250 ], [ %MEMORY.7, %block_401313 ]
  %734 = load i64, i64* %RBP, align 8
  %735 = add i64 %734, -36
  %736 = add i64 %733, 3
  store i64 %736, i64* %PC, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX, align 8, !tbaa !2428
  %740 = add i64 %734, -4
  %741 = add i64 %733, 6
  store i64 %741, i64* %PC, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = sub i32 %738, %743
  %745 = icmp ult i32 %738, %743
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %18, align 1, !tbaa !2432
  %747 = and i32 %744, 255
  %748 = tail call i32 @llvm.ctpop.i32(i32 %747) #11
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  store i8 %751, i8* %25, align 1, !tbaa !2446
  %752 = xor i32 %743, %738
  %753 = xor i32 %752, %744
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %30, align 1, !tbaa !2450
  %757 = icmp eq i32 %744, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %33, align 1, !tbaa !2447
  %759 = lshr i32 %744, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %36, align 1, !tbaa !2448
  %761 = lshr i32 %738, 31
  %762 = lshr i32 %743, 31
  %763 = xor i32 %762, %761
  %764 = xor i32 %759, %761
  %765 = add nuw nsw i32 %764, %763
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %42, align 1, !tbaa !2449
  %768 = icmp ne i8 %760, 0
  %769 = xor i1 %768, %766
  %.v = select i1 %769, i64 12, i64 181
  %770 = add i64 %733, %.v
  store i64 %770, i64* %PC, align 8, !tbaa !2428
  br i1 %769, label %block_40127d, label %block_401326

block_40142d:                                     ; preds = %block_401421
  %771 = add i64 %504, -40
  %772 = add i64 %540, 7
  store i64 %772, i64* %PC, align 8
  %773 = inttoptr i64 %771 to i32*
  store i32 0, i32* %773, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_401434

block_401440:                                     ; preds = %block_401434
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %774 = load i64, i64* @stderr, align 32
  store i64 %774, i64* %RDI, align 8, !tbaa !2428
  %775 = add i64 %305, -32
  %776 = add i64 %341, 22
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %RAX, align 8, !tbaa !2428
  %779 = add i64 %305, -36
  %780 = add i64 %341, 26
  store i64 %780, i64* %PC, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = sext i32 %782 to i64
  %784 = shl nsw i64 %783, 12
  store i64 %784, i64* %RCX, align 8, !tbaa !2428
  %785 = lshr i64 %783, 51
  %786 = and i64 %785, 1
  %787 = add i64 %784, %778
  store i64 %787, i64* %RAX, align 8, !tbaa !2428
  %788 = icmp ult i64 %787, %778
  %789 = icmp ult i64 %787, %784
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %18, align 1, !tbaa !2432
  %792 = trunc i64 %787 to i32
  %793 = and i32 %792, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793) #11
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %25, align 1, !tbaa !2446
  %798 = xor i64 %778, %787
  %799 = lshr i64 %798, 4
  %800 = trunc i64 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %30, align 1, !tbaa !2450
  %802 = icmp eq i64 %787, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %33, align 1, !tbaa !2447
  %804 = lshr i64 %787, 63
  %805 = trunc i64 %804 to i8
  store i8 %805, i8* %36, align 1, !tbaa !2448
  %806 = lshr i64 %778, 63
  %807 = xor i64 %804, %806
  %808 = xor i64 %804, %786
  %809 = add nuw nsw i64 %807, %808
  %810 = icmp eq i64 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %42, align 1, !tbaa !2449
  %812 = add i64 %341, 37
  store i64 %812, i64* %PC, align 8
  %813 = load i32, i32* %308, align 4
  %814 = sext i32 %813 to i64
  store i64 %814, i64* %RCX, align 8, !tbaa !2428
  %815 = shl nsw i64 %814, 3
  %816 = add i64 %815, %787
  %817 = add i64 %341, 42
  store i64 %817, i64* %PC, align 8
  %818 = inttoptr i64 %816 to i64*
  %819 = load i64, i64* %818, align 8
  %820 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %819, i64* %820, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %821 = add i64 %341, -3696
  %822 = add i64 %341, 49
  %823 = load i64, i64* %RSP, align 8, !tbaa !2428
  %824 = add i64 %823, -8
  %825 = inttoptr i64 %824 to i64*
  store i64 %822, i64* %825, align 8
  store i64 %824, i64* %RSP, align 8, !tbaa !2428
  store i64 %821, i64* %PC, align 8, !tbaa !2428
  %826 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %827 = load i64, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %828 = load i64, i64* %RBP, align 8
  %829 = add i64 %828, -36
  %830 = add i64 %827, 9
  store i64 %830, i64* %PC, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %R8, align 8, !tbaa !2428
  %834 = add i64 %828, -76
  %835 = load i32, i32* %EAX, align 4
  %836 = add i64 %827, 12
  store i64 %836, i64* %PC, align 8
  %837 = inttoptr i64 %834 to i32*
  store i32 %835, i32* %837, align 4
  %838 = load i32, i32* %R8D, align 4
  %839 = zext i32 %838 to i64
  %840 = load i64, i64* %PC, align 8
  store i64 %839, i64* %RAX, align 8, !tbaa !2428
  %841 = load i64, i64* %RBP, align 8
  %842 = add i64 %841, -80
  %843 = load i32, i32* %EDX, align 4
  %844 = add i64 %840, 6
  store i64 %844, i64* %PC, align 8
  %845 = inttoptr i64 %842 to i32*
  store i32 %843, i32* %845, align 4
  %846 = load i64, i64* %PC, align 8
  %847 = load i32, i32* %EAX, align 8, !tbaa !2456
  %848 = sext i32 %847 to i64
  %849 = lshr i64 %848, 32
  store i64 %849, i64* %78, align 8, !tbaa !2428
  %850 = load i64, i64* %RBP, align 8
  %851 = add i64 %850, -80
  %852 = add i64 %846, 5
  store i64 %852, i64* %PC, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %R8, align 8, !tbaa !2428
  %856 = add i64 %846, 8
  store i64 %856, i64* %PC, align 8
  %857 = zext i32 %847 to i64
  %858 = sext i32 %854 to i64
  %859 = shl nuw i64 %849, 32
  %860 = or i64 %859, %857
  %861 = sdiv i64 %860, %858
  %862 = shl i64 %861, 32
  %863 = ashr exact i64 %862, 32
  %864 = icmp eq i64 %861, %863
  br i1 %864, label %867, label %865

; <label>:865:                                    ; preds = %block_401440
  %866 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %856, %struct.Memory* %826) #12
  %.pre14 = load i32, i32* %EDX, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:867:                                    ; preds = %block_401440
  %868 = srem i64 %860, %858
  %869 = and i64 %861, 4294967295
  store i64 %869, i64* %RAX, align 8, !tbaa !2428
  %870 = and i64 %868, 4294967295
  store i64 %870, i64* %78, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  store i8 0, i8* %33, align 1, !tbaa !2447
  store i8 0, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %871 = trunc i64 %868 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %867, %865
  %872 = phi i64 [ %.pre15, %865 ], [ %856, %867 ]
  %873 = phi i32 [ %.pre14, %865 ], [ %871, %867 ]
  %874 = phi %struct.Memory* [ %866, %865 ], [ %826, %867 ]
  store i8 0, i8* %18, align 1, !tbaa !2432
  %875 = and i32 %873, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875) #11
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2450
  %880 = icmp eq i32 %873, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %33, align 1, !tbaa !2447
  %882 = lshr i32 %873, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %36, align 1, !tbaa !2448
  store i8 0, i8* %42, align 1, !tbaa !2449
  %.v24 = select i1 %880, i64 9, i64 37
  %884 = add i64 %872, %.v24
  store i64 %884, i64* %PC, align 8, !tbaa !2428
  br i1 %880, label %block_401494, label %block_4014b0

block_401284:                                     ; preds = %block_401300, %block_40127d
  %885 = phi i64 [ %.pre3, %block_40127d ], [ %954, %block_401300 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_40127d ], [ %MEMORY.8, %block_401300 ]
  %886 = load i64, i64* %RBP, align 8
  %887 = add i64 %886, -40
  %888 = add i64 %885, 3
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RAX, align 8, !tbaa !2428
  %892 = add i64 %886, -8
  %893 = add i64 %885, 6
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sub i32 %890, %895
  %897 = icmp ult i32 %890, %895
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %18, align 1, !tbaa !2432
  %899 = and i32 %896, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899) #11
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %25, align 1, !tbaa !2446
  %904 = xor i32 %895, %890
  %905 = xor i32 %904, %896
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %30, align 1, !tbaa !2450
  %909 = icmp eq i32 %896, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %33, align 1, !tbaa !2447
  %911 = lshr i32 %896, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %36, align 1, !tbaa !2448
  %913 = lshr i32 %890, 31
  %914 = lshr i32 %895, 31
  %915 = xor i32 %914, %913
  %916 = xor i32 %911, %913
  %917 = add nuw nsw i32 %916, %915
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %42, align 1, !tbaa !2449
  %920 = icmp ne i8 %912, 0
  %921 = xor i1 %920, %918
  %.v17 = select i1 %921, i64 12, i64 143
  %922 = add i64 %885, %.v17
  store i64 %922, i64* %PC, align 8, !tbaa !2428
  br i1 %921, label %block_401290, label %block_401313

block_401300:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_4012e4
  %923 = phi i64 [ %732, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %.pre6, %block_4012e4 ]
  %MEMORY.8 = phi %struct.Memory* [ %722, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ], [ %254, %block_4012e4 ]
  %924 = load i64, i64* %RBP, align 8
  %925 = add i64 %924, -40
  %926 = add i64 %923, 8
  store i64 %926, i64* %PC, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = add i32 %928, 1
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RAX, align 8, !tbaa !2428
  %931 = icmp eq i32 %928, -1
  %932 = icmp eq i32 %929, 0
  %933 = or i1 %931, %932
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %18, align 1, !tbaa !2432
  %935 = and i32 %929, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935) #11
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %25, align 1, !tbaa !2446
  %940 = xor i32 %928, %929
  %941 = lshr i32 %940, 4
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %30, align 1, !tbaa !2450
  %944 = zext i1 %932 to i8
  store i8 %944, i8* %33, align 1, !tbaa !2447
  %945 = lshr i32 %929, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %36, align 1, !tbaa !2448
  %947 = lshr i32 %928, 31
  %948 = xor i32 %945, %947
  %949 = add nuw nsw i32 %948, %945
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %42, align 1, !tbaa !2449
  %952 = add i64 %923, 14
  store i64 %952, i64* %PC, align 8
  store i32 %929, i32* %927, align 4
  %953 = load i64, i64* %PC, align 8
  %954 = add i64 %953, -138
  store i64 %954, i64* %PC, align 8, !tbaa !2428
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #11
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
  store i8 %24, i8* %25, align 1, !tbaa !2450
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2449
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
  %55 = add i64 %50, -655
  %56 = add i64 %50, 12
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_4005f0_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #11
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2450
  %79 = icmp eq i64 %72, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %28, align 1, !tbaa !2447
  %81 = lshr i64 %72, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  %.v = select i1 %79, i64 21, i64 11
  %83 = add i64 %69, %.v
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  br i1 %79, label %block_4008a3, label %block_400899

block_4008a3:                                     ; preds = %block_400899, %block_400860
  %84 = phi i64 [ %120, %block_400899 ], [ %83, %block_400860 ]
  store i64 add (i64 ptrtoint (%seg_401580__rodata_type* @seg_401580__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %85 = load i64, i64* @stderr, align 32
  store i64 %85, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %86 = add i64 %84, -723
  %87 = add i64 %84, 25
  %88 = load i64, i64* %RSP, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %87, i64* %90, align 8
  store i64 %89, i64* %RSP, align 8, !tbaa !2428
  store i64 %86, i64* %PC, align 8, !tbaa !2428
  %91 = tail call fastcc %struct.Memory* @ext_4005d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %60)
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
  %99 = add i64 %98, -740
  %100 = add i64 %98, 5
  %101 = load i64, i64* %RSP, align 8, !tbaa !2428
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*
  store i64 %100, i64* %103, align 8
  store i64 %102, i64* %RSP, align 8, !tbaa !2428
  store i64 %99, i64* %PC, align 8, !tbaa !2428
  %104 = tail call fastcc %struct.Memory* @ext_4005e0_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_400899:                                     ; preds = %block_400860
  %107 = add i64 %67, -20
  %108 = add i64 %83, 4
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %111 = and i32 %110, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #11
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2450
  %116 = icmp eq i32 %110, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %28, align 1, !tbaa !2447
  %118 = lshr i32 %110, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  %.v1 = select i1 %116, i64 48, i64 10
  %120 = add i64 %83, %.v1
  store i64 %120, i64* %PC, align 8, !tbaa !2428
  br i1 %116, label %block_4008c9, label %block_4008a3

block_4008c9:                                     ; preds = %block_400899
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
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #11
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2446
  %133 = xor i64 %123, %124
  %134 = lshr i64 %133, 4
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %25, align 1, !tbaa !2450
  %137 = icmp eq i64 %124, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %28, align 1, !tbaa !2447
  %139 = lshr i64 %124, 63
  %140 = trunc i64 %139 to i8
  store i8 %140, i8* %31, align 1, !tbaa !2448
  %141 = lshr i64 %123, 63
  %142 = xor i64 %139, %141
  %143 = add nuw nsw i64 %142, %139
  %144 = icmp eq i64 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %37, align 1, !tbaa !2449
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
  %18 = zext i1 %5 to i8
  store i8 %18, i8* %6, align 1, !tbaa !2432
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #11
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
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #11
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
  store i8 %24, i8* %25, align 1, !tbaa !2450
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2449
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
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #11
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  %87 = lshr i64 %77, 63
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %31, align 1, !tbaa !2448
  store i8 %80, i8* %37, align 1, !tbaa !2449
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
  %101 = tail call %struct.Memory* @sub_400860_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #11
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %20, align 1, !tbaa !2446
  %124 = xor i64 %114, %115
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %25, align 1, !tbaa !2450
  %128 = icmp eq i64 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %28, align 1, !tbaa !2447
  %130 = lshr i64 %115, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %31, align 1, !tbaa !2448
  %132 = lshr i64 %114, 63
  %133 = xor i64 %130, %132
  %134 = add nuw nsw i64 %133, %130
  %135 = icmp eq i64 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %37, align 1, !tbaa !2449
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #11
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4006b8, label %block_4006a3

block_4006b8:                                     ; preds = %block_4006a3, %block_400680
  %35 = phi i64 [ %42, %block_4006a3 ], [ %34, %block_400680 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %35, 2
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %6 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %PC, align 8, !tbaa !2428
  %41 = add i64 %7, 16
  store i64 %41, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006a3:                                     ; preds = %block_400680
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %42 = add i64 %34, 21
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  br label %block_4006b8
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4006c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x401570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x401500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #11
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  %15 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false)
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400578;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x401574;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4007e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400700;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400820;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #11
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #11
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

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
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind }
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
