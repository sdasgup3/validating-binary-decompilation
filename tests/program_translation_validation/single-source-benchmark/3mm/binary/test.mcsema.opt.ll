; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4017a0__rodata_type = type <{ [32 x i8], [7 x i8], [51 x i8], [76 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
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
@seg_4017a0__rodata = internal constant %seg_4017a0__rodata_type <{ [32 x i8] c"\01\00\02\00\00\00\00\00\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@polybench_papi_counters_threadid = local_unnamed_addr global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = local_unnamed_addr global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = local_unnamed_addr global %polybench_c_end_type zeroinitializer
@polybench_t_end = local_unnamed_addr global %polybench_t_end_type zeroinitializer
@polybench_t_start = local_unnamed_addr global %polybench_t_start_type zeroinitializer
@polybench_c_start = local_unnamed_addr global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401790___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401720___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401090_kernel_3mm_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4014a0_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401370_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b80_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400db0_kernel_3mm_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401570_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #5

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

; Function Attrs: noinline
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
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
  br i1 %18, label %block_400590.block_4005a2_crit_edge, label %block_4005a0

block_400590.block_4005a2_crit_edge:              ; preds = %block_400590
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_4005a2

block_4005a0:                                     ; preds = %block_400590
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
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_400590.block_4005a2_crit_edge, %block_4005a0
  %.pre-phi = phi i64* [ %.pre2, %block_400590.block_4005a2_crit_edge ], [ %25, %block_4005a0 ]
  %29 = phi i64 [ %23, %block_400590.block_4005a2_crit_edge ], [ %.pre1, %block_4005a0 ]
  %30 = phi i64 [ %4, %block_400590.block_4005a2_crit_edge ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590.block_4005a2_crit_edge ], [ %28, %block_4005a0 ]
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
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %14 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_401090_kernel_3mm_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401090:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %7 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
  %16 = load i64, i64* %R15, align 8
  %17 = add i64 %15, 5
  store i64 %17, i64* %PC, align 8
  %18 = add i64 %12, -16
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %R14, align 8
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC, align 8
  %23 = add i64 %12, -24
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %RBX, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %PC, align 8
  %28 = add i64 %12, -32
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  store i64 %28, i64* %11, align 8, !tbaa !2428
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, 56
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = add i64 %30, 48
  %37 = add i64 %32, 8
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %R10, align 8, !tbaa !2428
  %40 = add i64 %30, 40
  %41 = add i64 %32, 12
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %R11, align 8, !tbaa !2428
  %44 = add i64 %30, 32
  %45 = add i64 %32, 16
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RBX, align 8, !tbaa !2428
  %48 = add i64 %30, 24
  %49 = add i64 %32, 20
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %R14, align 8, !tbaa !2428
  %52 = add i64 %30, 16
  %53 = add i64 %32, 24
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %R15, align 8, !tbaa !2428
  %56 = add i64 %30, -28
  %57 = load i32, i32* %EDI, align 4
  %58 = add i64 %32, 27
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -32
  %62 = load i32, i32* %ESI, align 4
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -36
  %68 = load i32, i32* %EDX, align 4
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -40
  %74 = load i32, i32* %ECX, align 4
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 3
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -44
  %80 = load i32, i32* %R8D, align 4
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %R9, align 8
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -60
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -80
  %97 = load i64, i64* %R15, align 8
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -88
  %103 = load i64, i64* %RAX, align 8
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %R10, align 8
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -104
  %115 = load i64, i64* %R11, align 8
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -112
  %121 = load i64, i64* %RBX, align 8
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -120
  %127 = load i64, i64* %R14, align 8
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130, align 8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %138 = bitcast %union.VectorReg* %8 to i8*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast %union.VectorReg* %8 to i32*
  %141 = getelementptr inbounds i8, i8* %138, i64 4
  %142 = bitcast i8* %141 to i32*
  %143 = bitcast i64* %139 to i32*
  %144 = getelementptr inbounds i8, i8* %138, i64 12
  %145 = bitcast i8* %144 to i32*
  %146 = bitcast %union.VectorReg* %8 to double*
  %147 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4010e4

block_401274:                                     ; preds = %block_4011cc
  %148 = add i64 %510, -60
  %149 = add i64 %546, 8
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = icmp eq i32 %151, -1
  %155 = icmp eq i32 %152, 0
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %131, align 1, !tbaa !2432
  %158 = and i32 %152, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #8
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %132, align 1, !tbaa !2446
  %163 = xor i32 %151, %152
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %133, align 1, !tbaa !2450
  %167 = icmp eq i32 %152, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %134, align 1, !tbaa !2447
  %169 = lshr i32 %152, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %135, align 1, !tbaa !2448
  %171 = lshr i32 %151, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %169
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %136, align 1, !tbaa !2449
  %176 = add i64 %546, 14
  store i64 %176, i64* %PC, align 8
  store i32 %152, i32* %150, align 4
  %177 = load i64, i64* %PC, align 8
  %178 = add i64 %177, -201
  store i64 %178, i64* %137, align 8, !tbaa !2428
  br label %block_4011b9

block_4010e4:                                     ; preds = %block_40119f, %block_401090
  %179 = phi i64 [ %1001, %block_40119f ], [ %.pre, %block_401090 ]
  %180 = load i64, i64* %RBP, align 8
  %181 = add i64 %180, -60
  %182 = add i64 %179, 3
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = add i64 %180, -28
  %187 = add i64 %179, 6
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = sub i32 %184, %189
  %191 = icmp ult i32 %184, %189
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %131, align 1, !tbaa !2432
  %193 = and i32 %190, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #8
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %132, align 1, !tbaa !2446
  %198 = xor i32 %189, %184
  %199 = xor i32 %198, %190
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %133, align 1, !tbaa !2450
  %203 = icmp eq i32 %190, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %134, align 1, !tbaa !2447
  %205 = lshr i32 %190, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %135, align 1, !tbaa !2448
  %207 = lshr i32 %184, 31
  %208 = lshr i32 %189, 31
  %209 = xor i32 %208, %207
  %210 = xor i32 %205, %207
  %211 = add nuw nsw i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %136, align 1, !tbaa !2449
  %214 = icmp ne i8 %206, 0
  %215 = xor i1 %214, %212
  %.v = select i1 %215, i64 12, i64 206
  %216 = add i64 %179, %.v
  store i64 %216, i64* %137, align 8, !tbaa !2428
  br i1 %215, label %block_4010f0, label %block_4011b2

block_401261:                                     ; preds = %block_4011fa
  %217 = add i64 %1003, -64
  %218 = add i64 %1039, 8
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, 1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = icmp eq i32 %220, -1
  %224 = icmp eq i32 %221, 0
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %131, align 1, !tbaa !2432
  %227 = and i32 %221, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #8
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %132, align 1, !tbaa !2446
  %232 = xor i32 %220, %221
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %133, align 1, !tbaa !2450
  %236 = icmp eq i32 %221, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %134, align 1, !tbaa !2447
  %238 = lshr i32 %221, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %135, align 1, !tbaa !2448
  %240 = lshr i32 %220, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %136, align 1, !tbaa !2449
  %245 = add i64 %1039, 14
  store i64 %245, i64* %PC, align 8
  store i32 %221, i32* %219, align 4
  %246 = load i64, i64* %PC, align 8
  %247 = add i64 %246, -163
  store i64 %247, i64* %137, align 8, !tbaa !2428
  br label %block_4011cc

block_4012db:                                     ; preds = %block_4012cf
  %248 = add i64 %472, -56
  %249 = add i64 %508, 4
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = add i64 %472, -60
  %253 = add i64 %508, 8
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = shl nsw i64 %256, 13
  store i64 %257, i64* %RCX, align 8, !tbaa !2428
  %258 = lshr i64 %256, 50
  %259 = and i64 %258, 1
  %260 = add i64 %257, %251
  store i64 %260, i64* %RAX, align 8, !tbaa !2428
  %261 = icmp ult i64 %260, %251
  %262 = icmp ult i64 %260, %257
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %131, align 1, !tbaa !2432
  %265 = trunc i64 %260 to i32
  %266 = and i32 %265, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266) #8
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %132, align 1, !tbaa !2446
  %271 = xor i64 %251, %260
  %272 = lshr i64 %271, 4
  %273 = trunc i64 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %133, align 1, !tbaa !2450
  %275 = icmp eq i64 %260, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %134, align 1, !tbaa !2447
  %277 = lshr i64 %260, 63
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %135, align 1, !tbaa !2448
  %279 = lshr i64 %251, 63
  %280 = xor i64 %277, %279
  %281 = xor i64 %277, %259
  %282 = add nuw nsw i64 %280, %281
  %283 = icmp eq i64 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %136, align 1, !tbaa !2449
  %285 = add i64 %508, 19
  store i64 %285, i64* %PC, align 8
  %286 = load i32, i32* %475, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RCX, align 8, !tbaa !2428
  %288 = shl nsw i64 %287, 3
  %289 = add i64 %288, %260
  %290 = add i64 %508, 24
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to double*
  %292 = load double, double* %291, align 8
  store double %292, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %293 = add i64 %472, 32
  %294 = add i64 %508, 28
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RAX, align 8, !tbaa !2428
  %297 = add i64 %508, 32
  store i64 %297, i64* %PC, align 8
  %298 = load i32, i32* %475, align 4
  %299 = sext i32 %298 to i64
  %300 = shl nsw i64 %299, 13
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = lshr i64 %299, 50
  %302 = and i64 %301, 1
  %303 = add i64 %300, %296
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = icmp ult i64 %303, %296
  %305 = icmp ult i64 %303, %300
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %131, align 1, !tbaa !2432
  %308 = trunc i64 %303 to i32
  %309 = and i32 %308, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309) #8
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %132, align 1, !tbaa !2446
  %314 = xor i64 %296, %303
  %315 = lshr i64 %314, 4
  %316 = trunc i64 %315 to i8
  %317 = and i8 %316, 1
  store i8 %317, i8* %133, align 1, !tbaa !2450
  %318 = icmp eq i64 %303, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %134, align 1, !tbaa !2447
  %320 = lshr i64 %303, 63
  %321 = trunc i64 %320 to i8
  store i8 %321, i8* %135, align 1, !tbaa !2448
  %322 = lshr i64 %296, 63
  %323 = xor i64 %320, %322
  %324 = xor i64 %320, %302
  %325 = add nuw nsw i64 %323, %324
  %326 = icmp eq i64 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %136, align 1, !tbaa !2449
  %328 = load i64, i64* %RBP, align 8
  %329 = add i64 %328, -64
  %330 = add i64 %508, 43
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %RCX, align 8, !tbaa !2428
  %334 = shl nsw i64 %333, 3
  %335 = add i64 %334, %303
  %336 = add i64 %508, 48
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to double*
  %338 = load double, double* %337, align 8
  %339 = fmul double %292, %338
  store double %339, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %340 = add i64 %328, 56
  %341 = add i64 %508, 52
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = add i64 %328, -60
  %345 = add i64 %508, 56
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = shl nsw i64 %348, 13
  store i64 %349, i64* %RCX, align 8, !tbaa !2428
  %350 = lshr i64 %348, 50
  %351 = and i64 %350, 1
  %352 = add i64 %349, %343
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = icmp ult i64 %352, %343
  %354 = icmp ult i64 %352, %349
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %131, align 1, !tbaa !2432
  %357 = trunc i64 %352 to i32
  %358 = and i32 %357, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #8
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %132, align 1, !tbaa !2446
  %363 = xor i64 %343, %352
  %364 = lshr i64 %363, 4
  %365 = trunc i64 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %133, align 1, !tbaa !2450
  %367 = icmp eq i64 %352, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %134, align 1, !tbaa !2447
  %369 = lshr i64 %352, 63
  %370 = trunc i64 %369 to i8
  store i8 %370, i8* %135, align 1, !tbaa !2448
  %371 = lshr i64 %343, 63
  %372 = xor i64 %369, %371
  %373 = xor i64 %369, %351
  %374 = add nuw nsw i64 %372, %373
  %375 = icmp eq i64 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %136, align 1, !tbaa !2449
  %377 = add i64 %508, 67
  store i64 %377, i64* %PC, align 8
  %378 = load i32, i32* %331, align 4
  %379 = sext i32 %378 to i64
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  %380 = shl nsw i64 %379, 3
  %381 = add i64 %380, %352
  %382 = add i64 %508, 72
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %381 to double*
  %384 = load double, double* %383, align 8
  %385 = fadd double %339, %384
  store double %385, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %386 = add i64 %508, 77
  store i64 %386, i64* %PC, align 8
  store double %385, double* %383, align 8
  %387 = load i64, i64* %RBP, align 8
  %388 = add i64 %387, -68
  %389 = load i64, i64* %PC, align 8
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = add i32 %392, 1
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = icmp eq i32 %392, -1
  %396 = icmp eq i32 %393, 0
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %131, align 1, !tbaa !2432
  %399 = and i32 %393, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399) #8
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %132, align 1, !tbaa !2446
  %404 = xor i32 %392, %393
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %133, align 1, !tbaa !2450
  %408 = icmp eq i32 %393, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %134, align 1, !tbaa !2447
  %410 = lshr i32 %393, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %135, align 1, !tbaa !2448
  %412 = lshr i32 %392, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %136, align 1, !tbaa !2449
  %417 = add i64 %389, 9
  store i64 %417, i64* %PC, align 8
  store i32 %393, i32* %391, align 4
  %418 = load i64, i64* %PC, align 8
  %419 = add i64 %418, -98
  store i64 %419, i64* %137, align 8, !tbaa !2428
  br label %block_4012cf

block_4011d8:                                     ; preds = %block_4011cc
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %420 = add i64 %510, 32
  %421 = add i64 %546, 7
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  %424 = add i64 %510, -60
  %425 = add i64 %546, 11
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = shl nsw i64 %428, 13
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  %430 = lshr i64 %428, 50
  %431 = and i64 %430, 1
  %432 = add i64 %429, %423
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = icmp ult i64 %432, %423
  %434 = icmp ult i64 %432, %429
  %435 = or i1 %433, %434
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %131, align 1, !tbaa !2432
  %437 = trunc i64 %432 to i32
  %438 = and i32 %437, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438) #8
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %132, align 1, !tbaa !2446
  %443 = xor i64 %423, %432
  %444 = lshr i64 %443, 4
  %445 = trunc i64 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %133, align 1, !tbaa !2450
  %447 = icmp eq i64 %432, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %134, align 1, !tbaa !2447
  %449 = lshr i64 %432, 63
  %450 = trunc i64 %449 to i8
  store i8 %450, i8* %135, align 1, !tbaa !2448
  %451 = lshr i64 %423, 63
  %452 = xor i64 %449, %451
  %453 = xor i64 %449, %431
  %454 = add nuw nsw i64 %452, %453
  %455 = icmp eq i64 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %136, align 1, !tbaa !2449
  %457 = add i64 %546, 22
  store i64 %457, i64* %PC, align 8
  %458 = load i32, i32* %513, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX, align 8, !tbaa !2428
  %460 = shl nsw i64 %459, 3
  %461 = add i64 %460, %432
  %462 = add i64 %546, 27
  store i64 %462, i64* %PC, align 8
  %463 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %464 = load i64, i64* %463, align 1
  %465 = inttoptr i64 %461 to i64*
  store i64 %464, i64* %465, align 8
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -68
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, 7
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %467 to i32*
  store i32 0, i32* %470, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4011fa

block_4012cf:                                     ; preds = %block_4012ad, %block_4012db
  %471 = phi i64 [ %.pre9, %block_4012ad ], [ %419, %block_4012db ]
  %472 = load i64, i64* %RBP, align 8
  %473 = add i64 %472, -68
  %474 = add i64 %471, 3
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = add i64 %472, -32
  %479 = add i64 %471, 6
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = sub i32 %476, %481
  %483 = icmp ult i32 %476, %481
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %131, align 1, !tbaa !2432
  %485 = and i32 %482, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485) #8
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %132, align 1, !tbaa !2446
  %490 = xor i32 %481, %476
  %491 = xor i32 %490, %482
  %492 = lshr i32 %491, 4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %133, align 1, !tbaa !2450
  %495 = icmp eq i32 %482, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %134, align 1, !tbaa !2447
  %497 = lshr i32 %482, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %135, align 1, !tbaa !2448
  %499 = lshr i32 %476, 31
  %500 = lshr i32 %481, 31
  %501 = xor i32 %500, %499
  %502 = xor i32 %497, %499
  %503 = add nuw nsw i32 %502, %501
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %136, align 1, !tbaa !2449
  %506 = icmp ne i8 %498, 0
  %507 = xor i1 %506, %504
  %.v17 = select i1 %507, i64 12, i64 103
  %508 = add i64 %471, %.v17
  store i64 %508, i64* %137, align 8, !tbaa !2428
  br i1 %507, label %block_4012db, label %block_401336

block_4011cc:                                     ; preds = %block_4011c5, %block_401261
  %509 = phi i64 [ %.pre5, %block_4011c5 ], [ %247, %block_401261 ]
  %510 = load i64, i64* %RBP, align 8
  %511 = add i64 %510, -64
  %512 = add i64 %509, 3
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX, align 8, !tbaa !2428
  %516 = add i64 %510, -40
  %517 = add i64 %509, 6
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = sub i32 %514, %519
  %521 = icmp ult i32 %514, %519
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %131, align 1, !tbaa !2432
  %523 = and i32 %520, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523) #8
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %132, align 1, !tbaa !2446
  %528 = xor i32 %519, %514
  %529 = xor i32 %528, %520
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %133, align 1, !tbaa !2450
  %533 = icmp eq i32 %520, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %134, align 1, !tbaa !2447
  %535 = lshr i32 %520, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %135, align 1, !tbaa !2448
  %537 = lshr i32 %514, 31
  %538 = lshr i32 %519, 31
  %539 = xor i32 %538, %537
  %540 = xor i32 %535, %537
  %541 = add nuw nsw i32 %540, %539
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %136, align 1, !tbaa !2449
  %544 = icmp ne i8 %536, 0
  %545 = xor i1 %544, %542
  %.v13 = select i1 %545, i64 12, i64 168
  %546 = add i64 %509, %.v13
  store i64 %546, i64* %137, align 8, !tbaa !2428
  br i1 %545, label %block_4011d8, label %block_401274

block_401349:                                     ; preds = %block_4012a1
  %547 = add i64 %903, -60
  %548 = add i64 %939, 8
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = add i32 %550, 1
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX, align 8, !tbaa !2428
  %553 = icmp eq i32 %550, -1
  %554 = icmp eq i32 %551, 0
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %131, align 1, !tbaa !2432
  %557 = and i32 %551, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557) #8
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %132, align 1, !tbaa !2446
  %562 = xor i32 %550, %551
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %133, align 1, !tbaa !2450
  %566 = icmp eq i32 %551, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %134, align 1, !tbaa !2447
  %568 = lshr i32 %551, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %135, align 1, !tbaa !2448
  %570 = lshr i32 %550, 31
  %571 = xor i32 %568, %570
  %572 = add nuw nsw i32 %571, %568
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %136, align 1, !tbaa !2449
  %575 = add i64 %939, 14
  store i64 %575, i64* %PC, align 8
  store i32 %551, i32* %549, align 4
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %576, -201
  store i64 %577, i64* %137, align 8, !tbaa !2428
  br label %block_40128e

block_4011b2:                                     ; preds = %block_4010e4
  %578 = add i64 %216, 7
  store i64 %578, i64* %PC, align 8
  store i32 0, i32* %183, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_4011b9

block_40135c:                                     ; preds = %block_40128e
  %579 = add i64 %1115, 1
  store i64 %579, i64* %PC, align 8
  %580 = load i64, i64* %11, align 8, !tbaa !2428
  %581 = add i64 %580, 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RBX, align 8, !tbaa !2428
  store i64 %581, i64* %11, align 8, !tbaa !2428
  %584 = add i64 %1115, 3
  store i64 %584, i64* %PC, align 8
  %585 = add i64 %580, 16
  %586 = inttoptr i64 %581 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %R14, align 8, !tbaa !2428
  store i64 %585, i64* %11, align 8, !tbaa !2428
  %588 = add i64 %1115, 5
  store i64 %588, i64* %PC, align 8
  %589 = add i64 %580, 24
  %590 = inttoptr i64 %585 to i64*
  %591 = load i64, i64* %590, align 8
  store i64 %591, i64* %R15, align 8, !tbaa !2428
  store i64 %589, i64* %11, align 8, !tbaa !2428
  %592 = add i64 %1115, 6
  store i64 %592, i64* %PC, align 8
  %593 = add i64 %580, 32
  %594 = inttoptr i64 %589 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %RBP, align 8, !tbaa !2428
  store i64 %593, i64* %11, align 8, !tbaa !2428
  %596 = add i64 %1115, 7
  store i64 %596, i64* %PC, align 8
  %597 = inttoptr i64 %593 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %137, align 8, !tbaa !2428
  %599 = add i64 %580, 40
  store i64 %599, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4011c5:                                     ; preds = %block_4011b9
  %600 = add i64 %827, -64
  %601 = add i64 %863, 7
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %600 to i32*
  store i32 0, i32* %602, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_4011cc

block_401131:                                     ; preds = %block_401125
  %603 = add i64 %865, 16
  %604 = add i64 %901, 4
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RAX, align 8, !tbaa !2428
  %607 = add i64 %865, -60
  %608 = add i64 %901, 8
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sext i32 %610 to i64
  %612 = shl nsw i64 %611, 13
  store i64 %612, i64* %RCX, align 8, !tbaa !2428
  %613 = lshr i64 %611, 50
  %614 = and i64 %613, 1
  %615 = add i64 %612, %606
  store i64 %615, i64* %RAX, align 8, !tbaa !2428
  %616 = icmp ult i64 %615, %606
  %617 = icmp ult i64 %615, %612
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %131, align 1, !tbaa !2432
  %620 = trunc i64 %615 to i32
  %621 = and i32 %620, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621) #8
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %132, align 1, !tbaa !2446
  %626 = xor i64 %606, %615
  %627 = lshr i64 %626, 4
  %628 = trunc i64 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %133, align 1, !tbaa !2450
  %630 = icmp eq i64 %615, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %134, align 1, !tbaa !2447
  %632 = lshr i64 %615, 63
  %633 = trunc i64 %632 to i8
  store i8 %633, i8* %135, align 1, !tbaa !2448
  %634 = lshr i64 %606, 63
  %635 = xor i64 %632, %634
  %636 = xor i64 %632, %614
  %637 = add nuw nsw i64 %635, %636
  %638 = icmp eq i64 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %136, align 1, !tbaa !2449
  %640 = add i64 %901, 19
  store i64 %640, i64* %PC, align 8
  %641 = load i32, i32* %868, align 4
  %642 = sext i32 %641 to i64
  store i64 %642, i64* %RCX, align 8, !tbaa !2428
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %615
  %645 = add i64 %901, 24
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to double*
  %647 = load double, double* %646, align 8
  store double %647, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %648 = add i64 %865, 24
  %649 = add i64 %901, 28
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX, align 8, !tbaa !2428
  %652 = add i64 %901, 32
  store i64 %652, i64* %PC, align 8
  %653 = load i32, i32* %868, align 4
  %654 = sext i32 %653 to i64
  %655 = shl nsw i64 %654, 13
  store i64 %655, i64* %RCX, align 8, !tbaa !2428
  %656 = lshr i64 %654, 50
  %657 = and i64 %656, 1
  %658 = add i64 %655, %651
  store i64 %658, i64* %RAX, align 8, !tbaa !2428
  %659 = icmp ult i64 %658, %651
  %660 = icmp ult i64 %658, %655
  %661 = or i1 %659, %660
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %131, align 1, !tbaa !2432
  %663 = trunc i64 %658 to i32
  %664 = and i32 %663, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664) #8
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %132, align 1, !tbaa !2446
  %669 = xor i64 %651, %658
  %670 = lshr i64 %669, 4
  %671 = trunc i64 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %133, align 1, !tbaa !2450
  %673 = icmp eq i64 %658, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %134, align 1, !tbaa !2447
  %675 = lshr i64 %658, 63
  %676 = trunc i64 %675 to i8
  store i8 %676, i8* %135, align 1, !tbaa !2448
  %677 = lshr i64 %651, 63
  %678 = xor i64 %675, %677
  %679 = xor i64 %675, %657
  %680 = add nuw nsw i64 %678, %679
  %681 = icmp eq i64 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %136, align 1, !tbaa !2449
  %683 = load i64, i64* %RBP, align 8
  %684 = add i64 %683, -64
  %685 = add i64 %901, 43
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RCX, align 8, !tbaa !2428
  %689 = shl nsw i64 %688, 3
  %690 = add i64 %689, %658
  %691 = add i64 %901, 48
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to double*
  %693 = load double, double* %692, align 8
  %694 = fmul double %647, %693
  store double %694, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %695 = add i64 %683, -56
  %696 = add i64 %901, 52
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = add i64 %683, -60
  %700 = add i64 %901, 56
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = sext i32 %702 to i64
  %704 = shl nsw i64 %703, 13
  store i64 %704, i64* %RCX, align 8, !tbaa !2428
  %705 = lshr i64 %703, 50
  %706 = and i64 %705, 1
  %707 = add i64 %704, %698
  store i64 %707, i64* %RAX, align 8, !tbaa !2428
  %708 = icmp ult i64 %707, %698
  %709 = icmp ult i64 %707, %704
  %710 = or i1 %708, %709
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %131, align 1, !tbaa !2432
  %712 = trunc i64 %707 to i32
  %713 = and i32 %712, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713) #8
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %132, align 1, !tbaa !2446
  %718 = xor i64 %698, %707
  %719 = lshr i64 %718, 4
  %720 = trunc i64 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %133, align 1, !tbaa !2450
  %722 = icmp eq i64 %707, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %134, align 1, !tbaa !2447
  %724 = lshr i64 %707, 63
  %725 = trunc i64 %724 to i8
  store i8 %725, i8* %135, align 1, !tbaa !2448
  %726 = lshr i64 %698, 63
  %727 = xor i64 %724, %726
  %728 = xor i64 %724, %706
  %729 = add nuw nsw i64 %727, %728
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %136, align 1, !tbaa !2449
  %732 = add i64 %901, 67
  store i64 %732, i64* %PC, align 8
  %733 = load i32, i32* %686, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX, align 8, !tbaa !2428
  %735 = shl nsw i64 %734, 3
  %736 = add i64 %735, %707
  %737 = add i64 %901, 72
  store i64 %737, i64* %PC, align 8
  %738 = inttoptr i64 %736 to double*
  %739 = load double, double* %738, align 8
  %740 = fadd double %694, %739
  store double %740, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %741 = add i64 %901, 77
  store i64 %741, i64* %PC, align 8
  store double %740, double* %738, align 8
  %742 = load i64, i64* %RBP, align 8
  %743 = add i64 %742, -68
  %744 = load i64, i64* %PC, align 8
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = add i32 %747, 1
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RAX, align 8, !tbaa !2428
  %750 = icmp eq i32 %747, -1
  %751 = icmp eq i32 %748, 0
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %131, align 1, !tbaa !2432
  %754 = and i32 %748, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754) #8
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %132, align 1, !tbaa !2446
  %759 = xor i32 %747, %748
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %133, align 1, !tbaa !2450
  %763 = icmp eq i32 %748, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %134, align 1, !tbaa !2447
  %765 = lshr i32 %748, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %135, align 1, !tbaa !2448
  %767 = lshr i32 %747, 31
  %768 = xor i32 %765, %767
  %769 = add nuw nsw i32 %768, %765
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %136, align 1, !tbaa !2449
  %772 = add i64 %744, 9
  store i64 %772, i64* %PC, align 8
  store i32 %748, i32* %746, align 4
  %773 = load i64, i64* %PC, align 8
  %774 = add i64 %773, -98
  store i64 %774, i64* %137, align 8, !tbaa !2428
  br label %block_401125

block_4012ad:                                     ; preds = %block_4012a1
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %775 = add i64 %903, 56
  %776 = add i64 %939, 7
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %RAX, align 8, !tbaa !2428
  %779 = add i64 %903, -60
  %780 = add i64 %939, 11
  store i64 %780, i64* %PC, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = sext i32 %782 to i64
  %784 = shl nsw i64 %783, 13
  store i64 %784, i64* %RCX, align 8, !tbaa !2428
  %785 = lshr i64 %783, 50
  %786 = and i64 %785, 1
  %787 = add i64 %784, %778
  store i64 %787, i64* %RAX, align 8, !tbaa !2428
  %788 = icmp ult i64 %787, %778
  %789 = icmp ult i64 %787, %784
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %131, align 1, !tbaa !2432
  %792 = trunc i64 %787 to i32
  %793 = and i32 %792, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793) #8
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %132, align 1, !tbaa !2446
  %798 = xor i64 %778, %787
  %799 = lshr i64 %798, 4
  %800 = trunc i64 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %133, align 1, !tbaa !2450
  %802 = icmp eq i64 %787, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %134, align 1, !tbaa !2447
  %804 = lshr i64 %787, 63
  %805 = trunc i64 %804 to i8
  store i8 %805, i8* %135, align 1, !tbaa !2448
  %806 = lshr i64 %778, 63
  %807 = xor i64 %804, %806
  %808 = xor i64 %804, %786
  %809 = add nuw nsw i64 %807, %808
  %810 = icmp eq i64 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %136, align 1, !tbaa !2449
  %812 = add i64 %939, 22
  store i64 %812, i64* %PC, align 8
  %813 = load i32, i32* %906, align 4
  %814 = sext i32 %813 to i64
  store i64 %814, i64* %RCX, align 8, !tbaa !2428
  %815 = shl nsw i64 %814, 3
  %816 = add i64 %815, %787
  %817 = add i64 %939, 27
  store i64 %817, i64* %PC, align 8
  %818 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %819 = load i64, i64* %818, align 1
  %820 = inttoptr i64 %816 to i64*
  store i64 %819, i64* %820, align 8
  %821 = load i64, i64* %RBP, align 8
  %822 = add i64 %821, -68
  %823 = load i64, i64* %PC, align 8
  %824 = add i64 %823, 7
  store i64 %824, i64* %PC, align 8
  %825 = inttoptr i64 %822 to i32*
  store i32 0, i32* %825, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_4012cf

block_4011b9:                                     ; preds = %block_4011b2, %block_401274
  %826 = phi i64 [ %.pre4, %block_4011b2 ], [ %178, %block_401274 ]
  %827 = load i64, i64* %RBP, align 8
  %828 = add i64 %827, -60
  %829 = add i64 %826, 3
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RAX, align 8, !tbaa !2428
  %833 = add i64 %827, -32
  %834 = add i64 %826, 6
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sub i32 %831, %836
  %838 = icmp ult i32 %831, %836
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %131, align 1, !tbaa !2432
  %840 = and i32 %837, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840) #8
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %132, align 1, !tbaa !2446
  %845 = xor i32 %836, %831
  %846 = xor i32 %845, %837
  %847 = lshr i32 %846, 4
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %133, align 1, !tbaa !2450
  %850 = icmp eq i32 %837, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %134, align 1, !tbaa !2447
  %852 = lshr i32 %837, 31
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %135, align 1, !tbaa !2448
  %854 = lshr i32 %831, 31
  %855 = lshr i32 %836, 31
  %856 = xor i32 %855, %854
  %857 = xor i32 %852, %854
  %858 = add nuw nsw i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %136, align 1, !tbaa !2449
  %861 = icmp ne i8 %853, 0
  %862 = xor i1 %861, %859
  %.v12 = select i1 %862, i64 12, i64 206
  %863 = add i64 %826, %.v12
  store i64 %863, i64* %137, align 8, !tbaa !2428
  br i1 %862, label %block_4011c5, label %block_401287

block_401125:                                     ; preds = %block_401103, %block_401131
  %864 = phi i64 [ %.pre3, %block_401103 ], [ %774, %block_401131 ]
  %865 = load i64, i64* %RBP, align 8
  %866 = add i64 %865, -68
  %867 = add i64 %864, 3
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %RAX, align 8, !tbaa !2428
  %871 = add i64 %865, -36
  %872 = add i64 %864, 6
  store i64 %872, i64* %PC, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = sub i32 %869, %874
  %876 = icmp ult i32 %869, %874
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %131, align 1, !tbaa !2432
  %878 = and i32 %875, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878) #8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %132, align 1, !tbaa !2446
  %883 = xor i32 %874, %869
  %884 = xor i32 %883, %875
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %133, align 1, !tbaa !2450
  %888 = icmp eq i32 %875, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %134, align 1, !tbaa !2447
  %890 = lshr i32 %875, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %135, align 1, !tbaa !2448
  %892 = lshr i32 %869, 31
  %893 = lshr i32 %874, 31
  %894 = xor i32 %893, %892
  %895 = xor i32 %890, %892
  %896 = add nuw nsw i32 %895, %894
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %136, align 1, !tbaa !2449
  %899 = icmp ne i8 %891, 0
  %900 = xor i1 %899, %897
  %.v11 = select i1 %900, i64 12, i64 103
  %901 = add i64 %864, %.v11
  store i64 %901, i64* %137, align 8, !tbaa !2428
  br i1 %900, label %block_401131, label %block_40118c

block_4012a1:                                     ; preds = %block_40129a, %block_401336
  %902 = phi i64 [ %.pre8, %block_40129a ], [ %970, %block_401336 ]
  %903 = load i64, i64* %RBP, align 8
  %904 = add i64 %903, -64
  %905 = add i64 %902, 3
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX, align 8, !tbaa !2428
  %909 = add i64 %903, -40
  %910 = add i64 %902, 6
  store i64 %910, i64* %PC, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = sub i32 %907, %912
  %914 = icmp ult i32 %907, %912
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %131, align 1, !tbaa !2432
  %916 = and i32 %913, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916) #8
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %132, align 1, !tbaa !2446
  %921 = xor i32 %912, %907
  %922 = xor i32 %921, %913
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %133, align 1, !tbaa !2450
  %926 = icmp eq i32 %913, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %134, align 1, !tbaa !2447
  %928 = lshr i32 %913, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %135, align 1, !tbaa !2448
  %930 = lshr i32 %907, 31
  %931 = lshr i32 %912, 31
  %932 = xor i32 %931, %930
  %933 = xor i32 %928, %930
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %136, align 1, !tbaa !2449
  %937 = icmp ne i8 %929, 0
  %938 = xor i1 %937, %935
  %.v16 = select i1 %938, i64 12, i64 168
  %939 = add i64 %902, %.v16
  store i64 %939, i64* %137, align 8, !tbaa !2428
  br i1 %938, label %block_4012ad, label %block_401349

block_401336:                                     ; preds = %block_4012cf
  %940 = add i64 %472, -64
  %941 = add i64 %508, 8
  store i64 %941, i64* %PC, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = add i32 %943, 1
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RAX, align 8, !tbaa !2428
  %946 = icmp eq i32 %943, -1
  %947 = icmp eq i32 %944, 0
  %948 = or i1 %946, %947
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %131, align 1, !tbaa !2432
  %950 = and i32 %944, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950) #8
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %132, align 1, !tbaa !2446
  %955 = xor i32 %943, %944
  %956 = lshr i32 %955, 4
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  store i8 %958, i8* %133, align 1, !tbaa !2450
  %959 = icmp eq i32 %944, 0
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %134, align 1, !tbaa !2447
  %961 = lshr i32 %944, 31
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %135, align 1, !tbaa !2448
  %963 = lshr i32 %943, 31
  %964 = xor i32 %961, %963
  %965 = add nuw nsw i32 %964, %961
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %136, align 1, !tbaa !2449
  %968 = add i64 %508, 14
  store i64 %968, i64* %PC, align 8
  store i32 %944, i32* %942, align 4
  %969 = load i64, i64* %PC, align 8
  %970 = add i64 %969, -163
  store i64 %970, i64* %137, align 8, !tbaa !2428
  br label %block_4012a1

block_40119f:                                     ; preds = %block_4010f7
  %971 = add i64 %1041, -60
  %972 = add i64 %1077, 8
  store i64 %972, i64* %PC, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = add i32 %974, 1
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RAX, align 8, !tbaa !2428
  %977 = icmp eq i32 %974, -1
  %978 = icmp eq i32 %975, 0
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %131, align 1, !tbaa !2432
  %981 = and i32 %975, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981) #8
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %132, align 1, !tbaa !2446
  %986 = xor i32 %974, %975
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %133, align 1, !tbaa !2450
  %990 = icmp eq i32 %975, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %134, align 1, !tbaa !2447
  %992 = lshr i32 %975, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %135, align 1, !tbaa !2448
  %994 = lshr i32 %974, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %992
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %136, align 1, !tbaa !2449
  %999 = add i64 %1077, 14
  store i64 %999, i64* %PC, align 8
  store i32 %975, i32* %973, align 4
  %1000 = load i64, i64* %PC, align 8
  %1001 = add i64 %1000, -201
  store i64 %1001, i64* %137, align 8, !tbaa !2428
  br label %block_4010e4

block_4011fa:                                     ; preds = %block_401206, %block_4011d8
  %1002 = phi i64 [ %1325, %block_401206 ], [ %.pre6, %block_4011d8 ]
  %1003 = load i64, i64* %RBP, align 8
  %1004 = add i64 %1003, -68
  %1005 = add i64 %1002, 3
  store i64 %1005, i64* %PC, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX, align 8, !tbaa !2428
  %1009 = add i64 %1003, -44
  %1010 = add i64 %1002, 6
  store i64 %1010, i64* %PC, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = sub i32 %1007, %1012
  %1014 = icmp ult i32 %1007, %1012
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %131, align 1, !tbaa !2432
  %1016 = and i32 %1013, 255
  %1017 = tail call i32 @llvm.ctpop.i32(i32 %1016) #8
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  store i8 %1020, i8* %132, align 1, !tbaa !2446
  %1021 = xor i32 %1012, %1007
  %1022 = xor i32 %1021, %1013
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %133, align 1, !tbaa !2450
  %1026 = icmp eq i32 %1013, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %134, align 1, !tbaa !2447
  %1028 = lshr i32 %1013, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %135, align 1, !tbaa !2448
  %1030 = lshr i32 %1007, 31
  %1031 = lshr i32 %1012, 31
  %1032 = xor i32 %1031, %1030
  %1033 = xor i32 %1028, %1030
  %1034 = add nuw nsw i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %136, align 1, !tbaa !2449
  %1037 = icmp ne i8 %1029, 0
  %1038 = xor i1 %1037, %1035
  %.v14 = select i1 %1038, i64 12, i64 103
  %1039 = add i64 %1002, %.v14
  store i64 %1039, i64* %137, align 8, !tbaa !2428
  br i1 %1038, label %block_401206, label %block_401261

block_4010f7:                                     ; preds = %block_4010f0, %block_40118c
  %1040 = phi i64 [ %.pre2, %block_4010f0 ], [ %1146, %block_40118c ]
  %1041 = load i64, i64* %RBP, align 8
  %1042 = add i64 %1041, -64
  %1043 = add i64 %1040, 3
  store i64 %1043, i64* %PC, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX, align 8, !tbaa !2428
  %1047 = add i64 %1041, -32
  %1048 = add i64 %1040, 6
  store i64 %1048, i64* %PC, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = sub i32 %1045, %1050
  %1052 = icmp ult i32 %1045, %1050
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %131, align 1, !tbaa !2432
  %1054 = and i32 %1051, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054) #8
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %132, align 1, !tbaa !2446
  %1059 = xor i32 %1050, %1045
  %1060 = xor i32 %1059, %1051
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %133, align 1, !tbaa !2450
  %1064 = icmp eq i32 %1051, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %134, align 1, !tbaa !2447
  %1066 = lshr i32 %1051, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %135, align 1, !tbaa !2448
  %1068 = lshr i32 %1045, 31
  %1069 = lshr i32 %1050, 31
  %1070 = xor i32 %1069, %1068
  %1071 = xor i32 %1066, %1068
  %1072 = add nuw nsw i32 %1071, %1070
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %136, align 1, !tbaa !2449
  %1075 = icmp ne i8 %1067, 0
  %1076 = xor i1 %1075, %1073
  %.v10 = select i1 %1076, i64 12, i64 168
  %1077 = add i64 %1040, %.v10
  store i64 %1077, i64* %137, align 8, !tbaa !2428
  br i1 %1076, label %block_401103, label %block_40119f

block_40128e:                                     ; preds = %block_401287, %block_401349
  %1078 = phi i64 [ %.pre7, %block_401287 ], [ %577, %block_401349 ]
  %1079 = load i64, i64* %RBP, align 8
  %1080 = add i64 %1079, -60
  %1081 = add i64 %1078, 3
  store i64 %1081, i64* %PC, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX, align 8, !tbaa !2428
  %1085 = add i64 %1079, -28
  %1086 = add i64 %1078, 6
  store i64 %1086, i64* %PC, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sub i32 %1083, %1088
  %1090 = icmp ult i32 %1083, %1088
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %131, align 1, !tbaa !2432
  %1092 = and i32 %1089, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092) #8
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %132, align 1, !tbaa !2446
  %1097 = xor i32 %1088, %1083
  %1098 = xor i32 %1097, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %133, align 1, !tbaa !2450
  %1102 = icmp eq i32 %1089, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %134, align 1, !tbaa !2447
  %1104 = lshr i32 %1089, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %135, align 1, !tbaa !2448
  %1106 = lshr i32 %1083, 31
  %1107 = lshr i32 %1088, 31
  %1108 = xor i32 %1107, %1106
  %1109 = xor i32 %1104, %1106
  %1110 = add nuw nsw i32 %1109, %1108
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %136, align 1, !tbaa !2449
  %1113 = icmp ne i8 %1105, 0
  %1114 = xor i1 %1113, %1111
  %.v15 = select i1 %1114, i64 12, i64 206
  %1115 = add i64 %1078, %.v15
  store i64 %1115, i64* %137, align 8, !tbaa !2428
  br i1 %1114, label %block_40129a, label %block_40135c

block_40118c:                                     ; preds = %block_401125
  %1116 = add i64 %865, -64
  %1117 = add i64 %901, 8
  store i64 %1117, i64* %PC, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, 1
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RAX, align 8, !tbaa !2428
  %1122 = icmp eq i32 %1119, -1
  %1123 = icmp eq i32 %1120, 0
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %131, align 1, !tbaa !2432
  %1126 = and i32 %1120, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126) #8
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %132, align 1, !tbaa !2446
  %1131 = xor i32 %1119, %1120
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %133, align 1, !tbaa !2450
  %1135 = icmp eq i32 %1120, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %134, align 1, !tbaa !2447
  %1137 = lshr i32 %1120, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %135, align 1, !tbaa !2448
  %1139 = lshr i32 %1119, 31
  %1140 = xor i32 %1137, %1139
  %1141 = add nuw nsw i32 %1140, %1137
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %136, align 1, !tbaa !2449
  %1144 = add i64 %901, 14
  store i64 %1144, i64* %PC, align 8
  store i32 %1120, i32* %1118, align 4
  %1145 = load i64, i64* %PC, align 8
  %1146 = add i64 %1145, -163
  store i64 %1146, i64* %137, align 8, !tbaa !2428
  br label %block_4010f7

block_4010f0:                                     ; preds = %block_4010e4
  %1147 = add i64 %180, -64
  %1148 = add i64 %216, 7
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1147 to i32*
  store i32 0, i32* %1149, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4010f7

block_401287:                                     ; preds = %block_4011b9
  %1150 = add i64 %863, 7
  store i64 %1150, i64* %PC, align 8
  store i32 0, i32* %830, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40128e

block_40129a:                                     ; preds = %block_40128e
  %1151 = add i64 %1079, -64
  %1152 = add i64 %1115, 7
  store i64 %1152, i64* %PC, align 8
  %1153 = inttoptr i64 %1151 to i32*
  store i32 0, i32* %1153, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4012a1

block_401206:                                     ; preds = %block_4011fa
  %1154 = add i64 %1003, 40
  %1155 = add i64 %1039, 4
  store i64 %1155, i64* %PC, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = add i64 %1003, -60
  %1159 = add i64 %1039, 8
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = shl nsw i64 %1162, 13
  store i64 %1163, i64* %RCX, align 8, !tbaa !2428
  %1164 = lshr i64 %1162, 50
  %1165 = and i64 %1164, 1
  %1166 = add i64 %1163, %1157
  store i64 %1166, i64* %RAX, align 8, !tbaa !2428
  %1167 = icmp ult i64 %1166, %1157
  %1168 = icmp ult i64 %1166, %1163
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %131, align 1, !tbaa !2432
  %1171 = trunc i64 %1166 to i32
  %1172 = and i32 %1171, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172) #8
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %132, align 1, !tbaa !2446
  %1177 = xor i64 %1157, %1166
  %1178 = lshr i64 %1177, 4
  %1179 = trunc i64 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %133, align 1, !tbaa !2450
  %1181 = icmp eq i64 %1166, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %134, align 1, !tbaa !2447
  %1183 = lshr i64 %1166, 63
  %1184 = trunc i64 %1183 to i8
  store i8 %1184, i8* %135, align 1, !tbaa !2448
  %1185 = lshr i64 %1157, 63
  %1186 = xor i64 %1183, %1185
  %1187 = xor i64 %1183, %1165
  %1188 = add nuw nsw i64 %1186, %1187
  %1189 = icmp eq i64 %1188, 2
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %136, align 1, !tbaa !2449
  %1191 = add i64 %1039, 19
  store i64 %1191, i64* %PC, align 8
  %1192 = load i32, i32* %1006, align 4
  %1193 = sext i32 %1192 to i64
  store i64 %1193, i64* %RCX, align 8, !tbaa !2428
  %1194 = shl nsw i64 %1193, 3
  %1195 = add i64 %1194, %1166
  %1196 = add i64 %1039, 24
  store i64 %1196, i64* %PC, align 8
  %1197 = inttoptr i64 %1195 to double*
  %1198 = load double, double* %1197, align 8
  store double %1198, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %1199 = add i64 %1003, 48
  %1200 = add i64 %1039, 28
  store i64 %1200, i64* %PC, align 8
  %1201 = inttoptr i64 %1199 to i64*
  %1202 = load i64, i64* %1201, align 8
  store i64 %1202, i64* %RAX, align 8, !tbaa !2428
  %1203 = add i64 %1039, 32
  store i64 %1203, i64* %PC, align 8
  %1204 = load i32, i32* %1006, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = shl nsw i64 %1205, 13
  store i64 %1206, i64* %RCX, align 8, !tbaa !2428
  %1207 = lshr i64 %1205, 50
  %1208 = and i64 %1207, 1
  %1209 = add i64 %1206, %1202
  store i64 %1209, i64* %RAX, align 8, !tbaa !2428
  %1210 = icmp ult i64 %1209, %1202
  %1211 = icmp ult i64 %1209, %1206
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %131, align 1, !tbaa !2432
  %1214 = trunc i64 %1209 to i32
  %1215 = and i32 %1214, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215) #8
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %132, align 1, !tbaa !2446
  %1220 = xor i64 %1202, %1209
  %1221 = lshr i64 %1220, 4
  %1222 = trunc i64 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %133, align 1, !tbaa !2450
  %1224 = icmp eq i64 %1209, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %134, align 1, !tbaa !2447
  %1226 = lshr i64 %1209, 63
  %1227 = trunc i64 %1226 to i8
  store i8 %1227, i8* %135, align 1, !tbaa !2448
  %1228 = lshr i64 %1202, 63
  %1229 = xor i64 %1226, %1228
  %1230 = xor i64 %1226, %1208
  %1231 = add nuw nsw i64 %1229, %1230
  %1232 = icmp eq i64 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %136, align 1, !tbaa !2449
  %1234 = load i64, i64* %RBP, align 8
  %1235 = add i64 %1234, -64
  %1236 = add i64 %1039, 43
  store i64 %1236, i64* %PC, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = sext i32 %1238 to i64
  store i64 %1239, i64* %RCX, align 8, !tbaa !2428
  %1240 = shl nsw i64 %1239, 3
  %1241 = add i64 %1240, %1209
  %1242 = add i64 %1039, 48
  store i64 %1242, i64* %PC, align 8
  %1243 = inttoptr i64 %1241 to double*
  %1244 = load double, double* %1243, align 8
  %1245 = fmul double %1198, %1244
  store double %1245, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %1246 = add i64 %1234, 32
  %1247 = add i64 %1039, 52
  store i64 %1247, i64* %PC, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RAX, align 8, !tbaa !2428
  %1250 = add i64 %1234, -60
  %1251 = add i64 %1039, 56
  store i64 %1251, i64* %PC, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = shl nsw i64 %1254, 13
  store i64 %1255, i64* %RCX, align 8, !tbaa !2428
  %1256 = lshr i64 %1254, 50
  %1257 = and i64 %1256, 1
  %1258 = add i64 %1255, %1249
  store i64 %1258, i64* %RAX, align 8, !tbaa !2428
  %1259 = icmp ult i64 %1258, %1249
  %1260 = icmp ult i64 %1258, %1255
  %1261 = or i1 %1259, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %131, align 1, !tbaa !2432
  %1263 = trunc i64 %1258 to i32
  %1264 = and i32 %1263, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264) #8
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %132, align 1, !tbaa !2446
  %1269 = xor i64 %1249, %1258
  %1270 = lshr i64 %1269, 4
  %1271 = trunc i64 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %133, align 1, !tbaa !2450
  %1273 = icmp eq i64 %1258, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %134, align 1, !tbaa !2447
  %1275 = lshr i64 %1258, 63
  %1276 = trunc i64 %1275 to i8
  store i8 %1276, i8* %135, align 1, !tbaa !2448
  %1277 = lshr i64 %1249, 63
  %1278 = xor i64 %1275, %1277
  %1279 = xor i64 %1275, %1257
  %1280 = add nuw nsw i64 %1278, %1279
  %1281 = icmp eq i64 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %136, align 1, !tbaa !2449
  %1283 = add i64 %1039, 67
  store i64 %1283, i64* %PC, align 8
  %1284 = load i32, i32* %1237, align 4
  %1285 = sext i32 %1284 to i64
  store i64 %1285, i64* %RCX, align 8, !tbaa !2428
  %1286 = shl nsw i64 %1285, 3
  %1287 = add i64 %1286, %1258
  %1288 = add i64 %1039, 72
  store i64 %1288, i64* %PC, align 8
  %1289 = inttoptr i64 %1287 to double*
  %1290 = load double, double* %1289, align 8
  %1291 = fadd double %1245, %1290
  store double %1291, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %1292 = add i64 %1039, 77
  store i64 %1292, i64* %PC, align 8
  store double %1291, double* %1289, align 8
  %1293 = load i64, i64* %RBP, align 8
  %1294 = add i64 %1293, -68
  %1295 = load i64, i64* %PC, align 8
  %1296 = add i64 %1295, 3
  store i64 %1296, i64* %PC, align 8
  %1297 = inttoptr i64 %1294 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = add i32 %1298, 1
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX, align 8, !tbaa !2428
  %1301 = icmp eq i32 %1298, -1
  %1302 = icmp eq i32 %1299, 0
  %1303 = or i1 %1301, %1302
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %131, align 1, !tbaa !2432
  %1305 = and i32 %1299, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305) #8
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %132, align 1, !tbaa !2446
  %1310 = xor i32 %1298, %1299
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %133, align 1, !tbaa !2450
  %1314 = icmp eq i32 %1299, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %134, align 1, !tbaa !2447
  %1316 = lshr i32 %1299, 31
  %1317 = trunc i32 %1316 to i8
  store i8 %1317, i8* %135, align 1, !tbaa !2448
  %1318 = lshr i32 %1298, 31
  %1319 = xor i32 %1316, %1318
  %1320 = add nuw nsw i32 %1319, %1316
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %136, align 1, !tbaa !2449
  %1323 = add i64 %1295, 9
  store i64 %1323, i64* %PC, align 8
  store i32 %1299, i32* %1297, align 4
  %1324 = load i64, i64* %PC, align 8
  %1325 = add i64 %1324, -98
  store i64 %1325, i64* %137, align 8, !tbaa !2428
  br label %block_4011fa

block_401103:                                     ; preds = %block_4010f7
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %1326 = add i64 %1041, -56
  %1327 = add i64 %1077, 7
  store i64 %1327, i64* %PC, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  store i64 %1329, i64* %RAX, align 8, !tbaa !2428
  %1330 = add i64 %1041, -60
  %1331 = add i64 %1077, 11
  store i64 %1331, i64* %PC, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = sext i32 %1333 to i64
  %1335 = shl nsw i64 %1334, 13
  store i64 %1335, i64* %RCX, align 8, !tbaa !2428
  %1336 = lshr i64 %1334, 50
  %1337 = and i64 %1336, 1
  %1338 = add i64 %1335, %1329
  store i64 %1338, i64* %RAX, align 8, !tbaa !2428
  %1339 = icmp ult i64 %1338, %1329
  %1340 = icmp ult i64 %1338, %1335
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %131, align 1, !tbaa !2432
  %1343 = trunc i64 %1338 to i32
  %1344 = and i32 %1343, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344) #8
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %132, align 1, !tbaa !2446
  %1349 = xor i64 %1329, %1338
  %1350 = lshr i64 %1349, 4
  %1351 = trunc i64 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %133, align 1, !tbaa !2450
  %1353 = icmp eq i64 %1338, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %134, align 1, !tbaa !2447
  %1355 = lshr i64 %1338, 63
  %1356 = trunc i64 %1355 to i8
  store i8 %1356, i8* %135, align 1, !tbaa !2448
  %1357 = lshr i64 %1329, 63
  %1358 = xor i64 %1355, %1357
  %1359 = xor i64 %1355, %1337
  %1360 = add nuw nsw i64 %1358, %1359
  %1361 = icmp eq i64 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %136, align 1, !tbaa !2449
  %1363 = add i64 %1077, 22
  store i64 %1363, i64* %PC, align 8
  %1364 = load i32, i32* %1044, align 4
  %1365 = sext i32 %1364 to i64
  store i64 %1365, i64* %RCX, align 8, !tbaa !2428
  %1366 = shl nsw i64 %1365, 3
  %1367 = add i64 %1366, %1338
  %1368 = add i64 %1077, 27
  store i64 %1368, i64* %PC, align 8
  %1369 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %1370 = load i64, i64* %1369, align 1
  %1371 = inttoptr i64 %1367 to i64*
  store i64 %1370, i64* %1371, align 8
  %1372 = load i64, i64* %RBP, align 8
  %1373 = add i64 %1372, -68
  %1374 = load i64, i64* %PC, align 8
  %1375 = add i64 %1374, 7
  store i64 %1375, i64* %PC, align 8
  %1376 = inttoptr i64 %1373 to i32*
  store i32 0, i32* %1376, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_401125
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007e0:
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
  store i32 0, i32* %13, align 1, !tbaa !2453
  %14 = getelementptr inbounds i8, i8* %11, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1, !tbaa !2453
  %16 = bitcast i64* %12 to i32*
  store i32 0, i32* %16, align 1, !tbaa !2453
  %17 = getelementptr inbounds i8, i8* %11, i64 12
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1, !tbaa !2453
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
define %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400730:
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
  %55 = tail call fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %56 = bitcast %union.VectorReg* %3 to i8*
  %57 = load i64, i64* %PC, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %59, align 1, !tbaa !2453
  %60 = getelementptr inbounds i8, i8* %56, i64 4
  %61 = bitcast i8* %60 to i32*
  store i32 0, i32* %61, align 1, !tbaa !2453
  %62 = bitcast i64* %58 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2453
  %63 = getelementptr inbounds i8, i8* %56, i64 12
  %64 = bitcast i8* %63 to i32*
  store i32 0, i32* %64, align 1, !tbaa !2453
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
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
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
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
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
  br label %block_400762

block_400793:                                     ; preds = %block_400762
  store i64 %210, i64* %RDI, align 8, !tbaa !2428
  %131 = add i64 %206, -467
  %132 = add i64 %206, 12
  %133 = load i64, i64* %6, align 8, !tbaa !2428
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8, !tbaa !2428
  store i64 %131, i64* %54, align 8, !tbaa !2428
  %136 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %55)
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

block_400762:                                     ; preds = %block_40076e, %block_400730
  %169 = phi i64 [ %130, %block_40076e ], [ %.pre, %block_400730 ]
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
  br i1 %205, label %block_40076e, label %block_400793
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
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
  %11 = add i64 %9, -6299752
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
  br i1 %30, label %block_4006e8, label %block_4006d3

block_4006d3:                                     ; preds = %block_4006b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %36 = add i64 %35, 21
  store i64 %36, i64* %34, align 8, !tbaa !2428
  br label %block_4006e8

block_4006e8:                                     ; preds = %block_4006d3, %block_4006b0
  %37 = phi i64 [ %36, %block_4006d3 ], [ %35, %block_4006b0 ]
  %38 = add i64 %37, 1
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %5, align 8, !tbaa !2428
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  store i64 %40, i64* %5, align 8, !tbaa !2428
  %43 = add i64 %37, 2
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %34, align 8, !tbaa !2428
  %46 = add i64 %39, 16
  store i64 %46, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007b0:
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
  %15 = tail call %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
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
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2432
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2446
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2450
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2447
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2448
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2449
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
define %struct.Memory* @sub_4014a0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4014a0:
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
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
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
  store i8 %28, i8* %29, align 1, !tbaa !2450
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2447
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2448
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2449
  %42 = add i64 %9, -12
  %43 = load i32, i32* %EDI, align 4
  %44 = add i64 %12, 10
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
  %59 = add i64 %58, -8
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 4
  %65 = lshr i32 %63, 27
  %66 = and i32 %65, 1
  %67 = or i32 %64, 1
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %69 = and i32 %67, 241
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #8
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2450
  store i8 0, i8* %32, align 1, !tbaa !2447
  %74 = lshr i32 %63, 27
  %75 = and i32 %74, 1
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %35, align 1, !tbaa !2448
  %77 = xor i32 %75, %66
  %78 = add nuw nsw i32 %77, %75
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %41, align 1, !tbaa !2449
  %81 = sext i32 %67 to i64
  store i64 %81, i64* %RDI, align 8, !tbaa !2428
  %82 = add i64 %60, -3746
  %83 = add i64 %60, 17
  %84 = load i64, i64* %8, align 8, !tbaa !2428
  %85 = add i64 %84, -8
  %86 = inttoptr i64 %85 to i64*
  store i64 %83, i64* %86, align 8
  store i64 %85, i64* %8, align 8, !tbaa !2428
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %82, i64* %87, align 8, !tbaa !2428
  %88 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -32
  %91 = load i64, i64* %RAX, align 8
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %90 to i64*
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -32
  %97 = load i64, i64* %PC, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = add i64 %95, -8
  %102 = add i64 %97, 7
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RSI, align 8, !tbaa !2428
  %107 = lshr i32 %104, 28
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %16, align 1, !tbaa !2454
  %110 = and i32 %105, 240
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %23, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  %115 = icmp eq i32 %105, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %32, align 1, !tbaa !2454
  %117 = lshr i32 %104, 27
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %41, align 1, !tbaa !2454
  %120 = sext i32 %105 to i64
  store i64 %120, i64* %RDX, align 8, !tbaa !2428
  %121 = add i64 %120, %100
  %122 = add i64 %97, 17
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %121 to i8*
  store i8 0, i8* %123, align 1
  %124 = load i64, i64* %RBP, align 8
  %125 = add i64 %124, -20
  %126 = load i64, i64* %PC, align 8
  %127 = add i64 %126, 7
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %125 to i32*
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %130 = bitcast i64* %129 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4014df

block_4014df:                                     ; preds = %block_401535, %block_4014a0
  %131 = phi i64 [ %.pre, %block_4014a0 ], [ %368, %block_401535 ]
  %MEMORY.0 = phi %struct.Memory* [ %88, %block_4014a0 ], [ %329, %block_401535 ]
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -20
  %134 = add i64 %131, 3
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %138 = add i64 %132, -4
  %139 = add i64 %131, 6
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %136, %141
  %143 = icmp ult i32 %136, %141
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %16, align 1, !tbaa !2432
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #8
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %23, align 1, !tbaa !2446
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
  %.v = select i1 %167, i64 12, i64 120
  %168 = add i64 %131, %.v
  store i64 %168, i64* %87, align 8, !tbaa !2428
  br i1 %167, label %block_4014eb, label %block_401557

block_401557:                                     ; preds = %block_4014df
  %169 = add i64 %132, -32
  %170 = add i64 %168, 4
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RDI, align 8, !tbaa !2428
  %173 = add i64 %168, -3991
  %174 = add i64 %168, 9
  %175 = load i64, i64* %8, align 8, !tbaa !2428
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %174, i64* %177, align 8
  store i64 %176, i64* %8, align 8, !tbaa !2428
  store i64 %173, i64* %87, align 8, !tbaa !2428
  %178 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %179 = load i64, i64* %RSP, align 8
  %180 = load i64, i64* %PC, align 8
  %181 = add i64 %179, 48
  store i64 %181, i64* %RSP, align 8, !tbaa !2428
  %182 = icmp ugt i64 %179, -49
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %16, align 1, !tbaa !2432
  %184 = trunc i64 %181 to i32
  %185 = and i32 %184, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #8
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %23, align 1, !tbaa !2446
  %190 = xor i64 %179, 16
  %191 = xor i64 %190, %181
  %192 = lshr i64 %191, 4
  %193 = trunc i64 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %29, align 1, !tbaa !2450
  %195 = icmp eq i64 %181, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %32, align 1, !tbaa !2447
  %197 = lshr i64 %181, 63
  %198 = trunc i64 %197 to i8
  store i8 %198, i8* %35, align 1, !tbaa !2448
  %199 = lshr i64 %179, 63
  %200 = xor i64 %197, %199
  %201 = add nuw nsw i64 %200, %197
  %202 = icmp eq i64 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %41, align 1, !tbaa !2449
  %204 = add i64 %180, 5
  store i64 %204, i64* %PC, align 8
  %205 = add i64 %179, 56
  %206 = inttoptr i64 %181 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RBP, align 8, !tbaa !2428
  store i64 %205, i64* %8, align 8, !tbaa !2428
  %208 = add i64 %180, 6
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %205 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %87, align 8, !tbaa !2428
  %211 = add i64 %179, 64
  store i64 %211, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %178

block_4014fe:                                     ; preds = %block_4014f2
  %212 = add i64 %370, -16
  %213 = add i64 %406, 4
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = add i64 %370, -20
  %217 = add i64 %406, 8
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = shl nsw i64 %220, 13
  store i64 %221, i64* %RCX, align 8, !tbaa !2428
  %222 = lshr i64 %220, 50
  %223 = and i64 %222, 1
  %224 = add i64 %221, %215
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = icmp ult i64 %224, %215
  %226 = icmp ult i64 %224, %221
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %16, align 1, !tbaa !2432
  %229 = trunc i64 %224 to i32
  %230 = and i32 %229, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230) #8
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %23, align 1, !tbaa !2446
  %235 = xor i64 %215, %224
  %236 = lshr i64 %235, 4
  %237 = trunc i64 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %29, align 1, !tbaa !2450
  %239 = icmp eq i64 %224, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %32, align 1, !tbaa !2447
  %241 = lshr i64 %224, 63
  %242 = trunc i64 %241 to i8
  store i8 %242, i8* %35, align 1, !tbaa !2448
  %243 = lshr i64 %215, 63
  %244 = xor i64 %241, %243
  %245 = xor i64 %241, %223
  %246 = add nuw nsw i64 %244, %245
  %247 = icmp eq i64 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %41, align 1, !tbaa !2449
  %249 = add i64 %406, 19
  store i64 %249, i64* %PC, align 8
  %250 = load i32, i32* %373, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RCX, align 8, !tbaa !2428
  %252 = shl nsw i64 %251, 3
  %253 = add i64 %252, %224
  %254 = add i64 %406, 24
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %256, i64* %257, align 1, !tbaa !2451
  store double 0.000000e+00, double* %130, align 1, !tbaa !2451
  %258 = add i64 %406, 27
  store i64 %258, i64* %PC, align 8
  %259 = load i32, i32* %373, align 4
  %260 = shl i32 %259, 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RDX, align 8, !tbaa !2428
  %262 = lshr i32 %259, 28
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %16, align 1, !tbaa !2454
  %265 = and i32 %260, 240
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #8
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %23, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  %270 = icmp eq i32 %260, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %32, align 1, !tbaa !2454
  %272 = lshr i32 %259, 27
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %41, align 1, !tbaa !2454
  %275 = load i64, i64* %RBP, align 8
  %276 = add i64 %275, -32
  %277 = add i64 %406, 34
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RSI, align 8, !tbaa !2428
  store i64 %261, i64* %RDI, align 8, !tbaa !2428
  %280 = add i64 %406, 114
  %281 = add i64 %406, 41
  %282 = load i64, i64* %8, align 8, !tbaa !2428
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284, align 8
  store i64 %283, i64* %8, align 8, !tbaa !2428
  store i64 %280, i64* %87, align 8, !tbaa !2428
  %285 = tail call %struct.Memory* @sub_401570_print_element_renamed_(%struct.State* nonnull %0, i64 %280, %struct.Memory* %MEMORY.1)
  %286 = load i64, i64* %RBP, align 8
  %287 = add i64 %286, -24
  %288 = load i64, i64* %PC, align 8
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, 1
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = icmp eq i32 %291, -1
  %295 = icmp eq i32 %292, 0
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %16, align 1, !tbaa !2432
  %298 = and i32 %292, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %23, align 1, !tbaa !2446
  %303 = xor i32 %291, %292
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %29, align 1, !tbaa !2450
  %307 = icmp eq i32 %292, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %32, align 1, !tbaa !2447
  %309 = lshr i32 %292, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %35, align 1, !tbaa !2448
  %311 = lshr i32 %291, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %41, align 1, !tbaa !2449
  %316 = add i64 %288, 9
  store i64 %316, i64* %PC, align 8
  store i32 %292, i32* %290, align 4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, -62
  store i64 %318, i64* %87, align 8, !tbaa !2428
  br label %block_4014f2

block_401535:                                     ; preds = %block_4014f2
  %319 = add i64 %370, -32
  %320 = add i64 %406, 4
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDI, align 8, !tbaa !2428
  %323 = load i64, i64* @stderr, align 128
  store i64 %323, i64* %RSI, align 8, !tbaa !2428
  %324 = add i64 %406, -3925
  %325 = add i64 %406, 17
  %326 = load i64, i64* %8, align 8, !tbaa !2428
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %325, i64* %328, align 8
  store i64 %327, i64* %8, align 8, !tbaa !2428
  store i64 %324, i64* %87, align 8, !tbaa !2428
  %329 = tail call fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -36
  %332 = load i32, i32* %EAX, align 4
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %335, align 4
  %336 = load i64, i64* %RBP, align 8
  %337 = add i64 %336, -20
  %338 = load i64, i64* %PC, align 8
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %337 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %341, 1
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = icmp eq i32 %341, -1
  %345 = icmp eq i32 %342, 0
  %346 = or i1 %344, %345
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %16, align 1, !tbaa !2432
  %348 = and i32 %342, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %23, align 1, !tbaa !2446
  %353 = xor i32 %341, %342
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %29, align 1, !tbaa !2450
  %357 = icmp eq i32 %342, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %32, align 1, !tbaa !2447
  %359 = lshr i32 %342, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %35, align 1, !tbaa !2448
  %361 = lshr i32 %341, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %359
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %41, align 1, !tbaa !2449
  %366 = add i64 %338, 9
  store i64 %366, i64* %PC, align 8
  store i32 %342, i32* %340, align 4
  %367 = load i64, i64* %PC, align 8
  %368 = add i64 %367, -115
  store i64 %368, i64* %87, align 8, !tbaa !2428
  br label %block_4014df

block_4014f2:                                     ; preds = %block_4014eb, %block_4014fe
  %369 = phi i64 [ %.pre2, %block_4014eb ], [ %318, %block_4014fe ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4014eb ], [ %285, %block_4014fe ]
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -24
  %372 = add i64 %369, 3
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = add i64 %370, -8
  %377 = add i64 %369, 6
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = sub i32 %374, %379
  %381 = icmp ult i32 %374, %379
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %16, align 1, !tbaa !2432
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383) #8
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %23, align 1, !tbaa !2446
  %388 = xor i32 %379, %374
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %29, align 1, !tbaa !2450
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %32, align 1, !tbaa !2447
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %35, align 1, !tbaa !2448
  %397 = lshr i32 %374, 31
  %398 = lshr i32 %379, 31
  %399 = xor i32 %398, %397
  %400 = xor i32 %395, %397
  %401 = add nuw nsw i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %41, align 1, !tbaa !2449
  %404 = icmp ne i8 %396, 0
  %405 = xor i1 %404, %402
  %.v3 = select i1 %405, i64 12, i64 67
  %406 = add i64 %369, %.v3
  store i64 %406, i64* %87, align 8, !tbaa !2428
  br i1 %405, label %block_4014fe, label %block_401535

block_4014eb:                                     ; preds = %block_4014df
  %407 = add i64 %132, -24
  %408 = add i64 %168, 7
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 0, i32* %409, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4014f2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401790___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401790:
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
define %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %10 = add i64 %9, -17
  %11 = add i64 %9, 8
  %12 = add i64 %6, -16
  %13 = inttoptr i64 %12 to i64*
  store i64 %11, i64* %13, align 8
  store i64 %12, i64* %5, align 8, !tbaa !2428
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %10, i64* %14, align 8, !tbaa !2428
  %15 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
define %struct.Memory* @sub_400db0_kernel_3mm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400db0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %7 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
  %16 = load i64, i64* %R15, align 8
  %17 = add i64 %15, 5
  store i64 %17, i64* %PC, align 8
  %18 = add i64 %12, -16
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %R14, align 8
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC, align 8
  %23 = add i64 %12, -24
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %RBX, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %PC, align 8
  %28 = add i64 %12, -32
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  store i64 %28, i64* %11, align 8, !tbaa !2428
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, 56
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  %36 = add i64 %30, 48
  %37 = add i64 %32, 8
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %R10, align 8, !tbaa !2428
  %40 = add i64 %30, 40
  %41 = add i64 %32, 12
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %R11, align 8, !tbaa !2428
  %44 = add i64 %30, 32
  %45 = add i64 %32, 16
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RBX, align 8, !tbaa !2428
  %48 = add i64 %30, 24
  %49 = add i64 %32, 20
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %R14, align 8, !tbaa !2428
  %52 = add i64 %30, 16
  %53 = add i64 %32, 24
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %R15, align 8, !tbaa !2428
  %56 = add i64 %30, -28
  %57 = load i32, i32* %EDI, align 4
  %58 = add i64 %32, 27
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -32
  %62 = load i32, i32* %ESI, align 4
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -36
  %68 = load i32, i32* %EDX, align 4
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -40
  %74 = load i32, i32* %ECX, align 4
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 3
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -44
  %80 = load i32, i32* %R8D, align 4
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %R9, align 8
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -60
  %92 = load i64, i64* %PC, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP, align 8
  %96 = add i64 %95, -80
  %97 = load i64, i64* %R15, align 8
  %98 = load i64, i64* %PC, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -88
  %103 = load i64, i64* %RAX, align 8
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %R10, align 8
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -104
  %115 = load i64, i64* %R11, align 8
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -112
  %121 = load i64, i64* %RBX, align 8
  %122 = load i64, i64* %PC, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -120
  %127 = load i64, i64* %R14, align 8
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130, align 8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %138 = bitcast %union.VectorReg* %8 to i8*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast %union.VectorReg* %8 to i32*
  %141 = getelementptr inbounds i8, i8* %138, i64 4
  %142 = bitcast i8* %141 to i32*
  %143 = bitcast i64* %139 to i32*
  %144 = getelementptr inbounds i8, i8* %138, i64 12
  %145 = bitcast i8* %144 to i32*
  %146 = bitcast %union.VectorReg* %8 to double*
  %147 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400e04

block_400ffb:                                     ; preds = %block_400fef
  %148 = add i64 %1271, -56
  %149 = add i64 %1307, 4
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = add i64 %1271, -60
  %153 = add i64 %1307, 8
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = shl nsw i64 %156, 13
  store i64 %157, i64* %RCX, align 8, !tbaa !2428
  %158 = lshr i64 %156, 50
  %159 = and i64 %158, 1
  %160 = add i64 %157, %151
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = icmp ult i64 %160, %151
  %162 = icmp ult i64 %160, %157
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %131, align 1, !tbaa !2432
  %165 = trunc i64 %160 to i32
  %166 = and i32 %165, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #8
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %132, align 1, !tbaa !2446
  %171 = xor i64 %151, %160
  %172 = lshr i64 %171, 4
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %133, align 1, !tbaa !2450
  %175 = icmp eq i64 %160, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %134, align 1, !tbaa !2447
  %177 = lshr i64 %160, 63
  %178 = trunc i64 %177 to i8
  store i8 %178, i8* %135, align 1, !tbaa !2448
  %179 = lshr i64 %151, 63
  %180 = xor i64 %177, %179
  %181 = xor i64 %177, %159
  %182 = add nuw nsw i64 %180, %181
  %183 = icmp eq i64 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %136, align 1, !tbaa !2449
  %185 = add i64 %1307, 19
  store i64 %185, i64* %PC, align 8
  %186 = load i32, i32* %1274, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = shl nsw i64 %187, 3
  %189 = add i64 %188, %160
  %190 = add i64 %1307, 24
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to double*
  %192 = load double, double* %191, align 8
  store double %192, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %193 = add i64 %1271, 32
  %194 = add i64 %1307, 28
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = add i64 %1307, 32
  store i64 %197, i64* %PC, align 8
  %198 = load i32, i32* %1274, align 4
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 13
  store i64 %200, i64* %RCX, align 8, !tbaa !2428
  %201 = lshr i64 %199, 50
  %202 = and i64 %201, 1
  %203 = add i64 %200, %196
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %204 = icmp ult i64 %203, %196
  %205 = icmp ult i64 %203, %200
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %131, align 1, !tbaa !2432
  %208 = trunc i64 %203 to i32
  %209 = and i32 %208, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #8
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %132, align 1, !tbaa !2446
  %214 = xor i64 %196, %203
  %215 = lshr i64 %214, 4
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %133, align 1, !tbaa !2450
  %218 = icmp eq i64 %203, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %134, align 1, !tbaa !2447
  %220 = lshr i64 %203, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %135, align 1, !tbaa !2448
  %222 = lshr i64 %196, 63
  %223 = xor i64 %220, %222
  %224 = xor i64 %220, %202
  %225 = add nuw nsw i64 %223, %224
  %226 = icmp eq i64 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %136, align 1, !tbaa !2449
  %228 = load i64, i64* %RBP, align 8
  %229 = add i64 %228, -64
  %230 = add i64 %1307, 43
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %234 = shl nsw i64 %233, 3
  %235 = add i64 %234, %203
  %236 = add i64 %1307, 48
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to double*
  %238 = load double, double* %237, align 8
  %239 = fmul double %192, %238
  store double %239, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %240 = add i64 %228, 56
  %241 = add i64 %1307, 52
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = add i64 %228, -60
  %245 = add i64 %1307, 56
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = shl nsw i64 %248, 13
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = lshr i64 %248, 50
  %251 = and i64 %250, 1
  %252 = add i64 %249, %243
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = icmp ult i64 %252, %243
  %254 = icmp ult i64 %252, %249
  %255 = or i1 %253, %254
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %131, align 1, !tbaa !2432
  %257 = trunc i64 %252 to i32
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258) #8
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %132, align 1, !tbaa !2446
  %263 = xor i64 %243, %252
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %133, align 1, !tbaa !2450
  %267 = icmp eq i64 %252, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %134, align 1, !tbaa !2447
  %269 = lshr i64 %252, 63
  %270 = trunc i64 %269 to i8
  store i8 %270, i8* %135, align 1, !tbaa !2448
  %271 = lshr i64 %243, 63
  %272 = xor i64 %269, %271
  %273 = xor i64 %269, %251
  %274 = add nuw nsw i64 %272, %273
  %275 = icmp eq i64 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %136, align 1, !tbaa !2449
  %277 = add i64 %1307, 67
  store i64 %277, i64* %PC, align 8
  %278 = load i32, i32* %231, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = shl nsw i64 %279, 3
  %281 = add i64 %280, %252
  %282 = add i64 %1307, 72
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to double*
  %284 = load double, double* %283, align 8
  %285 = fadd double %239, %284
  store double %285, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %286 = add i64 %1307, 77
  store i64 %286, i64* %PC, align 8
  store double %285, double* %283, align 8
  %287 = load i64, i64* %RBP, align 8
  %288 = add i64 %287, -68
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
  store i8 %298, i8* %131, align 1, !tbaa !2432
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %132, align 1, !tbaa !2446
  %304 = xor i32 %292, %293
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %133, align 1, !tbaa !2450
  %308 = icmp eq i32 %293, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %134, align 1, !tbaa !2447
  %310 = lshr i32 %293, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %135, align 1, !tbaa !2448
  %312 = lshr i32 %292, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %136, align 1, !tbaa !2449
  %317 = add i64 %289, 9
  store i64 %317, i64* %PC, align 8
  store i32 %293, i32* %291, align 4
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, -98
  store i64 %319, i64* %137, align 8, !tbaa !2428
  br label %block_400fef

block_400ef8:                                     ; preds = %block_400eec
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %320 = add i64 %1309, 32
  %321 = add i64 %1345, 7
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = add i64 %1309, -60
  %325 = add i64 %1345, 11
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = shl nsw i64 %328, 13
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = lshr i64 %328, 50
  %331 = and i64 %330, 1
  %332 = add i64 %329, %323
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = icmp ult i64 %332, %323
  %334 = icmp ult i64 %332, %329
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %131, align 1, !tbaa !2432
  %337 = trunc i64 %332 to i32
  %338 = and i32 %337, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338) #8
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %132, align 1, !tbaa !2446
  %343 = xor i64 %323, %332
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %133, align 1, !tbaa !2450
  %347 = icmp eq i64 %332, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %134, align 1, !tbaa !2447
  %349 = lshr i64 %332, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %135, align 1, !tbaa !2448
  %351 = lshr i64 %323, 63
  %352 = xor i64 %349, %351
  %353 = xor i64 %349, %331
  %354 = add nuw nsw i64 %352, %353
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %136, align 1, !tbaa !2449
  %357 = add i64 %1345, 22
  store i64 %357, i64* %PC, align 8
  %358 = load i32, i32* %1312, align 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %RCX, align 8, !tbaa !2428
  %360 = shl nsw i64 %359, 3
  %361 = add i64 %360, %332
  %362 = add i64 %1345, 27
  store i64 %362, i64* %PC, align 8
  %363 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %364 = load i64, i64* %363, align 1
  %365 = inttoptr i64 %361 to i64*
  store i64 %364, i64* %365, align 8
  %366 = load i64, i64* %RBP, align 8
  %367 = add i64 %366, -68
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, 7
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %367 to i32*
  store i32 0, i32* %370, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400f1a

block_401069:                                     ; preds = %block_400fc1
  %371 = add i64 %727, -60
  %372 = add i64 %763, 8
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %131, align 1, !tbaa !2432
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #8
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %132, align 1, !tbaa !2446
  %386 = xor i32 %374, %375
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %133, align 1, !tbaa !2450
  %390 = icmp eq i32 %375, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %134, align 1, !tbaa !2447
  %392 = lshr i32 %375, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %135, align 1, !tbaa !2448
  %394 = lshr i32 %374, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %392
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %136, align 1, !tbaa !2449
  %399 = add i64 %763, 14
  store i64 %399, i64* %PC, align 8
  store i32 %375, i32* %373, align 4
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, -201
  store i64 %401, i64* %137, align 8, !tbaa !2428
  br label %block_400fae

block_400ed2:                                     ; preds = %block_400e04
  %402 = add i64 %1269, 7
  store i64 %402, i64* %PC, align 8
  store i32 0, i32* %1236, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400ed9

block_40107c:                                     ; preds = %block_400fae
  %403 = add i64 %1120, 1
  store i64 %403, i64* %PC, align 8
  %404 = load i64, i64* %11, align 8, !tbaa !2428
  %405 = add i64 %404, 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RBX, align 8, !tbaa !2428
  store i64 %405, i64* %11, align 8, !tbaa !2428
  %408 = add i64 %1120, 3
  store i64 %408, i64* %PC, align 8
  %409 = add i64 %404, 16
  %410 = inttoptr i64 %405 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %R14, align 8, !tbaa !2428
  store i64 %409, i64* %11, align 8, !tbaa !2428
  %412 = add i64 %1120, 5
  store i64 %412, i64* %PC, align 8
  %413 = add i64 %404, 24
  %414 = inttoptr i64 %409 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %R15, align 8, !tbaa !2428
  store i64 %413, i64* %11, align 8, !tbaa !2428
  %416 = add i64 %1120, 6
  store i64 %416, i64* %PC, align 8
  %417 = add i64 %404, 32
  %418 = inttoptr i64 %413 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RBP, align 8, !tbaa !2428
  store i64 %417, i64* %11, align 8, !tbaa !2428
  %420 = add i64 %1120, 7
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %417 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %137, align 8, !tbaa !2428
  %423 = add i64 %404, 40
  store i64 %423, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400ee5:                                     ; preds = %block_400ed9
  %424 = add i64 %651, -64
  %425 = add i64 %687, 7
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i32*
  store i32 0, i32* %426, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400eec

block_400e51:                                     ; preds = %block_400e45
  %427 = add i64 %689, 16
  %428 = add i64 %725, 4
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = add i64 %689, -60
  %432 = add i64 %725, 8
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  %436 = shl nsw i64 %435, 13
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = lshr i64 %435, 50
  %438 = and i64 %437, 1
  %439 = add i64 %436, %430
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  %440 = icmp ult i64 %439, %430
  %441 = icmp ult i64 %439, %436
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %131, align 1, !tbaa !2432
  %444 = trunc i64 %439 to i32
  %445 = and i32 %444, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445) #8
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %132, align 1, !tbaa !2446
  %450 = xor i64 %430, %439
  %451 = lshr i64 %450, 4
  %452 = trunc i64 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %133, align 1, !tbaa !2450
  %454 = icmp eq i64 %439, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %134, align 1, !tbaa !2447
  %456 = lshr i64 %439, 63
  %457 = trunc i64 %456 to i8
  store i8 %457, i8* %135, align 1, !tbaa !2448
  %458 = lshr i64 %430, 63
  %459 = xor i64 %456, %458
  %460 = xor i64 %456, %438
  %461 = add nuw nsw i64 %459, %460
  %462 = icmp eq i64 %461, 2
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %136, align 1, !tbaa !2449
  %464 = add i64 %725, 19
  store i64 %464, i64* %PC, align 8
  %465 = load i32, i32* %692, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RCX, align 8, !tbaa !2428
  %467 = shl nsw i64 %466, 3
  %468 = add i64 %467, %439
  %469 = add i64 %725, 24
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to double*
  %471 = load double, double* %470, align 8
  store double %471, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %472 = add i64 %689, 24
  %473 = add i64 %725, 28
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX, align 8, !tbaa !2428
  %476 = add i64 %725, 32
  store i64 %476, i64* %PC, align 8
  %477 = load i32, i32* %692, align 4
  %478 = sext i32 %477 to i64
  %479 = shl nsw i64 %478, 13
  store i64 %479, i64* %RCX, align 8, !tbaa !2428
  %480 = lshr i64 %478, 50
  %481 = and i64 %480, 1
  %482 = add i64 %479, %475
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = icmp ult i64 %482, %475
  %484 = icmp ult i64 %482, %479
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %131, align 1, !tbaa !2432
  %487 = trunc i64 %482 to i32
  %488 = and i32 %487, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #8
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %132, align 1, !tbaa !2446
  %493 = xor i64 %475, %482
  %494 = lshr i64 %493, 4
  %495 = trunc i64 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %133, align 1, !tbaa !2450
  %497 = icmp eq i64 %482, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %134, align 1, !tbaa !2447
  %499 = lshr i64 %482, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %135, align 1, !tbaa !2448
  %501 = lshr i64 %475, 63
  %502 = xor i64 %499, %501
  %503 = xor i64 %499, %481
  %504 = add nuw nsw i64 %502, %503
  %505 = icmp eq i64 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %136, align 1, !tbaa !2449
  %507 = load i64, i64* %RBP, align 8
  %508 = add i64 %507, -64
  %509 = add i64 %725, 43
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = sext i32 %511 to i64
  store i64 %512, i64* %RCX, align 8, !tbaa !2428
  %513 = shl nsw i64 %512, 3
  %514 = add i64 %513, %482
  %515 = add i64 %725, 48
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to double*
  %517 = load double, double* %516, align 8
  %518 = fmul double %471, %517
  store double %518, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %519 = add i64 %507, -56
  %520 = add i64 %725, 52
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RAX, align 8, !tbaa !2428
  %523 = add i64 %507, -60
  %524 = add i64 %725, 56
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = sext i32 %526 to i64
  %528 = shl nsw i64 %527, 13
  store i64 %528, i64* %RCX, align 8, !tbaa !2428
  %529 = lshr i64 %527, 50
  %530 = and i64 %529, 1
  %531 = add i64 %528, %522
  store i64 %531, i64* %RAX, align 8, !tbaa !2428
  %532 = icmp ult i64 %531, %522
  %533 = icmp ult i64 %531, %528
  %534 = or i1 %532, %533
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %131, align 1, !tbaa !2432
  %536 = trunc i64 %531 to i32
  %537 = and i32 %536, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537) #8
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %132, align 1, !tbaa !2446
  %542 = xor i64 %522, %531
  %543 = lshr i64 %542, 4
  %544 = trunc i64 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %133, align 1, !tbaa !2450
  %546 = icmp eq i64 %531, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %134, align 1, !tbaa !2447
  %548 = lshr i64 %531, 63
  %549 = trunc i64 %548 to i8
  store i8 %549, i8* %135, align 1, !tbaa !2448
  %550 = lshr i64 %522, 63
  %551 = xor i64 %548, %550
  %552 = xor i64 %548, %530
  %553 = add nuw nsw i64 %551, %552
  %554 = icmp eq i64 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %136, align 1, !tbaa !2449
  %556 = add i64 %725, 67
  store i64 %556, i64* %PC, align 8
  %557 = load i32, i32* %510, align 4
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RCX, align 8, !tbaa !2428
  %559 = shl nsw i64 %558, 3
  %560 = add i64 %559, %531
  %561 = add i64 %725, 72
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  %564 = fadd double %518, %563
  store double %564, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %565 = add i64 %725, 77
  store i64 %565, i64* %PC, align 8
  store double %564, double* %562, align 8
  %566 = load i64, i64* %RBP, align 8
  %567 = add i64 %566, -68
  %568 = load i64, i64* %PC, align 8
  %569 = add i64 %568, 3
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = add i32 %571, 1
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX, align 8, !tbaa !2428
  %574 = icmp eq i32 %571, -1
  %575 = icmp eq i32 %572, 0
  %576 = or i1 %574, %575
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %131, align 1, !tbaa !2432
  %578 = and i32 %572, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578) #8
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %132, align 1, !tbaa !2446
  %583 = xor i32 %571, %572
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %133, align 1, !tbaa !2450
  %587 = icmp eq i32 %572, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %134, align 1, !tbaa !2447
  %589 = lshr i32 %572, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %135, align 1, !tbaa !2448
  %591 = lshr i32 %571, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %136, align 1, !tbaa !2449
  %596 = add i64 %568, 9
  store i64 %596, i64* %PC, align 8
  store i32 %572, i32* %570, align 4
  %597 = load i64, i64* %PC, align 8
  %598 = add i64 %597, -98
  store i64 %598, i64* %137, align 8, !tbaa !2428
  br label %block_400e45

block_400fcd:                                     ; preds = %block_400fc1
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %599 = add i64 %727, 56
  %600 = add i64 %763, 7
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %599 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = add i64 %727, -60
  %604 = add i64 %763, 11
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = sext i32 %606 to i64
  %608 = shl nsw i64 %607, 13
  store i64 %608, i64* %RCX, align 8, !tbaa !2428
  %609 = lshr i64 %607, 50
  %610 = and i64 %609, 1
  %611 = add i64 %608, %602
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = icmp ult i64 %611, %602
  %613 = icmp ult i64 %611, %608
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %131, align 1, !tbaa !2432
  %616 = trunc i64 %611 to i32
  %617 = and i32 %616, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617) #8
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %132, align 1, !tbaa !2446
  %622 = xor i64 %602, %611
  %623 = lshr i64 %622, 4
  %624 = trunc i64 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %133, align 1, !tbaa !2450
  %626 = icmp eq i64 %611, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %134, align 1, !tbaa !2447
  %628 = lshr i64 %611, 63
  %629 = trunc i64 %628 to i8
  store i8 %629, i8* %135, align 1, !tbaa !2448
  %630 = lshr i64 %602, 63
  %631 = xor i64 %628, %630
  %632 = xor i64 %628, %610
  %633 = add nuw nsw i64 %631, %632
  %634 = icmp eq i64 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %136, align 1, !tbaa !2449
  %636 = add i64 %763, 22
  store i64 %636, i64* %PC, align 8
  %637 = load i32, i32* %730, align 4
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX, align 8, !tbaa !2428
  %639 = shl nsw i64 %638, 3
  %640 = add i64 %639, %611
  %641 = add i64 %763, 27
  store i64 %641, i64* %PC, align 8
  %642 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %643 = load i64, i64* %642, align 1
  %644 = inttoptr i64 %640 to i64*
  store i64 %643, i64* %644, align 8
  %645 = load i64, i64* %RBP, align 8
  %646 = add i64 %645, -68
  %647 = load i64, i64* %PC, align 8
  %648 = add i64 %647, 7
  store i64 %648, i64* %PC, align 8
  %649 = inttoptr i64 %646 to i32*
  store i32 0, i32* %649, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400fef

block_400ed9:                                     ; preds = %block_400f94, %block_400ed2
  %650 = phi i64 [ %1227, %block_400f94 ], [ %.pre4, %block_400ed2 ]
  %651 = load i64, i64* %RBP, align 8
  %652 = add i64 %651, -60
  %653 = add i64 %650, 3
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX, align 8, !tbaa !2428
  %657 = add i64 %651, -32
  %658 = add i64 %650, 6
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sub i32 %655, %660
  %662 = icmp ult i32 %655, %660
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %131, align 1, !tbaa !2432
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664) #8
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %132, align 1, !tbaa !2446
  %669 = xor i32 %660, %655
  %670 = xor i32 %669, %661
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %133, align 1, !tbaa !2450
  %674 = icmp eq i32 %661, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %134, align 1, !tbaa !2447
  %676 = lshr i32 %661, 31
  %677 = trunc i32 %676 to i8
  store i8 %677, i8* %135, align 1, !tbaa !2448
  %678 = lshr i32 %655, 31
  %679 = lshr i32 %660, 31
  %680 = xor i32 %679, %678
  %681 = xor i32 %676, %678
  %682 = add nuw nsw i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %136, align 1, !tbaa !2449
  %685 = icmp ne i8 %677, 0
  %686 = xor i1 %685, %683
  %.v12 = select i1 %686, i64 12, i64 206
  %687 = add i64 %650, %.v12
  store i64 %687, i64* %137, align 8, !tbaa !2428
  br i1 %686, label %block_400ee5, label %block_400fa7

block_400e45:                                     ; preds = %block_400e23, %block_400e51
  %688 = phi i64 [ %.pre3, %block_400e23 ], [ %598, %block_400e51 ]
  %689 = load i64, i64* %RBP, align 8
  %690 = add i64 %689, -68
  %691 = add i64 %688, 3
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = add i64 %689, -36
  %696 = add i64 %688, 6
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sub i32 %693, %698
  %700 = icmp ult i32 %693, %698
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %131, align 1, !tbaa !2432
  %702 = and i32 %699, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702) #8
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %132, align 1, !tbaa !2446
  %707 = xor i32 %698, %693
  %708 = xor i32 %707, %699
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %133, align 1, !tbaa !2450
  %712 = icmp eq i32 %699, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %134, align 1, !tbaa !2447
  %714 = lshr i32 %699, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %135, align 1, !tbaa !2448
  %716 = lshr i32 %693, 31
  %717 = lshr i32 %698, 31
  %718 = xor i32 %717, %716
  %719 = xor i32 %714, %716
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %136, align 1, !tbaa !2449
  %723 = icmp ne i8 %715, 0
  %724 = xor i1 %723, %721
  %.v11 = select i1 %724, i64 12, i64 103
  %725 = add i64 %688, %.v11
  store i64 %725, i64* %137, align 8, !tbaa !2428
  br i1 %724, label %block_400e51, label %block_400eac

block_400fc1:                                     ; preds = %block_400fba, %block_401056
  %726 = phi i64 [ %.pre8, %block_400fba ], [ %794, %block_401056 ]
  %727 = load i64, i64* %RBP, align 8
  %728 = add i64 %727, -64
  %729 = add i64 %726, 3
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX, align 8, !tbaa !2428
  %733 = add i64 %727, -40
  %734 = add i64 %726, 6
  store i64 %734, i64* %PC, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sub i32 %731, %736
  %738 = icmp ult i32 %731, %736
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %131, align 1, !tbaa !2432
  %740 = and i32 %737, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740) #8
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %132, align 1, !tbaa !2446
  %745 = xor i32 %736, %731
  %746 = xor i32 %745, %737
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %133, align 1, !tbaa !2450
  %750 = icmp eq i32 %737, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %134, align 1, !tbaa !2447
  %752 = lshr i32 %737, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %135, align 1, !tbaa !2448
  %754 = lshr i32 %731, 31
  %755 = lshr i32 %736, 31
  %756 = xor i32 %755, %754
  %757 = xor i32 %752, %754
  %758 = add nuw nsw i32 %757, %756
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %136, align 1, !tbaa !2449
  %761 = icmp ne i8 %753, 0
  %762 = xor i1 %761, %759
  %.v16 = select i1 %762, i64 12, i64 168
  %763 = add i64 %726, %.v16
  store i64 %763, i64* %137, align 8, !tbaa !2428
  br i1 %762, label %block_400fcd, label %block_401069

block_401056:                                     ; preds = %block_400fef
  %764 = add i64 %1271, -64
  %765 = add i64 %1307, 8
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = add i32 %767, 1
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX, align 8, !tbaa !2428
  %770 = icmp eq i32 %767, -1
  %771 = icmp eq i32 %768, 0
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %131, align 1, !tbaa !2432
  %774 = and i32 %768, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774) #8
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %132, align 1, !tbaa !2446
  %779 = xor i32 %767, %768
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %133, align 1, !tbaa !2450
  %783 = icmp eq i32 %768, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %134, align 1, !tbaa !2447
  %785 = lshr i32 %768, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %135, align 1, !tbaa !2448
  %787 = lshr i32 %767, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %785
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %136, align 1, !tbaa !2449
  %792 = add i64 %1307, 14
  store i64 %792, i64* %PC, align 8
  store i32 %768, i32* %766, align 4
  %793 = load i64, i64* %PC, align 8
  %794 = add i64 %793, -163
  store i64 %794, i64* %137, align 8, !tbaa !2428
  br label %block_400fc1

block_400ebf:                                     ; preds = %block_400e17
  %795 = add i64 %1160, -60
  %796 = add i64 %1196, 8
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = add i32 %798, 1
  %800 = zext i32 %799 to i64
  store i64 %800, i64* %RAX, align 8, !tbaa !2428
  %801 = icmp eq i32 %798, -1
  %802 = icmp eq i32 %799, 0
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %131, align 1, !tbaa !2432
  %805 = and i32 %799, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805) #8
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %132, align 1, !tbaa !2446
  %810 = xor i32 %798, %799
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %133, align 1, !tbaa !2450
  %814 = icmp eq i32 %799, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %134, align 1, !tbaa !2447
  %816 = lshr i32 %799, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %135, align 1, !tbaa !2448
  %818 = lshr i32 %798, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %816
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %136, align 1, !tbaa !2449
  %823 = add i64 %1196, 14
  store i64 %823, i64* %PC, align 8
  store i32 %799, i32* %797, align 4
  %824 = load i64, i64* %PC, align 8
  %825 = add i64 %824, -201
  store i64 %825, i64* %137, align 8, !tbaa !2428
  br label %block_400e04

block_400eac:                                     ; preds = %block_400e45
  %826 = add i64 %689, -64
  %827 = add i64 %725, 8
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, 1
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX, align 8, !tbaa !2428
  %832 = icmp eq i32 %829, -1
  %833 = icmp eq i32 %830, 0
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %131, align 1, !tbaa !2432
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836) #8
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %132, align 1, !tbaa !2446
  %841 = xor i32 %829, %830
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %133, align 1, !tbaa !2450
  %845 = icmp eq i32 %830, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %134, align 1, !tbaa !2447
  %847 = lshr i32 %830, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %135, align 1, !tbaa !2448
  %849 = lshr i32 %829, 31
  %850 = xor i32 %847, %849
  %851 = add nuw nsw i32 %850, %847
  %852 = icmp eq i32 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %136, align 1, !tbaa !2449
  %854 = add i64 %725, 14
  store i64 %854, i64* %PC, align 8
  store i32 %830, i32* %828, align 4
  %855 = load i64, i64* %PC, align 8
  %856 = add i64 %855, -163
  store i64 %856, i64* %137, align 8, !tbaa !2428
  br label %block_400e17

block_400fba:                                     ; preds = %block_400fae
  %857 = add i64 %1084, -64
  %858 = add i64 %1120, 7
  store i64 %858, i64* %PC, align 8
  %859 = inttoptr i64 %857 to i32*
  store i32 0, i32* %859, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400fc1

block_400f26:                                     ; preds = %block_400f1a
  %860 = add i64 %1122, 40
  %861 = add i64 %1158, 4
  store i64 %861, i64* %PC, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX, align 8, !tbaa !2428
  %864 = add i64 %1122, -60
  %865 = add i64 %1158, 8
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = sext i32 %867 to i64
  %869 = shl nsw i64 %868, 13
  store i64 %869, i64* %RCX, align 8, !tbaa !2428
  %870 = lshr i64 %868, 50
  %871 = and i64 %870, 1
  %872 = add i64 %869, %863
  store i64 %872, i64* %RAX, align 8, !tbaa !2428
  %873 = icmp ult i64 %872, %863
  %874 = icmp ult i64 %872, %869
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %131, align 1, !tbaa !2432
  %877 = trunc i64 %872 to i32
  %878 = and i32 %877, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878) #8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %132, align 1, !tbaa !2446
  %883 = xor i64 %863, %872
  %884 = lshr i64 %883, 4
  %885 = trunc i64 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %133, align 1, !tbaa !2450
  %887 = icmp eq i64 %872, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %134, align 1, !tbaa !2447
  %889 = lshr i64 %872, 63
  %890 = trunc i64 %889 to i8
  store i8 %890, i8* %135, align 1, !tbaa !2448
  %891 = lshr i64 %863, 63
  %892 = xor i64 %889, %891
  %893 = xor i64 %889, %871
  %894 = add nuw nsw i64 %892, %893
  %895 = icmp eq i64 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %136, align 1, !tbaa !2449
  %897 = add i64 %1158, 19
  store i64 %897, i64* %PC, align 8
  %898 = load i32, i32* %1125, align 4
  %899 = sext i32 %898 to i64
  store i64 %899, i64* %RCX, align 8, !tbaa !2428
  %900 = shl nsw i64 %899, 3
  %901 = add i64 %900, %872
  %902 = add i64 %1158, 24
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %901 to double*
  %904 = load double, double* %903, align 8
  store double %904, double* %146, align 1, !tbaa !2451
  store double 0.000000e+00, double* %147, align 1, !tbaa !2451
  %905 = add i64 %1122, 48
  %906 = add i64 %1158, 28
  store i64 %906, i64* %PC, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RAX, align 8, !tbaa !2428
  %909 = add i64 %1158, 32
  store i64 %909, i64* %PC, align 8
  %910 = load i32, i32* %1125, align 4
  %911 = sext i32 %910 to i64
  %912 = shl nsw i64 %911, 13
  store i64 %912, i64* %RCX, align 8, !tbaa !2428
  %913 = lshr i64 %911, 50
  %914 = and i64 %913, 1
  %915 = add i64 %912, %908
  store i64 %915, i64* %RAX, align 8, !tbaa !2428
  %916 = icmp ult i64 %915, %908
  %917 = icmp ult i64 %915, %912
  %918 = or i1 %916, %917
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %131, align 1, !tbaa !2432
  %920 = trunc i64 %915 to i32
  %921 = and i32 %920, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921) #8
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %132, align 1, !tbaa !2446
  %926 = xor i64 %908, %915
  %927 = lshr i64 %926, 4
  %928 = trunc i64 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %133, align 1, !tbaa !2450
  %930 = icmp eq i64 %915, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %134, align 1, !tbaa !2447
  %932 = lshr i64 %915, 63
  %933 = trunc i64 %932 to i8
  store i8 %933, i8* %135, align 1, !tbaa !2448
  %934 = lshr i64 %908, 63
  %935 = xor i64 %932, %934
  %936 = xor i64 %932, %914
  %937 = add nuw nsw i64 %935, %936
  %938 = icmp eq i64 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %136, align 1, !tbaa !2449
  %940 = load i64, i64* %RBP, align 8
  %941 = add i64 %940, -64
  %942 = add i64 %1158, 43
  store i64 %942, i64* %PC, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX, align 8, !tbaa !2428
  %946 = shl nsw i64 %945, 3
  %947 = add i64 %946, %915
  %948 = add i64 %1158, 48
  store i64 %948, i64* %PC, align 8
  %949 = inttoptr i64 %947 to double*
  %950 = load double, double* %949, align 8
  %951 = fmul double %904, %950
  store double %951, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %952 = add i64 %940, 32
  %953 = add i64 %1158, 52
  store i64 %953, i64* %PC, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX, align 8, !tbaa !2428
  %956 = add i64 %940, -60
  %957 = add i64 %1158, 56
  store i64 %957, i64* %PC, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  %961 = shl nsw i64 %960, 13
  store i64 %961, i64* %RCX, align 8, !tbaa !2428
  %962 = lshr i64 %960, 50
  %963 = and i64 %962, 1
  %964 = add i64 %961, %955
  store i64 %964, i64* %RAX, align 8, !tbaa !2428
  %965 = icmp ult i64 %964, %955
  %966 = icmp ult i64 %964, %961
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %131, align 1, !tbaa !2432
  %969 = trunc i64 %964 to i32
  %970 = and i32 %969, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970) #8
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %132, align 1, !tbaa !2446
  %975 = xor i64 %955, %964
  %976 = lshr i64 %975, 4
  %977 = trunc i64 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %133, align 1, !tbaa !2450
  %979 = icmp eq i64 %964, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %134, align 1, !tbaa !2447
  %981 = lshr i64 %964, 63
  %982 = trunc i64 %981 to i8
  store i8 %982, i8* %135, align 1, !tbaa !2448
  %983 = lshr i64 %955, 63
  %984 = xor i64 %981, %983
  %985 = xor i64 %981, %963
  %986 = add nuw nsw i64 %984, %985
  %987 = icmp eq i64 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %136, align 1, !tbaa !2449
  %989 = add i64 %1158, 67
  store i64 %989, i64* %PC, align 8
  %990 = load i32, i32* %943, align 4
  %991 = sext i32 %990 to i64
  store i64 %991, i64* %RCX, align 8, !tbaa !2428
  %992 = shl nsw i64 %991, 3
  %993 = add i64 %992, %964
  %994 = add i64 %1158, 72
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to double*
  %996 = load double, double* %995, align 8
  %997 = fadd double %951, %996
  store double %997, double* %146, align 1, !tbaa !2451
  store i64 0, i64* %139, align 1, !tbaa !2451
  %998 = add i64 %1158, 77
  store i64 %998, i64* %PC, align 8
  store double %997, double* %995, align 8
  %999 = load i64, i64* %RBP, align 8
  %1000 = add i64 %999, -68
  %1001 = load i64, i64* %PC, align 8
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1000 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = add i32 %1004, 1
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RAX, align 8, !tbaa !2428
  %1007 = icmp eq i32 %1004, -1
  %1008 = icmp eq i32 %1005, 0
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %131, align 1, !tbaa !2432
  %1011 = and i32 %1005, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011) #8
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %132, align 1, !tbaa !2446
  %1016 = xor i32 %1004, %1005
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %133, align 1, !tbaa !2450
  %1020 = icmp eq i32 %1005, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %134, align 1, !tbaa !2447
  %1022 = lshr i32 %1005, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %135, align 1, !tbaa !2448
  %1024 = lshr i32 %1004, 31
  %1025 = xor i32 %1022, %1024
  %1026 = add nuw nsw i32 %1025, %1022
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %136, align 1, !tbaa !2449
  %1029 = add i64 %1001, 9
  store i64 %1029, i64* %PC, align 8
  store i32 %1005, i32* %1003, align 4
  %1030 = load i64, i64* %PC, align 8
  %1031 = add i64 %1030, -98
  store i64 %1031, i64* %137, align 8, !tbaa !2428
  br label %block_400f1a

block_400e23:                                     ; preds = %block_400e17
  store i32 0, i32* %140, align 1, !tbaa !2453
  store i32 0, i32* %142, align 1, !tbaa !2453
  store i32 0, i32* %143, align 1, !tbaa !2453
  store i32 0, i32* %145, align 1, !tbaa !2453
  %1032 = add i64 %1160, -56
  %1033 = add i64 %1196, 7
  store i64 %1033, i64* %PC, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RAX, align 8, !tbaa !2428
  %1036 = add i64 %1160, -60
  %1037 = add i64 %1196, 11
  store i64 %1037, i64* %PC, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = shl nsw i64 %1040, 13
  store i64 %1041, i64* %RCX, align 8, !tbaa !2428
  %1042 = lshr i64 %1040, 50
  %1043 = and i64 %1042, 1
  %1044 = add i64 %1041, %1035
  store i64 %1044, i64* %RAX, align 8, !tbaa !2428
  %1045 = icmp ult i64 %1044, %1035
  %1046 = icmp ult i64 %1044, %1041
  %1047 = or i1 %1045, %1046
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %131, align 1, !tbaa !2432
  %1049 = trunc i64 %1044 to i32
  %1050 = and i32 %1049, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050) #8
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %132, align 1, !tbaa !2446
  %1055 = xor i64 %1035, %1044
  %1056 = lshr i64 %1055, 4
  %1057 = trunc i64 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %133, align 1, !tbaa !2450
  %1059 = icmp eq i64 %1044, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %134, align 1, !tbaa !2447
  %1061 = lshr i64 %1044, 63
  %1062 = trunc i64 %1061 to i8
  store i8 %1062, i8* %135, align 1, !tbaa !2448
  %1063 = lshr i64 %1035, 63
  %1064 = xor i64 %1061, %1063
  %1065 = xor i64 %1061, %1043
  %1066 = add nuw nsw i64 %1064, %1065
  %1067 = icmp eq i64 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %136, align 1, !tbaa !2449
  %1069 = add i64 %1196, 22
  store i64 %1069, i64* %PC, align 8
  %1070 = load i32, i32* %1163, align 4
  %1071 = sext i32 %1070 to i64
  store i64 %1071, i64* %RCX, align 8, !tbaa !2428
  %1072 = shl nsw i64 %1071, 3
  %1073 = add i64 %1072, %1044
  %1074 = add i64 %1196, 27
  store i64 %1074, i64* %PC, align 8
  %1075 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %1076 = load i64, i64* %1075, align 1
  %1077 = inttoptr i64 %1073 to i64*
  store i64 %1076, i64* %1077, align 8
  %1078 = load i64, i64* %RBP, align 8
  %1079 = add i64 %1078, -68
  %1080 = load i64, i64* %PC, align 8
  %1081 = add i64 %1080, 7
  store i64 %1081, i64* %PC, align 8
  %1082 = inttoptr i64 %1079 to i32*
  store i32 0, i32* %1082, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400e45

block_400fae:                                     ; preds = %block_400fa7, %block_401069
  %1083 = phi i64 [ %.pre7, %block_400fa7 ], [ %401, %block_401069 ]
  %1084 = load i64, i64* %RBP, align 8
  %1085 = add i64 %1084, -60
  %1086 = add i64 %1083, 3
  store i64 %1086, i64* %PC, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RAX, align 8, !tbaa !2428
  %1090 = add i64 %1084, -28
  %1091 = add i64 %1083, 6
  store i64 %1091, i64* %PC, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = sub i32 %1088, %1093
  %1095 = icmp ult i32 %1088, %1093
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %131, align 1, !tbaa !2432
  %1097 = and i32 %1094, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097) #8
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %132, align 1, !tbaa !2446
  %1102 = xor i32 %1093, %1088
  %1103 = xor i32 %1102, %1094
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %133, align 1, !tbaa !2450
  %1107 = icmp eq i32 %1094, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %134, align 1, !tbaa !2447
  %1109 = lshr i32 %1094, 31
  %1110 = trunc i32 %1109 to i8
  store i8 %1110, i8* %135, align 1, !tbaa !2448
  %1111 = lshr i32 %1088, 31
  %1112 = lshr i32 %1093, 31
  %1113 = xor i32 %1112, %1111
  %1114 = xor i32 %1109, %1111
  %1115 = add nuw nsw i32 %1114, %1113
  %1116 = icmp eq i32 %1115, 2
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %136, align 1, !tbaa !2449
  %1118 = icmp ne i8 %1110, 0
  %1119 = xor i1 %1118, %1116
  %.v15 = select i1 %1119, i64 12, i64 206
  %1120 = add i64 %1083, %.v15
  store i64 %1120, i64* %137, align 8, !tbaa !2428
  br i1 %1119, label %block_400fba, label %block_40107c

block_400f1a:                                     ; preds = %block_400f26, %block_400ef8
  %1121 = phi i64 [ %1031, %block_400f26 ], [ %.pre6, %block_400ef8 ]
  %1122 = load i64, i64* %RBP, align 8
  %1123 = add i64 %1122, -68
  %1124 = add i64 %1121, 3
  store i64 %1124, i64* %PC, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RAX, align 8, !tbaa !2428
  %1128 = add i64 %1122, -44
  %1129 = add i64 %1121, 6
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = sub i32 %1126, %1131
  %1133 = icmp ult i32 %1126, %1131
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %131, align 1, !tbaa !2432
  %1135 = and i32 %1132, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135) #8
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %132, align 1, !tbaa !2446
  %1140 = xor i32 %1131, %1126
  %1141 = xor i32 %1140, %1132
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %133, align 1, !tbaa !2450
  %1145 = icmp eq i32 %1132, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %134, align 1, !tbaa !2447
  %1147 = lshr i32 %1132, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %135, align 1, !tbaa !2448
  %1149 = lshr i32 %1126, 31
  %1150 = lshr i32 %1131, 31
  %1151 = xor i32 %1150, %1149
  %1152 = xor i32 %1147, %1149
  %1153 = add nuw nsw i32 %1152, %1151
  %1154 = icmp eq i32 %1153, 2
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %136, align 1, !tbaa !2449
  %1156 = icmp ne i8 %1148, 0
  %1157 = xor i1 %1156, %1154
  %.v14 = select i1 %1157, i64 12, i64 103
  %1158 = add i64 %1121, %.v14
  store i64 %1158, i64* %137, align 8, !tbaa !2428
  br i1 %1157, label %block_400f26, label %block_400f81

block_400e17:                                     ; preds = %block_400e10, %block_400eac
  %1159 = phi i64 [ %.pre2, %block_400e10 ], [ %856, %block_400eac ]
  %1160 = load i64, i64* %RBP, align 8
  %1161 = add i64 %1160, -64
  %1162 = add i64 %1159, 3
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RAX, align 8, !tbaa !2428
  %1166 = add i64 %1160, -32
  %1167 = add i64 %1159, 6
  store i64 %1167, i64* %PC, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = sub i32 %1164, %1169
  %1171 = icmp ult i32 %1164, %1169
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %131, align 1, !tbaa !2432
  %1173 = and i32 %1170, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173) #8
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %132, align 1, !tbaa !2446
  %1178 = xor i32 %1169, %1164
  %1179 = xor i32 %1178, %1170
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %133, align 1, !tbaa !2450
  %1183 = icmp eq i32 %1170, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %134, align 1, !tbaa !2447
  %1185 = lshr i32 %1170, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %135, align 1, !tbaa !2448
  %1187 = lshr i32 %1164, 31
  %1188 = lshr i32 %1169, 31
  %1189 = xor i32 %1188, %1187
  %1190 = xor i32 %1185, %1187
  %1191 = add nuw nsw i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %136, align 1, !tbaa !2449
  %1194 = icmp ne i8 %1186, 0
  %1195 = xor i1 %1194, %1192
  %.v10 = select i1 %1195, i64 12, i64 168
  %1196 = add i64 %1159, %.v10
  store i64 %1196, i64* %137, align 8, !tbaa !2428
  br i1 %1195, label %block_400e23, label %block_400ebf

block_400f94:                                     ; preds = %block_400eec
  %1197 = add i64 %1309, -60
  %1198 = add i64 %1345, 8
  store i64 %1198, i64* %PC, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = add i32 %1200, 1
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX, align 8, !tbaa !2428
  %1203 = icmp eq i32 %1200, -1
  %1204 = icmp eq i32 %1201, 0
  %1205 = or i1 %1203, %1204
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %131, align 1, !tbaa !2432
  %1207 = and i32 %1201, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207) #8
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %132, align 1, !tbaa !2446
  %1212 = xor i32 %1200, %1201
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  store i8 %1215, i8* %133, align 1, !tbaa !2450
  %1216 = icmp eq i32 %1201, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %134, align 1, !tbaa !2447
  %1218 = lshr i32 %1201, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %135, align 1, !tbaa !2448
  %1220 = lshr i32 %1200, 31
  %1221 = xor i32 %1218, %1220
  %1222 = add nuw nsw i32 %1221, %1218
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %136, align 1, !tbaa !2449
  %1225 = add i64 %1345, 14
  store i64 %1225, i64* %PC, align 8
  store i32 %1201, i32* %1199, align 4
  %1226 = load i64, i64* %PC, align 8
  %1227 = add i64 %1226, -201
  store i64 %1227, i64* %137, align 8, !tbaa !2428
  br label %block_400ed9

block_400fa7:                                     ; preds = %block_400ed9
  %1228 = add i64 %687, 7
  store i64 %1228, i64* %PC, align 8
  store i32 0, i32* %654, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400fae

block_400e10:                                     ; preds = %block_400e04
  %1229 = add i64 %1233, -64
  %1230 = add i64 %1269, 7
  store i64 %1230, i64* %PC, align 8
  %1231 = inttoptr i64 %1229 to i32*
  store i32 0, i32* %1231, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400e17

block_400e04:                                     ; preds = %block_400ebf, %block_400db0
  %1232 = phi i64 [ %825, %block_400ebf ], [ %.pre, %block_400db0 ]
  %1233 = load i64, i64* %RBP, align 8
  %1234 = add i64 %1233, -60
  %1235 = add i64 %1232, 3
  store i64 %1235, i64* %PC, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RAX, align 8, !tbaa !2428
  %1239 = add i64 %1233, -28
  %1240 = add i64 %1232, 6
  store i64 %1240, i64* %PC, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = sub i32 %1237, %1242
  %1244 = icmp ult i32 %1237, %1242
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %131, align 1, !tbaa !2432
  %1246 = and i32 %1243, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246) #8
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %132, align 1, !tbaa !2446
  %1251 = xor i32 %1242, %1237
  %1252 = xor i32 %1251, %1243
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %133, align 1, !tbaa !2450
  %1256 = icmp eq i32 %1243, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %134, align 1, !tbaa !2447
  %1258 = lshr i32 %1243, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %135, align 1, !tbaa !2448
  %1260 = lshr i32 %1237, 31
  %1261 = lshr i32 %1242, 31
  %1262 = xor i32 %1261, %1260
  %1263 = xor i32 %1258, %1260
  %1264 = add nuw nsw i32 %1263, %1262
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %136, align 1, !tbaa !2449
  %1267 = icmp ne i8 %1259, 0
  %1268 = xor i1 %1267, %1265
  %.v = select i1 %1268, i64 12, i64 206
  %1269 = add i64 %1232, %.v
  store i64 %1269, i64* %137, align 8, !tbaa !2428
  br i1 %1268, label %block_400e10, label %block_400ed2

block_400fef:                                     ; preds = %block_400fcd, %block_400ffb
  %1270 = phi i64 [ %.pre9, %block_400fcd ], [ %319, %block_400ffb ]
  %1271 = load i64, i64* %RBP, align 8
  %1272 = add i64 %1271, -68
  %1273 = add i64 %1270, 3
  store i64 %1273, i64* %PC, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RAX, align 8, !tbaa !2428
  %1277 = add i64 %1271, -32
  %1278 = add i64 %1270, 6
  store i64 %1278, i64* %PC, align 8
  %1279 = inttoptr i64 %1277 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = sub i32 %1275, %1280
  %1282 = icmp ult i32 %1275, %1280
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %131, align 1, !tbaa !2432
  %1284 = and i32 %1281, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284) #8
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %132, align 1, !tbaa !2446
  %1289 = xor i32 %1280, %1275
  %1290 = xor i32 %1289, %1281
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %133, align 1, !tbaa !2450
  %1294 = icmp eq i32 %1281, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %134, align 1, !tbaa !2447
  %1296 = lshr i32 %1281, 31
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %135, align 1, !tbaa !2448
  %1298 = lshr i32 %1275, 31
  %1299 = lshr i32 %1280, 31
  %1300 = xor i32 %1299, %1298
  %1301 = xor i32 %1296, %1298
  %1302 = add nuw nsw i32 %1301, %1300
  %1303 = icmp eq i32 %1302, 2
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %136, align 1, !tbaa !2449
  %1305 = icmp ne i8 %1297, 0
  %1306 = xor i1 %1305, %1303
  %.v17 = select i1 %1306, i64 12, i64 103
  %1307 = add i64 %1270, %.v17
  store i64 %1307, i64* %137, align 8, !tbaa !2428
  br i1 %1306, label %block_400ffb, label %block_401056

block_400eec:                                     ; preds = %block_400f81, %block_400ee5
  %1308 = phi i64 [ %1376, %block_400f81 ], [ %.pre5, %block_400ee5 ]
  %1309 = load i64, i64* %RBP, align 8
  %1310 = add i64 %1309, -64
  %1311 = add i64 %1308, 3
  store i64 %1311, i64* %PC, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = add i64 %1309, -40
  %1316 = add i64 %1308, 6
  store i64 %1316, i64* %PC, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = sub i32 %1313, %1318
  %1320 = icmp ult i32 %1313, %1318
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %131, align 1, !tbaa !2432
  %1322 = and i32 %1319, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322) #8
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %132, align 1, !tbaa !2446
  %1327 = xor i32 %1318, %1313
  %1328 = xor i32 %1327, %1319
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %133, align 1, !tbaa !2450
  %1332 = icmp eq i32 %1319, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %134, align 1, !tbaa !2447
  %1334 = lshr i32 %1319, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %135, align 1, !tbaa !2448
  %1336 = lshr i32 %1313, 31
  %1337 = lshr i32 %1318, 31
  %1338 = xor i32 %1337, %1336
  %1339 = xor i32 %1334, %1336
  %1340 = add nuw nsw i32 %1339, %1338
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %136, align 1, !tbaa !2449
  %1343 = icmp ne i8 %1335, 0
  %1344 = xor i1 %1343, %1341
  %.v13 = select i1 %1344, i64 12, i64 168
  %1345 = add i64 %1308, %.v13
  store i64 %1345, i64* %137, align 8, !tbaa !2428
  br i1 %1344, label %block_400ef8, label %block_400f94

block_400f81:                                     ; preds = %block_400f1a
  %1346 = add i64 %1122, -64
  %1347 = add i64 %1158, 8
  store i64 %1347, i64* %PC, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = add i32 %1349, 1
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX, align 8, !tbaa !2428
  %1352 = icmp eq i32 %1349, -1
  %1353 = icmp eq i32 %1350, 0
  %1354 = or i1 %1352, %1353
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %131, align 1, !tbaa !2432
  %1356 = and i32 %1350, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356) #8
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %132, align 1, !tbaa !2446
  %1361 = xor i32 %1349, %1350
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %133, align 1, !tbaa !2450
  %1365 = icmp eq i32 %1350, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %134, align 1, !tbaa !2447
  %1367 = lshr i32 %1350, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %135, align 1, !tbaa !2448
  %1369 = lshr i32 %1349, 31
  %1370 = xor i32 %1367, %1369
  %1371 = add nuw nsw i32 %1370, %1367
  %1372 = icmp eq i32 %1371, 2
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %136, align 1, !tbaa !2449
  %1374 = add i64 %1158, 14
  store i64 %1374, i64* %PC, align 8
  store i32 %1350, i32* %1348, align 4
  %1375 = load i64, i64* %PC, align 8
  %1376 = add i64 %1375, -163
  store i64 %1376, i64* %137, align 8, !tbaa !2428
  br label %block_400eec
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400640:
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
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #8
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
  store i64 ptrtoint (void ()* @callback_sub_401790___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401720___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400810:
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
  store i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 32), i64* %RDI, align 8, !tbaa !2428
  %41 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*), align 8
  %42 = bitcast %union.VectorReg* %4 to double*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*), align 8
  %45 = fsub double %41, %44
  store double %45, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %43, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %46 = add i64 %11, -577
  %47 = add i64 %11, 42
  %48 = add i64 %8, -32
  %49 = inttoptr i64 %48 to i64*
  store i64 %47, i64* %49, align 8
  store i64 %48, i64* %7, align 8, !tbaa !2428
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %46, i64* %50, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_602110_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
define %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %15 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 23
  %18 = add i64 %16, 5
  %19 = load i64, i64* %5, align 8, !tbaa !2428
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  store i64 %20, i64* %5, align 8, !tbaa !2428
  store i64 %17, i64* %14, align 8, !tbaa !2428
  %22 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %17, %struct.Memory* %15)
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
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
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
  br i1 %12, label %block_4006f9, label %block_400710

block_400710:                                     ; preds = %block_4006f0
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

block_4006f9:                                     ; preds = %block_4006f0
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
  %37 = tail call %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*), align 8
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
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400910:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
  %12 = load i64, i64* %R15, align 8
  %13 = add i64 %11, 5
  store i64 %13, i64* %PC, align 8
  %14 = add i64 %8, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %R14, align 8
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %PC, align 8
  %19 = add i64 %8, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* %RBX, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = add i64 %8, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %8, -184
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  %28 = icmp ult i64 %24, 152
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1, !tbaa !2432
  %31 = trunc i64 %27 to i32
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #8
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1, !tbaa !2446
  %38 = xor i64 %24, 16
  %39 = xor i64 %38, %27
  %40 = lshr i64 %39, 4
  %41 = trunc i64 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = icmp eq i64 %27, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1, !tbaa !2447
  %47 = lshr i64 %27, 63
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1, !tbaa !2448
  %50 = lshr i64 %24, 63
  %51 = xor i64 %47, %50
  %52 = add nuw nsw i64 %51, %50
  %53 = icmp eq i64 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1, !tbaa !2449
  store i64 1048576, i64* %RCX, align 8, !tbaa !2428
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -28
  %58 = add i64 %26, 26
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %57 to i32*
  store i32 0, i32* %59, align 4
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -32
  %62 = load i32, i32* %EDI, align 4
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -40
  %68 = load i64, i64* %RSI, align 8
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -44
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i32*
  store i32 1024, i32* %76, align 4
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -48
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i32*
  store i32 1024, i32* %81, align 4
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -52
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %83 to i32*
  store i32 1024, i32* %86, align 4
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -56
  %89 = load i64, i64* %PC, align 8
  %90 = add i64 %89, 7
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 1024, i32* %91, align 4
  %92 = load i64, i64* %RBP, align 8
  %93 = add i64 %92, -60
  %94 = load i64, i64* %PC, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 1024, i32* %96, align 4
  %97 = load i64, i64* %RCX, align 8
  %98 = load i64, i64* %PC, align 8
  store i64 %97, i64* %RDI, align 8, !tbaa !2428
  %99 = load i32, i32* %EAX, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RSI, align 8, !tbaa !2428
  %101 = add i64 %98, -269
  %102 = add i64 %98, 10
  %103 = load i64, i64* %7, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %7, align 8, !tbaa !2428
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %101, i64* %106, align 8, !tbaa !2428
  %107 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %101, %struct.Memory* %2)
  %108 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -72
  %111 = load i64, i64* %RAX, align 8
  %112 = add i64 %108, 16
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, -295
  %116 = add i64 %114, 5
  %117 = load i64, i64* %7, align 8, !tbaa !2428
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %116, i64* %119, align 8
  store i64 %118, i64* %7, align 8, !tbaa !2428
  store i64 %115, i64* %106, align 8, !tbaa !2428
  %120 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %115, %struct.Memory* %107)
  %121 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -80
  %124 = load i64, i64* %RAX, align 8
  %125 = add i64 %121, 16
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, -316
  %129 = add i64 %127, 5
  %130 = load i64, i64* %7, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %7, align 8, !tbaa !2428
  store i64 %128, i64* %106, align 8, !tbaa !2428
  %133 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %128, %struct.Memory* %120)
  %134 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -88
  %137 = load i64, i64* %RAX, align 8
  %138 = add i64 %134, 16
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, -337
  %142 = add i64 %140, 5
  %143 = load i64, i64* %7, align 8, !tbaa !2428
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %142, i64* %145, align 8
  store i64 %144, i64* %7, align 8, !tbaa !2428
  store i64 %141, i64* %106, align 8, !tbaa !2428
  %146 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %141, %struct.Memory* %133)
  %147 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -96
  %150 = load i64, i64* %RAX, align 8
  %151 = add i64 %147, 16
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i64*
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %PC, align 8
  %154 = add i64 %153, -358
  %155 = add i64 %153, 5
  %156 = load i64, i64* %7, align 8, !tbaa !2428
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %7, align 8, !tbaa !2428
  store i64 %154, i64* %106, align 8, !tbaa !2428
  %159 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %154, %struct.Memory* %146)
  %160 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -104
  %163 = load i64, i64* %RAX, align 8
  %164 = add i64 %160, 16
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, -379
  %168 = add i64 %166, 5
  %169 = load i64, i64* %7, align 8, !tbaa !2428
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %7, align 8, !tbaa !2428
  store i64 %167, i64* %106, align 8, !tbaa !2428
  %172 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %167, %struct.Memory* %159)
  %173 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -112
  %176 = load i64, i64* %RAX, align 8
  %177 = add i64 %173, 16
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, -400
  %181 = add i64 %179, 5
  %182 = load i64, i64* %7, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %7, align 8, !tbaa !2428
  store i64 %180, i64* %106, align 8, !tbaa !2428
  %185 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %180, %struct.Memory* %172)
  %186 = load i64, i64* %PC, align 8
  store i64 1048576, i64* %RDI, align 8, !tbaa !2428
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -120
  %189 = load i64, i64* %RAX, align 8
  %190 = add i64 %186, 16
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %188 to i64*
  store i64 %189, i64* %191, align 8
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, -421
  %194 = add i64 %192, 5
  %195 = load i64, i64* %7, align 8, !tbaa !2428
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %7, align 8, !tbaa !2428
  store i64 %193, i64* %106, align 8, !tbaa !2428
  %198 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %193, %struct.Memory* %185)
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -128
  %201 = load i64, i64* %RAX, align 8
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -44
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDI, align 8, !tbaa !2428
  %212 = add i64 %205, -48
  %213 = add i64 %207, 6
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RSI, align 8, !tbaa !2428
  %217 = add i64 %205, -52
  %218 = add i64 %207, 9
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RDX, align 8, !tbaa !2428
  %222 = add i64 %205, -56
  %223 = add i64 %207, 12
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %228 = add i64 %205, -60
  %229 = add i64 %207, 16
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %227, align 8, !tbaa !2428
  %233 = add i64 %205, -80
  %234 = add i64 %207, 20
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %R9, align 8, !tbaa !2428
  %237 = add i64 %205, -88
  %238 = add i64 %207, 24
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = add i64 %205, -104
  %242 = add i64 %207, 28
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %R10, align 8, !tbaa !2428
  %245 = add i64 %205, -112
  %246 = add i64 %207, 32
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %R11, align 8, !tbaa !2428
  %249 = bitcast i64* %RSP to i64**
  %250 = load i64*, i64** %249, align 8
  %251 = add i64 %207, 36
  store i64 %251, i64* %PC, align 8
  store i64 %240, i64* %250, align 8
  %252 = load i64, i64* %RSP, align 8
  %253 = add i64 %252, 8
  %254 = load i64, i64* %R10, align 8
  %255 = load i64, i64* %PC, align 8
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %253 to i64*
  store i64 %254, i64* %257, align 8
  %258 = load i64, i64* %RSP, align 8
  %259 = add i64 %258, 16
  %260 = load i64, i64* %R11, align 8
  %261 = load i64, i64* %PC, align 8
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %259 to i64*
  store i64 %260, i64* %263, align 8
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, 340
  %266 = add i64 %264, 5
  %267 = load i64, i64* %7, align 8, !tbaa !2428
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269, align 8
  store i64 %268, i64* %7, align 8, !tbaa !2428
  store i64 %265, i64* %106, align 8, !tbaa !2428
  %270 = tail call %struct.Memory* @sub_400b80_init_array_renamed_(%struct.State* nonnull %0, i64 %265, %struct.Memory* %198)
  %271 = load i64, i64* %RBP, align 8
  %272 = add i64 %271, -44
  %273 = load i64, i64* %PC, align 8
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDI, align 8, !tbaa !2428
  %278 = add i64 %271, -48
  %279 = add i64 %273, 6
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RSI, align 8, !tbaa !2428
  %283 = add i64 %271, -52
  %284 = add i64 %273, 9
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RDX, align 8, !tbaa !2428
  %288 = add i64 %271, -56
  %289 = add i64 %273, 12
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RCX, align 8, !tbaa !2428
  %293 = add i64 %271, -60
  %294 = add i64 %273, 16
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %227, align 8, !tbaa !2428
  %298 = add i64 %271, -72
  %299 = add i64 %273, 20
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %R9, align 8, !tbaa !2428
  %302 = add i64 %271, -80
  %303 = add i64 %273, 24
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RAX, align 8, !tbaa !2428
  %306 = add i64 %271, -88
  %307 = add i64 %273, 28
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %R10, align 8, !tbaa !2428
  %310 = add i64 %271, -96
  %311 = add i64 %273, 32
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %R11, align 8, !tbaa !2428
  %314 = add i64 %271, -104
  %315 = add i64 %273, 36
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RBX, align 8, !tbaa !2428
  %318 = add i64 %271, -112
  %319 = add i64 %273, 40
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %R14, align 8, !tbaa !2428
  %322 = add i64 %271, -120
  %323 = add i64 %273, 44
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i64 %325, i64* %R15, align 8, !tbaa !2428
  %326 = bitcast i64* %RSP to i64**
  %327 = load i64*, i64** %326, align 8
  %328 = add i64 %273, 48
  store i64 %328, i64* %PC, align 8
  store i64 %305, i64* %327, align 8
  %329 = load i64, i64* %RSP, align 8
  %330 = add i64 %329, 8
  %331 = load i64, i64* %R10, align 8
  %332 = load i64, i64* %PC, align 8
  %333 = add i64 %332, 5
  store i64 %333, i64* %PC, align 8
  %334 = inttoptr i64 %330 to i64*
  store i64 %331, i64* %334, align 8
  %335 = load i64, i64* %RSP, align 8
  %336 = add i64 %335, 16
  %337 = load i64, i64* %R11, align 8
  %338 = load i64, i64* %PC, align 8
  %339 = add i64 %338, 5
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %336 to i64*
  store i64 %337, i64* %340, align 8
  %341 = load i64, i64* %RSP, align 8
  %342 = add i64 %341, 24
  %343 = load i64, i64* %RBX, align 8
  %344 = load i64, i64* %PC, align 8
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %342 to i64*
  store i64 %343, i64* %346, align 8
  %347 = load i64, i64* %RSP, align 8
  %348 = add i64 %347, 32
  %349 = load i64, i64* %R14, align 8
  %350 = load i64, i64* %PC, align 8
  %351 = add i64 %350, 5
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %348 to i64*
  store i64 %349, i64* %352, align 8
  %353 = load i64, i64* %RSP, align 8
  %354 = add i64 %353, 40
  %355 = load i64, i64* %R15, align 8
  %356 = load i64, i64* %PC, align 8
  %357 = add i64 %356, 5
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %354 to i64*
  store i64 %355, i64* %358, align 8
  %359 = load i64, i64* %PC, align 8
  %360 = add i64 %359, 822
  %361 = add i64 %359, 5
  %362 = load i64, i64* %7, align 8, !tbaa !2428
  %363 = add i64 %362, -8
  %364 = inttoptr i64 %363 to i64*
  store i64 %361, i64* %364, align 8
  store i64 %363, i64* %7, align 8, !tbaa !2428
  store i64 %360, i64* %106, align 8, !tbaa !2428
  %365 = tail call %struct.Memory* @sub_400db0_kernel_3mm_renamed_(%struct.State* nonnull %0, i64 %360, %struct.Memory* %270)
  %366 = load i64, i64* %RBP, align 8
  %367 = add i64 %366, -44
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RDI, align 8, !tbaa !2428
  %373 = add i64 %366, -48
  %374 = add i64 %368, 6
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RSI, align 8, !tbaa !2428
  %378 = add i64 %366, -52
  %379 = add i64 %368, 9
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RDX, align 8, !tbaa !2428
  %383 = add i64 %366, -56
  %384 = add i64 %368, 12
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  %388 = add i64 %366, -60
  %389 = add i64 %368, 16
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %227, align 8, !tbaa !2428
  %393 = add i64 %366, -72
  %394 = add i64 %368, 20
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %R9, align 8, !tbaa !2428
  %397 = add i64 %366, -80
  %398 = add i64 %368, 24
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = add i64 %366, -88
  %402 = add i64 %368, 28
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %R10, align 8, !tbaa !2428
  %405 = add i64 %366, -96
  %406 = add i64 %368, 32
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %R11, align 8, !tbaa !2428
  %409 = add i64 %366, -104
  %410 = add i64 %368, 36
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RBX, align 8, !tbaa !2428
  %413 = add i64 %366, -112
  %414 = add i64 %368, 40
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %R14, align 8, !tbaa !2428
  %417 = add i64 %366, -128
  %418 = add i64 %368, 44
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %R15, align 8, !tbaa !2428
  %421 = bitcast i64* %RSP to i64**
  %422 = load i64*, i64** %421, align 8
  %423 = add i64 %368, 48
  store i64 %423, i64* %PC, align 8
  store i64 %400, i64* %422, align 8
  %424 = load i64, i64* %RSP, align 8
  %425 = add i64 %424, 8
  %426 = load i64, i64* %R10, align 8
  %427 = load i64, i64* %PC, align 8
  %428 = add i64 %427, 5
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %425 to i64*
  store i64 %426, i64* %429, align 8
  %430 = load i64, i64* %RSP, align 8
  %431 = add i64 %430, 16
  %432 = load i64, i64* %R11, align 8
  %433 = load i64, i64* %PC, align 8
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %431 to i64*
  store i64 %432, i64* %435, align 8
  %436 = load i64, i64* %RSP, align 8
  %437 = add i64 %436, 24
  %438 = load i64, i64* %RBX, align 8
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 5
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %437 to i64*
  store i64 %438, i64* %441, align 8
  %442 = load i64, i64* %RSP, align 8
  %443 = add i64 %442, 32
  %444 = load i64, i64* %R14, align 8
  %445 = load i64, i64* %PC, align 8
  %446 = add i64 %445, 5
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %443 to i64*
  store i64 %444, i64* %447, align 8
  %448 = load i64, i64* %RSP, align 8
  %449 = add i64 %448, 40
  %450 = load i64, i64* %R15, align 8
  %451 = load i64, i64* %PC, align 8
  %452 = add i64 %451, 5
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %449 to i64*
  store i64 %450, i64* %453, align 8
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, 1480
  %456 = add i64 %454, 5
  %457 = load i64, i64* %7, align 8, !tbaa !2428
  %458 = add i64 %457, -8
  %459 = inttoptr i64 %458 to i64*
  store i64 %456, i64* %459, align 8
  store i64 %458, i64* %7, align 8, !tbaa !2428
  store i64 %455, i64* %106, align 8, !tbaa !2428
  %460 = tail call %struct.Memory* @sub_401090_kernel_3mm_StrictFP_renamed_(%struct.State* nonnull %0, i64 %455, %struct.Memory* %365)
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -44
  %463 = load i64, i64* %PC, align 8
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RDI, align 8, !tbaa !2428
  %468 = add i64 %461, -56
  %469 = add i64 %463, 6
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI, align 8, !tbaa !2428
  %473 = add i64 %461, -120
  %474 = add i64 %463, 10
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i64*
  %476 = load i64, i64* %475, align 8
  store i64 %476, i64* %RDX, align 8, !tbaa !2428
  %477 = add i64 %461, -128
  %478 = add i64 %463, 14
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RCX, align 8, !tbaa !2428
  %481 = add i64 %463, 2211
  %482 = add i64 %463, 19
  %483 = load i64, i64* %7, align 8, !tbaa !2428
  %484 = add i64 %483, -8
  %485 = inttoptr i64 %484 to i64*
  store i64 %482, i64* %485, align 8
  store i64 %484, i64* %7, align 8, !tbaa !2428
  store i64 %481, i64* %106, align 8, !tbaa !2428
  %486 = tail call %struct.Memory* @sub_401370_check_FP_renamed_(%struct.State* nonnull %0, i64 %481, %struct.Memory* %460)
  %487 = load i32, i32* %EAX, align 4
  %488 = load i64, i64* %PC, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %489 = and i32 %487, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489) #8
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %494 = icmp eq i32 %487, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %46, align 1, !tbaa !2447
  %496 = lshr i32 %487, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v = select i1 %494, i64 9, i64 21
  %498 = add i64 %488, %.v
  store i64 %498, i64* %106, align 8, !tbaa !2428
  %499 = load i64, i64* %RBP, align 8
  br i1 %494, label %block_400ae9, label %block_400af5

block_400b6b:                                     ; preds = %block_400af5, %block_400ae9
  %500 = phi i64 [ %.pre, %block_400af5 ], [ %555, %block_400ae9 ]
  %MEMORY.0 = phi %struct.Memory* [ %671, %block_400af5 ], [ %486, %block_400ae9 ]
  %501 = load i64, i64* %RBP, align 8
  %502 = add i64 %501, -28
  %503 = add i64 %500, 3
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX, align 8, !tbaa !2428
  %507 = load i64, i64* %RSP, align 8
  %508 = add i64 %507, 152
  store i64 %508, i64* %RSP, align 8, !tbaa !2428
  %509 = icmp ugt i64 %507, -153
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %30, align 1, !tbaa !2432
  %511 = trunc i64 %508 to i32
  %512 = and i32 %511, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512) #8
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %37, align 1, !tbaa !2446
  %517 = xor i64 %507, 16
  %518 = xor i64 %517, %508
  %519 = lshr i64 %518, 4
  %520 = trunc i64 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %43, align 1, !tbaa !2450
  %522 = icmp eq i64 %508, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %46, align 1, !tbaa !2447
  %524 = lshr i64 %508, 63
  %525 = trunc i64 %524 to i8
  store i8 %525, i8* %49, align 1, !tbaa !2448
  %526 = lshr i64 %507, 63
  %527 = xor i64 %524, %526
  %528 = add nuw nsw i64 %527, %524
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %55, align 1, !tbaa !2449
  %531 = add i64 %500, 11
  store i64 %531, i64* %PC, align 8
  %532 = add i64 %507, 160
  %533 = inttoptr i64 %508 to i64*
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %RBX, align 8, !tbaa !2428
  store i64 %532, i64* %7, align 8, !tbaa !2428
  %535 = add i64 %500, 13
  store i64 %535, i64* %PC, align 8
  %536 = add i64 %507, 168
  %537 = inttoptr i64 %532 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %R14, align 8, !tbaa !2428
  store i64 %536, i64* %7, align 8, !tbaa !2428
  %539 = add i64 %500, 15
  store i64 %539, i64* %PC, align 8
  %540 = add i64 %507, 176
  %541 = inttoptr i64 %536 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %R15, align 8, !tbaa !2428
  store i64 %540, i64* %7, align 8, !tbaa !2428
  %543 = add i64 %500, 16
  store i64 %543, i64* %PC, align 8
  %544 = add i64 %507, 184
  %545 = inttoptr i64 %540 to i64*
  %546 = load i64, i64* %545, align 8
  store i64 %546, i64* %RBP, align 8, !tbaa !2428
  store i64 %544, i64* %7, align 8, !tbaa !2428
  %547 = add i64 %500, 17
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %544 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %106, align 8, !tbaa !2428
  %550 = add i64 %507, 192
  store i64 %550, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400ae9:                                     ; preds = %block_400910
  %551 = add i64 %499, -28
  %552 = add i64 %498, 7
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %551 to i32*
  store i32 1, i32* %553, align 4
  %554 = load i64, i64* %PC, align 8
  %555 = add i64 %554, 123
  store i64 %555, i64* %106, align 8, !tbaa !2428
  br label %block_400b6b

block_400af5:                                     ; preds = %block_400910
  %556 = add i64 %499, -44
  %557 = add i64 %498, 3
  store i64 %557, i64* %PC, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RDI, align 8, !tbaa !2428
  %561 = add i64 %499, -56
  %562 = add i64 %498, 6
  store i64 %562, i64* %PC, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RSI, align 8, !tbaa !2428
  %566 = add i64 %499, -128
  %567 = add i64 %498, 10
  store i64 %567, i64* %PC, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RDX, align 8, !tbaa !2428
  %570 = add i64 %498, 2475
  %571 = add i64 %498, 15
  %572 = load i64, i64* %7, align 8, !tbaa !2428
  %573 = add i64 %572, -8
  %574 = inttoptr i64 %573 to i64*
  store i64 %571, i64* %574, align 8
  store i64 %573, i64* %7, align 8, !tbaa !2428
  store i64 %570, i64* %106, align 8, !tbaa !2428
  %575 = tail call %struct.Memory* @sub_4014a0_print_array_renamed_(%struct.State* nonnull %0, i64 %570, %struct.Memory* %486)
  %576 = load i64, i64* %RBP, align 8
  %577 = add i64 %576, -72
  %578 = load i64, i64* %PC, align 8
  %579 = add i64 %578, 4
  store i64 %579, i64* %PC, align 8
  %580 = inttoptr i64 %577 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RDX, align 8, !tbaa !2428
  store i64 %581, i64* %RDI, align 8, !tbaa !2428
  %582 = add i64 %578, -1348
  %583 = add i64 %578, 12
  %584 = load i64, i64* %7, align 8, !tbaa !2428
  %585 = add i64 %584, -8
  %586 = inttoptr i64 %585 to i64*
  store i64 %583, i64* %586, align 8
  store i64 %585, i64* %7, align 8, !tbaa !2428
  store i64 %582, i64* %106, align 8, !tbaa !2428
  %587 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %575)
  %588 = load i64, i64* %RBP, align 8
  %589 = add i64 %588, -80
  %590 = load i64, i64* %PC, align 8
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC, align 8
  %592 = inttoptr i64 %589 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RDX, align 8, !tbaa !2428
  store i64 %593, i64* %RDI, align 8, !tbaa !2428
  %594 = add i64 %590, -1360
  %595 = add i64 %590, 12
  %596 = load i64, i64* %7, align 8, !tbaa !2428
  %597 = add i64 %596, -8
  %598 = inttoptr i64 %597 to i64*
  store i64 %595, i64* %598, align 8
  store i64 %597, i64* %7, align 8, !tbaa !2428
  store i64 %594, i64* %106, align 8, !tbaa !2428
  %599 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %587)
  %600 = load i64, i64* %RBP, align 8
  %601 = add i64 %600, -88
  %602 = load i64, i64* %PC, align 8
  %603 = add i64 %602, 4
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %601 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RDX, align 8, !tbaa !2428
  store i64 %605, i64* %RDI, align 8, !tbaa !2428
  %606 = add i64 %602, -1372
  %607 = add i64 %602, 12
  %608 = load i64, i64* %7, align 8, !tbaa !2428
  %609 = add i64 %608, -8
  %610 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %610, align 8
  store i64 %609, i64* %7, align 8, !tbaa !2428
  store i64 %606, i64* %106, align 8, !tbaa !2428
  %611 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %599)
  %612 = load i64, i64* %RBP, align 8
  %613 = add i64 %612, -96
  %614 = load i64, i64* %PC, align 8
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC, align 8
  %616 = inttoptr i64 %613 to i64*
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %RDX, align 8, !tbaa !2428
  store i64 %617, i64* %RDI, align 8, !tbaa !2428
  %618 = add i64 %614, -1384
  %619 = add i64 %614, 12
  %620 = load i64, i64* %7, align 8, !tbaa !2428
  %621 = add i64 %620, -8
  %622 = inttoptr i64 %621 to i64*
  store i64 %619, i64* %622, align 8
  store i64 %621, i64* %7, align 8, !tbaa !2428
  store i64 %618, i64* %106, align 8, !tbaa !2428
  %623 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %611)
  %624 = load i64, i64* %RBP, align 8
  %625 = add i64 %624, -104
  %626 = load i64, i64* %PC, align 8
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC, align 8
  %628 = inttoptr i64 %625 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RDX, align 8, !tbaa !2428
  store i64 %629, i64* %RDI, align 8, !tbaa !2428
  %630 = add i64 %626, -1396
  %631 = add i64 %626, 12
  %632 = load i64, i64* %7, align 8, !tbaa !2428
  %633 = add i64 %632, -8
  %634 = inttoptr i64 %633 to i64*
  store i64 %631, i64* %634, align 8
  store i64 %633, i64* %7, align 8, !tbaa !2428
  store i64 %630, i64* %106, align 8, !tbaa !2428
  %635 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %623)
  %636 = load i64, i64* %RBP, align 8
  %637 = add i64 %636, -112
  %638 = load i64, i64* %PC, align 8
  %639 = add i64 %638, 4
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %637 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RDX, align 8, !tbaa !2428
  store i64 %641, i64* %RDI, align 8, !tbaa !2428
  %642 = add i64 %638, -1408
  %643 = add i64 %638, 12
  %644 = load i64, i64* %7, align 8, !tbaa !2428
  %645 = add i64 %644, -8
  %646 = inttoptr i64 %645 to i64*
  store i64 %643, i64* %646, align 8
  store i64 %645, i64* %7, align 8, !tbaa !2428
  store i64 %642, i64* %106, align 8, !tbaa !2428
  %647 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %635)
  %648 = load i64, i64* %RBP, align 8
  %649 = add i64 %648, -120
  %650 = load i64, i64* %PC, align 8
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RDX, align 8, !tbaa !2428
  store i64 %653, i64* %RDI, align 8, !tbaa !2428
  %654 = add i64 %650, -1420
  %655 = add i64 %650, 12
  %656 = load i64, i64* %7, align 8, !tbaa !2428
  %657 = add i64 %656, -8
  %658 = inttoptr i64 %657 to i64*
  store i64 %655, i64* %658, align 8
  store i64 %657, i64* %7, align 8, !tbaa !2428
  store i64 %654, i64* %106, align 8, !tbaa !2428
  %659 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %647)
  %660 = load i64, i64* %RBP, align 8
  %661 = add i64 %660, -128
  %662 = load i64, i64* %PC, align 8
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %661 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RDX, align 8, !tbaa !2428
  store i64 %665, i64* %RDI, align 8, !tbaa !2428
  %666 = add i64 %662, -1432
  %667 = add i64 %662, 12
  %668 = load i64, i64* %7, align 8, !tbaa !2428
  %669 = add i64 %668, -8
  %670 = inttoptr i64 %669 to i64*
  store i64 %667, i64* %670, align 8
  store i64 %669, i64* %7, align 8, !tbaa !2428
  store i64 %666, i64* %106, align 8, !tbaa !2428
  %671 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %659)
  %672 = load i64, i64* %RBP, align 8
  %673 = add i64 %672, -28
  %674 = load i64, i64* %PC, align 8
  %675 = add i64 %674, 7
  store i64 %675, i64* %PC, align 8
  %676 = inttoptr i64 %673 to i32*
  store i32 0, i32* %676, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b6b
}

; Function Attrs: noinline
define %struct.Memory* @sub_401794__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401794:
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
define %struct.Memory* @sub_401370_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401370:
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
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
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
  %45 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 8) to i64*), align 8
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
  br label %block_40139a

block_40139a:                                     ; preds = %block_401475, %block_401370
  %96 = phi i64 [ %.pre, %block_401370 ], [ %164, %block_401475 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401370 ], [ %MEMORY.2, %block_401475 ]
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
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
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
  br i1 %132, label %block_4013a6, label %block_401488

block_401475:                                     ; preds = %block_4013ad
  %134 = add i64 %205, -36
  %135 = add i64 %241, 8
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, 1
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = icmp eq i32 %137, -1
  %141 = icmp eq i32 %138, 0
  %142 = or i1 %140, %141
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %18, align 1, !tbaa !2432
  %144 = and i32 %138, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #8
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %25, align 1, !tbaa !2446
  %149 = xor i32 %137, %138
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %31, align 1, !tbaa !2450
  %153 = icmp eq i32 %138, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %34, align 1, !tbaa !2447
  %155 = lshr i32 %138, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %37, align 1, !tbaa !2448
  %157 = lshr i32 %137, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %155
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %43, align 1, !tbaa !2449
  %162 = add i64 %241, 14
  store i64 %162, i64* %PC, align 8
  store i32 %138, i32* %136, align 4
  %163 = load i64, i64* %PC, align 8
  %164 = add i64 %163, -233
  store i64 %164, i64* %84, align 8, !tbaa !2428
  br label %block_40139a

block_40148f:                                     ; preds = %block_401488, %block_40141d
  %165 = phi i64 [ %.pre8, %block_401488 ], [ %298, %block_40141d ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401488 ], [ %285, %block_40141d ]
  %166 = load i64, i64* %RBP, align 8
  %167 = add i64 %166, -4
  %168 = add i64 %165, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RAX, align 8, !tbaa !2428
  %172 = load i64, i64* %RSP, align 8
  %173 = add i64 %172, 80
  store i64 %173, i64* %RSP, align 8, !tbaa !2428
  %174 = icmp ugt i64 %172, -81
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %18, align 1, !tbaa !2432
  %176 = trunc i64 %173 to i32
  %177 = and i32 %176, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177) #8
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %25, align 1, !tbaa !2446
  %182 = xor i64 %172, 16
  %183 = xor i64 %182, %173
  %184 = lshr i64 %183, 4
  %185 = trunc i64 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %31, align 1, !tbaa !2450
  %187 = icmp eq i64 %173, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %34, align 1, !tbaa !2447
  %189 = lshr i64 %173, 63
  %190 = trunc i64 %189 to i8
  store i8 %190, i8* %37, align 1, !tbaa !2448
  %191 = lshr i64 %172, 63
  %192 = xor i64 %189, %191
  %193 = add nuw nsw i64 %192, %189
  %194 = icmp eq i64 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %43, align 1, !tbaa !2449
  %196 = add i64 %165, 8
  store i64 %196, i64* %PC, align 8
  %197 = add i64 %172, 88
  %198 = inttoptr i64 %173 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RBP, align 8, !tbaa !2428
  store i64 %197, i64* %10, align 8, !tbaa !2428
  %200 = add i64 %165, 9
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %197 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %84, align 8, !tbaa !2428
  %203 = add i64 %172, 96
  store i64 %203, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_4013ad:                                     ; preds = %block_401462, %block_4013a6
  %204 = phi i64 [ %.pre6, %block_4013a6 ], [ %507, %block_401462 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_4013a6 ], [ %470, %block_401462 ]
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -40
  %207 = add i64 %204, 3
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = add i64 %205, -12
  %212 = add i64 %204, 6
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = sub i32 %209, %214
  %216 = icmp ult i32 %209, %214
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %18, align 1, !tbaa !2432
  %218 = and i32 %215, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %25, align 1, !tbaa !2446
  %223 = xor i32 %214, %209
  %224 = xor i32 %223, %215
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %31, align 1, !tbaa !2450
  %228 = icmp eq i32 %215, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %34, align 1, !tbaa !2447
  %230 = lshr i32 %215, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %37, align 1, !tbaa !2448
  %232 = lshr i32 %209, 31
  %233 = lshr i32 %214, 31
  %234 = xor i32 %233, %232
  %235 = xor i32 %230, %232
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %43, align 1, !tbaa !2449
  %239 = icmp ne i8 %231, 0
  %240 = xor i1 %239, %237
  %.v9 = select i1 %240, i64 12, i64 200
  %241 = add i64 %204, %.v9
  store i64 %241, i64* %84, align 8, !tbaa !2428
  br i1 %240, label %block_4013b9, label %block_401475

block_40141d:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 90), i64* %RSI, align 8, !tbaa !2428
  %242 = load i64, i64* @stderr, align 128
  store i64 %242, i64* %RDI, align 8, !tbaa !2428
  %243 = load i64, i64* %RBP, align 8
  %244 = add i64 %243, -36
  %245 = add i64 %475, 21
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RDX, align 8, !tbaa !2428
  %249 = add i64 %243, -40
  %250 = add i64 %475, 24
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = add i64 %243, -56
  %255 = add i64 %475, 29
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %257, i64* %258, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %260 = add i64 %475, 33
  store i64 %260, i64* %PC, align 8
  %261 = load i32, i32* %246, align 4
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %259, align 8, !tbaa !2428
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %264 = add i64 %475, 37
  store i64 %264, i64* %PC, align 8
  %265 = load i32, i32* %251, align 4
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %263, align 8, !tbaa !2428
  %267 = add i64 %243, -64
  %268 = add i64 %475, 42
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %270, i64* %271, align 1, !tbaa !2451
  %272 = bitcast i64* %87 to double*
  store double 0.000000e+00, double* %272, align 1, !tbaa !2451
  %273 = add i64 %243, -48
  %274 = add i64 %475, 47
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %276, i64* %277, align 1, !tbaa !2451
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %279 = bitcast i64* %278 to double*
  store double 0.000000e+00, double* %279, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %280 = add i64 %475, -3613
  %281 = add i64 %475, 54
  %282 = load i64, i64* %10, align 8, !tbaa !2428
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284, align 8
  store i64 %283, i64* %10, align 8, !tbaa !2428
  store i64 %280, i64* %84, align 8, !tbaa !2428
  %285 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %470)
  %286 = load i64, i64* %RBP, align 8
  %287 = add i64 %286, -4
  %288 = load i64, i64* %PC, align 8
  %289 = add i64 %288, 7
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %287 to i32*
  store i32 0, i32* %290, align 4
  %291 = load i64, i64* %RBP, align 8
  %292 = add i64 %291, -76
  %293 = load i32, i32* %EAX, align 4
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %296, align 4
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 50
  store i64 %298, i64* %84, align 8, !tbaa !2428
  br label %block_40148f

block_401488:                                     ; preds = %block_40139a
  %299 = add i64 %97, -4
  %300 = add i64 %133, 7
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 1, i32* %301, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40148f

block_4013a6:                                     ; preds = %block_40139a
  %302 = add i64 %97, -40
  %303 = add i64 %133, 7
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 0, i32* %304, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4013ad

block_4013b9:                                     ; preds = %block_4013ad
  %305 = add i64 %205, -24
  %306 = add i64 %241, 4
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = add i64 %205, -36
  %310 = add i64 %241, 8
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = shl nsw i64 %313, 13
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = lshr i64 %313, 50
  %316 = and i64 %315, 1
  %317 = add i64 %314, %308
  store i64 %317, i64* %RAX, align 8, !tbaa !2428
  %318 = icmp ult i64 %317, %308
  %319 = icmp ult i64 %317, %314
  %320 = or i1 %318, %319
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %18, align 1, !tbaa !2432
  %322 = trunc i64 %317 to i32
  %323 = and i32 %322, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323) #8
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %25, align 1, !tbaa !2446
  %328 = xor i64 %308, %317
  %329 = lshr i64 %328, 4
  %330 = trunc i64 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %31, align 1, !tbaa !2450
  %332 = icmp eq i64 %317, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %34, align 1, !tbaa !2447
  %334 = lshr i64 %317, 63
  %335 = trunc i64 %334 to i8
  store i8 %335, i8* %37, align 1, !tbaa !2448
  %336 = lshr i64 %308, 63
  %337 = xor i64 %334, %336
  %338 = xor i64 %334, %316
  %339 = add nuw nsw i64 %337, %338
  %340 = icmp eq i64 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %43, align 1, !tbaa !2449
  %342 = add i64 %241, 19
  store i64 %342, i64* %PC, align 8
  %343 = load i32, i32* %208, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RCX, align 8, !tbaa !2428
  %345 = shl nsw i64 %344, 3
  %346 = add i64 %345, %317
  %347 = add i64 %241, 24
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %349, i64* %350, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %351 = add i64 %205, -56
  %352 = add i64 %241, 29
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i64*
  store i64 %349, i64* %353, align 8
  %354 = load i64, i64* %RBP, align 8
  %355 = add i64 %354, -32
  %356 = load i64, i64* %PC, align 8
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX, align 8, !tbaa !2428
  %360 = add i64 %354, -36
  %361 = add i64 %356, 8
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = shl nsw i64 %364, 13
  store i64 %365, i64* %RCX, align 8, !tbaa !2428
  %366 = lshr i64 %364, 50
  %367 = and i64 %366, 1
  %368 = add i64 %365, %359
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = icmp ult i64 %368, %359
  %370 = icmp ult i64 %368, %365
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %18, align 1, !tbaa !2432
  %373 = trunc i64 %368 to i32
  %374 = and i32 %373, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %25, align 1, !tbaa !2446
  %379 = xor i64 %359, %368
  %380 = lshr i64 %379, 4
  %381 = trunc i64 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %31, align 1, !tbaa !2450
  %383 = icmp eq i64 %368, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %34, align 1, !tbaa !2447
  %385 = lshr i64 %368, 63
  %386 = trunc i64 %385 to i8
  store i8 %386, i8* %37, align 1, !tbaa !2448
  %387 = lshr i64 %359, 63
  %388 = xor i64 %385, %387
  %389 = xor i64 %385, %367
  %390 = add nuw nsw i64 %388, %389
  %391 = icmp eq i64 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %43, align 1, !tbaa !2449
  %393 = add i64 %354, -40
  %394 = add i64 %356, 19
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = shl nsw i64 %397, 3
  %399 = add i64 %398, %368
  %400 = add i64 %356, 24
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %402, i64* %403, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %404 = add i64 %354, -64
  %405 = add i64 %356, 29
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i64*
  store i64 %402, i64* %406, align 8
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -56
  %409 = load i64, i64* %PC, align 8
  %410 = add i64 %409, 5
  store i64 %410, i64* %PC, align 8
  %411 = inttoptr i64 %408 to double*
  %412 = load double, double* %411, align 8
  store double %412, double* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %413 = add i64 %407, -64
  %414 = add i64 %409, 10
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to double*
  %416 = load double, double* %415, align 8
  %417 = fsub double %412, %416
  %418 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 16) to i32*), align 16
  %419 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 20) to i32*), align 4
  %420 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 24) to i32*), align 8
  %421 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 28) to i32*), align 4
  %422 = bitcast %union.VectorReg* %7 to i32*
  store i32 %418, i32* %422, align 1, !tbaa !2455
  %423 = bitcast i8* %86 to i32*
  store i32 %419, i32* %423, align 1, !tbaa !2455
  %424 = bitcast i64* %87 to i32*
  store i32 %420, i32* %424, align 1, !tbaa !2455
  %425 = bitcast i8* %88 to i32*
  store i32 %421, i32* %425, align 1, !tbaa !2455
  %426 = bitcast double %417 to i64
  %427 = load i64, i64* %89, align 1
  %428 = and i64 %427, %426
  %429 = trunc i64 %428 to i32
  %430 = lshr i64 %428, 32
  %431 = trunc i64 %430 to i32
  store i32 %429, i32* %90, align 1, !tbaa !2453
  store i32 %431, i32* %92, align 1, !tbaa !2453
  store i32 0, i32* %93, align 1, !tbaa !2453
  store i32 0, i32* %95, align 1, !tbaa !2453
  %432 = add i64 %407, -72
  %433 = add i64 %409, 26
  store i64 %433, i64* %PC, align 8
  %434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %435 = load i64, i64* %434, align 1
  %436 = inttoptr i64 %432 to i64*
  store i64 %435, i64* %436, align 8
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -72
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 5
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %438 to double*
  %442 = load double, double* %441, align 8
  store double %442, double* %46, align 1, !tbaa !2451
  store double 0.000000e+00, double* %49, align 1, !tbaa !2451
  %443 = add i64 %437, -48
  %444 = add i64 %439, 10
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to double*
  %446 = load double, double* %445, align 8
  %447 = fcmp uno double %442, %446
  br i1 %447, label %448, label %458

; <label>:448:                                    ; preds = %block_4013b9
  %449 = fadd double %442, %446
  %450 = bitcast double %449 to i64
  %451 = and i64 %450, 9221120237041090560
  %452 = icmp eq i64 %451, 9218868437227405312
  %453 = and i64 %450, 2251799813685247
  %454 = icmp ne i64 %453, 0
  %455 = and i1 %452, %454
  br i1 %455, label %456, label %464

; <label>:456:                                    ; preds = %448
  %457 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %444, %struct.Memory* %MEMORY.2) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:458:                                    ; preds = %block_4013b9
  %459 = fcmp ogt double %442, %446
  br i1 %459, label %464, label %460

; <label>:460:                                    ; preds = %458
  %461 = fcmp olt double %442, %446
  br i1 %461, label %464, label %462

; <label>:462:                                    ; preds = %460
  %463 = fcmp oeq double %442, %446
  br i1 %463, label %464, label %468

; <label>:464:                                    ; preds = %462, %460, %458, %448
  %465 = phi i8 [ 0, %458 ], [ 0, %460 ], [ 1, %462 ], [ 1, %448 ]
  %466 = phi i8 [ 0, %458 ], [ 0, %460 ], [ 0, %462 ], [ 1, %448 ]
  %467 = phi i8 [ 0, %458 ], [ 1, %460 ], [ 0, %462 ], [ 1, %448 ]
  store i8 %465, i8* %34, align 1, !tbaa !2454
  store i8 %466, i8* %25, align 1, !tbaa !2454
  store i8 %467, i8* %18, align 1, !tbaa !2454
  br label %468

; <label>:468:                                    ; preds = %464, %462
  store i8 0, i8* %43, align 1, !tbaa !2454
  store i8 0, i8* %37, align 1, !tbaa !2454
  store i8 0, i8* %31, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %468, %456
  %469 = phi i64 [ %.pre7, %456 ], [ %444, %468 ]
  %470 = phi %struct.Memory* [ %457, %456 ], [ %MEMORY.2, %468 ]
  %471 = load i8, i8* %18, align 1, !tbaa !2432
  %472 = load i8, i8* %34, align 1, !tbaa !2447
  %473 = or i8 %472, %471
  %474 = icmp ne i8 %473, 0
  %.v10 = select i1 %474, i64 75, i64 6
  %475 = add i64 %469, %.v10
  store i64 %475, i64* %84, align 8, !tbaa !2428
  br i1 %474, label %block_401462, label %block_40141d

block_401462:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %476 = load i64, i64* %RBP, align 8
  %477 = add i64 %476, -40
  %478 = add i64 %475, 8
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
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #8
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
  %505 = add i64 %475, 14
  store i64 %505, i64* %PC, align 8
  store i32 %481, i32* %479, align 4
  %506 = load i64, i64* %PC, align 8
  %507 = add i64 %506, -195
  store i64 %507, i64* %84, align 8, !tbaa !2428
  br label %block_4013ad
}

; Function Attrs: noinline
define %struct.Memory* @sub_400890_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400890:
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
  %56 = add i64 %51, -639
  %57 = add i64 %51, 12
  %58 = load i64, i64* %6, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8, !tbaa !2428
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %56, i64* %61, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State* nonnull %0, %struct.Memory* %2)
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
  br i1 %81, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %86 = phi i64 [ %122, %block_4008c9 ], [ %85, %block_400890 ]
  store i64 add (i64 ptrtoint (%seg_4017a0__rodata_type* @seg_4017a0__rodata to i64), i64 39), i64* %RSI, align 8, !tbaa !2428
  %87 = load i64, i64* @stderr, align 128
  store i64 %87, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %88 = add i64 %86, -723
  %89 = add i64 %86, 25
  %90 = load i64, i64* %6, align 8, !tbaa !2428
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8, !tbaa !2428
  store i64 %88, i64* %61, align 8, !tbaa !2428
  %93 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %62)
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
  %106 = tail call fastcc %struct.Memory* @ext_6020f8_exit(%struct.State* nonnull %0, %struct.Memory* %93)
  %107 = load i64, i64* %PC, align 8
  %108 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %107, %struct.Memory* %106)
  ret %struct.Memory* %108

block_4008c9:                                     ; preds = %block_400890
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
  br i1 %118, label %block_4008f9, label %block_4008d3

block_4008f9:                                     ; preds = %block_4008c9
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
define %struct.Memory* @sub_401720___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401720:
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
  %65 = add i64 %40, -4523
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  store i8 %80, i8* %48, align 1, !tbaa !2447
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_401776, label %block_401756

block_401776:                                     ; preds = %block_401760, %block_401720
  %84 = phi i64 [ %83, %block_401720 ], [ %182, %block_401760 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_401720 ], [ %152, %block_401760 ]
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

block_401756:                                     ; preds = %block_401720
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401760

block_401760:                                     ; preds = %block_401760, %block_401756
  %137 = phi i64 [ 0, %block_401756 ], [ %155, %block_401760 ]
  %138 = phi i64 [ %136, %block_401756 ], [ %182, %block_401760 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401756 ], [ %152, %block_401760 ]
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
  br i1 %172, label %block_401776, label %block_401760
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b80_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b80:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %7 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %10 = load i64, i64* %RBP, align 8
  %11 = add i64 %1, 1
  store i64 %11, i64* %PC, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !2428
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %10, i64* %15, align 8
  store i64 %14, i64* %12, align 8, !tbaa !2428
  %16 = load i64, i64* %PC, align 8
  store i64 %14, i64* %RBP, align 8, !tbaa !2428
  %17 = add i64 %13, 24
  %18 = add i64 %16, 7
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %17 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RAX, align 8, !tbaa !2428
  %21 = add i64 %13, 16
  %22 = add i64 %16, 11
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %21 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %R10, align 8, !tbaa !2428
  %25 = add i64 %13, 8
  %26 = add i64 %16, 15
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %R11, align 8, !tbaa !2428
  %29 = add i64 %13, -12
  %30 = load i32, i32* %EDI, align 4
  %31 = add i64 %16, 18
  store i64 %31, i64* %PC, align 8
  %32 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %RBP, align 8
  %34 = add i64 %33, -8
  %35 = load i32, i32* %ESI, align 4
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %34 to i32*
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -12
  %41 = load i32, i32* %EDX, align 4
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -16
  %47 = load i32, i32* %ECX, align 4
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %R8D, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %R9, align 8
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -36
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 0, i32* %67, align 4
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -48
  %70 = load i64, i64* %R11, align 8
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -56
  %76 = load i64, i64* %R10, align 8
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -64
  %82 = load i64, i64* %RAX, align 8
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85, align 8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %93 = bitcast [32 x %union.VectorReg]* %8 to double*
  %94 = bitcast %union.VectorReg* %9 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400bb7

block_400cc5:                                     ; preds = %block_400cd1, %block_400cbe
  %95 = phi i64 [ %587, %block_400cd1 ], [ %.pre7, %block_400cbe ]
  %96 = load i64, i64* %RBP, align 8
  %97 = add i64 %96, -40
  %98 = add i64 %95, 3
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RAX, align 8, !tbaa !2428
  %102 = add i64 %96, -20
  %103 = add i64 %95, 6
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %100, %105
  %107 = icmp ult i32 %100, %105
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %86, align 1, !tbaa !2432
  %109 = and i32 %106, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #8
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %87, align 1, !tbaa !2446
  %114 = xor i32 %105, %100
  %115 = xor i32 %114, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %88, align 1, !tbaa !2450
  %119 = icmp eq i32 %106, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %89, align 1, !tbaa !2447
  %121 = lshr i32 %106, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %90, align 1, !tbaa !2448
  %123 = lshr i32 %100, 31
  %124 = lshr i32 %105, 31
  %125 = xor i32 %124, %123
  %126 = xor i32 %121, %123
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %91, align 1, !tbaa !2449
  %130 = icmp ne i8 %122, 0
  %131 = xor i1 %130, %128
  %.v14 = select i1 %131, i64 12, i64 82
  %132 = add i64 %95, %.v14
  store i64 %132, i64* %92, align 8, !tbaa !2428
  %133 = add i64 %96, -36
  br i1 %131, label %block_400cd1, label %block_400d17

block_400d44:                                     ; preds = %block_400d50, %block_400d3d
  %134 = phi i64 [ %741, %block_400d50 ], [ %.pre9, %block_400d3d ]
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -40
  %137 = add i64 %134, 3
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = add i64 %135, -16
  %142 = add i64 %134, 6
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sub i32 %139, %144
  %146 = icmp ult i32 %139, %144
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %86, align 1, !tbaa !2432
  %148 = and i32 %145, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #8
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %87, align 1, !tbaa !2446
  %153 = xor i32 %144, %139
  %154 = xor i32 %153, %145
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %88, align 1, !tbaa !2450
  %158 = icmp eq i32 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %89, align 1, !tbaa !2447
  %160 = lshr i32 %145, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %90, align 1, !tbaa !2448
  %162 = lshr i32 %139, 31
  %163 = lshr i32 %144, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %160, %162
  %166 = add nuw nsw i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %91, align 1, !tbaa !2449
  %169 = icmp ne i8 %161, 0
  %170 = xor i1 %169, %167
  %.v16 = select i1 %170, i64 12, i64 82
  %171 = add i64 %134, %.v16
  store i64 %171, i64* %92, align 8, !tbaa !2428
  %172 = add i64 %135, -36
  br i1 %170, label %block_400d50, label %block_400d96

block_400bc3:                                     ; preds = %block_400bb7
  %173 = add i64 %397, -40
  %174 = add i64 %433, 7
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  store i32 0, i32* %175, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400bca

block_400c3f:                                     ; preds = %block_400c33
  %176 = add i64 %435, -40
  %177 = add i64 %471, 7
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 0, i32* %178, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400c46

block_400cbe:                                     ; preds = %block_400cb2
  %179 = add i64 %589, -40
  %180 = add i64 %625, 7
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 0, i32* %181, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400cc5

block_400d3d:                                     ; preds = %block_400d31
  %182 = add i64 %743, -40
  %183 = add i64 %779, 7
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  store i32 0, i32* %184, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400d44

block_400bd6:                                     ; preds = %block_400bca
  %185 = add i64 %829, 3
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %830 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = sitofp i32 %187 to double
  store double %189, double* %93, align 1, !tbaa !2451
  %190 = add i64 %829, 10
  store i64 %190, i64* %PC, align 8
  %191 = load i32, i32* %796, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = sitofp i32 %191 to double
  store double %193, double* %94, align 1, !tbaa !2451
  %194 = fmul double %189, %193
  store double %194, double* %93, align 1, !tbaa !2451
  %195 = add i64 %793, -4
  %196 = add i64 %829, 21
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = sitofp i32 %198 to double
  store double %200, double* %94, align 1, !tbaa !2451
  %201 = fdiv double %194, %200
  store double %201, double* %93, align 1, !tbaa !2451
  %202 = add i64 %793, -32
  %203 = add i64 %829, 33
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = add i64 %829, 37
  store i64 %206, i64* %PC, align 8
  %207 = load i32, i32* %186, align 4
  %208 = sext i32 %207 to i64
  %209 = shl nsw i64 %208, 13
  store i64 %209, i64* %RDX, align 8, !tbaa !2428
  %210 = lshr i64 %208, 50
  %211 = and i64 %210, 1
  %212 = add i64 %209, %205
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = icmp ult i64 %212, %205
  %214 = icmp ult i64 %212, %209
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %86, align 1, !tbaa !2432
  %217 = trunc i64 %212 to i32
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %87, align 1, !tbaa !2446
  %223 = xor i64 %205, %212
  %224 = lshr i64 %223, 4
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %88, align 1, !tbaa !2450
  %227 = icmp eq i64 %212, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %89, align 1, !tbaa !2447
  %229 = lshr i64 %212, 63
  %230 = trunc i64 %229 to i8
  store i8 %230, i8* %90, align 1, !tbaa !2448
  %231 = lshr i64 %205, 63
  %232 = xor i64 %229, %231
  %233 = xor i64 %229, %211
  %234 = add nuw nsw i64 %232, %233
  %235 = icmp eq i64 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %91, align 1, !tbaa !2449
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -40
  %239 = add i64 %829, 48
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RDX, align 8, !tbaa !2428
  %243 = shl nsw i64 %242, 3
  %244 = add i64 %243, %212
  %245 = add i64 %829, 53
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to double*
  store double %201, double* %246, align 8
  %247 = load i64, i64* %RBP, align 8
  %248 = add i64 %247, -40
  %249 = load i64, i64* %PC, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, 1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = icmp eq i32 %252, -1
  %256 = icmp eq i32 %253, 0
  %257 = or i1 %255, %256
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %86, align 1, !tbaa !2432
  %259 = and i32 %253, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #8
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %87, align 1, !tbaa !2446
  %264 = xor i32 %252, %253
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %88, align 1, !tbaa !2450
  %268 = icmp eq i32 %253, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %89, align 1, !tbaa !2447
  %270 = lshr i32 %253, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %90, align 1, !tbaa !2448
  %272 = lshr i32 %252, 31
  %273 = xor i32 %270, %272
  %274 = add nuw nsw i32 %273, %270
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %91, align 1, !tbaa !2449
  %277 = add i64 %249, 9
  store i64 %277, i64* %PC, align 8
  store i32 %253, i32* %251, align 4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, -74
  store i64 %279, i64* %92, align 8, !tbaa !2428
  br label %block_400bca

block_400c52:                                     ; preds = %block_400c46
  %280 = add i64 %868, 3
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %869 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = sitofp i32 %282 to double
  store double %284, double* %93, align 1, !tbaa !2451
  %285 = add i64 %868, 10
  store i64 %285, i64* %PC, align 8
  %286 = load i32, i32* %835, align 4
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX, align 8, !tbaa !2428
  %289 = icmp eq i32 %286, -1
  %290 = icmp eq i32 %287, 0
  %291 = or i1 %289, %290
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %86, align 1, !tbaa !2432
  %293 = and i32 %287, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293) #8
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %87, align 1, !tbaa !2446
  %298 = xor i32 %286, %287
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %88, align 1, !tbaa !2450
  %302 = icmp eq i32 %287, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %89, align 1, !tbaa !2447
  %304 = lshr i32 %287, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %90, align 1, !tbaa !2448
  %306 = lshr i32 %286, 31
  %307 = xor i32 %304, %306
  %308 = add nuw nsw i32 %307, %304
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %91, align 1, !tbaa !2449
  %311 = sitofp i32 %287 to double
  store double %311, double* %94, align 1, !tbaa !2451
  %312 = fmul double %284, %311
  store double %312, double* %93, align 1, !tbaa !2451
  %313 = add i64 %868, 24
  store i64 %313, i64* %PC, align 8
  %314 = load i32, i32* %840, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX, align 8, !tbaa !2428
  %316 = sitofp i32 %314 to double
  store double %316, double* %94, align 1, !tbaa !2451
  %317 = fdiv double %312, %316
  store double %317, double* %93, align 1, !tbaa !2451
  %318 = add i64 %832, 16
  %319 = add i64 %868, 36
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RCX, align 8, !tbaa !2428
  %322 = add i64 %868, 40
  store i64 %322, i64* %PC, align 8
  %323 = load i32, i32* %281, align 4
  %324 = sext i32 %323 to i64
  %325 = shl nsw i64 %324, 13
  store i64 %325, i64* %RDX, align 8, !tbaa !2428
  %326 = lshr i64 %324, 50
  %327 = and i64 %326, 1
  %328 = add i64 %325, %321
  store i64 %328, i64* %RCX, align 8, !tbaa !2428
  %329 = icmp ult i64 %328, %321
  %330 = icmp ult i64 %328, %325
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %86, align 1, !tbaa !2432
  %333 = trunc i64 %328 to i32
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334) #8
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %87, align 1, !tbaa !2446
  %339 = xor i64 %321, %328
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %88, align 1, !tbaa !2450
  %343 = icmp eq i64 %328, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %89, align 1, !tbaa !2447
  %345 = lshr i64 %328, 63
  %346 = trunc i64 %345 to i8
  store i8 %346, i8* %90, align 1, !tbaa !2448
  %347 = lshr i64 %321, 63
  %348 = xor i64 %345, %347
  %349 = xor i64 %345, %327
  %350 = add nuw nsw i64 %348, %349
  %351 = icmp eq i64 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %91, align 1, !tbaa !2449
  %353 = load i64, i64* %RBP, align 8
  %354 = add i64 %353, -40
  %355 = add i64 %868, 51
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %RDX, align 8, !tbaa !2428
  %359 = shl nsw i64 %358, 3
  %360 = add i64 %359, %328
  %361 = add i64 %868, 56
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to double*
  store double %317, double* %362, align 8
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -40
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
  store i8 %374, i8* %86, align 1, !tbaa !2432
  %375 = and i32 %369, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375) #8
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %87, align 1, !tbaa !2446
  %380 = xor i32 %368, %369
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %88, align 1, !tbaa !2450
  %384 = icmp eq i32 %369, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %89, align 1, !tbaa !2447
  %386 = lshr i32 %369, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %90, align 1, !tbaa !2448
  %388 = lshr i32 %368, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %91, align 1, !tbaa !2449
  %393 = add i64 %365, 9
  store i64 %393, i64* %PC, align 8
  store i32 %369, i32* %367, align 4
  %394 = load i64, i64* %PC, align 8
  %395 = add i64 %394, -77
  store i64 %395, i64* %92, align 8, !tbaa !2428
  br label %block_400c46

block_400bb7:                                     ; preds = %block_400c19, %block_400b80
  %396 = phi i64 [ %899, %block_400c19 ], [ %.pre, %block_400b80 ]
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -36
  %399 = add i64 %396, 3
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX, align 8, !tbaa !2428
  %403 = add i64 %397, -4
  %404 = add i64 %396, 6
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sub i32 %401, %406
  %408 = icmp ult i32 %401, %406
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %86, align 1, !tbaa !2432
  %410 = and i32 %407, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410) #8
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %87, align 1, !tbaa !2446
  %415 = xor i32 %406, %401
  %416 = xor i32 %415, %407
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %88, align 1, !tbaa !2450
  %420 = icmp eq i32 %407, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %89, align 1, !tbaa !2447
  %422 = lshr i32 %407, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %90, align 1, !tbaa !2448
  %424 = lshr i32 %401, 31
  %425 = lshr i32 %406, 31
  %426 = xor i32 %425, %424
  %427 = xor i32 %422, %424
  %428 = add nuw nsw i32 %427, %426
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %91, align 1, !tbaa !2449
  %431 = icmp ne i8 %423, 0
  %432 = xor i1 %431, %429
  %.v = select i1 %432, i64 12, i64 117
  %433 = add i64 %396, %.v
  store i64 %433, i64* %92, align 8, !tbaa !2428
  br i1 %432, label %block_400bc3, label %block_400c2c

block_400c33:                                     ; preds = %block_400c98, %block_400c2c
  %434 = phi i64 [ %929, %block_400c98 ], [ %.pre4, %block_400c2c ]
  %435 = load i64, i64* %RBP, align 8
  %436 = add i64 %435, -36
  %437 = add i64 %434, 3
  store i64 %437, i64* %PC, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RAX, align 8, !tbaa !2428
  %441 = add i64 %435, -12
  %442 = add i64 %434, 6
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sub i32 %439, %444
  %446 = icmp ult i32 %439, %444
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %86, align 1, !tbaa !2432
  %448 = and i32 %445, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448) #8
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %87, align 1, !tbaa !2446
  %453 = xor i32 %444, %439
  %454 = xor i32 %453, %445
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %88, align 1, !tbaa !2450
  %458 = icmp eq i32 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %89, align 1, !tbaa !2447
  %460 = lshr i32 %445, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %90, align 1, !tbaa !2448
  %462 = lshr i32 %439, 31
  %463 = lshr i32 %444, 31
  %464 = xor i32 %463, %462
  %465 = xor i32 %460, %462
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %91, align 1, !tbaa !2449
  %469 = icmp ne i8 %461, 0
  %470 = xor i1 %469, %467
  %.v11 = select i1 %470, i64 12, i64 120
  %471 = add i64 %434, %.v11
  store i64 %471, i64* %92, align 8, !tbaa !2428
  br i1 %470, label %block_400c3f, label %block_400cab

block_400cd1:                                     ; preds = %block_400cc5
  %472 = add i64 %132, 3
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %133 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RAX, align 8, !tbaa !2428
  %476 = sitofp i32 %474 to double
  store double %476, double* %93, align 1, !tbaa !2451
  %477 = add i64 %132, 10
  store i64 %477, i64* %PC, align 8
  %478 = load i32, i32* %99, align 4
  %479 = add i32 %478, 3
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX, align 8, !tbaa !2428
  %481 = icmp ugt i32 %478, -4
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %86, align 1, !tbaa !2432
  %483 = and i32 %479, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483) #8
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %87, align 1, !tbaa !2446
  %488 = xor i32 %478, %479
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %88, align 1, !tbaa !2450
  %492 = icmp eq i32 %479, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %89, align 1, !tbaa !2447
  %494 = lshr i32 %479, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %90, align 1, !tbaa !2448
  %496 = lshr i32 %478, 31
  %497 = xor i32 %494, %496
  %498 = add nuw nsw i32 %497, %494
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %91, align 1, !tbaa !2449
  %501 = sitofp i32 %479 to double
  store double %501, double* %94, align 1, !tbaa !2451
  %502 = fmul double %476, %501
  store double %502, double* %93, align 1, !tbaa !2451
  %503 = add i64 %96, -16
  %504 = add i64 %132, 24
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX, align 8, !tbaa !2428
  %508 = sitofp i32 %506 to double
  store double %508, double* %94, align 1, !tbaa !2451
  %509 = fdiv double %502, %508
  store double %509, double* %93, align 1, !tbaa !2451
  %510 = add i64 %96, 24
  %511 = add i64 %132, 36
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %RCX, align 8, !tbaa !2428
  %514 = add i64 %132, 40
  store i64 %514, i64* %PC, align 8
  %515 = load i32, i32* %473, align 4
  %516 = sext i32 %515 to i64
  %517 = shl nsw i64 %516, 13
  store i64 %517, i64* %RDX, align 8, !tbaa !2428
  %518 = lshr i64 %516, 50
  %519 = and i64 %518, 1
  %520 = add i64 %517, %513
  store i64 %520, i64* %RCX, align 8, !tbaa !2428
  %521 = icmp ult i64 %520, %513
  %522 = icmp ult i64 %520, %517
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %86, align 1, !tbaa !2432
  %525 = trunc i64 %520 to i32
  %526 = and i32 %525, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #8
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %87, align 1, !tbaa !2446
  %531 = xor i64 %513, %520
  %532 = lshr i64 %531, 4
  %533 = trunc i64 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %88, align 1, !tbaa !2450
  %535 = icmp eq i64 %520, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %89, align 1, !tbaa !2447
  %537 = lshr i64 %520, 63
  %538 = trunc i64 %537 to i8
  store i8 %538, i8* %90, align 1, !tbaa !2448
  %539 = lshr i64 %513, 63
  %540 = xor i64 %537, %539
  %541 = xor i64 %537, %519
  %542 = add nuw nsw i64 %540, %541
  %543 = icmp eq i64 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %91, align 1, !tbaa !2449
  %545 = load i64, i64* %RBP, align 8
  %546 = add i64 %545, -40
  %547 = add i64 %132, 51
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RDX, align 8, !tbaa !2428
  %551 = shl nsw i64 %550, 3
  %552 = add i64 %551, %520
  %553 = add i64 %132, 56
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to double*
  store double %509, double* %554, align 8
  %555 = load i64, i64* %RBP, align 8
  %556 = add i64 %555, -40
  %557 = load i64, i64* %PC, align 8
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, 1
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RAX, align 8, !tbaa !2428
  %563 = icmp eq i32 %560, -1
  %564 = icmp eq i32 %561, 0
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %86, align 1, !tbaa !2432
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #8
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %87, align 1, !tbaa !2446
  %572 = xor i32 %560, %561
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %88, align 1, !tbaa !2450
  %576 = icmp eq i32 %561, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %89, align 1, !tbaa !2447
  %578 = lshr i32 %561, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %90, align 1, !tbaa !2448
  %580 = lshr i32 %560, 31
  %581 = xor i32 %578, %580
  %582 = add nuw nsw i32 %581, %578
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %91, align 1, !tbaa !2449
  %585 = add i64 %557, 9
  store i64 %585, i64* %PC, align 8
  store i32 %561, i32* %559, align 4
  %586 = load i64, i64* %PC, align 8
  %587 = add i64 %586, -77
  store i64 %587, i64* %92, align 8, !tbaa !2428
  br label %block_400cc5

block_400cb2:                                     ; preds = %block_400d17, %block_400cab
  %588 = phi i64 [ %959, %block_400d17 ], [ %.pre6, %block_400cab ]
  %589 = load i64, i64* %RBP, align 8
  %590 = add i64 %589, -36
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
  store i8 %601, i8* %86, align 1, !tbaa !2432
  %602 = and i32 %599, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602) #8
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %87, align 1, !tbaa !2446
  %607 = xor i32 %598, %593
  %608 = xor i32 %607, %599
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %88, align 1, !tbaa !2450
  %612 = icmp eq i32 %599, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %89, align 1, !tbaa !2447
  %614 = lshr i32 %599, 31
  %615 = trunc i32 %614 to i8
  store i8 %615, i8* %90, align 1, !tbaa !2448
  %616 = lshr i32 %593, 31
  %617 = lshr i32 %598, 31
  %618 = xor i32 %617, %616
  %619 = xor i32 %614, %616
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %91, align 1, !tbaa !2449
  %623 = icmp ne i8 %615, 0
  %624 = xor i1 %623, %621
  %.v13 = select i1 %624, i64 12, i64 120
  %625 = add i64 %588, %.v13
  store i64 %625, i64* %92, align 8, !tbaa !2428
  br i1 %624, label %block_400cbe, label %block_400d2a

block_400d50:                                     ; preds = %block_400d44
  %626 = add i64 %171, 3
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %172 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX, align 8, !tbaa !2428
  %630 = sitofp i32 %628 to double
  store double %630, double* %93, align 1, !tbaa !2451
  %631 = add i64 %171, 10
  store i64 %631, i64* %PC, align 8
  %632 = load i32, i32* %138, align 4
  %633 = add i32 %632, 2
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX, align 8, !tbaa !2428
  %635 = icmp ugt i32 %632, -3
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %86, align 1, !tbaa !2432
  %637 = and i32 %633, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637) #8
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %87, align 1, !tbaa !2446
  %642 = xor i32 %632, %633
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %88, align 1, !tbaa !2450
  %646 = icmp eq i32 %633, 0
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %89, align 1, !tbaa !2447
  %648 = lshr i32 %633, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %90, align 1, !tbaa !2448
  %650 = lshr i32 %632, 31
  %651 = xor i32 %648, %650
  %652 = add nuw nsw i32 %651, %648
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %91, align 1, !tbaa !2449
  %655 = sitofp i32 %633 to double
  store double %655, double* %94, align 1, !tbaa !2451
  %656 = fmul double %630, %655
  store double %656, double* %93, align 1, !tbaa !2451
  %657 = add i64 %135, -12
  %658 = add i64 %171, 24
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = sitofp i32 %660 to double
  store double %662, double* %94, align 1, !tbaa !2451
  %663 = fdiv double %656, %662
  store double %663, double* %93, align 1, !tbaa !2451
  %664 = add i64 %135, 32
  %665 = add i64 %171, 36
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RCX, align 8, !tbaa !2428
  %668 = add i64 %171, 40
  store i64 %668, i64* %PC, align 8
  %669 = load i32, i32* %627, align 4
  %670 = sext i32 %669 to i64
  %671 = shl nsw i64 %670, 13
  store i64 %671, i64* %RDX, align 8, !tbaa !2428
  %672 = lshr i64 %670, 50
  %673 = and i64 %672, 1
  %674 = add i64 %671, %667
  store i64 %674, i64* %RCX, align 8, !tbaa !2428
  %675 = icmp ult i64 %674, %667
  %676 = icmp ult i64 %674, %671
  %677 = or i1 %675, %676
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %86, align 1, !tbaa !2432
  %679 = trunc i64 %674 to i32
  %680 = and i32 %679, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680) #8
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %87, align 1, !tbaa !2446
  %685 = xor i64 %667, %674
  %686 = lshr i64 %685, 4
  %687 = trunc i64 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %88, align 1, !tbaa !2450
  %689 = icmp eq i64 %674, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %89, align 1, !tbaa !2447
  %691 = lshr i64 %674, 63
  %692 = trunc i64 %691 to i8
  store i8 %692, i8* %90, align 1, !tbaa !2448
  %693 = lshr i64 %667, 63
  %694 = xor i64 %691, %693
  %695 = xor i64 %691, %673
  %696 = add nuw nsw i64 %694, %695
  %697 = icmp eq i64 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %91, align 1, !tbaa !2449
  %699 = load i64, i64* %RBP, align 8
  %700 = add i64 %699, -40
  %701 = add i64 %171, 51
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RDX, align 8, !tbaa !2428
  %705 = shl nsw i64 %704, 3
  %706 = add i64 %705, %674
  %707 = add i64 %171, 56
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to double*
  store double %663, double* %708, align 8
  %709 = load i64, i64* %RBP, align 8
  %710 = add i64 %709, -40
  %711 = load i64, i64* %PC, align 8
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %710 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = add i32 %714, 1
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RAX, align 8, !tbaa !2428
  %717 = icmp eq i32 %714, -1
  %718 = icmp eq i32 %715, 0
  %719 = or i1 %717, %718
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %86, align 1, !tbaa !2432
  %721 = and i32 %715, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721) #8
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %87, align 1, !tbaa !2446
  %726 = xor i32 %714, %715
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %88, align 1, !tbaa !2450
  %730 = icmp eq i32 %715, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %89, align 1, !tbaa !2447
  %732 = lshr i32 %715, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %90, align 1, !tbaa !2448
  %734 = lshr i32 %714, 31
  %735 = xor i32 %732, %734
  %736 = add nuw nsw i32 %735, %732
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %91, align 1, !tbaa !2449
  %739 = add i64 %711, 9
  store i64 %739, i64* %PC, align 8
  store i32 %715, i32* %713, align 4
  %740 = load i64, i64* %PC, align 8
  %741 = add i64 %740, -77
  store i64 %741, i64* %92, align 8, !tbaa !2428
  br label %block_400d44

block_400d31:                                     ; preds = %block_400d96, %block_400d2a
  %742 = phi i64 [ %989, %block_400d96 ], [ %.pre8, %block_400d2a ]
  %743 = load i64, i64* %RBP, align 8
  %744 = add i64 %743, -36
  %745 = add i64 %742, 3
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RAX, align 8, !tbaa !2428
  %749 = add i64 %743, -20
  %750 = add i64 %742, 6
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = sub i32 %747, %752
  %754 = icmp ult i32 %747, %752
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %86, align 1, !tbaa !2432
  %756 = and i32 %753, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756) #8
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %87, align 1, !tbaa !2446
  %761 = xor i32 %752, %747
  %762 = xor i32 %761, %753
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %88, align 1, !tbaa !2450
  %766 = icmp eq i32 %753, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %89, align 1, !tbaa !2447
  %768 = lshr i32 %753, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %90, align 1, !tbaa !2448
  %770 = lshr i32 %747, 31
  %771 = lshr i32 %752, 31
  %772 = xor i32 %771, %770
  %773 = xor i32 %768, %770
  %774 = add nuw nsw i32 %773, %772
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %91, align 1, !tbaa !2449
  %777 = icmp ne i8 %769, 0
  %778 = xor i1 %777, %775
  %.v15 = select i1 %778, i64 12, i64 120
  %779 = add i64 %742, %.v15
  store i64 %779, i64* %92, align 8, !tbaa !2428
  br i1 %778, label %block_400d3d, label %block_400da9

block_400c2c:                                     ; preds = %block_400bb7
  %780 = add i64 %433, 7
  store i64 %780, i64* %PC, align 8
  store i32 0, i32* %400, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400c33

block_400cab:                                     ; preds = %block_400c33
  %781 = add i64 %471, 7
  store i64 %781, i64* %PC, align 8
  store i32 0, i32* %438, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400cb2

block_400d2a:                                     ; preds = %block_400cb2
  %782 = add i64 %625, 7
  store i64 %782, i64* %PC, align 8
  store i32 0, i32* %592, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400d31

block_400da9:                                     ; preds = %block_400d31
  %783 = add i64 %779, 1
  store i64 %783, i64* %PC, align 8
  %784 = load i64, i64* %12, align 8, !tbaa !2428
  %785 = add i64 %784, 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RBP, align 8, !tbaa !2428
  store i64 %785, i64* %12, align 8, !tbaa !2428
  %788 = add i64 %779, 2
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %785 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %92, align 8, !tbaa !2428
  %791 = add i64 %784, 16
  store i64 %791, i64* %12, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400bca:                                     ; preds = %block_400bd6, %block_400bc3
  %792 = phi i64 [ %279, %block_400bd6 ], [ %.pre3, %block_400bc3 ]
  %793 = load i64, i64* %RBP, align 8
  %794 = add i64 %793, -40
  %795 = add i64 %792, 3
  store i64 %795, i64* %PC, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RAX, align 8, !tbaa !2428
  %799 = add i64 %793, -12
  %800 = add i64 %792, 6
  store i64 %800, i64* %PC, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sub i32 %797, %802
  %804 = icmp ult i32 %797, %802
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %86, align 1, !tbaa !2432
  %806 = and i32 %803, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806) #8
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %87, align 1, !tbaa !2446
  %811 = xor i32 %802, %797
  %812 = xor i32 %811, %803
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %88, align 1, !tbaa !2450
  %816 = icmp eq i32 %803, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %89, align 1, !tbaa !2447
  %818 = lshr i32 %803, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %90, align 1, !tbaa !2448
  %820 = lshr i32 %797, 31
  %821 = lshr i32 %802, 31
  %822 = xor i32 %821, %820
  %823 = xor i32 %818, %820
  %824 = add nuw nsw i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %91, align 1, !tbaa !2449
  %827 = icmp ne i8 %819, 0
  %828 = xor i1 %827, %825
  %.v10 = select i1 %828, i64 12, i64 79
  %829 = add i64 %792, %.v10
  store i64 %829, i64* %92, align 8, !tbaa !2428
  %830 = add i64 %793, -36
  br i1 %828, label %block_400bd6, label %block_400c19

block_400c46:                                     ; preds = %block_400c52, %block_400c3f
  %831 = phi i64 [ %395, %block_400c52 ], [ %.pre5, %block_400c3f ]
  %832 = load i64, i64* %RBP, align 8
  %833 = add i64 %832, -40
  %834 = add i64 %831, 3
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = add i64 %832, -8
  %839 = add i64 %831, 6
  store i64 %839, i64* %PC, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sub i32 %836, %841
  %843 = icmp ult i32 %836, %841
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %86, align 1, !tbaa !2432
  %845 = and i32 %842, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845) #8
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %87, align 1, !tbaa !2446
  %850 = xor i32 %841, %836
  %851 = xor i32 %850, %842
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %88, align 1, !tbaa !2450
  %855 = icmp eq i32 %842, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %89, align 1, !tbaa !2447
  %857 = lshr i32 %842, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %90, align 1, !tbaa !2448
  %859 = lshr i32 %836, 31
  %860 = lshr i32 %841, 31
  %861 = xor i32 %860, %859
  %862 = xor i32 %857, %859
  %863 = add nuw nsw i32 %862, %861
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %91, align 1, !tbaa !2449
  %866 = icmp ne i8 %858, 0
  %867 = xor i1 %866, %864
  %.v12 = select i1 %867, i64 12, i64 82
  %868 = add i64 %831, %.v12
  store i64 %868, i64* %92, align 8, !tbaa !2428
  %869 = add i64 %832, -36
  br i1 %867, label %block_400c52, label %block_400c98

block_400c19:                                     ; preds = %block_400bca
  %870 = add i64 %829, 8
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %830 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = add i32 %872, 1
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RAX, align 8, !tbaa !2428
  %875 = icmp eq i32 %872, -1
  %876 = icmp eq i32 %873, 0
  %877 = or i1 %875, %876
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %86, align 1, !tbaa !2432
  %879 = and i32 %873, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879) #8
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %87, align 1, !tbaa !2446
  %884 = xor i32 %872, %873
  %885 = lshr i32 %884, 4
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  store i8 %887, i8* %88, align 1, !tbaa !2450
  %888 = icmp eq i32 %873, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %89, align 1, !tbaa !2447
  %890 = lshr i32 %873, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %90, align 1, !tbaa !2448
  %892 = lshr i32 %872, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %890
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %91, align 1, !tbaa !2449
  %897 = add i64 %829, 14
  store i64 %897, i64* %PC, align 8
  store i32 %873, i32* %871, align 4
  %898 = load i64, i64* %PC, align 8
  %899 = add i64 %898, -112
  store i64 %899, i64* %92, align 8, !tbaa !2428
  br label %block_400bb7

block_400c98:                                     ; preds = %block_400c46
  %900 = add i64 %868, 8
  store i64 %900, i64* %PC, align 8
  %901 = inttoptr i64 %869 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = add i32 %902, 1
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX, align 8, !tbaa !2428
  %905 = icmp eq i32 %902, -1
  %906 = icmp eq i32 %903, 0
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %86, align 1, !tbaa !2432
  %909 = and i32 %903, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909) #8
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %87, align 1, !tbaa !2446
  %914 = xor i32 %902, %903
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %88, align 1, !tbaa !2450
  %918 = icmp eq i32 %903, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %89, align 1, !tbaa !2447
  %920 = lshr i32 %903, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %90, align 1, !tbaa !2448
  %922 = lshr i32 %902, 31
  %923 = xor i32 %920, %922
  %924 = add nuw nsw i32 %923, %920
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %91, align 1, !tbaa !2449
  %927 = add i64 %868, 14
  store i64 %927, i64* %PC, align 8
  store i32 %903, i32* %901, align 4
  %928 = load i64, i64* %PC, align 8
  %929 = add i64 %928, -115
  store i64 %929, i64* %92, align 8, !tbaa !2428
  br label %block_400c33

block_400d17:                                     ; preds = %block_400cc5
  %930 = add i64 %132, 8
  store i64 %930, i64* %PC, align 8
  %931 = inttoptr i64 %133 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = add i32 %932, 1
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RAX, align 8, !tbaa !2428
  %935 = icmp eq i32 %932, -1
  %936 = icmp eq i32 %933, 0
  %937 = or i1 %935, %936
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %86, align 1, !tbaa !2432
  %939 = and i32 %933, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939) #8
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %87, align 1, !tbaa !2446
  %944 = xor i32 %932, %933
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %88, align 1, !tbaa !2450
  %948 = icmp eq i32 %933, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %89, align 1, !tbaa !2447
  %950 = lshr i32 %933, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %90, align 1, !tbaa !2448
  %952 = lshr i32 %932, 31
  %953 = xor i32 %950, %952
  %954 = add nuw nsw i32 %953, %950
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %91, align 1, !tbaa !2449
  %957 = add i64 %132, 14
  store i64 %957, i64* %PC, align 8
  store i32 %933, i32* %931, align 4
  %958 = load i64, i64* %PC, align 8
  %959 = add i64 %958, -115
  store i64 %959, i64* %92, align 8, !tbaa !2428
  br label %block_400cb2

block_400d96:                                     ; preds = %block_400d44
  %960 = add i64 %171, 8
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %172 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = add i32 %962, 1
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX, align 8, !tbaa !2428
  %965 = icmp eq i32 %962, -1
  %966 = icmp eq i32 %963, 0
  %967 = or i1 %965, %966
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %86, align 1, !tbaa !2432
  %969 = and i32 %963, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969) #8
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %87, align 1, !tbaa !2446
  %974 = xor i32 %962, %963
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %88, align 1, !tbaa !2450
  %978 = icmp eq i32 %963, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %89, align 1, !tbaa !2447
  %980 = lshr i32 %963, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %90, align 1, !tbaa !2448
  %982 = lshr i32 %962, 31
  %983 = xor i32 %980, %982
  %984 = add nuw nsw i32 %983, %980
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %91, align 1, !tbaa !2449
  %987 = add i64 %171, 14
  store i64 %987, i64* %PC, align 8
  store i32 %963, i32* %961, align 4
  %988 = load i64, i64* %PC, align 8
  %989 = add i64 %988, -115
  store i64 %989, i64* %92, align 8, !tbaa !2428
  br label %block_400d31
}

; Function Attrs: noinline
define %struct.Memory* @sub_401570_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401570:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %13 = add i64 %9, -16
  %14 = add i64 %12, 8
  store i64 %14, i64* %PC, align 8
  %15 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 1
  %17 = inttoptr i64 %13 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -12
  %20 = load i32, i32* %EDI, align 4
  %21 = load i64, i64* %PC, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -24
  %26 = load i64, i64* %RSI, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %RBP, align 8
  %31 = add i64 %30, -8
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 5
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %31 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %35, i64* %36, align 1, !tbaa !2451
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %38 = bitcast i64* %37 to double*
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
  %39 = add i64 %30, -32
  %40 = add i64 %32, 10
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %35, i64* %41, align 8
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -32
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i8*
  %47 = load i8, i8* %46, align 1
  %48 = and i8 %47, 15
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %55 = or i8 %48, 48
  %56 = zext i8 %55 to i32
  %57 = zext i8 %55 to i64
  store i64 %57, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %58 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %55, i8* %AL, align 1, !tbaa !2454
  %62 = add i64 %42, -24
  %63 = add i64 %44, 17
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RSI, align 8, !tbaa !2428
  %66 = add i64 %42, -12
  %67 = add i64 %44, 21
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %RCX, align 8, !tbaa !2428
  %71 = add i64 %70, %65
  %72 = add i64 %44, 24
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i8*
  store i8 %55, i8* %73, align 1
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -32
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %75 to i8*
  %79 = load i8, i8* %78, align 1
  %80 = and i8 %79, 15
  %81 = or i8 %80, 48
  %82 = zext i8 %81 to i32
  %83 = zext i8 %81 to i64
  store i64 %83, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %84 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %81, i8* %AL, align 1, !tbaa !2454
  %88 = add i64 %74, -24
  %89 = add i64 %76, 17
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RCX, align 8, !tbaa !2428
  %92 = add i64 %74, -12
  %93 = add i64 %76, 21
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %RSI, align 8, !tbaa !2428
  %97 = add i64 %91, 1
  %98 = add i64 %97, %96
  %99 = add i64 %76, 25
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i8*
  store i8 %81, i8* %100, align 1
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -31
  %103 = load i64, i64* %PC, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %102 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = and i8 %106, 15
  %108 = or i8 %107, 48
  %109 = zext i8 %108 to i32
  %110 = zext i8 %108 to i64
  store i64 %110, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %111 = tail call i32 @llvm.ctpop.i32(i32 %109) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %108, i8* %AL, align 1, !tbaa !2454
  %115 = add i64 %101, -24
  %116 = add i64 %103, 17
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX, align 8, !tbaa !2428
  %119 = add i64 %101, -12
  %120 = add i64 %103, 21
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = add i64 %118, 2
  %125 = add i64 %124, %123
  %126 = add i64 %103, 25
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i8*
  store i8 %108, i8* %127, align 1
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -31
  %130 = load i64, i64* %PC, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %129 to i8*
  %133 = load i8, i8* %132, align 1
  %134 = and i8 %133, 15
  %135 = or i8 %134, 48
  %136 = zext i8 %135 to i32
  %137 = zext i8 %135 to i64
  store i64 %137, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %138 = tail call i32 @llvm.ctpop.i32(i32 %136) #8
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %135, i8* %AL, align 1, !tbaa !2454
  %142 = add i64 %128, -24
  %143 = add i64 %130, 17
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = add i64 %128, -12
  %147 = add i64 %130, 21
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %RSI, align 8, !tbaa !2428
  %151 = add i64 %145, 3
  %152 = add i64 %151, %150
  %153 = add i64 %130, 25
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i8*
  store i8 %135, i8* %154, align 1
  %155 = load i64, i64* %RBP, align 8
  %156 = add i64 %155, -30
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %156 to i8*
  %160 = load i8, i8* %159, align 1
  %161 = and i8 %160, 15
  %162 = or i8 %161, 48
  %163 = zext i8 %162 to i32
  %164 = zext i8 %162 to i64
  store i64 %164, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %165 = tail call i32 @llvm.ctpop.i32(i32 %163) #8
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %162, i8* %AL, align 1, !tbaa !2454
  %169 = add i64 %155, -24
  %170 = add i64 %157, 17
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RCX, align 8, !tbaa !2428
  %173 = add i64 %155, -12
  %174 = add i64 %157, 21
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %RSI, align 8, !tbaa !2428
  %178 = add i64 %172, 4
  %179 = add i64 %178, %177
  %180 = add i64 %157, 25
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i8*
  store i8 %162, i8* %181, align 1
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -30
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %183 to i8*
  %187 = load i8, i8* %186, align 1
  %188 = and i8 %187, 15
  %189 = or i8 %188, 48
  %190 = zext i8 %189 to i32
  %191 = zext i8 %189 to i64
  store i64 %191, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %192 = tail call i32 @llvm.ctpop.i32(i32 %190) #8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %189, i8* %AL, align 1, !tbaa !2454
  %196 = add i64 %182, -24
  %197 = add i64 %184, 17
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RCX, align 8, !tbaa !2428
  %200 = add i64 %182, -12
  %201 = add i64 %184, 21
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %RSI, align 8, !tbaa !2428
  %205 = add i64 %199, 5
  %206 = add i64 %205, %204
  %207 = add i64 %184, 25
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i8*
  store i8 %189, i8* %208, align 1
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -29
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, 4
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %210 to i8*
  %214 = load i8, i8* %213, align 1
  %215 = and i8 %214, 15
  %216 = or i8 %215, 48
  %217 = zext i8 %216 to i32
  %218 = zext i8 %216 to i64
  store i64 %218, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %219 = tail call i32 @llvm.ctpop.i32(i32 %217) #8
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %216, i8* %AL, align 1, !tbaa !2454
  %223 = add i64 %209, -24
  %224 = add i64 %211, 17
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = add i64 %209, -12
  %228 = add i64 %211, 21
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RSI, align 8, !tbaa !2428
  %232 = add i64 %226, 6
  %233 = add i64 %232, %231
  %234 = add i64 %211, 25
  store i64 %234, i64* %PC, align 8
  %235 = inttoptr i64 %233 to i8*
  store i8 %216, i8* %235, align 1
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -29
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %237 to i8*
  %241 = load i8, i8* %240, align 1
  %242 = and i8 %241, 15
  %243 = or i8 %242, 48
  %244 = zext i8 %243 to i32
  %245 = zext i8 %243 to i64
  store i64 %245, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %246 = tail call i32 @llvm.ctpop.i32(i32 %244) #8
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %243, i8* %AL, align 1, !tbaa !2454
  %250 = add i64 %236, -24
  %251 = add i64 %238, 17
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = add i64 %236, -12
  %255 = add i64 %238, 21
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RSI, align 8, !tbaa !2428
  %259 = add i64 %253, 7
  %260 = add i64 %259, %258
  %261 = add i64 %238, 25
  store i64 %261, i64* %PC, align 8
  %262 = inttoptr i64 %260 to i8*
  store i8 %243, i8* %262, align 1
  %263 = load i64, i64* %RBP, align 8
  %264 = add i64 %263, -28
  %265 = load i64, i64* %PC, align 8
  %266 = add i64 %265, 4
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %264 to i8*
  %268 = load i8, i8* %267, align 1
  %269 = and i8 %268, 15
  %270 = or i8 %269, 48
  %271 = zext i8 %270 to i32
  %272 = zext i8 %270 to i64
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %273 = tail call i32 @llvm.ctpop.i32(i32 %271) #8
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %270, i8* %AL, align 1, !tbaa !2454
  %277 = add i64 %263, -24
  %278 = add i64 %265, 17
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = add i64 %263, -12
  %282 = add i64 %265, 21
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %RSI, align 8, !tbaa !2428
  %286 = add i64 %280, 8
  %287 = add i64 %286, %285
  %288 = add i64 %265, 25
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i8*
  store i8 %270, i8* %289, align 1
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -28
  %292 = load i64, i64* %PC, align 8
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %291 to i8*
  %295 = load i8, i8* %294, align 1
  %296 = and i8 %295, 15
  %297 = or i8 %296, 48
  %298 = zext i8 %297 to i32
  %299 = zext i8 %297 to i64
  store i64 %299, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %300 = tail call i32 @llvm.ctpop.i32(i32 %298) #8
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %297, i8* %AL, align 1, !tbaa !2454
  %304 = add i64 %290, -24
  %305 = add i64 %292, 17
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  %308 = add i64 %290, -12
  %309 = add i64 %292, 21
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  %313 = add i64 %307, 9
  %314 = add i64 %313, %312
  %315 = add i64 %292, 25
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i8*
  store i8 %297, i8* %316, align 1
  %317 = load i64, i64* %RBP, align 8
  %318 = add i64 %317, -27
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %318 to i8*
  %322 = load i8, i8* %321, align 1
  %323 = and i8 %322, 15
  %324 = or i8 %323, 48
  %325 = zext i8 %324 to i32
  %326 = zext i8 %324 to i64
  store i64 %326, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %327 = tail call i32 @llvm.ctpop.i32(i32 %325) #8
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %324, i8* %AL, align 1, !tbaa !2454
  %331 = add i64 %317, -24
  %332 = add i64 %319, 17
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RCX, align 8, !tbaa !2428
  %335 = add i64 %317, -12
  %336 = add i64 %319, 21
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  store i64 %339, i64* %RSI, align 8, !tbaa !2428
  %340 = add i64 %334, 10
  %341 = add i64 %340, %339
  %342 = add i64 %319, 25
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i8*
  store i8 %324, i8* %343, align 1
  %344 = load i64, i64* %RBP, align 8
  %345 = add i64 %344, -27
  %346 = load i64, i64* %PC, align 8
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %345 to i8*
  %349 = load i8, i8* %348, align 1
  %350 = and i8 %349, 15
  %351 = or i8 %350, 48
  %352 = zext i8 %351 to i32
  %353 = zext i8 %351 to i64
  store i64 %353, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %354 = tail call i32 @llvm.ctpop.i32(i32 %352) #8
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %351, i8* %AL, align 1, !tbaa !2454
  %358 = add i64 %344, -24
  %359 = add i64 %346, 17
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RCX, align 8, !tbaa !2428
  %362 = add i64 %344, -12
  %363 = add i64 %346, 21
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %RSI, align 8, !tbaa !2428
  %367 = add i64 %361, 11
  %368 = add i64 %367, %366
  %369 = add i64 %346, 25
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i8*
  store i8 %351, i8* %370, align 1
  %371 = load i64, i64* %RBP, align 8
  %372 = add i64 %371, -26
  %373 = load i64, i64* %PC, align 8
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %372 to i8*
  %376 = load i8, i8* %375, align 1
  %377 = and i8 %376, 15
  %378 = or i8 %377, 48
  %379 = zext i8 %378 to i32
  %380 = zext i8 %378 to i64
  store i64 %380, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %381 = tail call i32 @llvm.ctpop.i32(i32 %379) #8
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %378, i8* %AL, align 1, !tbaa !2454
  %385 = add i64 %371, -24
  %386 = add i64 %373, 17
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RCX, align 8, !tbaa !2428
  %389 = add i64 %371, -12
  %390 = add i64 %373, 21
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RSI, align 8, !tbaa !2428
  %394 = add i64 %388, 12
  %395 = add i64 %394, %393
  %396 = add i64 %373, 25
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i8*
  store i8 %378, i8* %397, align 1
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -26
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %399 to i8*
  %403 = load i8, i8* %402, align 1
  %404 = and i8 %403, 15
  %405 = or i8 %404, 48
  %406 = zext i8 %405 to i32
  %407 = zext i8 %405 to i64
  store i64 %407, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %408 = tail call i32 @llvm.ctpop.i32(i32 %406) #8
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %405, i8* %AL, align 1, !tbaa !2454
  %412 = add i64 %398, -24
  %413 = add i64 %400, 17
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = add i64 %398, -12
  %417 = add i64 %400, 21
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RSI, align 8, !tbaa !2428
  %421 = add i64 %415, 13
  %422 = add i64 %421, %420
  %423 = add i64 %400, 25
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i8*
  store i8 %405, i8* %424, align 1
  %425 = load i64, i64* %RBP, align 8
  %426 = add i64 %425, -25
  %427 = load i64, i64* %PC, align 8
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %426 to i8*
  %430 = load i8, i8* %429, align 1
  %431 = and i8 %430, 15
  %432 = or i8 %431, 48
  %433 = zext i8 %432 to i32
  %434 = zext i8 %432 to i64
  store i64 %434, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %435 = tail call i32 @llvm.ctpop.i32(i32 %433) #8
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %432, i8* %AL, align 1, !tbaa !2454
  %439 = add i64 %425, -24
  %440 = add i64 %427, 17
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RCX, align 8, !tbaa !2428
  %443 = add i64 %425, -12
  %444 = add i64 %427, 21
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %RSI, align 8, !tbaa !2428
  %448 = add i64 %442, 14
  %449 = add i64 %448, %447
  %450 = add i64 %427, 25
  store i64 %450, i64* %PC, align 8
  %451 = inttoptr i64 %449 to i8*
  store i8 %432, i8* %451, align 1
  %452 = load i64, i64* %RBP, align 8
  %453 = add i64 %452, -25
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %453 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = and i8 %457, 15
  %459 = or i8 %458, 48
  %460 = zext i8 %459 to i32
  %461 = zext i8 %459 to i64
  store i64 %461, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %49, align 1, !tbaa !2432
  %462 = tail call i32 @llvm.ctpop.i32(i32 %460) #8
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %50, align 1, !tbaa !2446
  store i8 0, i8* %54, align 1, !tbaa !2450
  store i8 0, i8* %51, align 1, !tbaa !2447
  store i8 0, i8* %52, align 1, !tbaa !2448
  store i8 0, i8* %53, align 1, !tbaa !2449
  store i8 %459, i8* %AL, align 1, !tbaa !2454
  %466 = add i64 %452, -24
  %467 = add i64 %454, 17
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = add i64 %452, -12
  %471 = add i64 %454, 21
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  store i64 %474, i64* %RSI, align 8, !tbaa !2428
  %475 = add i64 %469, 15
  %476 = add i64 %475, %474
  %477 = add i64 %454, 25
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i8*
  store i8 %459, i8* %478, align 1
  %479 = load i64, i64* %PC, align 8
  %480 = add i64 %479, 1
  store i64 %480, i64* %PC, align 8
  %481 = load i64, i64* %8, align 8, !tbaa !2428
  %482 = add i64 %481, 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %RBP, align 8, !tbaa !2428
  store i64 %482, i64* %8, align 8, !tbaa !2428
  %485 = add i64 %479, 2
  store i64 %485, i64* %PC, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %487 = inttoptr i64 %482 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %486, align 8, !tbaa !2428
  %489 = add i64 %481, 16
  store i64 %489, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400850:
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
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #8
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
  %103 = tail call %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* nonnull %0, i64 %97, %struct.Memory* %2)
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005c0_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401790___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401790___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401790___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401720___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401720___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401720___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400910_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602110_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f8_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602148_posix_memalign(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401794;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401794__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @13, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @14, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401790___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401720___libc_csu_init()
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
!2447 = !{!2433, !2430, i64 2071}
!2448 = !{!2433, !2430, i64 2073}
!2449 = !{!2433, !2430, i64 2077}
!2450 = !{!2433, !2430, i64 2069}
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2445, !2445, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
