; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401570__rodata_type = type <{ [64 x i8], [7 x i8], [51 x i8], [76 x i8] }>
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
@seg_401570__rodata = internal constant %seg_401570__rodata_type <{ [64 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
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
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401560___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4014f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401270_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401140_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401340_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400590.block_4005a2_crit_edge, label %block_4005a0

block_400590.block_4005a2_crit_edge:              ; preds = %block_400590
  br label %block_4005a2

block_4005a0:                                     ; preds = %block_400590
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_400590.block_4005a2_crit_edge, %block_4005a0
  %.pre-phi = phi i64* [ %RSP, %block_400590.block_4005a2_crit_edge ], [ %RSP, %block_4005a0 ]
  %27 = phi i64 [ %22, %block_400590.block_4005a2_crit_edge ], [ %.pre1, %block_4005a0 ]
  %28 = phi i64 [ %4, %block_400590.block_4005a2_crit_edge ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590.block_4005a2_crit_edge ], [ %26, %block_4005a0 ]
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
  %53 = tail call fastcc %struct.Memory* @ext_6020e0_calloc(%struct.State* nonnull %0, %struct.Memory* %2)
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
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
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
  br label %block_400762

block_400793:                                     ; preds = %block_400762
  store i64 %207, i64* %RDI, align 8, !tbaa !2428
  %128 = add i64 %203, -467
  %129 = add i64 %203, 12
  %130 = load i64, i64* %RSP, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %RSP, align 8, !tbaa !2428
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  %133 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %53)
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

block_400762:                                     ; preds = %block_40076e, %block_400730
  %166 = phi i64 [ %127, %block_40076e ], [ %.pre, %block_400730 ]
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
  br i1 %202, label %block_40076e, label %block_400793
}

; Function Attrs: noinline
define %struct.Memory* @sub_401560___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401560:
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
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4006f9, label %block_400710

block_400710:                                     ; preds = %block_4006f0
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

block_4006f9:                                     ; preds = %block_4006f0
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
  %36 = tail call %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4006e8, label %block_4006d3

block_4006d3:                                     ; preds = %block_4006b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %35 = add i64 %34, 21
  store i64 %35, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e8

block_4006e8:                                     ; preds = %block_4006d3, %block_4006b0
  %36 = phi i64 [ %35, %block_4006d3 ], [ %34, %block_4006b0 ]
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
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a60_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400a60:
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
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to double*
  %52 = bitcast %union.VectorReg* %5 to double*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %54 = bitcast i64* %53 to double*
  %55 = bitcast %union.VectorReg* %6 to double*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %57 = bitcast i64* %56 to double*
  %58 = bitcast %union.VectorReg* %7 to double*
  %59 = bitcast %union.VectorReg* %8 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a7a

block_400a7a:                                     ; preds = %block_400b73, %block_400a60
  %60 = phi i64 [ %480, %block_400b73 ], [ %.pre, %block_400a60 ]
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -36
  %63 = add i64 %60, 3
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RAX, align 8, !tbaa !2428
  %67 = add i64 %61, -4
  %68 = add i64 %60, 6
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %65, %70
  %72 = icmp ult i32 %65, %70
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %43, align 1, !tbaa !2432
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %44, align 1, !tbaa !2446
  %79 = xor i32 %70, %65
  %80 = xor i32 %79, %71
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %45, align 1, !tbaa !2450
  %84 = icmp eq i32 %71, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %46, align 1, !tbaa !2447
  %86 = lshr i32 %71, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %47, align 1, !tbaa !2448
  %88 = lshr i32 %65, 31
  %89 = lshr i32 %70, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %86, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %48, align 1, !tbaa !2449
  %95 = icmp ne i8 %87, 0
  %96 = xor i1 %95, %93
  %.v = select i1 %96, i64 12, i64 268
  %97 = add i64 %60, %.v
  store i64 %97, i64* %PC, align 8, !tbaa !2428
  br i1 %96, label %block_400a86, label %block_400b86

block_400a99:                                     ; preds = %block_400a8d
  %98 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 8) to i64*), align 8
  %99 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %98, i64* %99, align 1, !tbaa !2452
  store double 0.000000e+00, double* %51, align 1, !tbaa !2452
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 16) to i64*), align 16
  %101 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %100, i64* %101, align 1, !tbaa !2452
  store double 0.000000e+00, double* %54, align 1, !tbaa !2452
  %102 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 24) to double*), align 8
  store double %102, double* %55, align 1, !tbaa !2452
  store double 0.000000e+00, double* %57, align 1, !tbaa !2452
  %103 = add i64 %402, -36
  %104 = add i64 %438, 27
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RAX, align 8, !tbaa !2428
  %108 = sitofp i32 %106 to double
  store double %108, double* %58, align 1, !tbaa !2452
  %109 = add i64 %438, 34
  store i64 %109, i64* %PC, align 8
  %110 = load i32, i32* %405, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = icmp eq i32 %110, -1
  %114 = icmp eq i32 %111, 0
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %43, align 1, !tbaa !2432
  %117 = and i32 %111, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #8
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %44, align 1, !tbaa !2446
  %122 = xor i32 %110, %111
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %45, align 1, !tbaa !2450
  %126 = zext i1 %114 to i8
  store i8 %126, i8* %46, align 1, !tbaa !2447
  %127 = lshr i32 %111, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %47, align 1, !tbaa !2448
  %129 = lshr i32 %110, 31
  %130 = xor i32 %127, %129
  %131 = add nuw nsw i32 %130, %127
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %48, align 1, !tbaa !2449
  %134 = sitofp i32 %111 to double
  store double %134, double* %59, align 1, !tbaa !2452
  %135 = fmul double %108, %134
  %136 = fadd double %135, %102
  store double %136, double* %58, align 1, !tbaa !2452
  %137 = add i64 %438, 52
  store i64 %137, i64* %PC, align 8
  %138 = load i32, i32* %410, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = sitofp i32 %138 to double
  store double %140, double* %55, align 1, !tbaa !2452
  %141 = fdiv double %136, %140
  store double %141, double* %58, align 1, !tbaa !2452
  %142 = add i64 %402, -16
  %143 = add i64 %438, 64
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -36
  %148 = add i64 %438, 68
  store i64 %148, i64* %PC, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = shl nsw i64 %151, 13
  store i64 %152, i64* %RDX, align 8, !tbaa !2428
  %153 = lshr i64 %151, 50
  %154 = and i64 %153, 1
  %155 = add i64 %152, %145
  store i64 %155, i64* %RCX, align 8, !tbaa !2428
  %156 = icmp ult i64 %155, %145
  %157 = icmp ult i64 %155, %152
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %43, align 1, !tbaa !2432
  %160 = trunc i64 %155 to i32
  %161 = and i32 %160, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #8
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %44, align 1, !tbaa !2446
  %166 = xor i64 %145, %155
  %167 = lshr i64 %166, 4
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %45, align 1, !tbaa !2450
  %170 = icmp eq i64 %155, 0
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %46, align 1, !tbaa !2447
  %172 = lshr i64 %155, 63
  %173 = trunc i64 %172 to i8
  store i8 %173, i8* %47, align 1, !tbaa !2448
  %174 = lshr i64 %145, 63
  %175 = xor i64 %172, %174
  %176 = xor i64 %172, %154
  %177 = add nuw nsw i64 %175, %176
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %48, align 1, !tbaa !2449
  %180 = add i64 %146, -40
  %181 = add i64 %438, 79
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %155
  %187 = add i64 %438, 84
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to double*
  store double %141, double* %188, align 8
  %189 = load i64, i64* %RBP, align 8
  %190 = add i64 %189, -36
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = sitofp i32 %194 to double
  store double %196, double* %55, align 1, !tbaa !2452
  %197 = add i64 %189, -40
  %198 = add i64 %191, 10
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = add i32 %200, 2
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RAX, align 8, !tbaa !2428
  %203 = icmp ugt i32 %200, -3
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %43, align 1, !tbaa !2432
  %205 = and i32 %201, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205) #8
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %44, align 1, !tbaa !2446
  %210 = xor i32 %200, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %45, align 1, !tbaa !2450
  %214 = icmp eq i32 %201, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %46, align 1, !tbaa !2447
  %216 = lshr i32 %201, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %47, align 1, !tbaa !2448
  %218 = lshr i32 %200, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %216
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %48, align 1, !tbaa !2449
  %223 = sitofp i32 %201 to double
  store double %223, double* %58, align 1, !tbaa !2452
  %224 = fmul double %196, %223
  %225 = load double, double* %52, align 1
  %226 = fadd double %224, %225
  store double %226, double* %55, align 1, !tbaa !2452
  %227 = add i64 %189, -4
  %228 = add i64 %191, 28
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = sitofp i32 %230 to double
  store double %232, double* %52, align 1, !tbaa !2452
  %233 = fdiv double %226, %232
  store double %233, double* %55, align 1, !tbaa !2452
  %234 = add i64 %189, -24
  %235 = add i64 %191, 40
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RCX, align 8, !tbaa !2428
  %238 = add i64 %191, 44
  store i64 %238, i64* %PC, align 8
  %239 = load i32, i32* %193, align 4
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 13
  store i64 %241, i64* %RDX, align 8, !tbaa !2428
  %242 = lshr i64 %240, 50
  %243 = and i64 %242, 1
  %244 = add i64 %241, %237
  store i64 %244, i64* %RCX, align 8, !tbaa !2428
  %245 = icmp ult i64 %244, %237
  %246 = icmp ult i64 %244, %241
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %43, align 1, !tbaa !2432
  %249 = trunc i64 %244 to i32
  %250 = and i32 %249, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %44, align 1, !tbaa !2446
  %255 = xor i64 %237, %244
  %256 = lshr i64 %255, 4
  %257 = trunc i64 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %45, align 1, !tbaa !2450
  %259 = icmp eq i64 %244, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %46, align 1, !tbaa !2447
  %261 = lshr i64 %244, 63
  %262 = trunc i64 %261 to i8
  store i8 %262, i8* %47, align 1, !tbaa !2448
  %263 = lshr i64 %237, 63
  %264 = xor i64 %261, %263
  %265 = xor i64 %261, %243
  %266 = add nuw nsw i64 %264, %265
  %267 = icmp eq i64 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %48, align 1, !tbaa !2449
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -40
  %271 = add i64 %191, 55
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RDX, align 8, !tbaa !2428
  %275 = shl nsw i64 %274, 3
  %276 = add i64 %275, %244
  %277 = add i64 %191, 60
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to double*
  store double %233, double* %278, align 8
  %279 = load i64, i64* %RBP, align 8
  %280 = add i64 %279, -36
  %281 = load i64, i64* %PC, align 8
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %280 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX, align 8, !tbaa !2428
  %286 = sitofp i32 %284 to double
  store double %286, double* %52, align 1, !tbaa !2452
  %287 = add i64 %279, -40
  %288 = add i64 %281, 10
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, 3
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = icmp ugt i32 %290, -4
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %43, align 1, !tbaa !2432
  %295 = and i32 %291, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #8
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %44, align 1, !tbaa !2446
  %300 = xor i32 %290, %291
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %45, align 1, !tbaa !2450
  %304 = icmp eq i32 %291, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %46, align 1, !tbaa !2447
  %306 = lshr i32 %291, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %47, align 1, !tbaa !2448
  %308 = lshr i32 %290, 31
  %309 = xor i32 %306, %308
  %310 = add nuw nsw i32 %309, %306
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %48, align 1, !tbaa !2449
  %313 = sitofp i32 %291 to double
  store double %313, double* %55, align 1, !tbaa !2452
  %314 = fmul double %286, %313
  %315 = load double, double* %49, align 1
  %316 = fadd double %314, %315
  store double %316, double* %52, align 1, !tbaa !2452
  %317 = add i64 %279, -4
  %318 = add i64 %281, 28
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = sitofp i32 %320 to double
  store double %322, double* %49, align 1, !tbaa !2452
  %323 = fdiv double %316, %322
  store double %323, double* %52, align 1, !tbaa !2452
  %324 = add i64 %279, -32
  %325 = add i64 %281, 40
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i64*
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %RCX, align 8, !tbaa !2428
  %328 = add i64 %281, 44
  store i64 %328, i64* %PC, align 8
  %329 = load i32, i32* %283, align 4
  %330 = sext i32 %329 to i64
  %331 = shl nsw i64 %330, 13
  store i64 %331, i64* %RDX, align 8, !tbaa !2428
  %332 = lshr i64 %330, 50
  %333 = and i64 %332, 1
  %334 = add i64 %331, %327
  store i64 %334, i64* %RCX, align 8, !tbaa !2428
  %335 = icmp ult i64 %334, %327
  %336 = icmp ult i64 %334, %331
  %337 = or i1 %335, %336
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %43, align 1, !tbaa !2432
  %339 = trunc i64 %334 to i32
  %340 = and i32 %339, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340) #8
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %44, align 1, !tbaa !2446
  %345 = xor i64 %327, %334
  %346 = lshr i64 %345, 4
  %347 = trunc i64 %346 to i8
  %348 = and i8 %347, 1
  store i8 %348, i8* %45, align 1, !tbaa !2450
  %349 = icmp eq i64 %334, 0
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %46, align 1, !tbaa !2447
  %351 = lshr i64 %334, 63
  %352 = trunc i64 %351 to i8
  store i8 %352, i8* %47, align 1, !tbaa !2448
  %353 = lshr i64 %327, 63
  %354 = xor i64 %351, %353
  %355 = xor i64 %351, %333
  %356 = add nuw nsw i64 %354, %355
  %357 = icmp eq i64 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %48, align 1, !tbaa !2449
  %359 = load i64, i64* %RBP, align 8
  %360 = add i64 %359, -40
  %361 = add i64 %281, 55
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RDX, align 8, !tbaa !2428
  %365 = shl nsw i64 %364, 3
  %366 = add i64 %365, %334
  %367 = add i64 %281, 60
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to double*
  store double %323, double* %368, align 8
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -40
  %371 = load i64, i64* %PC, align 8
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %43, align 1, !tbaa !2432
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #8
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %44, align 1, !tbaa !2446
  %386 = xor i32 %374, %375
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %45, align 1, !tbaa !2450
  %390 = zext i1 %378 to i8
  store i8 %390, i8* %46, align 1, !tbaa !2447
  %391 = lshr i32 %375, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %47, align 1, !tbaa !2448
  %393 = lshr i32 %374, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %391
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %48, align 1, !tbaa !2449
  %398 = add i64 %371, 9
  store i64 %398, i64* %PC, align 8
  store i32 %375, i32* %373, align 4
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, -225
  store i64 %400, i64* %PC, align 8, !tbaa !2428
  br label %block_400a8d

block_400a8d:                                     ; preds = %block_400a86, %block_400a99
  %401 = phi i64 [ %.pre1, %block_400a86 ], [ %400, %block_400a99 ]
  %402 = load i64, i64* %RBP, align 8
  %403 = add i64 %402, -40
  %404 = add i64 %401, 3
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX, align 8, !tbaa !2428
  %408 = add i64 %402, -4
  %409 = add i64 %401, 6
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sub i32 %406, %411
  %413 = icmp ult i32 %406, %411
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %43, align 1, !tbaa !2432
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415) #8
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %44, align 1, !tbaa !2446
  %420 = xor i32 %411, %406
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %45, align 1, !tbaa !2450
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %46, align 1, !tbaa !2447
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %47, align 1, !tbaa !2448
  %429 = lshr i32 %406, 31
  %430 = lshr i32 %411, 31
  %431 = xor i32 %430, %429
  %432 = xor i32 %427, %429
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %48, align 1, !tbaa !2449
  %436 = icmp ne i8 %428, 0
  %437 = xor i1 %436, %434
  %.v2 = select i1 %437, i64 12, i64 230
  %438 = add i64 %401, %.v2
  store i64 %438, i64* %PC, align 8, !tbaa !2428
  br i1 %437, label %block_400a99, label %block_400b73

block_400a86:                                     ; preds = %block_400a7a
  %439 = add i64 %61, -40
  %440 = add i64 %97, 7
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  store i32 0, i32* %441, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400a8d

block_400b86:                                     ; preds = %block_400a7a
  %442 = add i64 %97, 1
  store i64 %442, i64* %PC, align 8
  %443 = load i64, i64* %11, align 8, !tbaa !2428
  %444 = add i64 %443, 8
  %445 = inttoptr i64 %443 to i64*
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %RBP, align 8, !tbaa !2428
  store i64 %444, i64* %11, align 8, !tbaa !2428
  %447 = add i64 %97, 2
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %444 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  %450 = add i64 %443, 16
  store i64 %450, i64* %11, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400b73:                                     ; preds = %block_400a8d
  %451 = add i64 %402, -36
  %452 = add i64 %438, 8
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = add i32 %454, 1
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = icmp eq i32 %454, -1
  %458 = icmp eq i32 %455, 0
  %459 = or i1 %457, %458
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %43, align 1, !tbaa !2432
  %461 = and i32 %455, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461) #8
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %44, align 1, !tbaa !2446
  %466 = xor i32 %454, %455
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %45, align 1, !tbaa !2450
  %470 = zext i1 %458 to i8
  store i8 %470, i8* %46, align 1, !tbaa !2447
  %471 = lshr i32 %455, 31
  %472 = trunc i32 %471 to i8
  store i8 %472, i8* %47, align 1, !tbaa !2448
  %473 = lshr i32 %454, 31
  %474 = xor i32 %471, %473
  %475 = add nuw nsw i32 %474, %471
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %48, align 1, !tbaa !2449
  %478 = add i64 %438, 14
  store i64 %478, i64* %PC, align 8
  store i32 %455, i32* %453, align 4
  %479 = load i64, i64* %PC, align 8
  %480 = add i64 %479, -263
  store i64 %480, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7a
}

; Function Attrs: noinline
define %struct.Memory* @sub_401140_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401140:
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
  %42 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %43 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 32) to i64*), align 16
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
  br label %block_401167

block_40117a:                                     ; preds = %block_40122f, %block_401173
  %86 = phi i64 [ %.pre6, %block_401173 ], [ %215, %block_40122f ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_401173 ], [ %378, %block_40122f ]
  %87 = load i64, i64* %RBP, align 8
  %88 = add i64 %87, -32
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
  store i8 %99, i8* %16, align 1, !tbaa !2432
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100) #8
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %23, align 1, !tbaa !2446
  %105 = xor i32 %96, %91
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %29, align 1, !tbaa !2450
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %32, align 1, !tbaa !2447
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %35, align 1, !tbaa !2448
  %114 = lshr i32 %91, 31
  %115 = lshr i32 %96, 31
  %116 = xor i32 %115, %114
  %117 = xor i32 %112, %114
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %41, align 1, !tbaa !2449
  %121 = icmp ne i8 %113, 0
  %122 = xor i1 %121, %119
  %.v9 = select i1 %122, i64 12, i64 200
  %123 = add i64 %86, %.v9
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  br i1 %122, label %block_401186, label %block_401242

block_401255:                                     ; preds = %block_401167
  %124 = add i64 %454, -4
  %125 = add i64 %490, 7
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 1, i32* %126, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_40125c

block_401173:                                     ; preds = %block_401167
  %127 = add i64 %454, -32
  %128 = add i64 %490, 7
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 0, i32* %129, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40117a

block_4011ea:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 122), i64* %RSI, align 8, !tbaa !2428
  %130 = load i64, i64* @stderr, align 128
  store i64 %130, i64* %RDI, align 8, !tbaa !2428
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -28
  %133 = add i64 %383, 21
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RDX, align 8, !tbaa !2428
  %137 = add i64 %131, -32
  %138 = add i64 %383, 24
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RCX, align 8, !tbaa !2428
  %142 = add i64 %131, -48
  %143 = add i64 %383, 29
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %147 = add i64 %383, 33
  store i64 %147, i64* %PC, align 8
  %148 = load i32, i32* %134, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %146, align 8, !tbaa !2428
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %151 = add i64 %383, 37
  store i64 %151, i64* %PC, align 8
  %152 = load i32, i32* %139, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %150, align 8, !tbaa !2428
  %154 = add i64 %131, -56
  %155 = add i64 %383, 42
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %79, align 1, !tbaa !2452
  %158 = bitcast i64* %77 to double*
  store double 0.000000e+00, double* %158, align 1, !tbaa !2452
  %159 = add i64 %131, -40
  %160 = add i64 %383, 47
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %162, i64* %163, align 1, !tbaa !2452
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %165 = bitcast i64* %164 to double*
  store double 0.000000e+00, double* %165, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2454
  %166 = add i64 %383, -3050
  %167 = add i64 %383, 54
  %168 = load i64, i64* %RSP, align 8, !tbaa !2428
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %170, align 8
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  store i64 %166, i64* %PC, align 8, !tbaa !2428
  %171 = tail call fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State* nonnull %0, %struct.Memory* %378)
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, 7
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %173 to i32*
  store i32 0, i32* %176, align 4
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -68
  %179 = load i32, i32* %EAX, align 4
  %180 = load i64, i64* %PC, align 8
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %182, align 4
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 50
  store i64 %184, i64* %PC, align 8, !tbaa !2428
  br label %block_40125c

block_40122f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -32
  %187 = add i64 %383, 8
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, 1
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX, align 8, !tbaa !2428
  %192 = icmp eq i32 %189, -1
  %193 = icmp eq i32 %190, 0
  %194 = or i1 %192, %193
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %16, align 1, !tbaa !2432
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196) #8
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %23, align 1, !tbaa !2446
  %201 = xor i32 %189, %190
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %29, align 1, !tbaa !2450
  %205 = zext i1 %193 to i8
  store i8 %205, i8* %32, align 1, !tbaa !2447
  %206 = lshr i32 %190, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %35, align 1, !tbaa !2448
  %208 = lshr i32 %189, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %41, align 1, !tbaa !2449
  %213 = add i64 %383, 14
  store i64 %213, i64* %PC, align 8
  store i32 %190, i32* %188, align 4
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, -195
  store i64 %215, i64* %PC, align 8, !tbaa !2428
  br label %block_40117a

block_401186:                                     ; preds = %block_40117a
  %216 = add i64 %87, -16
  %217 = add i64 %123, 4
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = add i64 %87, -28
  %221 = add i64 %123, 8
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 13
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  %226 = lshr i64 %224, 50
  %227 = and i64 %226, 1
  %228 = add i64 %225, %219
  store i64 %228, i64* %RAX, align 8, !tbaa !2428
  %229 = icmp ult i64 %228, %219
  %230 = icmp ult i64 %228, %225
  %231 = or i1 %229, %230
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %16, align 1, !tbaa !2432
  %233 = trunc i64 %228 to i32
  %234 = and i32 %233, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234) #8
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %23, align 1, !tbaa !2446
  %239 = xor i64 %219, %228
  %240 = lshr i64 %239, 4
  %241 = trunc i64 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %29, align 1, !tbaa !2450
  %243 = icmp eq i64 %228, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %32, align 1, !tbaa !2447
  %245 = lshr i64 %228, 63
  %246 = trunc i64 %245 to i8
  store i8 %246, i8* %35, align 1, !tbaa !2448
  %247 = lshr i64 %219, 63
  %248 = xor i64 %245, %247
  %249 = xor i64 %245, %227
  %250 = add nuw nsw i64 %248, %249
  %251 = icmp eq i64 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %41, align 1, !tbaa !2449
  %253 = add i64 %123, 19
  store i64 %253, i64* %PC, align 8
  %254 = load i32, i32* %90, align 4
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %RCX, align 8, !tbaa !2428
  %256 = shl nsw i64 %255, 3
  %257 = add i64 %256, %228
  %258 = add i64 %123, 24
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %261 = add i64 %87, -48
  %262 = add i64 %123, 29
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i64*
  store i64 %260, i64* %263, align 8
  %264 = load i64, i64* %RBP, align 8
  %265 = add i64 %264, -24
  %266 = load i64, i64* %PC, align 8
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %265 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX, align 8, !tbaa !2428
  %270 = add i64 %264, -28
  %271 = add i64 %266, 8
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = shl nsw i64 %274, 13
  store i64 %275, i64* %RCX, align 8, !tbaa !2428
  %276 = lshr i64 %274, 50
  %277 = and i64 %276, 1
  %278 = add i64 %275, %269
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = icmp ult i64 %278, %269
  %280 = icmp ult i64 %278, %275
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %16, align 1, !tbaa !2432
  %283 = trunc i64 %278 to i32
  %284 = and i32 %283, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #8
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %23, align 1, !tbaa !2446
  %289 = xor i64 %269, %278
  %290 = lshr i64 %289, 4
  %291 = trunc i64 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %29, align 1, !tbaa !2450
  %293 = icmp eq i64 %278, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %32, align 1, !tbaa !2447
  %295 = lshr i64 %278, 63
  %296 = trunc i64 %295 to i8
  store i8 %296, i8* %35, align 1, !tbaa !2448
  %297 = lshr i64 %269, 63
  %298 = xor i64 %295, %297
  %299 = xor i64 %295, %277
  %300 = add nuw nsw i64 %298, %299
  %301 = icmp eq i64 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %41, align 1, !tbaa !2449
  %303 = add i64 %264, -32
  %304 = add i64 %266, 19
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RCX, align 8, !tbaa !2428
  %308 = shl nsw i64 %307, 3
  %309 = add i64 %308, %278
  %310 = add i64 %266, 24
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %45, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %313 = add i64 %264, -56
  %314 = add i64 %266, 29
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  store i64 %312, i64* %315, align 8
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -48
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %317 to double*
  %321 = load double, double* %320, align 8
  store double %321, double* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %322 = add i64 %316, -56
  %323 = add i64 %318, 10
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to double*
  %325 = load double, double* %324, align 8
  %326 = fsub double %321, %325
  %327 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 48) to i32*), align 16
  %328 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 52) to i32*), align 4
  %329 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 56) to i32*), align 8
  %330 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 60) to i32*), align 4
  %331 = bitcast %union.VectorReg* %6 to i32*
  store i32 %327, i32* %331, align 1, !tbaa !2455
  %332 = bitcast i8* %76 to i32*
  store i32 %328, i32* %332, align 1, !tbaa !2455
  %333 = bitcast i64* %77 to i32*
  store i32 %329, i32* %333, align 1, !tbaa !2455
  %334 = bitcast i8* %78 to i32*
  store i32 %330, i32* %334, align 1, !tbaa !2455
  %335 = bitcast double %326 to i64
  %336 = load i64, i64* %79, align 1
  %337 = and i64 %336, %335
  %338 = trunc i64 %337 to i32
  %339 = lshr i64 %337, 32
  %340 = trunc i64 %339 to i32
  store i32 %338, i32* %80, align 1, !tbaa !2451
  store i32 %340, i32* %82, align 1, !tbaa !2451
  store i32 0, i32* %83, align 1, !tbaa !2451
  store i32 0, i32* %85, align 1, !tbaa !2451
  %341 = add i64 %316, -64
  %342 = add i64 %318, 26
  store i64 %342, i64* %PC, align 8
  %343 = load i64, i64* %45, align 1
  %344 = inttoptr i64 %341 to i64*
  store i64 %343, i64* %344, align 8
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -64
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %346 to double*
  %350 = load double, double* %349, align 8
  store double %350, double* %44, align 1, !tbaa !2452
  store double 0.000000e+00, double* %47, align 1, !tbaa !2452
  %351 = add i64 %345, -40
  %352 = add i64 %347, 10
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to double*
  %354 = load double, double* %353, align 8
  %355 = fcmp uno double %350, %354
  br i1 %355, label %356, label %366

; <label>:356:                                    ; preds = %block_401186
  %357 = fadd double %350, %354
  %358 = bitcast double %357 to i64
  %359 = and i64 %358, 9221120237041090560
  %360 = icmp eq i64 %359, 9218868437227405312
  %361 = and i64 %358, 2251799813685247
  %362 = icmp ne i64 %361, 0
  %363 = and i1 %360, %362
  br i1 %363, label %364, label %372

; <label>:364:                                    ; preds = %356
  %365 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %352, %struct.Memory* %MEMORY.0) #9
  %.pre7 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:366:                                    ; preds = %block_401186
  %367 = fcmp ogt double %350, %354
  br i1 %367, label %372, label %368

; <label>:368:                                    ; preds = %366
  %369 = fcmp olt double %350, %354
  br i1 %369, label %372, label %370

; <label>:370:                                    ; preds = %368
  %371 = fcmp oeq double %350, %354
  br i1 %371, label %372, label %376

; <label>:372:                                    ; preds = %370, %368, %366, %356
  %373 = phi i8 [ 0, %366 ], [ 0, %368 ], [ 1, %370 ], [ 1, %356 ]
  %374 = phi i8 [ 0, %366 ], [ 0, %368 ], [ 0, %370 ], [ 1, %356 ]
  %375 = phi i8 [ 0, %366 ], [ 1, %368 ], [ 0, %370 ], [ 1, %356 ]
  store i8 %373, i8* %32, align 1, !tbaa !2454
  store i8 %374, i8* %23, align 1, !tbaa !2454
  store i8 %375, i8* %16, align 1, !tbaa !2454
  br label %376

; <label>:376:                                    ; preds = %372, %370
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %376, %364
  %377 = phi i64 [ %.pre7, %364 ], [ %352, %376 ]
  %378 = phi %struct.Memory* [ %365, %364 ], [ %MEMORY.0, %376 ]
  %379 = load i8, i8* %16, align 1, !tbaa !2432
  %380 = load i8, i8* %32, align 1, !tbaa !2447
  %381 = or i8 %380, %379
  %382 = icmp ne i8 %381, 0
  %.v10 = select i1 %382, i64 75, i64 6
  %383 = add i64 %377, %.v10
  store i64 %383, i64* %PC, align 8, !tbaa !2428
  br i1 %382, label %block_40122f, label %block_4011ea

block_40125c:                                     ; preds = %block_4011ea, %block_401255
  %384 = phi i64 [ %.pre8, %block_401255 ], [ %184, %block_4011ea ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_401255 ], [ %171, %block_4011ea ]
  %385 = load i64, i64* %RBP, align 8
  %386 = add i64 %385, -4
  %387 = add i64 %384, 3
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = load i64, i64* %RSP, align 8
  %392 = add i64 %391, 80
  store i64 %392, i64* %RSP, align 8, !tbaa !2428
  %393 = icmp ugt i64 %391, -81
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %16, align 1, !tbaa !2432
  %395 = trunc i64 %392 to i32
  %396 = and i32 %395, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396) #8
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %23, align 1, !tbaa !2446
  %401 = xor i64 %391, 16
  %402 = xor i64 %401, %392
  %403 = lshr i64 %402, 4
  %404 = trunc i64 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %29, align 1, !tbaa !2450
  %406 = icmp eq i64 %392, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %32, align 1, !tbaa !2447
  %408 = lshr i64 %392, 63
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %35, align 1, !tbaa !2448
  %410 = lshr i64 %391, 63
  %411 = xor i64 %408, %410
  %412 = add nuw nsw i64 %411, %408
  %413 = icmp eq i64 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %41, align 1, !tbaa !2449
  %415 = add i64 %384, 8
  store i64 %415, i64* %PC, align 8
  %416 = add i64 %391, 88
  %417 = inttoptr i64 %392 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RBP, align 8, !tbaa !2428
  store i64 %416, i64* %RSP, align 8, !tbaa !2428
  %419 = add i64 %384, 9
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %416 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %PC, align 8, !tbaa !2428
  %422 = add i64 %391, 96
  store i64 %422, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_401242:                                     ; preds = %block_40117a
  %423 = add i64 %87, -28
  %424 = add i64 %123, 8
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = add i32 %426, 1
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = icmp eq i32 %426, -1
  %430 = icmp eq i32 %427, 0
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %16, align 1, !tbaa !2432
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #8
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %23, align 1, !tbaa !2446
  %438 = xor i32 %426, %427
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %29, align 1, !tbaa !2450
  %442 = zext i1 %430 to i8
  store i8 %442, i8* %32, align 1, !tbaa !2447
  %443 = lshr i32 %427, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %35, align 1, !tbaa !2448
  %445 = lshr i32 %426, 31
  %446 = xor i32 %443, %445
  %447 = add nuw nsw i32 %446, %443
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %41, align 1, !tbaa !2449
  %450 = add i64 %123, 14
  store i64 %450, i64* %PC, align 8
  store i32 %427, i32* %425, align 4
  %451 = load i64, i64* %PC, align 8
  %452 = add i64 %451, -233
  store i64 %452, i64* %PC, align 8, !tbaa !2428
  br label %block_401167

block_401167:                                     ; preds = %block_401242, %block_401140
  %453 = phi i64 [ %.pre, %block_401140 ], [ %452, %block_401242 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_401140 ], [ %MEMORY.0, %block_401242 ]
  %454 = load i64, i64* %RBP, align 8
  %455 = add i64 %454, -28
  %456 = add i64 %453, 3
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX, align 8, !tbaa !2428
  %460 = add i64 %454, -8
  %461 = add i64 %453, 6
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = sub i32 %458, %463
  %465 = icmp ult i32 %458, %463
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %16, align 1, !tbaa !2432
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467) #8
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %23, align 1, !tbaa !2446
  %472 = xor i32 %463, %458
  %473 = xor i32 %472, %464
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %29, align 1, !tbaa !2450
  %477 = icmp eq i32 %464, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %32, align 1, !tbaa !2447
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %35, align 1, !tbaa !2448
  %481 = lshr i32 %458, 31
  %482 = lshr i32 %463, 31
  %483 = xor i32 %482, %481
  %484 = xor i32 %479, %481
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %41, align 1, !tbaa !2449
  %488 = icmp ne i8 %480, 0
  %489 = xor i1 %488, %486
  %.v = select i1 %489, i64 12, i64 238
  %490 = add i64 %453, %.v
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  br i1 %489, label %block_401173, label %block_401255
}

; Function Attrs: noinline
define %struct.Memory* @sub_401564__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401564:
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
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
define %struct.Memory* @sub_401270_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401270:
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
  %57 = lshr i32 %55, 27
  %58 = and i32 %57, 1
  %59 = or i32 %56, 1
  store i8 0, i8* %14, align 1, !tbaa !2432
  %60 = and i32 %59, 241
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60) #8
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %65 = trunc i32 %58 to i8
  store i8 %65, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %39, align 1, !tbaa !2449
  %66 = sext i32 %59 to i64
  store i64 %66, i64* %RDI, align 8, !tbaa !2428
  %67 = add i64 %52, -3183
  %68 = add i64 %52, 17
  %69 = load i64, i64* %RSP, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %RSP, align 8, !tbaa !2428
  store i64 %67, i64* %PC, align 8, !tbaa !2428
  %72 = tail call fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -32
  %75 = load i64, i64* %RAX, align 8
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78, align 8
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -32
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %80 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = add i64 %79, -4
  %86 = add i64 %81, 7
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = lshr i32 %88, 28
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %14, align 1, !tbaa !2454
  %94 = and i32 %89, 240
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #8
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %21, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %99 = icmp eq i32 %89, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %30, align 1, !tbaa !2454
  %101 = lshr i32 %88, 27
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %104 = sext i32 %89 to i64
  store i64 %104, i64* %RSI, align 8, !tbaa !2428
  %105 = add i64 %104, %84
  %106 = add i64 %81, 17
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i8*
  store i8 0, i8* %107, align 1
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -20
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i32*
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %114 = bitcast i64* %113 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4012ac

block_4012bf:                                     ; preds = %block_4012cb, %block_4012b8
  %115 = phi i64 [ %.pre2, %block_4012b8 ], [ %342, %block_4012cb ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4012b8 ], [ %310, %block_4012cb ]
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -24
  %118 = add i64 %115, 3
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = add i64 %116, -4
  %123 = add i64 %115, 6
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %120, %125
  %127 = icmp ult i32 %120, %125
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %14, align 1, !tbaa !2432
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129) #8
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %21, align 1, !tbaa !2446
  %134 = xor i32 %125, %120
  %135 = xor i32 %134, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %27, align 1, !tbaa !2450
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %30, align 1, !tbaa !2447
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %33, align 1, !tbaa !2448
  %143 = lshr i32 %120, 31
  %144 = lshr i32 %125, 31
  %145 = xor i32 %144, %143
  %146 = xor i32 %141, %143
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %39, align 1, !tbaa !2449
  %150 = icmp ne i8 %142, 0
  %151 = xor i1 %150, %148
  %.v3 = select i1 %151, i64 12, i64 67
  %152 = add i64 %115, %.v3
  store i64 %152, i64* %PC, align 8, !tbaa !2428
  br i1 %151, label %block_4012cb, label %block_401302

block_4012b8:                                     ; preds = %block_4012ac
  %153 = add i64 %157, -24
  %154 = add i64 %193, 7
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 0, i32* %155, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4012bf

block_4012ac:                                     ; preds = %block_401302, %block_401270
  %156 = phi i64 [ %.pre, %block_401270 ], [ %391, %block_401302 ]
  %MEMORY.1 = phi %struct.Memory* [ %72, %block_401270 ], [ %353, %block_401302 ]
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -20
  %159 = add i64 %156, 3
  store i64 %159, i64* %PC, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = add i64 %157, -4
  %164 = add i64 %156, 6
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %161, %166
  %168 = icmp ult i32 %161, %166
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %14, align 1, !tbaa !2432
  %170 = and i32 %167, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170) #8
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1, !tbaa !2446
  %175 = xor i32 %166, %161
  %176 = xor i32 %175, %167
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %27, align 1, !tbaa !2450
  %180 = icmp eq i32 %167, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %30, align 1, !tbaa !2447
  %182 = lshr i32 %167, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %33, align 1, !tbaa !2448
  %184 = lshr i32 %161, 31
  %185 = lshr i32 %166, 31
  %186 = xor i32 %185, %184
  %187 = xor i32 %182, %184
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %39, align 1, !tbaa !2449
  %191 = icmp ne i8 %183, 0
  %192 = xor i1 %191, %189
  %.v = select i1 %192, i64 12, i64 120
  %193 = add i64 %156, %.v
  store i64 %193, i64* %PC, align 8, !tbaa !2428
  br i1 %192, label %block_4012b8, label %block_401324

block_401324:                                     ; preds = %block_4012ac
  %194 = add i64 %157, -32
  %195 = add i64 %193, 4
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RDI, align 8, !tbaa !2428
  %198 = add i64 %193, -3428
  %199 = add i64 %193, 9
  %200 = load i64, i64* %RSP, align 8, !tbaa !2428
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %199, i64* %202, align 8
  store i64 %201, i64* %RSP, align 8, !tbaa !2428
  store i64 %198, i64* %PC, align 8, !tbaa !2428
  %203 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %204 = load i64, i64* %RSP, align 8
  %205 = load i64, i64* %PC, align 8
  %206 = add i64 %204, 48
  store i64 %206, i64* %RSP, align 8, !tbaa !2428
  %207 = icmp ugt i64 %204, -49
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %14, align 1, !tbaa !2432
  %209 = trunc i64 %206 to i32
  %210 = and i32 %209, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210) #8
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1, !tbaa !2446
  %215 = xor i64 %204, 16
  %216 = xor i64 %215, %206
  %217 = lshr i64 %216, 4
  %218 = trunc i64 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %27, align 1, !tbaa !2450
  %220 = icmp eq i64 %206, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %30, align 1, !tbaa !2447
  %222 = lshr i64 %206, 63
  %223 = trunc i64 %222 to i8
  store i8 %223, i8* %33, align 1, !tbaa !2448
  %224 = lshr i64 %204, 63
  %225 = xor i64 %222, %224
  %226 = add nuw nsw i64 %225, %222
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %39, align 1, !tbaa !2449
  %229 = add i64 %205, 5
  store i64 %229, i64* %PC, align 8
  %230 = add i64 %204, 56
  %231 = inttoptr i64 %206 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RBP, align 8, !tbaa !2428
  store i64 %230, i64* %RSP, align 8, !tbaa !2428
  %233 = add i64 %205, 6
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %230 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %PC, align 8, !tbaa !2428
  %236 = add i64 %204, 64
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %203

block_4012cb:                                     ; preds = %block_4012bf
  %237 = add i64 %116, -16
  %238 = add i64 %152, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = add i64 %116, -20
  %242 = add i64 %152, 8
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = shl nsw i64 %245, 13
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = lshr i64 %245, 50
  %248 = and i64 %247, 1
  %249 = add i64 %246, %240
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = icmp ult i64 %249, %240
  %251 = icmp ult i64 %249, %246
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %14, align 1, !tbaa !2432
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1, !tbaa !2446
  %260 = xor i64 %240, %249
  %261 = lshr i64 %260, 4
  %262 = trunc i64 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1, !tbaa !2450
  %264 = icmp eq i64 %249, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1, !tbaa !2447
  %266 = lshr i64 %249, 63
  %267 = trunc i64 %266 to i8
  store i8 %267, i8* %33, align 1, !tbaa !2448
  %268 = lshr i64 %240, 63
  %269 = xor i64 %266, %268
  %270 = xor i64 %266, %248
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %39, align 1, !tbaa !2449
  %274 = add i64 %152, 19
  store i64 %274, i64* %PC, align 8
  %275 = load i32, i32* %119, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %RCX, align 8, !tbaa !2428
  %277 = shl nsw i64 %276, 3
  %278 = add i64 %277, %249
  %279 = add i64 %152, 24
  store i64 %279, i64* %PC, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %281, i64* %282, align 1, !tbaa !2452
  store double 0.000000e+00, double* %114, align 1, !tbaa !2452
  %283 = add i64 %152, 27
  store i64 %283, i64* %PC, align 8
  %284 = load i32, i32* %119, align 4
  %285 = shl i32 %284, 4
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RDX, align 8, !tbaa !2428
  %287 = lshr i32 %284, 28
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %14, align 1, !tbaa !2454
  %290 = and i32 %285, 240
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290) #8
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %21, align 1, !tbaa !2454
  store i8 0, i8* %27, align 1, !tbaa !2454
  %295 = icmp eq i32 %285, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %30, align 1, !tbaa !2454
  %297 = lshr i32 %284, 27
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %33, align 1, !tbaa !2454
  store i8 0, i8* %39, align 1, !tbaa !2454
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -32
  %302 = add i64 %152, 34
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RSI, align 8, !tbaa !2428
  store i64 %286, i64* %RDI, align 8, !tbaa !2428
  %305 = add i64 %152, 117
  %306 = add i64 %152, 41
  %307 = load i64, i64* %RSP, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %RSP, align 8, !tbaa !2428
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  %310 = tail call %struct.Memory* @sub_401340_print_element_renamed_(%struct.State* nonnull %0, i64 %305, %struct.Memory* %MEMORY.0)
  %311 = load i64, i64* %RBP, align 8
  %312 = add i64 %311, -24
  %313 = load i64, i64* %PC, align 8
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, 1
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX, align 8, !tbaa !2428
  %319 = icmp eq i32 %316, -1
  %320 = icmp eq i32 %317, 0
  %321 = or i1 %319, %320
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %14, align 1, !tbaa !2432
  %323 = and i32 %317, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323) #8
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1, !tbaa !2446
  %328 = xor i32 %316, %317
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %27, align 1, !tbaa !2450
  %332 = zext i1 %320 to i8
  store i8 %332, i8* %30, align 1, !tbaa !2447
  %333 = lshr i32 %317, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %33, align 1, !tbaa !2448
  %335 = lshr i32 %316, 31
  %336 = xor i32 %333, %335
  %337 = add nuw nsw i32 %336, %333
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1, !tbaa !2449
  %340 = add i64 %313, 9
  store i64 %340, i64* %PC, align 8
  store i32 %317, i32* %315, align 4
  %341 = load i64, i64* %PC, align 8
  %342 = add i64 %341, -62
  store i64 %342, i64* %PC, align 8, !tbaa !2428
  br label %block_4012bf

block_401302:                                     ; preds = %block_4012bf
  %343 = add i64 %116, -32
  %344 = add i64 %152, 4
  store i64 %344, i64* %PC, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RDI, align 8, !tbaa !2428
  %347 = load i64, i64* @stderr, align 128
  store i64 %347, i64* %RSI, align 8, !tbaa !2428
  %348 = add i64 %152, -3362
  %349 = add i64 %152, 17
  %350 = load i64, i64* %RSP, align 8, !tbaa !2428
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %349, i64* %352, align 8
  store i64 %351, i64* %RSP, align 8, !tbaa !2428
  store i64 %348, i64* %PC, align 8, !tbaa !2428
  %353 = tail call fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %354 = load i64, i64* %RBP, align 8
  %355 = add i64 %354, -36
  %356 = load i32, i32* %EAX, align 4
  %357 = load i64, i64* %PC, align 8
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %359, align 4
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -20
  %362 = load i64, i64* %PC, align 8
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX, align 8, !tbaa !2428
  %368 = icmp eq i32 %365, -1
  %369 = icmp eq i32 %366, 0
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1, !tbaa !2432
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372) #8
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1, !tbaa !2446
  %377 = xor i32 %365, %366
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %27, align 1, !tbaa !2450
  %381 = zext i1 %369 to i8
  store i8 %381, i8* %30, align 1, !tbaa !2447
  %382 = lshr i32 %366, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %33, align 1, !tbaa !2448
  %384 = lshr i32 %365, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %382
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %39, align 1, !tbaa !2449
  %389 = add i64 %362, 9
  store i64 %389, i64* %PC, align 8
  store i32 %366, i32* %364, align 4
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, -115
  store i64 %391, i64* %PC, align 8, !tbaa !2428
  br label %block_4012ac
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
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
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
  %101 = tail call %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
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
define %struct.Memory* @sub_4014f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4014f0:
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
  %63 = add i64 %38, -3963
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  store i8 %77, i8* %46, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401546, label %block_401526

block_401546:                                     ; preds = %block_401530, %block_4014f0
  %81 = phi i64 [ %80, %block_4014f0 ], [ %179, %block_401530 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4014f0 ], [ %149, %block_401530 ]
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

block_401526:                                     ; preds = %block_4014f0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401530

block_401530:                                     ; preds = %block_401530, %block_401526
  %134 = phi i64 [ 0, %block_401526 ], [ %152, %block_401530 ]
  %135 = phi i64 [ %133, %block_401526 ], [ %179, %block_401530 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401526 ], [ %149, %block_401530 ]
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
  br i1 %169, label %block_401546, label %block_401530
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
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
  store i64 ptrtoint (void ()* @callback_sub_401560___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4014f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
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
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 64), i64* %RDI, align 8, !tbaa !2428
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
  %49 = tail call fastcc %struct.Memory* @ext_602110_printf(%struct.State* nonnull %0, %struct.Memory* %2)
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
  store i64 %10, i64* %PC, align 8, !tbaa !2428
  %14 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* nonnull %0, i64 %10, %struct.Memory* %2)
  %15 = load i64, i64* %PC, align 8
  %16 = add i64 %15, 23
  %17 = add i64 %15, 5
  %18 = load i64, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20, align 8
  store i64 %19, i64* %5, align 8, !tbaa !2428
  store i64 %16, i64* %PC, align 8, !tbaa !2428
  %21 = tail call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* nonnull %0, i64 %16, %struct.Memory* %14)
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
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400910:
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
  %73 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %68, %struct.Memory* %2)
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
  %86 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %81, %struct.Memory* %73)
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
  %99 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %94, %struct.Memory* %86)
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
  %112 = tail call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* nonnull %0, i64 %107, %struct.Memory* %99)
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
  %143 = tail call %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* nonnull %0, i64 %138, %struct.Memory* %112)
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
  %168 = add i64 %146, 495
  %169 = add i64 %146, 23
  %170 = load i64, i64* %RSP, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %RSP, align 8, !tbaa !2428
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  %173 = tail call %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %168, %struct.Memory* %143)
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
  %198 = tail call %struct.Memory* @sub_400a60_init_array_renamed_(%struct.State* nonnull %0, i64 %193, %struct.Memory* %173)
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
  %223 = add i64 %201, 452
  %224 = add i64 %201, 23
  %225 = load i64, i64* %RSP, align 8, !tbaa !2428
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %RSP, align 8, !tbaa !2428
  store i64 %223, i64* %PC, align 8, !tbaa !2428
  %228 = tail call %struct.Memory* @sub_400b90_kernel_adi_renamed_(%struct.State* nonnull %0, i64 %223, %struct.Memory* %198)
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
  %244 = add i64 %231, 1885
  %245 = add i64 %231, 16
  %246 = load i64, i64* %RSP, align 8, !tbaa !2428
  %247 = add i64 %246, -8
  %248 = inttoptr i64 %247 to i64*
  store i64 %245, i64* %248, align 8
  store i64 %247, i64* %RSP, align 8, !tbaa !2428
  store i64 %244, i64* %PC, align 8, !tbaa !2428
  %249 = tail call %struct.Memory* @sub_401140_check_FP_renamed_(%struct.State* nonnull %0, i64 %244, %struct.Memory* %228)
  %250 = load i32, i32* %EAX, align 4
  %251 = load i64, i64* %PC, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %252 = and i32 %250, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #8
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2450
  %257 = icmp eq i32 %250, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %29, align 1, !tbaa !2447
  %259 = lshr i32 %250, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %38, align 1, !tbaa !2449
  %.v = select i1 %257, i64 9, i64 21
  %261 = add i64 %251, %.v
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  %262 = load i64, i64* %RBP, align 8
  br i1 %257, label %block_4009fc, label %block_400a08

block_4009fc:                                     ; preds = %block_400910
  %263 = add i64 %262, -4
  %264 = add i64 %261, 7
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 1, i32* %265, align 4
  %266 = load i64, i64* %PC, align 8
  %267 = add i64 %266, 72
  store i64 %267, i64* %PC, align 8, !tbaa !2428
  br label %block_400a4b

block_400a08:                                     ; preds = %block_400910
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
  %277 = add i64 %261, 2152
  %278 = add i64 %261, 12
  %279 = load i64, i64* %RSP, align 8, !tbaa !2428
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %RSP, align 8, !tbaa !2428
  store i64 %277, i64* %PC, align 8, !tbaa !2428
  %282 = tail call %struct.Memory* @sub_401270_print_array_renamed_(%struct.State* nonnull %0, i64 %277, %struct.Memory* %249)
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
  %294 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %282)
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
  %306 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %294)
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
  %318 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %306)
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
  %330 = tail call fastcc %struct.Memory* @ext_4005c0_free(%struct.State* nonnull %0, %struct.Memory* %318)
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -4
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %332 to i32*
  store i32 0, i32* %335, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a4b

block_400a4b:                                     ; preds = %block_400a08, %block_4009fc
  %336 = phi i64 [ %.pre, %block_400a08 ], [ %267, %block_4009fc ]
  %MEMORY.0 = phi %struct.Memory* [ %330, %block_400a08 ], [ %249, %block_4009fc ]
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
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1, !tbaa !2446
  %353 = xor i64 %343, %344
  %354 = lshr i64 %353, 4
  %355 = trunc i64 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %26, align 1, !tbaa !2450
  %357 = icmp eq i64 %344, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %29, align 1, !tbaa !2447
  %359 = lshr i64 %344, 63
  %360 = trunc i64 %359 to i8
  store i8 %360, i8* %32, align 1, !tbaa !2448
  %361 = lshr i64 %343, 63
  %362 = xor i64 %359, %361
  %363 = add nuw nsw i64 %362, %359
  %364 = icmp eq i64 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %38, align 1, !tbaa !2449
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
define %struct.Memory* @sub_401340_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401340:
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
  store i64 %35, i64* %15, align 1, !tbaa !2452
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %37 = bitcast i64* %36 to double*
  store double 0.000000e+00, double* %37, align 1, !tbaa !2452
  %38 = add i64 %30, -32
  %39 = add i64 %32, 10
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  store i64 %35, i64* %40, align 8
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -32
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i8*
  %46 = load i8, i8* %45, align 1
  %47 = and i8 %46, 15
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %54 = or i8 %47, 48
  %55 = zext i8 %54 to i32
  %56 = zext i8 %54 to i64
  store i64 %56, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %57 = tail call i32 @llvm.ctpop.i32(i32 %55) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %54, i8* %AL, align 1, !tbaa !2454
  %61 = add i64 %41, -24
  %62 = add i64 %43, 17
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RSI, align 8, !tbaa !2428
  %65 = add i64 %41, -12
  %66 = add i64 %43, 21
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %RCX, align 8, !tbaa !2428
  %70 = add i64 %69, %64
  %71 = add i64 %43, 24
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i8*
  store i8 %54, i8* %72, align 1
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -32
  %75 = load i64, i64* %PC, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %74 to i8*
  %78 = load i8, i8* %77, align 1
  %79 = and i8 %78, 15
  %80 = or i8 %79, 48
  %81 = zext i8 %80 to i32
  %82 = zext i8 %80 to i64
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %83 = tail call i32 @llvm.ctpop.i32(i32 %81) #8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %80, i8* %AL, align 1, !tbaa !2454
  %87 = add i64 %73, -24
  %88 = add i64 %75, 17
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = add i64 %73, -12
  %92 = add i64 %75, 21
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %RSI, align 8, !tbaa !2428
  %96 = add i64 %90, 1
  %97 = add i64 %96, %95
  %98 = add i64 %75, 25
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i8*
  store i8 %80, i8* %99, align 1
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -31
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i8*
  %105 = load i8, i8* %104, align 1
  %106 = and i8 %105, 15
  %107 = or i8 %106, 48
  %108 = zext i8 %107 to i32
  %109 = zext i8 %107 to i64
  store i64 %109, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %110 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %107, i8* %AL, align 1, !tbaa !2454
  %114 = add i64 %100, -24
  %115 = add i64 %102, 17
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RCX, align 8, !tbaa !2428
  %118 = add i64 %100, -12
  %119 = add i64 %102, 21
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RSI, align 8, !tbaa !2428
  %123 = add i64 %117, 2
  %124 = add i64 %123, %122
  %125 = add i64 %102, 25
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i8*
  store i8 %107, i8* %126, align 1
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -31
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i8*
  %132 = load i8, i8* %131, align 1
  %133 = and i8 %132, 15
  %134 = or i8 %133, 48
  %135 = zext i8 %134 to i32
  %136 = zext i8 %134 to i64
  store i64 %136, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %137 = tail call i32 @llvm.ctpop.i32(i32 %135) #8
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %134, i8* %AL, align 1, !tbaa !2454
  %141 = add i64 %127, -24
  %142 = add i64 %129, 17
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %RCX, align 8, !tbaa !2428
  %145 = add i64 %127, -12
  %146 = add i64 %129, 21
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %RSI, align 8, !tbaa !2428
  %150 = add i64 %144, 3
  %151 = add i64 %150, %149
  %152 = add i64 %129, 25
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i8*
  store i8 %134, i8* %153, align 1
  %154 = load i64, i64* %RBP, align 8
  %155 = add i64 %154, -30
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %155 to i8*
  %159 = load i8, i8* %158, align 1
  %160 = and i8 %159, 15
  %161 = or i8 %160, 48
  %162 = zext i8 %161 to i32
  %163 = zext i8 %161 to i64
  store i64 %163, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %164 = tail call i32 @llvm.ctpop.i32(i32 %162) #8
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %161, i8* %AL, align 1, !tbaa !2454
  %168 = add i64 %154, -24
  %169 = add i64 %156, 17
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RCX, align 8, !tbaa !2428
  %172 = add i64 %154, -12
  %173 = add i64 %156, 21
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RSI, align 8, !tbaa !2428
  %177 = add i64 %171, 4
  %178 = add i64 %177, %176
  %179 = add i64 %156, 25
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i8*
  store i8 %161, i8* %180, align 1
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -30
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %182 to i8*
  %186 = load i8, i8* %185, align 1
  %187 = and i8 %186, 15
  %188 = or i8 %187, 48
  %189 = zext i8 %188 to i32
  %190 = zext i8 %188 to i64
  store i64 %190, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %191 = tail call i32 @llvm.ctpop.i32(i32 %189) #8
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %188, i8* %AL, align 1, !tbaa !2454
  %195 = add i64 %181, -24
  %196 = add i64 %183, 17
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RCX, align 8, !tbaa !2428
  %199 = add i64 %181, -12
  %200 = add i64 %183, 21
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RSI, align 8, !tbaa !2428
  %204 = add i64 %198, 5
  %205 = add i64 %204, %203
  %206 = add i64 %183, 25
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i8*
  store i8 %188, i8* %207, align 1
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -29
  %210 = load i64, i64* %PC, align 8
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %209 to i8*
  %213 = load i8, i8* %212, align 1
  %214 = and i8 %213, 15
  %215 = or i8 %214, 48
  %216 = zext i8 %215 to i32
  %217 = zext i8 %215 to i64
  store i64 %217, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %218 = tail call i32 @llvm.ctpop.i32(i32 %216) #8
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %215, i8* %AL, align 1, !tbaa !2454
  %222 = add i64 %208, -24
  %223 = add i64 %210, 17
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  %226 = add i64 %208, -12
  %227 = add i64 %210, 21
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %RSI, align 8, !tbaa !2428
  %231 = add i64 %225, 6
  %232 = add i64 %231, %230
  %233 = add i64 %210, 25
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i8*
  store i8 %215, i8* %234, align 1
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -29
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i8*
  %240 = load i8, i8* %239, align 1
  %241 = and i8 %240, 15
  %242 = or i8 %241, 48
  %243 = zext i8 %242 to i32
  %244 = zext i8 %242 to i64
  store i64 %244, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %245 = tail call i32 @llvm.ctpop.i32(i32 %243) #8
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %242, i8* %AL, align 1, !tbaa !2454
  %249 = add i64 %235, -24
  %250 = add i64 %237, 17
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RCX, align 8, !tbaa !2428
  %253 = add i64 %235, -12
  %254 = add i64 %237, 21
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RSI, align 8, !tbaa !2428
  %258 = add i64 %252, 7
  %259 = add i64 %258, %257
  %260 = add i64 %237, 25
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i8*
  store i8 %242, i8* %261, align 1
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -28
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %263 to i8*
  %267 = load i8, i8* %266, align 1
  %268 = and i8 %267, 15
  %269 = or i8 %268, 48
  %270 = zext i8 %269 to i32
  %271 = zext i8 %269 to i64
  store i64 %271, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %272 = tail call i32 @llvm.ctpop.i32(i32 %270) #8
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %269, i8* %AL, align 1, !tbaa !2454
  %276 = add i64 %262, -24
  %277 = add i64 %264, 17
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RCX, align 8, !tbaa !2428
  %280 = add i64 %262, -12
  %281 = add i64 %264, 21
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %279, 8
  %286 = add i64 %285, %284
  %287 = add i64 %264, 25
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i8*
  store i8 %269, i8* %288, align 1
  %289 = load i64, i64* %RBP, align 8
  %290 = add i64 %289, -28
  %291 = load i64, i64* %PC, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %290 to i8*
  %294 = load i8, i8* %293, align 1
  %295 = and i8 %294, 15
  %296 = or i8 %295, 48
  %297 = zext i8 %296 to i32
  %298 = zext i8 %296 to i64
  store i64 %298, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %299 = tail call i32 @llvm.ctpop.i32(i32 %297) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %296, i8* %AL, align 1, !tbaa !2454
  %303 = add i64 %289, -24
  %304 = add i64 %291, 17
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = add i64 %289, -12
  %308 = add i64 %291, 21
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RSI, align 8, !tbaa !2428
  %312 = add i64 %306, 9
  %313 = add i64 %312, %311
  %314 = add i64 %291, 25
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i8*
  store i8 %296, i8* %315, align 1
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -27
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %317 to i8*
  %321 = load i8, i8* %320, align 1
  %322 = and i8 %321, 15
  %323 = or i8 %322, 48
  %324 = zext i8 %323 to i32
  %325 = zext i8 %323 to i64
  store i64 %325, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %326 = tail call i32 @llvm.ctpop.i32(i32 %324) #8
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %323, i8* %AL, align 1, !tbaa !2454
  %330 = add i64 %316, -24
  %331 = add i64 %318, 17
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %RCX, align 8, !tbaa !2428
  %334 = add i64 %316, -12
  %335 = add i64 %318, 21
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = add i64 %333, 10
  %340 = add i64 %339, %338
  %341 = add i64 %318, 25
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i8*
  store i8 %323, i8* %342, align 1
  %343 = load i64, i64* %RBP, align 8
  %344 = add i64 %343, -27
  %345 = load i64, i64* %PC, align 8
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %344 to i8*
  %348 = load i8, i8* %347, align 1
  %349 = and i8 %348, 15
  %350 = or i8 %349, 48
  %351 = zext i8 %350 to i32
  %352 = zext i8 %350 to i64
  store i64 %352, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %353 = tail call i32 @llvm.ctpop.i32(i32 %351) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %350, i8* %AL, align 1, !tbaa !2454
  %357 = add i64 %343, -24
  %358 = add i64 %345, 17
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %343, -12
  %362 = add i64 %345, 21
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = add i64 %360, 11
  %367 = add i64 %366, %365
  %368 = add i64 %345, 25
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i8*
  store i8 %350, i8* %369, align 1
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -26
  %372 = load i64, i64* %PC, align 8
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %371 to i8*
  %375 = load i8, i8* %374, align 1
  %376 = and i8 %375, 15
  %377 = or i8 %376, 48
  %378 = zext i8 %377 to i32
  %379 = zext i8 %377 to i64
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %380 = tail call i32 @llvm.ctpop.i32(i32 %378) #8
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %377, i8* %AL, align 1, !tbaa !2454
  %384 = add i64 %370, -24
  %385 = add i64 %372, 17
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  %388 = add i64 %370, -12
  %389 = add i64 %372, 21
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %RSI, align 8, !tbaa !2428
  %393 = add i64 %387, 12
  %394 = add i64 %393, %392
  %395 = add i64 %372, 25
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i8*
  store i8 %377, i8* %396, align 1
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -26
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %398 to i8*
  %402 = load i8, i8* %401, align 1
  %403 = and i8 %402, 15
  %404 = or i8 %403, 48
  %405 = zext i8 %404 to i32
  %406 = zext i8 %404 to i64
  store i64 %406, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %407 = tail call i32 @llvm.ctpop.i32(i32 %405) #8
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %404, i8* %AL, align 1, !tbaa !2454
  %411 = add i64 %397, -24
  %412 = add i64 %399, 17
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RCX, align 8, !tbaa !2428
  %415 = add i64 %397, -12
  %416 = add i64 %399, 21
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %RSI, align 8, !tbaa !2428
  %420 = add i64 %414, 13
  %421 = add i64 %420, %419
  %422 = add i64 %399, 25
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i8*
  store i8 %404, i8* %423, align 1
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -25
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %425 to i8*
  %429 = load i8, i8* %428, align 1
  %430 = and i8 %429, 15
  %431 = or i8 %430, 48
  %432 = zext i8 %431 to i32
  %433 = zext i8 %431 to i64
  store i64 %433, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %434 = tail call i32 @llvm.ctpop.i32(i32 %432) #8
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %431, i8* %AL, align 1, !tbaa !2454
  %438 = add i64 %424, -24
  %439 = add i64 %426, 17
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RCX, align 8, !tbaa !2428
  %442 = add i64 %424, -12
  %443 = add i64 %426, 21
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %RSI, align 8, !tbaa !2428
  %447 = add i64 %441, 14
  %448 = add i64 %447, %446
  %449 = add i64 %426, 25
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i8*
  store i8 %431, i8* %450, align 1
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -25
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i8*
  %456 = load i8, i8* %455, align 1
  %457 = and i8 %456, 15
  %458 = or i8 %457, 48
  %459 = zext i8 %458 to i32
  %460 = zext i8 %458 to i64
  store i64 %460, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2432
  %461 = tail call i32 @llvm.ctpop.i32(i32 %459) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %49, align 1, !tbaa !2446
  store i8 0, i8* %53, align 1, !tbaa !2450
  store i8 0, i8* %50, align 1, !tbaa !2447
  store i8 0, i8* %51, align 1, !tbaa !2448
  store i8 0, i8* %52, align 1, !tbaa !2449
  store i8 %458, i8* %AL, align 1, !tbaa !2454
  %465 = add i64 %451, -24
  %466 = add i64 %453, 17
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RCX, align 8, !tbaa !2428
  %469 = add i64 %451, -12
  %470 = add i64 %453, 21
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RSI, align 8, !tbaa !2428
  %474 = add i64 %468, 15
  %475 = add i64 %474, %473
  %476 = add i64 %453, 25
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i8*
  store i8 %458, i8* %477, align 1
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 1
  store i64 %479, i64* %PC, align 8
  %480 = load i64, i64* %8, align 8, !tbaa !2428
  %481 = add i64 %480, 8
  %482 = inttoptr i64 %480 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RBP, align 8, !tbaa !2428
  store i64 %481, i64* %8, align 8, !tbaa !2428
  %484 = add i64 %478, 2
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %481 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %PC, align 8, !tbaa !2428
  %487 = add i64 %480, 16
  store i64 %487, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2
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
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
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
  br i1 %79, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %84 = phi i64 [ %120, %block_4008c9 ], [ %83, %block_400890 ]
  store i64 add (i64 ptrtoint (%seg_401570__rodata_type* @seg_401570__rodata to i64), i64 71), i64* %RSI, align 8, !tbaa !2428
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
  %104 = tail call fastcc %struct.Memory* @ext_6020f8_exit(%struct.State* nonnull %0, %struct.Memory* %91)
  %105 = load i64, i64* %PC, align 8
  %106 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %105, %struct.Memory* %104)
  ret %struct.Memory* %106

block_4008c9:                                     ; preds = %block_400890
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
  br i1 %116, label %block_4008f9, label %block_4008d3

block_4008f9:                                     ; preds = %block_4008c9
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
define %struct.Memory* @sub_400b90_kernel_adi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b90:
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
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to double*
  %56 = bitcast %union.VectorReg* %6 to double*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400bad

block_40113b:                                     ; preds = %block_400bad
  %59 = add i64 %2714, 1
  store i64 %59, i64* %PC, align 8
  %60 = load i64, i64* %9, align 8, !tbaa !2428
  %61 = add i64 %60, 8
  %62 = inttoptr i64 %60 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RBP, align 8, !tbaa !2428
  store i64 %61, i64* %9, align 8, !tbaa !2428
  %64 = add i64 %2714, 2
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %61 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %PC, align 8, !tbaa !2428
  %67 = add i64 %60, 16
  store i64 %67, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_401057:                                     ; preds = %block_401063, %block_401050
  %68 = phi i64 [ %1064, %block_401063 ], [ %.pre13, %block_401050 ]
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -44
  %71 = add i64 %68, 3
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %69, -8
  %76 = add i64 %68, 6
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = sub i32 %73, %78
  %80 = icmp ult i32 %73, %78
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %47, align 1, !tbaa !2432
  %82 = and i32 %79, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %48, align 1, !tbaa !2446
  %87 = xor i32 %78, %73
  %88 = xor i32 %87, %79
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %49, align 1, !tbaa !2450
  %92 = icmp eq i32 %79, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %50, align 1, !tbaa !2447
  %94 = lshr i32 %79, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %51, align 1, !tbaa !2448
  %96 = lshr i32 %73, 31
  %97 = lshr i32 %78, 31
  %98 = xor i32 %97, %96
  %99 = xor i32 %94, %96
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %52, align 1, !tbaa !2449
  %103 = icmp ne i8 %95, 0
  %104 = xor i1 %103, %101
  %.v23 = select i1 %104, i64 12, i64 190
  %105 = add i64 %68, %.v23
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br i1 %104, label %block_401063, label %block_401115

block_401050:                                     ; preds = %block_40103f
  %106 = add i64 %2869, -44
  %107 = add i64 %2907, 7
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 0, i32* %108, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_401057

block_400d7f:                                     ; preds = %block_400d0e
  %109 = add i64 %2790, 7
  store i64 %109, i64* %PC, align 8
  store i32 0, i32* %2757, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400d86

block_401038:                                     ; preds = %block_400fc7
  %110 = add i64 %2716, -40
  %111 = add i64 %2752, 7
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  store i32 0, i32* %112, align 4
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_40103f

block_400cf4:                                     ; preds = %block_400bd3
  %113 = add i64 %2792, -40
  %114 = add i64 %2828, 8
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = icmp eq i32 %116, -1
  %120 = icmp eq i32 %117, 0
  %121 = or i1 %119, %120
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %47, align 1, !tbaa !2432
  %123 = and i32 %117, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123) #8
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %48, align 1, !tbaa !2446
  %128 = xor i32 %116, %117
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %49, align 1, !tbaa !2450
  %132 = zext i1 %120 to i8
  store i8 %132, i8* %50, align 1, !tbaa !2447
  %133 = lshr i32 %117, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %51, align 1, !tbaa !2448
  %135 = lshr i32 %116, 31
  %136 = xor i32 %133, %135
  %137 = add nuw nsw i32 %136, %133
  %138 = icmp eq i32 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %52, align 1, !tbaa !2449
  %140 = add i64 %2828, 14
  store i64 %140, i64* %PC, align 8
  store i32 %117, i32* %115, align 4
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, -322
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  br label %block_400bc0

block_400fad:                                     ; preds = %block_400e8c
  %143 = add i64 %2830, -40
  %144 = add i64 %2866, 8
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = add i32 %146, 1
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = icmp eq i32 %146, -1
  %150 = icmp eq i32 %147, 0
  %151 = or i1 %149, %150
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %47, align 1, !tbaa !2432
  %153 = and i32 %147, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153) #8
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %48, align 1, !tbaa !2446
  %158 = xor i32 %146, %147
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %49, align 1, !tbaa !2450
  %162 = zext i1 %150 to i8
  store i8 %162, i8* %50, align 1, !tbaa !2447
  %163 = lshr i32 %147, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %51, align 1, !tbaa !2448
  %165 = lshr i32 %146, 31
  %166 = xor i32 %163, %165
  %167 = add nuw nsw i32 %166, %163
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %52, align 1, !tbaa !2449
  %170 = add i64 %2866, 14
  store i64 %170, i64* %PC, align 8
  store i32 %147, i32* %145, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, -322
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  br label %block_400e79

block_400daa:                                     ; preds = %block_400d99
  %173 = add i64 %2638, -16
  %174 = add i64 %2676, 4
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RAX, align 8, !tbaa !2428
  %177 = add i64 %2638, -40
  %178 = add i64 %2676, 8
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = shl nsw i64 %181, 13
  store i64 %182, i64* %RCX, align 8, !tbaa !2428
  %183 = lshr i64 %181, 50
  %184 = and i64 %183, 1
  %185 = add i64 %182, %176
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = icmp ult i64 %185, %176
  %187 = icmp ult i64 %185, %182
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %47, align 1, !tbaa !2432
  %190 = trunc i64 %185 to i32
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %48, align 1, !tbaa !2446
  %196 = xor i64 %176, %185
  %197 = lshr i64 %196, 4
  %198 = trunc i64 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %49, align 1, !tbaa !2450
  %200 = icmp eq i64 %185, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %50, align 1, !tbaa !2447
  %202 = lshr i64 %185, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %51, align 1, !tbaa !2448
  %204 = lshr i64 %176, 63
  %205 = xor i64 %202, %204
  %206 = xor i64 %202, %184
  %207 = add nuw nsw i64 %205, %206
  %208 = icmp eq i64 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %52, align 1, !tbaa !2449
  %210 = add i64 %2676, 18
  store i64 %210, i64* %PC, align 8
  %211 = load i32, i32* %2646, align 4
  %212 = add i32 %211, -2
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RDX, align 8, !tbaa !2428
  %214 = icmp ult i32 %211, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %47, align 1, !tbaa !2432
  %216 = and i32 %212, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #8
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %48, align 1, !tbaa !2446
  %221 = xor i32 %211, %212
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %49, align 1, !tbaa !2450
  %225 = icmp eq i32 %212, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %50, align 1, !tbaa !2447
  %227 = lshr i32 %212, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %51, align 1, !tbaa !2448
  %229 = lshr i32 %211, 31
  %230 = xor i32 %227, %229
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %52, align 1, !tbaa !2449
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -44
  %236 = add i64 %2676, 24
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sub i32 %212, %238
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RDX, align 8, !tbaa !2428
  %241 = icmp ult i32 %212, %238
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %47, align 1, !tbaa !2432
  %243 = and i32 %239, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243) #8
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %48, align 1, !tbaa !2446
  %248 = xor i32 %238, %212
  %249 = xor i32 %248, %239
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %49, align 1, !tbaa !2450
  %253 = icmp eq i32 %239, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %50, align 1, !tbaa !2447
  %255 = lshr i32 %239, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %51, align 1, !tbaa !2448
  %257 = lshr i32 %238, 31
  %258 = xor i32 %257, %227
  %259 = xor i32 %255, %227
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %52, align 1, !tbaa !2449
  %263 = sext i32 %239 to i64
  store i64 %263, i64* %RCX, align 8, !tbaa !2428
  %264 = load i64, i64* %RAX, align 8
  %265 = shl nsw i64 %263, 3
  %266 = add i64 %265, %264
  %267 = add i64 %2676, 32
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %269, i64* %270, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %271 = add i64 %234, -16
  %272 = add i64 %2676, 36
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %234, -40
  %276 = add i64 %2676, 40
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = shl nsw i64 %279, 13
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = lshr i64 %279, 50
  %282 = and i64 %281, 1
  %283 = add i64 %280, %274
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = icmp ult i64 %283, %274
  %285 = icmp ult i64 %283, %280
  %286 = or i1 %284, %285
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %47, align 1, !tbaa !2432
  %288 = trunc i64 %283 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289) #8
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %48, align 1, !tbaa !2446
  %294 = xor i64 %274, %283
  %295 = lshr i64 %294, 4
  %296 = trunc i64 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %49, align 1, !tbaa !2450
  %298 = icmp eq i64 %283, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %50, align 1, !tbaa !2447
  %300 = lshr i64 %283, 63
  %301 = trunc i64 %300 to i8
  store i8 %301, i8* %51, align 1, !tbaa !2448
  %302 = lshr i64 %274, 63
  %303 = xor i64 %300, %302
  %304 = xor i64 %300, %282
  %305 = add nuw nsw i64 %303, %304
  %306 = icmp eq i64 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %52, align 1, !tbaa !2449
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -8
  %310 = add i64 %2676, 50
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = add i32 %312, -2
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDX, align 8, !tbaa !2428
  %315 = icmp ult i32 %312, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %47, align 1, !tbaa !2432
  %317 = and i32 %313, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #8
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %48, align 1, !tbaa !2446
  %322 = xor i32 %312, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %49, align 1, !tbaa !2450
  %326 = icmp eq i32 %313, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %50, align 1, !tbaa !2447
  %328 = lshr i32 %313, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %51, align 1, !tbaa !2448
  %330 = lshr i32 %312, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %52, align 1, !tbaa !2449
  %335 = add i64 %308, -44
  %336 = add i64 %2676, 56
  store i64 %336, i64* %PC, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = sub i32 %313, %338
  %340 = lshr i32 %339, 31
  %341 = add i32 %339, -1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RDX, align 8, !tbaa !2428
  %343 = icmp eq i32 %339, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %47, align 1, !tbaa !2432
  %345 = and i32 %341, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345) #8
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %48, align 1, !tbaa !2446
  %350 = xor i32 %339, %341
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %49, align 1, !tbaa !2450
  %354 = icmp eq i32 %341, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %50, align 1, !tbaa !2447
  %356 = lshr i32 %341, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %51, align 1, !tbaa !2448
  %358 = xor i32 %356, %340
  %359 = add nuw nsw i32 %358, %340
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %52, align 1, !tbaa !2449
  %362 = sext i32 %341 to i64
  store i64 %362, i64* %RCX, align 8, !tbaa !2428
  %363 = load i64, i64* %RAX, align 8
  %364 = shl nsw i64 %362, 3
  %365 = add i64 %364, %363
  %366 = add i64 %2676, 67
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %368, i64* %369, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -24
  %372 = add i64 %2676, 71
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = add i64 %370, -40
  %376 = add i64 %2676, 75
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = shl nsw i64 %379, 13
  store i64 %380, i64* %RCX, align 8, !tbaa !2428
  %381 = lshr i64 %379, 50
  %382 = and i64 %381, 1
  %383 = add i64 %380, %374
  store i64 %383, i64* %RAX, align 8, !tbaa !2428
  %384 = icmp ult i64 %383, %374
  %385 = icmp ult i64 %383, %380
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %47, align 1, !tbaa !2432
  %388 = trunc i64 %383 to i32
  %389 = and i32 %388, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389) #8
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %48, align 1, !tbaa !2446
  %394 = xor i64 %374, %383
  %395 = lshr i64 %394, 4
  %396 = trunc i64 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %49, align 1, !tbaa !2450
  %398 = icmp eq i64 %383, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %50, align 1, !tbaa !2447
  %400 = lshr i64 %383, 63
  %401 = trunc i64 %400 to i8
  store i8 %401, i8* %51, align 1, !tbaa !2448
  %402 = lshr i64 %374, 63
  %403 = xor i64 %400, %402
  %404 = xor i64 %400, %382
  %405 = add nuw nsw i64 %403, %404
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %52, align 1, !tbaa !2449
  %408 = add i64 %370, -8
  %409 = add i64 %2676, 85
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RDX, align 8, !tbaa !2428
  %413 = add i64 %370, -44
  %414 = add i64 %2676, 88
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = sub i32 %411, %416
  %418 = lshr i32 %417, 31
  %419 = add i32 %417, -3
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  %421 = icmp ult i32 %417, 3
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %47, align 1, !tbaa !2432
  %423 = and i32 %419, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423) #8
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %48, align 1, !tbaa !2446
  %428 = xor i32 %417, %419
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %49, align 1, !tbaa !2450
  %432 = icmp eq i32 %419, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %50, align 1, !tbaa !2447
  %434 = lshr i32 %419, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %51, align 1, !tbaa !2448
  %436 = xor i32 %434, %418
  %437 = add nuw nsw i32 %436, %418
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %52, align 1, !tbaa !2449
  %440 = sext i32 %419 to i64
  store i64 %440, i64* %RCX, align 8, !tbaa !2428
  %441 = load i64, i64* %RAX, align 8
  %442 = shl nsw i64 %440, 3
  %443 = add i64 %442, %441
  %444 = add i64 %2676, 99
  store i64 %444, i64* %PC, align 8
  %445 = load double, double* %56, align 1
  %446 = inttoptr i64 %443 to double*
  %447 = load double, double* %446, align 8
  %448 = fmul double %445, %447
  store double %448, double* %56, align 1, !tbaa !2452
  %449 = load double, double* %53, align 1
  %450 = fsub double %449, %448
  store double %450, double* %53, align 1, !tbaa !2452
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -32
  %453 = add i64 %2676, 107
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = add i64 %451, -40
  %457 = add i64 %2676, 111
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  %461 = shl nsw i64 %460, 13
  store i64 %461, i64* %RCX, align 8, !tbaa !2428
  %462 = lshr i64 %460, 50
  %463 = and i64 %462, 1
  %464 = add i64 %461, %455
  store i64 %464, i64* %RAX, align 8, !tbaa !2428
  %465 = icmp ult i64 %464, %455
  %466 = icmp ult i64 %464, %461
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %47, align 1, !tbaa !2432
  %469 = trunc i64 %464 to i32
  %470 = and i32 %469, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470) #8
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %48, align 1, !tbaa !2446
  %475 = xor i64 %455, %464
  %476 = lshr i64 %475, 4
  %477 = trunc i64 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %49, align 1, !tbaa !2450
  %479 = icmp eq i64 %464, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %50, align 1, !tbaa !2447
  %481 = lshr i64 %464, 63
  %482 = trunc i64 %481 to i8
  store i8 %482, i8* %51, align 1, !tbaa !2448
  %483 = lshr i64 %455, 63
  %484 = xor i64 %481, %483
  %485 = xor i64 %481, %463
  %486 = add nuw nsw i64 %484, %485
  %487 = icmp eq i64 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %52, align 1, !tbaa !2449
  %489 = add i64 %451, -8
  %490 = add i64 %2676, 121
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, -3
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RDX, align 8, !tbaa !2428
  %495 = icmp ult i32 %492, 3
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %47, align 1, !tbaa !2432
  %497 = and i32 %493, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #8
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %48, align 1, !tbaa !2446
  %502 = xor i32 %492, %493
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %49, align 1, !tbaa !2450
  %506 = icmp eq i32 %493, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %50, align 1, !tbaa !2447
  %508 = lshr i32 %493, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %51, align 1, !tbaa !2448
  %510 = lshr i32 %492, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %510
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %52, align 1, !tbaa !2449
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -44
  %517 = add i64 %2676, 127
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = sub i32 %493, %519
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RDX, align 8, !tbaa !2428
  %522 = icmp ult i32 %493, %519
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %47, align 1, !tbaa !2432
  %524 = and i32 %520, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524) #8
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %48, align 1, !tbaa !2446
  %529 = xor i32 %519, %493
  %530 = xor i32 %529, %520
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %49, align 1, !tbaa !2450
  %534 = icmp eq i32 %520, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %50, align 1, !tbaa !2447
  %536 = lshr i32 %520, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %51, align 1, !tbaa !2448
  %538 = lshr i32 %519, 31
  %539 = xor i32 %538, %508
  %540 = xor i32 %536, %508
  %541 = add nuw nsw i32 %540, %539
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %52, align 1, !tbaa !2449
  %544 = sext i32 %520 to i64
  store i64 %544, i64* %RCX, align 8, !tbaa !2428
  %545 = load i64, i64* %RAX, align 8
  %546 = shl nsw i64 %544, 3
  %547 = add i64 %546, %545
  %548 = add i64 %2676, 135
  store i64 %548, i64* %PC, align 8
  %549 = load double, double* %53, align 1
  %550 = inttoptr i64 %547 to double*
  %551 = load double, double* %550, align 8
  %552 = fdiv double %549, %551
  store double %552, double* %53, align 1, !tbaa !2452
  %553 = add i64 %515, -16
  %554 = add i64 %2676, 139
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RAX, align 8, !tbaa !2428
  %557 = add i64 %515, -40
  %558 = add i64 %2676, 143
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  %562 = shl nsw i64 %561, 13
  store i64 %562, i64* %RCX, align 8, !tbaa !2428
  %563 = lshr i64 %561, 50
  %564 = and i64 %563, 1
  %565 = add i64 %562, %556
  store i64 %565, i64* %RAX, align 8, !tbaa !2428
  %566 = icmp ult i64 %565, %556
  %567 = icmp ult i64 %565, %562
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %47, align 1, !tbaa !2432
  %570 = trunc i64 %565 to i32
  %571 = and i32 %570, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571) #8
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %48, align 1, !tbaa !2446
  %576 = xor i64 %556, %565
  %577 = lshr i64 %576, 4
  %578 = trunc i64 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %49, align 1, !tbaa !2450
  %580 = icmp eq i64 %565, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %50, align 1, !tbaa !2447
  %582 = lshr i64 %565, 63
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %51, align 1, !tbaa !2448
  %584 = lshr i64 %556, 63
  %585 = xor i64 %582, %584
  %586 = xor i64 %582, %564
  %587 = add nuw nsw i64 %585, %586
  %588 = icmp eq i64 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %52, align 1, !tbaa !2449
  %590 = load i64, i64* %RBP, align 8
  %591 = add i64 %590, -8
  %592 = add i64 %2676, 153
  store i64 %592, i64* %PC, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RDX, align 8, !tbaa !2428
  %596 = add i64 %590, -44
  %597 = add i64 %2676, 156
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sub i32 %594, %599
  %601 = lshr i32 %600, 31
  %602 = add i32 %600, -2
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RDX, align 8, !tbaa !2428
  %604 = icmp ult i32 %600, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %47, align 1, !tbaa !2432
  %606 = and i32 %602, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606) #8
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %48, align 1, !tbaa !2446
  %611 = xor i32 %600, %602
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %49, align 1, !tbaa !2450
  %615 = icmp eq i32 %602, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %50, align 1, !tbaa !2447
  %617 = lshr i32 %602, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %51, align 1, !tbaa !2448
  %619 = xor i32 %617, %601
  %620 = add nuw nsw i32 %619, %601
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %52, align 1, !tbaa !2449
  %623 = sext i32 %602 to i64
  store i64 %623, i64* %RCX, align 8, !tbaa !2428
  %624 = load i64, i64* %RAX, align 8
  %625 = shl nsw i64 %623, 3
  %626 = add i64 %625, %624
  %627 = add i64 %2676, 167
  store i64 %627, i64* %PC, align 8
  %628 = load i64, i64* %270, align 1
  %629 = inttoptr i64 %626 to i64*
  store i64 %628, i64* %629, align 8
  %630 = load i64, i64* %RBP, align 8
  %631 = add i64 %630, -44
  %632 = load i64, i64* %PC, align 8
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC, align 8
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = add i32 %635, 1
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RAX, align 8, !tbaa !2428
  %638 = icmp eq i32 %635, -1
  %639 = icmp eq i32 %636, 0
  %640 = or i1 %638, %639
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %47, align 1, !tbaa !2432
  %642 = and i32 %636, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642) #8
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %48, align 1, !tbaa !2446
  %647 = xor i32 %635, %636
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %49, align 1, !tbaa !2450
  %651 = zext i1 %639 to i8
  store i8 %651, i8* %50, align 1, !tbaa !2447
  %652 = lshr i32 %636, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %51, align 1, !tbaa !2448
  %654 = lshr i32 %635, 31
  %655 = xor i32 %652, %654
  %656 = add nuw nsw i32 %655, %652
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %52, align 1, !tbaa !2449
  %659 = add i64 %632, 9
  store i64 %659, i64* %PC, align 8
  store i32 %636, i32* %634, align 4
  %660 = load i64, i64* %PC, align 8
  %661 = add i64 %660, -193
  store i64 %661, i64* %PC, align 8, !tbaa !2428
  br label %block_400d99

block_401063:                                     ; preds = %block_401057
  %662 = add i64 %69, -16
  %663 = add i64 %105, 4
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = add i64 %105, 7
  store i64 %666, i64* %PC, align 8
  %667 = load i32, i32* %77, align 4
  %668 = add i32 %667, -2
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RCX, align 8, !tbaa !2428
  %670 = icmp ult i32 %667, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %47, align 1, !tbaa !2432
  %672 = and i32 %668, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672) #8
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %48, align 1, !tbaa !2446
  %677 = xor i32 %667, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %49, align 1, !tbaa !2450
  %681 = icmp eq i32 %668, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %50, align 1, !tbaa !2447
  %683 = lshr i32 %668, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %51, align 1, !tbaa !2448
  %685 = lshr i32 %667, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %52, align 1, !tbaa !2449
  %690 = add i64 %69, -40
  %691 = add i64 %105, 13
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sub i32 %668, %693
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RCX, align 8, !tbaa !2428
  %696 = sext i32 %694 to i64
  %697 = shl nsw i64 %696, 13
  store i64 %697, i64* %RDX, align 8, !tbaa !2428
  %698 = lshr i64 %696, 50
  %699 = and i64 %698, 1
  %700 = load i64, i64* %RAX, align 8
  %701 = add i64 %697, %700
  store i64 %701, i64* %RAX, align 8, !tbaa !2428
  %702 = icmp ult i64 %701, %700
  %703 = icmp ult i64 %701, %697
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %47, align 1, !tbaa !2432
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707) #8
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %48, align 1, !tbaa !2446
  %712 = xor i64 %700, %701
  %713 = lshr i64 %712, 4
  %714 = trunc i64 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %49, align 1, !tbaa !2450
  %716 = icmp eq i64 %701, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %50, align 1, !tbaa !2447
  %718 = lshr i64 %701, 63
  %719 = trunc i64 %718 to i8
  store i8 %719, i8* %51, align 1, !tbaa !2448
  %720 = lshr i64 %700, 63
  %721 = xor i64 %718, %720
  %722 = xor i64 %718, %699
  %723 = add nuw nsw i64 %721, %722
  %724 = icmp eq i64 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %52, align 1, !tbaa !2449
  %726 = load i64, i64* %RBP, align 8
  %727 = add i64 %726, -44
  %728 = add i64 %105, 27
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = sext i32 %730 to i64
  store i64 %731, i64* %RDX, align 8, !tbaa !2428
  %732 = shl nsw i64 %731, 3
  %733 = add i64 %732, %701
  %734 = add i64 %105, 32
  store i64 %734, i64* %PC, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  %737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %736, i64* %737, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %738 = add i64 %726, -16
  %739 = add i64 %105, 36
  store i64 %739, i64* %PC, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX, align 8, !tbaa !2428
  %742 = add i64 %726, -8
  %743 = add i64 %105, 39
  store i64 %743, i64* %PC, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RCX, align 8, !tbaa !2428
  %747 = add i64 %726, -40
  %748 = add i64 %105, 42
  store i64 %748, i64* %PC, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = sub i32 %745, %750
  %752 = add i32 %751, -3
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RCX, align 8, !tbaa !2428
  %754 = sext i32 %752 to i64
  %755 = shl nsw i64 %754, 13
  store i64 %755, i64* %RDX, align 8, !tbaa !2428
  %756 = lshr i64 %754, 50
  %757 = and i64 %756, 1
  %758 = load i64, i64* %RAX, align 8
  %759 = add i64 %755, %758
  store i64 %759, i64* %RAX, align 8, !tbaa !2428
  %760 = icmp ult i64 %759, %758
  %761 = icmp ult i64 %759, %755
  %762 = or i1 %760, %761
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %47, align 1, !tbaa !2432
  %764 = trunc i64 %759 to i32
  %765 = and i32 %764, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765) #8
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %48, align 1, !tbaa !2446
  %770 = xor i64 %758, %759
  %771 = lshr i64 %770, 4
  %772 = trunc i64 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %49, align 1, !tbaa !2450
  %774 = icmp eq i64 %759, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %50, align 1, !tbaa !2447
  %776 = lshr i64 %759, 63
  %777 = trunc i64 %776 to i8
  store i8 %777, i8* %51, align 1, !tbaa !2448
  %778 = lshr i64 %758, 63
  %779 = xor i64 %776, %778
  %780 = xor i64 %776, %757
  %781 = add nuw nsw i64 %779, %780
  %782 = icmp eq i64 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %52, align 1, !tbaa !2449
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -44
  %786 = add i64 %105, 59
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = sext i32 %788 to i64
  store i64 %789, i64* %RDX, align 8, !tbaa !2428
  %790 = shl nsw i64 %789, 3
  %791 = add i64 %790, %759
  %792 = add i64 %105, 64
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  %795 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %794, i64* %795, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %796 = add i64 %784, -24
  %797 = add i64 %105, 68
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RAX, align 8, !tbaa !2428
  %800 = add i64 %784, -8
  %801 = add i64 %105, 71
  store i64 %801, i64* %PC, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = add i32 %803, -3
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RCX, align 8, !tbaa !2428
  %806 = icmp ult i32 %803, 3
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %47, align 1, !tbaa !2432
  %808 = and i32 %804, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808) #8
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %48, align 1, !tbaa !2446
  %813 = xor i32 %803, %804
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %49, align 1, !tbaa !2450
  %817 = icmp eq i32 %804, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %50, align 1, !tbaa !2447
  %819 = lshr i32 %804, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %51, align 1, !tbaa !2448
  %821 = lshr i32 %803, 31
  %822 = xor i32 %819, %821
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %52, align 1, !tbaa !2449
  %826 = add i64 %784, -40
  %827 = add i64 %105, 77
  store i64 %827, i64* %PC, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = sub i32 %804, %829
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RCX, align 8, !tbaa !2428
  %832 = sext i32 %830 to i64
  %833 = shl nsw i64 %832, 13
  store i64 %833, i64* %RDX, align 8, !tbaa !2428
  %834 = lshr i64 %832, 50
  %835 = and i64 %834, 1
  %836 = load i64, i64* %RAX, align 8
  %837 = add i64 %833, %836
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = icmp ult i64 %837, %836
  %839 = icmp ult i64 %837, %833
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %47, align 1, !tbaa !2432
  %842 = trunc i64 %837 to i32
  %843 = and i32 %842, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843) #8
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %48, align 1, !tbaa !2446
  %848 = xor i64 %836, %837
  %849 = lshr i64 %848, 4
  %850 = trunc i64 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %49, align 1, !tbaa !2450
  %852 = icmp eq i64 %837, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %50, align 1, !tbaa !2447
  %854 = lshr i64 %837, 63
  %855 = trunc i64 %854 to i8
  store i8 %855, i8* %51, align 1, !tbaa !2448
  %856 = lshr i64 %836, 63
  %857 = xor i64 %854, %856
  %858 = xor i64 %854, %835
  %859 = add nuw nsw i64 %857, %858
  %860 = icmp eq i64 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %52, align 1, !tbaa !2449
  %862 = load i64, i64* %RBP, align 8
  %863 = add i64 %862, -44
  %864 = add i64 %105, 91
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RDX, align 8, !tbaa !2428
  %868 = shl nsw i64 %867, 3
  %869 = add i64 %868, %837
  %870 = add i64 %105, 96
  store i64 %870, i64* %PC, align 8
  %871 = load double, double* %56, align 1
  %872 = inttoptr i64 %869 to double*
  %873 = load double, double* %872, align 8
  %874 = fmul double %871, %873
  store double %874, double* %56, align 1, !tbaa !2452
  %875 = load double, double* %53, align 1
  %876 = fsub double %875, %874
  store double %876, double* %53, align 1, !tbaa !2452
  %877 = add i64 %862, -32
  %878 = add i64 %105, 104
  store i64 %878, i64* %PC, align 8
  %879 = inttoptr i64 %877 to i64*
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %RAX, align 8, !tbaa !2428
  %881 = add i64 %862, -8
  %882 = add i64 %105, 107
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = add i32 %884, -2
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RCX, align 8, !tbaa !2428
  %887 = icmp ult i32 %884, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %47, align 1, !tbaa !2432
  %889 = and i32 %885, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889) #8
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %48, align 1, !tbaa !2446
  %894 = xor i32 %884, %885
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %49, align 1, !tbaa !2450
  %898 = icmp eq i32 %885, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %50, align 1, !tbaa !2447
  %900 = lshr i32 %885, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %51, align 1, !tbaa !2448
  %902 = lshr i32 %884, 31
  %903 = xor i32 %900, %902
  %904 = add nuw nsw i32 %903, %902
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %52, align 1, !tbaa !2449
  %907 = add i64 %862, -40
  %908 = add i64 %105, 113
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = sub i32 %885, %910
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RCX, align 8, !tbaa !2428
  %913 = sext i32 %911 to i64
  %914 = shl nsw i64 %913, 13
  store i64 %914, i64* %RDX, align 8, !tbaa !2428
  %915 = lshr i64 %913, 50
  %916 = and i64 %915, 1
  %917 = load i64, i64* %RAX, align 8
  %918 = add i64 %914, %917
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = icmp ult i64 %918, %917
  %920 = icmp ult i64 %918, %914
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %47, align 1, !tbaa !2432
  %923 = trunc i64 %918 to i32
  %924 = and i32 %923, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924) #8
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %48, align 1, !tbaa !2446
  %929 = xor i64 %917, %918
  %930 = lshr i64 %929, 4
  %931 = trunc i64 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %49, align 1, !tbaa !2450
  %933 = icmp eq i64 %918, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %50, align 1, !tbaa !2447
  %935 = lshr i64 %918, 63
  %936 = trunc i64 %935 to i8
  store i8 %936, i8* %51, align 1, !tbaa !2448
  %937 = lshr i64 %917, 63
  %938 = xor i64 %935, %937
  %939 = xor i64 %935, %916
  %940 = add nuw nsw i64 %938, %939
  %941 = icmp eq i64 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %52, align 1, !tbaa !2449
  %943 = load i64, i64* %RBP, align 8
  %944 = add i64 %943, -44
  %945 = add i64 %105, 127
  store i64 %945, i64* %PC, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  store i64 %948, i64* %RDX, align 8, !tbaa !2428
  %949 = shl nsw i64 %948, 3
  %950 = add i64 %949, %918
  %951 = add i64 %105, 132
  store i64 %951, i64* %PC, align 8
  %952 = load double, double* %53, align 1
  %953 = inttoptr i64 %950 to double*
  %954 = load double, double* %953, align 8
  %955 = fdiv double %952, %954
  store double %955, double* %53, align 1, !tbaa !2452
  %956 = add i64 %943, -16
  %957 = add i64 %105, 136
  store i64 %957, i64* %PC, align 8
  %958 = inttoptr i64 %956 to i64*
  %959 = load i64, i64* %958, align 8
  store i64 %959, i64* %RAX, align 8, !tbaa !2428
  %960 = add i64 %943, -8
  %961 = add i64 %105, 139
  store i64 %961, i64* %PC, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = add i32 %963, -2
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RCX, align 8, !tbaa !2428
  %966 = icmp ult i32 %963, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %47, align 1, !tbaa !2432
  %968 = and i32 %964, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968) #8
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %48, align 1, !tbaa !2446
  %973 = xor i32 %963, %964
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %49, align 1, !tbaa !2450
  %977 = icmp eq i32 %964, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %50, align 1, !tbaa !2447
  %979 = lshr i32 %964, 31
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %51, align 1, !tbaa !2448
  %981 = lshr i32 %963, 31
  %982 = xor i32 %979, %981
  %983 = add nuw nsw i32 %982, %981
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %52, align 1, !tbaa !2449
  %986 = add i64 %943, -40
  %987 = add i64 %105, 145
  store i64 %987, i64* %PC, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sub i32 %964, %989
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RCX, align 8, !tbaa !2428
  %992 = sext i32 %990 to i64
  %993 = shl nsw i64 %992, 13
  store i64 %993, i64* %RDX, align 8, !tbaa !2428
  %994 = lshr i64 %992, 50
  %995 = and i64 %994, 1
  %996 = load i64, i64* %RAX, align 8
  %997 = add i64 %993, %996
  store i64 %997, i64* %RAX, align 8, !tbaa !2428
  %998 = icmp ult i64 %997, %996
  %999 = icmp ult i64 %997, %993
  %1000 = or i1 %998, %999
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %47, align 1, !tbaa !2432
  %1002 = trunc i64 %997 to i32
  %1003 = and i32 %1002, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003) #8
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %48, align 1, !tbaa !2446
  %1008 = xor i64 %996, %997
  %1009 = lshr i64 %1008, 4
  %1010 = trunc i64 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %49, align 1, !tbaa !2450
  %1012 = icmp eq i64 %997, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %50, align 1, !tbaa !2447
  %1014 = lshr i64 %997, 63
  %1015 = trunc i64 %1014 to i8
  store i8 %1015, i8* %51, align 1, !tbaa !2448
  %1016 = lshr i64 %996, 63
  %1017 = xor i64 %1014, %1016
  %1018 = xor i64 %1014, %995
  %1019 = add nuw nsw i64 %1017, %1018
  %1020 = icmp eq i64 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %52, align 1, !tbaa !2449
  %1022 = load i64, i64* %RBP, align 8
  %1023 = add i64 %1022, -44
  %1024 = add i64 %105, 159
  store i64 %1024, i64* %PC, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = sext i32 %1026 to i64
  store i64 %1027, i64* %RDX, align 8, !tbaa !2428
  %1028 = shl nsw i64 %1027, 3
  %1029 = add i64 %1028, %997
  %1030 = add i64 %105, 164
  store i64 %1030, i64* %PC, align 8
  %1031 = load i64, i64* %737, align 1
  %1032 = inttoptr i64 %1029 to i64*
  store i64 %1031, i64* %1032, align 8
  %1033 = load i64, i64* %RBP, align 8
  %1034 = add i64 %1033, -44
  %1035 = load i64, i64* %PC, align 8
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %PC, align 8
  %1037 = inttoptr i64 %1034 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = add i32 %1038, 1
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX, align 8, !tbaa !2428
  %1041 = icmp eq i32 %1038, -1
  %1042 = icmp eq i32 %1039, 0
  %1043 = or i1 %1041, %1042
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %47, align 1, !tbaa !2432
  %1045 = and i32 %1039, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045) #8
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %48, align 1, !tbaa !2446
  %1050 = xor i32 %1038, %1039
  %1051 = lshr i32 %1050, 4
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %49, align 1, !tbaa !2450
  %1054 = zext i1 %1042 to i8
  store i8 %1054, i8* %50, align 1, !tbaa !2447
  %1055 = lshr i32 %1039, 31
  %1056 = trunc i32 %1055 to i8
  store i8 %1056, i8* %51, align 1, !tbaa !2448
  %1057 = lshr i32 %1038, 31
  %1058 = xor i32 %1055, %1057
  %1059 = add nuw nsw i32 %1058, %1055
  %1060 = icmp eq i32 %1059, 2
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %52, align 1, !tbaa !2449
  %1062 = add i64 %1035, 9
  store i64 %1062, i64* %PC, align 8
  store i32 %1039, i32* %1037, align 4
  %1063 = load i64, i64* %PC, align 8
  %1064 = add i64 %1063, -185
  store i64 %1064, i64* %PC, align 8, !tbaa !2428
  br label %block_401057

block_400fd3:                                     ; preds = %block_400fc7
  %1065 = add i64 %2716, -16
  %1066 = add i64 %2752, 4
  store i64 %1066, i64* %PC, align 8
  %1067 = inttoptr i64 %1065 to i64*
  %1068 = load i64, i64* %1067, align 8
  store i64 %1068, i64* %RAX, align 8, !tbaa !2428
  %1069 = add i64 %2752, 7
  store i64 %1069, i64* %PC, align 8
  %1070 = load i32, i32* %2724, align 4
  %1071 = add i32 %1070, -1
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RCX, align 8, !tbaa !2428
  %1073 = sext i32 %1071 to i64
  %1074 = shl nsw i64 %1073, 13
  store i64 %1074, i64* %RDX, align 8, !tbaa !2428
  %1075 = lshr i64 %1073, 50
  %1076 = and i64 %1075, 1
  %1077 = add i64 %1074, %1068
  store i64 %1077, i64* %RAX, align 8, !tbaa !2428
  %1078 = icmp ult i64 %1077, %1068
  %1079 = icmp ult i64 %1077, %1074
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %47, align 1, !tbaa !2432
  %1082 = trunc i64 %1077 to i32
  %1083 = and i32 %1082, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083) #8
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %48, align 1, !tbaa !2446
  %1088 = xor i64 %1068, %1077
  %1089 = lshr i64 %1088, 4
  %1090 = trunc i64 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %49, align 1, !tbaa !2450
  %1092 = icmp eq i64 %1077, 0
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %50, align 1, !tbaa !2447
  %1094 = lshr i64 %1077, 63
  %1095 = trunc i64 %1094 to i8
  store i8 %1095, i8* %51, align 1, !tbaa !2448
  %1096 = lshr i64 %1068, 63
  %1097 = xor i64 %1094, %1096
  %1098 = xor i64 %1094, %1076
  %1099 = add nuw nsw i64 %1097, %1098
  %1100 = icmp eq i64 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %52, align 1, !tbaa !2449
  %1102 = load i64, i64* %RBP, align 8
  %1103 = add i64 %1102, -44
  %1104 = add i64 %2752, 24
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RDX, align 8, !tbaa !2428
  %1108 = shl nsw i64 %1107, 3
  %1109 = add i64 %1108, %1077
  %1110 = add i64 %2752, 29
  store i64 %1110, i64* %PC, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  %1113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1112, i64* %1113, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %1114 = add i64 %1102, -32
  %1115 = add i64 %2752, 33
  store i64 %1115, i64* %PC, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX, align 8, !tbaa !2428
  %1118 = add i64 %1102, -8
  %1119 = add i64 %2752, 36
  store i64 %1119, i64* %PC, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = add i32 %1121, -1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RCX, align 8, !tbaa !2428
  %1124 = sext i32 %1122 to i64
  %1125 = shl nsw i64 %1124, 13
  store i64 %1125, i64* %RDX, align 8, !tbaa !2428
  %1126 = lshr i64 %1124, 50
  %1127 = and i64 %1126, 1
  %1128 = add i64 %1125, %1117
  store i64 %1128, i64* %RAX, align 8, !tbaa !2428
  %1129 = icmp ult i64 %1128, %1117
  %1130 = icmp ult i64 %1128, %1125
  %1131 = or i1 %1129, %1130
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %47, align 1, !tbaa !2432
  %1133 = trunc i64 %1128 to i32
  %1134 = and i32 %1133, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134) #8
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %48, align 1, !tbaa !2446
  %1139 = xor i64 %1117, %1128
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %49, align 1, !tbaa !2450
  %1143 = icmp eq i64 %1128, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %50, align 1, !tbaa !2447
  %1145 = lshr i64 %1128, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %51, align 1, !tbaa !2448
  %1147 = lshr i64 %1117, 63
  %1148 = xor i64 %1145, %1147
  %1149 = xor i64 %1145, %1127
  %1150 = add nuw nsw i64 %1148, %1149
  %1151 = icmp eq i64 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %52, align 1, !tbaa !2449
  %1153 = load i64, i64* %RBP, align 8
  %1154 = add i64 %1153, -44
  %1155 = add i64 %2752, 53
  store i64 %1155, i64* %PC, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RDX, align 8, !tbaa !2428
  %1159 = shl nsw i64 %1158, 3
  %1160 = add i64 %1159, %1128
  %1161 = add i64 %2752, 58
  store i64 %1161, i64* %PC, align 8
  %1162 = load double, double* %53, align 1
  %1163 = inttoptr i64 %1160 to double*
  %1164 = load double, double* %1163, align 8
  %1165 = fdiv double %1162, %1164
  store double %1165, double* %53, align 1, !tbaa !2452
  %1166 = add i64 %1153, -16
  %1167 = add i64 %2752, 62
  store i64 %1167, i64* %PC, align 8
  %1168 = inttoptr i64 %1166 to i64*
  %1169 = load i64, i64* %1168, align 8
  store i64 %1169, i64* %RAX, align 8, !tbaa !2428
  %1170 = add i64 %1153, -8
  %1171 = add i64 %2752, 65
  store i64 %1171, i64* %PC, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, -1
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX, align 8, !tbaa !2428
  %1176 = sext i32 %1174 to i64
  %1177 = shl nsw i64 %1176, 13
  store i64 %1177, i64* %RDX, align 8, !tbaa !2428
  %1178 = lshr i64 %1176, 50
  %1179 = and i64 %1178, 1
  %1180 = add i64 %1177, %1169
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp ult i64 %1180, %1169
  %1182 = icmp ult i64 %1180, %1177
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %47, align 1, !tbaa !2432
  %1185 = trunc i64 %1180 to i32
  %1186 = and i32 %1185, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186) #8
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %48, align 1, !tbaa !2446
  %1191 = xor i64 %1169, %1180
  %1192 = lshr i64 %1191, 4
  %1193 = trunc i64 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %49, align 1, !tbaa !2450
  %1195 = icmp eq i64 %1180, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %50, align 1, !tbaa !2447
  %1197 = lshr i64 %1180, 63
  %1198 = trunc i64 %1197 to i8
  store i8 %1198, i8* %51, align 1, !tbaa !2448
  %1199 = lshr i64 %1169, 63
  %1200 = xor i64 %1197, %1199
  %1201 = xor i64 %1197, %1179
  %1202 = add nuw nsw i64 %1200, %1201
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %52, align 1, !tbaa !2449
  %1205 = load i64, i64* %RBP, align 8
  %1206 = add i64 %1205, -44
  %1207 = add i64 %2752, 82
  store i64 %1207, i64* %PC, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = sext i32 %1209 to i64
  store i64 %1210, i64* %RDX, align 8, !tbaa !2428
  %1211 = shl nsw i64 %1210, 3
  %1212 = add i64 %1211, %1180
  %1213 = add i64 %2752, 87
  store i64 %1213, i64* %PC, align 8
  %1214 = load i64, i64* %1113, align 1
  %1215 = inttoptr i64 %1212 to i64*
  store i64 %1214, i64* %1215, align 8
  %1216 = load i64, i64* %RBP, align 8
  %1217 = add i64 %1216, -44
  %1218 = load i64, i64* %PC, align 8
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC, align 8
  %1220 = inttoptr i64 %1217 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = add i32 %1221, 1
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RAX, align 8, !tbaa !2428
  %1224 = icmp eq i32 %1221, -1
  %1225 = icmp eq i32 %1222, 0
  %1226 = or i1 %1224, %1225
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %47, align 1, !tbaa !2432
  %1228 = and i32 %1222, 255
  %1229 = tail call i32 @llvm.ctpop.i32(i32 %1228) #8
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = xor i8 %1231, 1
  store i8 %1232, i8* %48, align 1, !tbaa !2446
  %1233 = xor i32 %1221, %1222
  %1234 = lshr i32 %1233, 4
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  store i8 %1236, i8* %49, align 1, !tbaa !2450
  %1237 = zext i1 %1225 to i8
  store i8 %1237, i8* %50, align 1, !tbaa !2447
  %1238 = lshr i32 %1222, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %51, align 1, !tbaa !2448
  %1240 = lshr i32 %1221, 31
  %1241 = xor i32 %1238, %1240
  %1242 = add nuw nsw i32 %1241, %1238
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %52, align 1, !tbaa !2449
  %1245 = add i64 %1218, 9
  store i64 %1245, i64* %PC, align 8
  store i32 %1222, i32* %1220, align 4
  %1246 = load i64, i64* %PC, align 8
  %1247 = add i64 %1246, -108
  store i64 %1247, i64* %PC, align 8, !tbaa !2428
  br label %block_400fc7

block_400d1a:                                     ; preds = %block_400d0e
  %1248 = add i64 %2754, -16
  %1249 = add i64 %2790, 4
  store i64 %1249, i64* %PC, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX, align 8, !tbaa !2428
  %1252 = add i64 %2790, 8
  store i64 %1252, i64* %PC, align 8
  %1253 = load i32, i32* %2757, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = shl nsw i64 %1254, 13
  store i64 %1255, i64* %RCX, align 8, !tbaa !2428
  %1256 = lshr i64 %1254, 50
  %1257 = and i64 %1256, 1
  %1258 = add i64 %1255, %1251
  store i64 %1258, i64* %RAX, align 8, !tbaa !2428
  %1259 = icmp ult i64 %1258, %1251
  %1260 = icmp ult i64 %1258, %1255
  %1261 = or i1 %1259, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %47, align 1, !tbaa !2432
  %1263 = trunc i64 %1258 to i32
  %1264 = and i32 %1263, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264) #8
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %48, align 1, !tbaa !2446
  %1269 = xor i64 %1251, %1258
  %1270 = lshr i64 %1269, 4
  %1271 = trunc i64 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %49, align 1, !tbaa !2450
  %1273 = icmp eq i64 %1258, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %50, align 1, !tbaa !2447
  %1275 = lshr i64 %1258, 63
  %1276 = trunc i64 %1275 to i8
  store i8 %1276, i8* %51, align 1, !tbaa !2448
  %1277 = lshr i64 %1251, 63
  %1278 = xor i64 %1275, %1277
  %1279 = xor i64 %1275, %1257
  %1280 = add nuw nsw i64 %1278, %1279
  %1281 = icmp eq i64 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %52, align 1, !tbaa !2449
  %1283 = add i64 %2790, 18
  store i64 %1283, i64* %PC, align 8
  %1284 = load i32, i32* %2762, align 4
  %1285 = add i32 %1284, -1
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RDX, align 8, !tbaa !2428
  %1287 = icmp eq i32 %1284, 0
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %47, align 1, !tbaa !2432
  %1289 = and i32 %1285, 255
  %1290 = tail call i32 @llvm.ctpop.i32(i32 %1289) #8
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  store i8 %1293, i8* %48, align 1, !tbaa !2446
  %1294 = xor i32 %1284, %1285
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %49, align 1, !tbaa !2450
  %1298 = icmp eq i32 %1285, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %50, align 1, !tbaa !2447
  %1300 = lshr i32 %1285, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %51, align 1, !tbaa !2448
  %1302 = lshr i32 %1284, 31
  %1303 = xor i32 %1300, %1302
  %1304 = add nuw nsw i32 %1303, %1302
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %52, align 1, !tbaa !2449
  %1307 = sext i32 %1285 to i64
  store i64 %1307, i64* %RCX, align 8, !tbaa !2428
  %1308 = shl nsw i64 %1307, 3
  %1309 = add i64 %1308, %1258
  %1310 = add i64 %2790, 29
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  %1313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1312, i64* %1313, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %1314 = load i64, i64* %RBP, align 8
  %1315 = add i64 %1314, -32
  %1316 = add i64 %2790, 33
  store i64 %1316, i64* %PC, align 8
  %1317 = inttoptr i64 %1315 to i64*
  %1318 = load i64, i64* %1317, align 8
  store i64 %1318, i64* %RAX, align 8, !tbaa !2428
  %1319 = add i64 %1314, -40
  %1320 = add i64 %2790, 37
  store i64 %1320, i64* %PC, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  %1323 = sext i32 %1322 to i64
  %1324 = shl nsw i64 %1323, 13
  store i64 %1324, i64* %RCX, align 8, !tbaa !2428
  %1325 = lshr i64 %1323, 50
  %1326 = and i64 %1325, 1
  %1327 = add i64 %1324, %1318
  store i64 %1327, i64* %RAX, align 8, !tbaa !2428
  %1328 = icmp ult i64 %1327, %1318
  %1329 = icmp ult i64 %1327, %1324
  %1330 = or i1 %1328, %1329
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %47, align 1, !tbaa !2432
  %1332 = trunc i64 %1327 to i32
  %1333 = and i32 %1332, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333) #8
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %48, align 1, !tbaa !2446
  %1338 = xor i64 %1318, %1327
  %1339 = lshr i64 %1338, 4
  %1340 = trunc i64 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %49, align 1, !tbaa !2450
  %1342 = icmp eq i64 %1327, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %50, align 1, !tbaa !2447
  %1344 = lshr i64 %1327, 63
  %1345 = trunc i64 %1344 to i8
  store i8 %1345, i8* %51, align 1, !tbaa !2448
  %1346 = lshr i64 %1318, 63
  %1347 = xor i64 %1344, %1346
  %1348 = xor i64 %1344, %1326
  %1349 = add nuw nsw i64 %1347, %1348
  %1350 = icmp eq i64 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %52, align 1, !tbaa !2449
  %1352 = add i64 %1314, -8
  %1353 = add i64 %2790, 47
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = add i32 %1355, -1
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RDX, align 8, !tbaa !2428
  %1358 = icmp eq i32 %1355, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %47, align 1, !tbaa !2432
  %1360 = and i32 %1356, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360) #8
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %48, align 1, !tbaa !2446
  %1365 = xor i32 %1355, %1356
  %1366 = lshr i32 %1365, 4
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %49, align 1, !tbaa !2450
  %1369 = icmp eq i32 %1356, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %50, align 1, !tbaa !2447
  %1371 = lshr i32 %1356, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %51, align 1, !tbaa !2448
  %1373 = lshr i32 %1355, 31
  %1374 = xor i32 %1371, %1373
  %1375 = add nuw nsw i32 %1374, %1373
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %52, align 1, !tbaa !2449
  %1378 = sext i32 %1356 to i64
  store i64 %1378, i64* %RCX, align 8, !tbaa !2428
  %1379 = shl nsw i64 %1378, 3
  %1380 = add i64 %1379, %1327
  %1381 = add i64 %2790, 58
  store i64 %1381, i64* %PC, align 8
  %1382 = load double, double* %53, align 1
  %1383 = inttoptr i64 %1380 to double*
  %1384 = load double, double* %1383, align 8
  %1385 = fdiv double %1382, %1384
  store double %1385, double* %53, align 1, !tbaa !2452
  %1386 = load i64, i64* %RBP, align 8
  %1387 = add i64 %1386, -16
  %1388 = add i64 %2790, 62
  store i64 %1388, i64* %PC, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RAX, align 8, !tbaa !2428
  %1391 = add i64 %1386, -40
  %1392 = add i64 %2790, 66
  store i64 %1392, i64* %PC, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = shl nsw i64 %1395, 13
  store i64 %1396, i64* %RCX, align 8, !tbaa !2428
  %1397 = lshr i64 %1395, 50
  %1398 = and i64 %1397, 1
  %1399 = add i64 %1396, %1390
  store i64 %1399, i64* %RAX, align 8, !tbaa !2428
  %1400 = icmp ult i64 %1399, %1390
  %1401 = icmp ult i64 %1399, %1396
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %47, align 1, !tbaa !2432
  %1404 = trunc i64 %1399 to i32
  %1405 = and i32 %1404, 255
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405) #8
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %48, align 1, !tbaa !2446
  %1410 = xor i64 %1390, %1399
  %1411 = lshr i64 %1410, 4
  %1412 = trunc i64 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %49, align 1, !tbaa !2450
  %1414 = icmp eq i64 %1399, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %50, align 1, !tbaa !2447
  %1416 = lshr i64 %1399, 63
  %1417 = trunc i64 %1416 to i8
  store i8 %1417, i8* %51, align 1, !tbaa !2448
  %1418 = lshr i64 %1390, 63
  %1419 = xor i64 %1416, %1418
  %1420 = xor i64 %1416, %1398
  %1421 = add nuw nsw i64 %1419, %1420
  %1422 = icmp eq i64 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %52, align 1, !tbaa !2449
  %1424 = add i64 %1386, -8
  %1425 = add i64 %2790, 76
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = add i32 %1427, -1
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RDX, align 8, !tbaa !2428
  %1430 = icmp eq i32 %1427, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %47, align 1, !tbaa !2432
  %1432 = and i32 %1428, 255
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432) #8
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %48, align 1, !tbaa !2446
  %1437 = xor i32 %1427, %1428
  %1438 = lshr i32 %1437, 4
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  store i8 %1440, i8* %49, align 1, !tbaa !2450
  %1441 = icmp eq i32 %1428, 0
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %50, align 1, !tbaa !2447
  %1443 = lshr i32 %1428, 31
  %1444 = trunc i32 %1443 to i8
  store i8 %1444, i8* %51, align 1, !tbaa !2448
  %1445 = lshr i32 %1427, 31
  %1446 = xor i32 %1443, %1445
  %1447 = add nuw nsw i32 %1446, %1445
  %1448 = icmp eq i32 %1447, 2
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %52, align 1, !tbaa !2449
  %1450 = sext i32 %1428 to i64
  store i64 %1450, i64* %RCX, align 8, !tbaa !2428
  %1451 = shl nsw i64 %1450, 3
  %1452 = add i64 %1451, %1399
  %1453 = add i64 %2790, 87
  store i64 %1453, i64* %PC, align 8
  %1454 = load i64, i64* %1313, align 1
  %1455 = inttoptr i64 %1452 to i64*
  store i64 %1454, i64* %1455, align 8
  %1456 = load i64, i64* %RBP, align 8
  %1457 = add i64 %1456, -40
  %1458 = load i64, i64* %PC, align 8
  %1459 = add i64 %1458, 3
  store i64 %1459, i64* %PC, align 8
  %1460 = inttoptr i64 %1457 to i32*
  %1461 = load i32, i32* %1460, align 4
  %1462 = add i32 %1461, 1
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RAX, align 8, !tbaa !2428
  %1464 = icmp eq i32 %1461, -1
  %1465 = icmp eq i32 %1462, 0
  %1466 = or i1 %1464, %1465
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %47, align 1, !tbaa !2432
  %1468 = and i32 %1462, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468) #8
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %48, align 1, !tbaa !2446
  %1473 = xor i32 %1461, %1462
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %49, align 1, !tbaa !2450
  %1477 = zext i1 %1465 to i8
  store i8 %1477, i8* %50, align 1, !tbaa !2447
  %1478 = lshr i32 %1462, 31
  %1479 = trunc i32 %1478 to i8
  store i8 %1479, i8* %51, align 1, !tbaa !2448
  %1480 = lshr i32 %1461, 31
  %1481 = xor i32 %1478, %1480
  %1482 = add nuw nsw i32 %1481, %1478
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %52, align 1, !tbaa !2449
  %1485 = add i64 %1458, 9
  store i64 %1485, i64* %PC, align 8
  store i32 %1462, i32* %1460, align 4
  %1486 = load i64, i64* %PC, align 8
  %1487 = add i64 %1486, -108
  store i64 %1487, i64* %PC, align 8, !tbaa !2428
  br label %block_400d0e

block_400bdf:                                     ; preds = %block_400bd3
  %1488 = add i64 %2792, -16
  %1489 = add i64 %2828, 4
  store i64 %1489, i64* %PC, align 8
  %1490 = inttoptr i64 %1488 to i64*
  %1491 = load i64, i64* %1490, align 8
  store i64 %1491, i64* %RAX, align 8, !tbaa !2428
  %1492 = add i64 %2792, -40
  %1493 = add i64 %2828, 8
  store i64 %1493, i64* %PC, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = sext i32 %1495 to i64
  %1497 = shl nsw i64 %1496, 13
  store i64 %1497, i64* %RCX, align 8, !tbaa !2428
  %1498 = lshr i64 %1496, 50
  %1499 = and i64 %1498, 1
  %1500 = add i64 %1497, %1491
  store i64 %1500, i64* %RAX, align 8, !tbaa !2428
  %1501 = icmp ult i64 %1500, %1491
  %1502 = icmp ult i64 %1500, %1497
  %1503 = or i1 %1501, %1502
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %47, align 1, !tbaa !2432
  %1505 = trunc i64 %1500 to i32
  %1506 = and i32 %1505, 255
  %1507 = tail call i32 @llvm.ctpop.i32(i32 %1506) #8
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  store i8 %1510, i8* %48, align 1, !tbaa !2446
  %1511 = xor i64 %1491, %1500
  %1512 = lshr i64 %1511, 4
  %1513 = trunc i64 %1512 to i8
  %1514 = and i8 %1513, 1
  store i8 %1514, i8* %49, align 1, !tbaa !2450
  %1515 = icmp eq i64 %1500, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %50, align 1, !tbaa !2447
  %1517 = lshr i64 %1500, 63
  %1518 = trunc i64 %1517 to i8
  store i8 %1518, i8* %51, align 1, !tbaa !2448
  %1519 = lshr i64 %1491, 63
  %1520 = xor i64 %1517, %1519
  %1521 = xor i64 %1517, %1499
  %1522 = add nuw nsw i64 %1520, %1521
  %1523 = icmp eq i64 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %52, align 1, !tbaa !2449
  %1525 = add i64 %2828, 19
  store i64 %1525, i64* %PC, align 8
  %1526 = load i32, i32* %2795, align 4
  %1527 = sext i32 %1526 to i64
  store i64 %1527, i64* %RCX, align 8, !tbaa !2428
  %1528 = shl nsw i64 %1527, 3
  %1529 = add i64 %1528, %1500
  %1530 = add i64 %2828, 24
  store i64 %1530, i64* %PC, align 8
  %1531 = inttoptr i64 %1529 to i64*
  %1532 = load i64, i64* %1531, align 8
  %1533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1532, i64* %1533, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %1534 = add i64 %2828, 28
  store i64 %1534, i64* %PC, align 8
  %1535 = load i64, i64* %1490, align 8
  store i64 %1535, i64* %RAX, align 8, !tbaa !2428
  %1536 = add i64 %2828, 32
  store i64 %1536, i64* %PC, align 8
  %1537 = load i32, i32* %1494, align 4
  %1538 = sext i32 %1537 to i64
  %1539 = shl nsw i64 %1538, 13
  store i64 %1539, i64* %RCX, align 8, !tbaa !2428
  %1540 = lshr i64 %1538, 50
  %1541 = and i64 %1540, 1
  %1542 = add i64 %1539, %1535
  store i64 %1542, i64* %RAX, align 8, !tbaa !2428
  %1543 = icmp ult i64 %1542, %1535
  %1544 = icmp ult i64 %1542, %1539
  %1545 = or i1 %1543, %1544
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %47, align 1, !tbaa !2432
  %1547 = trunc i64 %1542 to i32
  %1548 = and i32 %1547, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548) #8
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %48, align 1, !tbaa !2446
  %1553 = xor i64 %1535, %1542
  %1554 = lshr i64 %1553, 4
  %1555 = trunc i64 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %49, align 1, !tbaa !2450
  %1557 = icmp eq i64 %1542, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %50, align 1, !tbaa !2447
  %1559 = lshr i64 %1542, 63
  %1560 = trunc i64 %1559 to i8
  store i8 %1560, i8* %51, align 1, !tbaa !2448
  %1561 = lshr i64 %1535, 63
  %1562 = xor i64 %1559, %1561
  %1563 = xor i64 %1559, %1541
  %1564 = add nuw nsw i64 %1562, %1563
  %1565 = icmp eq i64 %1564, 2
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %52, align 1, !tbaa !2449
  %1567 = load i64, i64* %RBP, align 8
  %1568 = add i64 %1567, -44
  %1569 = add i64 %2828, 42
  store i64 %1569, i64* %PC, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = add i32 %1571, -1
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RDX, align 8, !tbaa !2428
  %1574 = icmp eq i32 %1571, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %47, align 1, !tbaa !2432
  %1576 = and i32 %1572, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576) #8
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %48, align 1, !tbaa !2446
  %1581 = xor i32 %1571, %1572
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %49, align 1, !tbaa !2450
  %1585 = icmp eq i32 %1572, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %50, align 1, !tbaa !2447
  %1587 = lshr i32 %1572, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %51, align 1, !tbaa !2448
  %1589 = lshr i32 %1571, 31
  %1590 = xor i32 %1587, %1589
  %1591 = add nuw nsw i32 %1590, %1589
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %52, align 1, !tbaa !2449
  %1594 = sext i32 %1572 to i64
  store i64 %1594, i64* %RCX, align 8, !tbaa !2428
  %1595 = shl nsw i64 %1594, 3
  %1596 = add i64 %1595, %1542
  %1597 = add i64 %2828, 53
  store i64 %1597, i64* %PC, align 8
  %1598 = inttoptr i64 %1596 to double*
  %1599 = load double, double* %1598, align 8
  store double %1599, double* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %1600 = add i64 %1567, -24
  %1601 = add i64 %2828, 57
  store i64 %1601, i64* %PC, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RAX, align 8, !tbaa !2428
  %1604 = add i64 %1567, -40
  %1605 = add i64 %2828, 61
  store i64 %1605, i64* %PC, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sext i32 %1607 to i64
  %1609 = shl nsw i64 %1608, 13
  store i64 %1609, i64* %RCX, align 8, !tbaa !2428
  %1610 = lshr i64 %1608, 50
  %1611 = and i64 %1610, 1
  %1612 = add i64 %1609, %1603
  store i64 %1612, i64* %RAX, align 8, !tbaa !2428
  %1613 = icmp ult i64 %1612, %1603
  %1614 = icmp ult i64 %1612, %1609
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %47, align 1, !tbaa !2432
  %1617 = trunc i64 %1612 to i32
  %1618 = and i32 %1617, 255
  %1619 = tail call i32 @llvm.ctpop.i32(i32 %1618) #8
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  store i8 %1622, i8* %48, align 1, !tbaa !2446
  %1623 = xor i64 %1603, %1612
  %1624 = lshr i64 %1623, 4
  %1625 = trunc i64 %1624 to i8
  %1626 = and i8 %1625, 1
  store i8 %1626, i8* %49, align 1, !tbaa !2450
  %1627 = icmp eq i64 %1612, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %50, align 1, !tbaa !2447
  %1629 = lshr i64 %1612, 63
  %1630 = trunc i64 %1629 to i8
  store i8 %1630, i8* %51, align 1, !tbaa !2448
  %1631 = lshr i64 %1603, 63
  %1632 = xor i64 %1629, %1631
  %1633 = xor i64 %1629, %1611
  %1634 = add nuw nsw i64 %1632, %1633
  %1635 = icmp eq i64 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %52, align 1, !tbaa !2449
  %1637 = load i64, i64* %RBP, align 8
  %1638 = add i64 %1637, -44
  %1639 = add i64 %2828, 72
  store i64 %1639, i64* %PC, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = sext i32 %1641 to i64
  store i64 %1642, i64* %RCX, align 8, !tbaa !2428
  %1643 = shl nsw i64 %1642, 3
  %1644 = add i64 %1643, %1612
  %1645 = add i64 %2828, 77
  store i64 %1645, i64* %PC, align 8
  %1646 = inttoptr i64 %1644 to double*
  %1647 = load double, double* %1646, align 8
  %1648 = fmul double %1599, %1647
  store double %1648, double* %56, align 1, !tbaa !2452
  store i64 0, i64* %57, align 1, !tbaa !2452
  %1649 = add i64 %1637, -32
  %1650 = add i64 %2828, 81
  store i64 %1650, i64* %PC, align 8
  %1651 = inttoptr i64 %1649 to i64*
  %1652 = load i64, i64* %1651, align 8
  store i64 %1652, i64* %RAX, align 8, !tbaa !2428
  %1653 = add i64 %1637, -40
  %1654 = add i64 %2828, 85
  store i64 %1654, i64* %PC, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = sext i32 %1656 to i64
  %1658 = shl nsw i64 %1657, 13
  store i64 %1658, i64* %RCX, align 8, !tbaa !2428
  %1659 = lshr i64 %1657, 50
  %1660 = and i64 %1659, 1
  %1661 = add i64 %1658, %1652
  store i64 %1661, i64* %RAX, align 8, !tbaa !2428
  %1662 = icmp ult i64 %1661, %1652
  %1663 = icmp ult i64 %1661, %1658
  %1664 = or i1 %1662, %1663
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %47, align 1, !tbaa !2432
  %1666 = trunc i64 %1661 to i32
  %1667 = and i32 %1666, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667) #8
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %48, align 1, !tbaa !2446
  %1672 = xor i64 %1652, %1661
  %1673 = lshr i64 %1672, 4
  %1674 = trunc i64 %1673 to i8
  %1675 = and i8 %1674, 1
  store i8 %1675, i8* %49, align 1, !tbaa !2450
  %1676 = icmp eq i64 %1661, 0
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %50, align 1, !tbaa !2447
  %1678 = lshr i64 %1661, 63
  %1679 = trunc i64 %1678 to i8
  store i8 %1679, i8* %51, align 1, !tbaa !2448
  %1680 = lshr i64 %1652, 63
  %1681 = xor i64 %1678, %1680
  %1682 = xor i64 %1678, %1660
  %1683 = add nuw nsw i64 %1681, %1682
  %1684 = icmp eq i64 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %52, align 1, !tbaa !2449
  %1686 = add i64 %2828, 95
  store i64 %1686, i64* %PC, align 8
  %1687 = load i32, i32* %1640, align 4
  %1688 = add i32 %1687, -1
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RDX, align 8, !tbaa !2428
  %1690 = icmp eq i32 %1687, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %47, align 1, !tbaa !2432
  %1692 = and i32 %1688, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692) #8
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %48, align 1, !tbaa !2446
  %1697 = xor i32 %1687, %1688
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %49, align 1, !tbaa !2450
  %1701 = icmp eq i32 %1688, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %50, align 1, !tbaa !2447
  %1703 = lshr i32 %1688, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %51, align 1, !tbaa !2448
  %1705 = lshr i32 %1687, 31
  %1706 = xor i32 %1703, %1705
  %1707 = add nuw nsw i32 %1706, %1705
  %1708 = icmp eq i32 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %52, align 1, !tbaa !2449
  %1710 = sext i32 %1688 to i64
  store i64 %1710, i64* %RCX, align 8, !tbaa !2428
  %1711 = shl nsw i64 %1710, 3
  %1712 = add i64 %1711, %1661
  %1713 = add i64 %2828, 106
  store i64 %1713, i64* %PC, align 8
  %1714 = load double, double* %56, align 1
  %1715 = inttoptr i64 %1712 to double*
  %1716 = load double, double* %1715, align 8
  %1717 = fdiv double %1714, %1716
  store double %1717, double* %56, align 1, !tbaa !2452
  %1718 = load double, double* %53, align 1
  %1719 = fsub double %1718, %1717
  store double %1719, double* %53, align 1, !tbaa !2452
  %1720 = load i64, i64* %RBP, align 8
  %1721 = add i64 %1720, -16
  %1722 = add i64 %2828, 114
  store i64 %1722, i64* %PC, align 8
  %1723 = inttoptr i64 %1721 to i64*
  %1724 = load i64, i64* %1723, align 8
  store i64 %1724, i64* %RAX, align 8, !tbaa !2428
  %1725 = add i64 %1720, -40
  %1726 = add i64 %2828, 118
  store i64 %1726, i64* %PC, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = sext i32 %1728 to i64
  %1730 = shl nsw i64 %1729, 13
  store i64 %1730, i64* %RCX, align 8, !tbaa !2428
  %1731 = lshr i64 %1729, 50
  %1732 = and i64 %1731, 1
  %1733 = add i64 %1730, %1724
  store i64 %1733, i64* %RAX, align 8, !tbaa !2428
  %1734 = icmp ult i64 %1733, %1724
  %1735 = icmp ult i64 %1733, %1730
  %1736 = or i1 %1734, %1735
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %47, align 1, !tbaa !2432
  %1738 = trunc i64 %1733 to i32
  %1739 = and i32 %1738, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739) #8
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %48, align 1, !tbaa !2446
  %1744 = xor i64 %1724, %1733
  %1745 = lshr i64 %1744, 4
  %1746 = trunc i64 %1745 to i8
  %1747 = and i8 %1746, 1
  store i8 %1747, i8* %49, align 1, !tbaa !2450
  %1748 = icmp eq i64 %1733, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %50, align 1, !tbaa !2447
  %1750 = lshr i64 %1733, 63
  %1751 = trunc i64 %1750 to i8
  store i8 %1751, i8* %51, align 1, !tbaa !2448
  %1752 = lshr i64 %1724, 63
  %1753 = xor i64 %1750, %1752
  %1754 = xor i64 %1750, %1732
  %1755 = add nuw nsw i64 %1753, %1754
  %1756 = icmp eq i64 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %52, align 1, !tbaa !2449
  %1758 = add i64 %1720, -44
  %1759 = add i64 %2828, 129
  store i64 %1759, i64* %PC, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = sext i32 %1761 to i64
  store i64 %1762, i64* %RCX, align 8, !tbaa !2428
  %1763 = shl nsw i64 %1762, 3
  %1764 = add i64 %1763, %1733
  %1765 = add i64 %2828, 134
  store i64 %1765, i64* %PC, align 8
  %1766 = inttoptr i64 %1764 to double*
  store double %1719, double* %1766, align 8
  %1767 = load i64, i64* %RBP, align 8
  %1768 = add i64 %1767, -32
  %1769 = load i64, i64* %PC, align 8
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC, align 8
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX, align 8, !tbaa !2428
  %1773 = add i64 %1767, -40
  %1774 = add i64 %1769, 8
  store i64 %1774, i64* %PC, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = sext i32 %1776 to i64
  %1778 = shl nsw i64 %1777, 13
  store i64 %1778, i64* %RCX, align 8, !tbaa !2428
  %1779 = lshr i64 %1777, 50
  %1780 = and i64 %1779, 1
  %1781 = add i64 %1778, %1772
  store i64 %1781, i64* %RAX, align 8, !tbaa !2428
  %1782 = icmp ult i64 %1781, %1772
  %1783 = icmp ult i64 %1781, %1778
  %1784 = or i1 %1782, %1783
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %47, align 1, !tbaa !2432
  %1786 = trunc i64 %1781 to i32
  %1787 = and i32 %1786, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787) #8
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %48, align 1, !tbaa !2446
  %1792 = xor i64 %1772, %1781
  %1793 = lshr i64 %1792, 4
  %1794 = trunc i64 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %49, align 1, !tbaa !2450
  %1796 = icmp eq i64 %1781, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %50, align 1, !tbaa !2447
  %1798 = lshr i64 %1781, 63
  %1799 = trunc i64 %1798 to i8
  store i8 %1799, i8* %51, align 1, !tbaa !2448
  %1800 = lshr i64 %1772, 63
  %1801 = xor i64 %1798, %1800
  %1802 = xor i64 %1798, %1780
  %1803 = add nuw nsw i64 %1801, %1802
  %1804 = icmp eq i64 %1803, 2
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %52, align 1, !tbaa !2449
  %1806 = add i64 %1767, -44
  %1807 = add i64 %1769, 19
  store i64 %1807, i64* %PC, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = sext i32 %1809 to i64
  store i64 %1810, i64* %RCX, align 8, !tbaa !2428
  %1811 = shl nsw i64 %1810, 3
  %1812 = add i64 %1811, %1781
  %1813 = add i64 %1769, 24
  store i64 %1813, i64* %PC, align 8
  %1814 = inttoptr i64 %1812 to i64*
  %1815 = load i64, i64* %1814, align 8
  store i64 %1815, i64* %1533, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %1816 = add i64 %1767, -24
  %1817 = add i64 %1769, 28
  store i64 %1817, i64* %PC, align 8
  %1818 = inttoptr i64 %1816 to i64*
  %1819 = load i64, i64* %1818, align 8
  store i64 %1819, i64* %RAX, align 8, !tbaa !2428
  %1820 = add i64 %1769, 32
  store i64 %1820, i64* %PC, align 8
  %1821 = load i32, i32* %1775, align 4
  %1822 = sext i32 %1821 to i64
  %1823 = shl nsw i64 %1822, 13
  store i64 %1823, i64* %RCX, align 8, !tbaa !2428
  %1824 = lshr i64 %1822, 50
  %1825 = and i64 %1824, 1
  %1826 = add i64 %1823, %1819
  store i64 %1826, i64* %RAX, align 8, !tbaa !2428
  %1827 = icmp ult i64 %1826, %1819
  %1828 = icmp ult i64 %1826, %1823
  %1829 = or i1 %1827, %1828
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %47, align 1, !tbaa !2432
  %1831 = trunc i64 %1826 to i32
  %1832 = and i32 %1831, 255
  %1833 = tail call i32 @llvm.ctpop.i32(i32 %1832) #8
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = xor i8 %1835, 1
  store i8 %1836, i8* %48, align 1, !tbaa !2446
  %1837 = xor i64 %1819, %1826
  %1838 = lshr i64 %1837, 4
  %1839 = trunc i64 %1838 to i8
  %1840 = and i8 %1839, 1
  store i8 %1840, i8* %49, align 1, !tbaa !2450
  %1841 = icmp eq i64 %1826, 0
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %50, align 1, !tbaa !2447
  %1843 = lshr i64 %1826, 63
  %1844 = trunc i64 %1843 to i8
  store i8 %1844, i8* %51, align 1, !tbaa !2448
  %1845 = lshr i64 %1819, 63
  %1846 = xor i64 %1843, %1845
  %1847 = xor i64 %1843, %1825
  %1848 = add nuw nsw i64 %1846, %1847
  %1849 = icmp eq i64 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %52, align 1, !tbaa !2449
  %1851 = load i64, i64* %RBP, align 8
  %1852 = add i64 %1851, -44
  %1853 = add i64 %1769, 43
  store i64 %1853, i64* %PC, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = sext i32 %1855 to i64
  store i64 %1856, i64* %RCX, align 8, !tbaa !2428
  %1857 = shl nsw i64 %1856, 3
  %1858 = add i64 %1857, %1826
  %1859 = add i64 %1769, 48
  store i64 %1859, i64* %PC, align 8
  %1860 = inttoptr i64 %1858 to double*
  %1861 = load double, double* %1860, align 8
  store double %1861, double* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %1862 = add i64 %1851, -24
  %1863 = add i64 %1769, 52
  store i64 %1863, i64* %PC, align 8
  %1864 = inttoptr i64 %1862 to i64*
  %1865 = load i64, i64* %1864, align 8
  store i64 %1865, i64* %RAX, align 8, !tbaa !2428
  %1866 = add i64 %1851, -40
  %1867 = add i64 %1769, 56
  store i64 %1867, i64* %PC, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  %1871 = shl nsw i64 %1870, 13
  store i64 %1871, i64* %RCX, align 8, !tbaa !2428
  %1872 = lshr i64 %1870, 50
  %1873 = and i64 %1872, 1
  %1874 = add i64 %1871, %1865
  store i64 %1874, i64* %RAX, align 8, !tbaa !2428
  %1875 = icmp ult i64 %1874, %1865
  %1876 = icmp ult i64 %1874, %1871
  %1877 = or i1 %1875, %1876
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %47, align 1, !tbaa !2432
  %1879 = trunc i64 %1874 to i32
  %1880 = and i32 %1879, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880) #8
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %48, align 1, !tbaa !2446
  %1885 = xor i64 %1865, %1874
  %1886 = lshr i64 %1885, 4
  %1887 = trunc i64 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %49, align 1, !tbaa !2450
  %1889 = icmp eq i64 %1874, 0
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %50, align 1, !tbaa !2447
  %1891 = lshr i64 %1874, 63
  %1892 = trunc i64 %1891 to i8
  store i8 %1892, i8* %51, align 1, !tbaa !2448
  %1893 = lshr i64 %1865, 63
  %1894 = xor i64 %1891, %1893
  %1895 = xor i64 %1891, %1873
  %1896 = add nuw nsw i64 %1894, %1895
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %52, align 1, !tbaa !2449
  %1899 = add i64 %1769, 67
  store i64 %1899, i64* %PC, align 8
  %1900 = load i32, i32* %1854, align 4
  %1901 = sext i32 %1900 to i64
  store i64 %1901, i64* %RCX, align 8, !tbaa !2428
  %1902 = shl nsw i64 %1901, 3
  %1903 = add i64 %1902, %1874
  %1904 = add i64 %1769, 72
  store i64 %1904, i64* %PC, align 8
  %1905 = inttoptr i64 %1903 to double*
  %1906 = load double, double* %1905, align 8
  %1907 = fmul double %1861, %1906
  store double %1907, double* %56, align 1, !tbaa !2452
  store i64 0, i64* %57, align 1, !tbaa !2452
  %1908 = add i64 %1851, -32
  %1909 = add i64 %1769, 76
  store i64 %1909, i64* %PC, align 8
  %1910 = inttoptr i64 %1908 to i64*
  %1911 = load i64, i64* %1910, align 8
  store i64 %1911, i64* %RAX, align 8, !tbaa !2428
  %1912 = load i64, i64* %RBP, align 8
  %1913 = add i64 %1912, -40
  %1914 = add i64 %1769, 80
  store i64 %1914, i64* %PC, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = sext i32 %1916 to i64
  %1918 = shl nsw i64 %1917, 13
  store i64 %1918, i64* %RCX, align 8, !tbaa !2428
  %1919 = lshr i64 %1917, 50
  %1920 = and i64 %1919, 1
  %1921 = add i64 %1918, %1911
  store i64 %1921, i64* %RAX, align 8, !tbaa !2428
  %1922 = icmp ult i64 %1921, %1911
  %1923 = icmp ult i64 %1921, %1918
  %1924 = or i1 %1922, %1923
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %47, align 1, !tbaa !2432
  %1926 = trunc i64 %1921 to i32
  %1927 = and i32 %1926, 255
  %1928 = tail call i32 @llvm.ctpop.i32(i32 %1927) #8
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = xor i8 %1930, 1
  store i8 %1931, i8* %48, align 1, !tbaa !2446
  %1932 = xor i64 %1911, %1921
  %1933 = lshr i64 %1932, 4
  %1934 = trunc i64 %1933 to i8
  %1935 = and i8 %1934, 1
  store i8 %1935, i8* %49, align 1, !tbaa !2450
  %1936 = icmp eq i64 %1921, 0
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %50, align 1, !tbaa !2447
  %1938 = lshr i64 %1921, 63
  %1939 = trunc i64 %1938 to i8
  store i8 %1939, i8* %51, align 1, !tbaa !2448
  %1940 = lshr i64 %1911, 63
  %1941 = xor i64 %1938, %1940
  %1942 = xor i64 %1938, %1920
  %1943 = add nuw nsw i64 %1941, %1942
  %1944 = icmp eq i64 %1943, 2
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %52, align 1, !tbaa !2449
  %1946 = add i64 %1912, -44
  %1947 = add i64 %1769, 90
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = add i32 %1949, -1
  %1951 = zext i32 %1950 to i64
  store i64 %1951, i64* %RDX, align 8, !tbaa !2428
  %1952 = icmp eq i32 %1949, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %47, align 1, !tbaa !2432
  %1954 = and i32 %1950, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954) #8
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %48, align 1, !tbaa !2446
  %1959 = xor i32 %1949, %1950
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %49, align 1, !tbaa !2450
  %1963 = icmp eq i32 %1950, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %50, align 1, !tbaa !2447
  %1965 = lshr i32 %1950, 31
  %1966 = trunc i32 %1965 to i8
  store i8 %1966, i8* %51, align 1, !tbaa !2448
  %1967 = lshr i32 %1949, 31
  %1968 = xor i32 %1965, %1967
  %1969 = add nuw nsw i32 %1968, %1967
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %52, align 1, !tbaa !2449
  %1972 = sext i32 %1950 to i64
  store i64 %1972, i64* %RCX, align 8, !tbaa !2428
  %1973 = shl nsw i64 %1972, 3
  %1974 = add i64 %1973, %1921
  %1975 = add i64 %1769, 101
  store i64 %1975, i64* %PC, align 8
  %1976 = load double, double* %56, align 1
  %1977 = inttoptr i64 %1974 to double*
  %1978 = load double, double* %1977, align 8
  %1979 = fdiv double %1976, %1978
  store double %1979, double* %56, align 1, !tbaa !2452
  %1980 = load double, double* %53, align 1
  %1981 = fsub double %1980, %1979
  store double %1981, double* %53, align 1, !tbaa !2452
  %1982 = load i64, i64* %RBP, align 8
  %1983 = add i64 %1982, -32
  %1984 = add i64 %1769, 109
  store i64 %1984, i64* %PC, align 8
  %1985 = inttoptr i64 %1983 to i64*
  %1986 = load i64, i64* %1985, align 8
  store i64 %1986, i64* %RAX, align 8, !tbaa !2428
  %1987 = add i64 %1982, -40
  %1988 = add i64 %1769, 113
  store i64 %1988, i64* %PC, align 8
  %1989 = inttoptr i64 %1987 to i32*
  %1990 = load i32, i32* %1989, align 4
  %1991 = sext i32 %1990 to i64
  %1992 = shl nsw i64 %1991, 13
  store i64 %1992, i64* %RCX, align 8, !tbaa !2428
  %1993 = lshr i64 %1991, 50
  %1994 = and i64 %1993, 1
  %1995 = add i64 %1992, %1986
  store i64 %1995, i64* %RAX, align 8, !tbaa !2428
  %1996 = icmp ult i64 %1995, %1986
  %1997 = icmp ult i64 %1995, %1992
  %1998 = or i1 %1996, %1997
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %47, align 1, !tbaa !2432
  %2000 = trunc i64 %1995 to i32
  %2001 = and i32 %2000, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001) #8
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %48, align 1, !tbaa !2446
  %2006 = xor i64 %1986, %1995
  %2007 = lshr i64 %2006, 4
  %2008 = trunc i64 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %49, align 1, !tbaa !2450
  %2010 = icmp eq i64 %1995, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %50, align 1, !tbaa !2447
  %2012 = lshr i64 %1995, 63
  %2013 = trunc i64 %2012 to i8
  store i8 %2013, i8* %51, align 1, !tbaa !2448
  %2014 = lshr i64 %1986, 63
  %2015 = xor i64 %2012, %2014
  %2016 = xor i64 %2012, %1994
  %2017 = add nuw nsw i64 %2015, %2016
  %2018 = icmp eq i64 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %52, align 1, !tbaa !2449
  %2020 = add i64 %1982, -44
  %2021 = add i64 %1769, 124
  store i64 %2021, i64* %PC, align 8
  %2022 = inttoptr i64 %2020 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = sext i32 %2023 to i64
  store i64 %2024, i64* %RCX, align 8, !tbaa !2428
  %2025 = shl nsw i64 %2024, 3
  %2026 = add i64 %2025, %1995
  %2027 = add i64 %1769, 129
  store i64 %2027, i64* %PC, align 8
  %2028 = inttoptr i64 %2026 to double*
  store double %1981, double* %2028, align 8
  %2029 = load i64, i64* %RBP, align 8
  %2030 = add i64 %2029, -44
  %2031 = load i64, i64* %PC, align 8
  %2032 = add i64 %2031, 3
  store i64 %2032, i64* %PC, align 8
  %2033 = inttoptr i64 %2030 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = add i32 %2034, 1
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RAX, align 8, !tbaa !2428
  %2037 = icmp eq i32 %2034, -1
  %2038 = icmp eq i32 %2035, 0
  %2039 = or i1 %2037, %2038
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %47, align 1, !tbaa !2432
  %2041 = and i32 %2035, 255
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041) #8
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  store i8 %2045, i8* %48, align 1, !tbaa !2446
  %2046 = xor i32 %2034, %2035
  %2047 = lshr i32 %2046, 4
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  store i8 %2049, i8* %49, align 1, !tbaa !2450
  %2050 = zext i1 %2038 to i8
  store i8 %2050, i8* %50, align 1, !tbaa !2447
  %2051 = lshr i32 %2035, 31
  %2052 = trunc i32 %2051 to i8
  store i8 %2052, i8* %51, align 1, !tbaa !2448
  %2053 = lshr i32 %2034, 31
  %2054 = xor i32 %2051, %2053
  %2055 = add nuw nsw i32 %2054, %2051
  %2056 = icmp eq i32 %2055, 2
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %52, align 1, !tbaa !2449
  %2058 = add i64 %2031, 9
  store i64 %2058, i64* %PC, align 8
  store i32 %2035, i32* %2033, align 4
  %2059 = load i64, i64* %PC, align 8
  %2060 = add i64 %2059, -284
  store i64 %2060, i64* %PC, align 8, !tbaa !2428
  br label %block_400bd3

block_401128:                                     ; preds = %block_40103f
  %2061 = add i64 %2869, -36
  %2062 = add i64 %2907, 8
  store i64 %2062, i64* %PC, align 8
  %2063 = inttoptr i64 %2061 to i32*
  %2064 = load i32, i32* %2063, align 4
  %2065 = add i32 %2064, 1
  %2066 = zext i32 %2065 to i64
  store i64 %2066, i64* %RAX, align 8, !tbaa !2428
  %2067 = icmp eq i32 %2064, -1
  %2068 = icmp eq i32 %2065, 0
  %2069 = or i1 %2067, %2068
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %47, align 1, !tbaa !2432
  %2071 = and i32 %2065, 255
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071) #8
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %48, align 1, !tbaa !2446
  %2076 = xor i32 %2064, %2065
  %2077 = lshr i32 %2076, 4
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %49, align 1, !tbaa !2450
  %2080 = zext i1 %2068 to i8
  store i8 %2080, i8* %50, align 1, !tbaa !2447
  %2081 = lshr i32 %2065, 31
  %2082 = trunc i32 %2081 to i8
  store i8 %2082, i8* %51, align 1, !tbaa !2448
  %2083 = lshr i32 %2064, 31
  %2084 = xor i32 %2081, %2083
  %2085 = add nuw nsw i32 %2084, %2081
  %2086 = icmp eq i32 %2085, 2
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %52, align 1, !tbaa !2449
  %2088 = add i64 %2907, 14
  store i64 %2088, i64* %PC, align 8
  store i32 %2065, i32* %2063, align 4
  %2089 = load i64, i64* %PC, align 8
  %2090 = add i64 %2089, -1417
  store i64 %2090, i64* %PC, align 8, !tbaa !2428
  br label %block_400bad

block_400e98:                                     ; preds = %block_400e8c
  %2091 = add i64 %2830, -16
  %2092 = add i64 %2866, 4
  store i64 %2092, i64* %PC, align 8
  %2093 = inttoptr i64 %2091 to i64*
  %2094 = load i64, i64* %2093, align 8
  store i64 %2094, i64* %RAX, align 8, !tbaa !2428
  %2095 = add i64 %2830, -40
  %2096 = add i64 %2866, 8
  store i64 %2096, i64* %PC, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = sext i32 %2098 to i64
  %2100 = shl nsw i64 %2099, 13
  store i64 %2100, i64* %RCX, align 8, !tbaa !2428
  %2101 = lshr i64 %2099, 50
  %2102 = and i64 %2101, 1
  %2103 = add i64 %2100, %2094
  store i64 %2103, i64* %RAX, align 8, !tbaa !2428
  %2104 = icmp ult i64 %2103, %2094
  %2105 = icmp ult i64 %2103, %2100
  %2106 = or i1 %2104, %2105
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %47, align 1, !tbaa !2432
  %2108 = trunc i64 %2103 to i32
  %2109 = and i32 %2108, 255
  %2110 = tail call i32 @llvm.ctpop.i32(i32 %2109) #8
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  store i8 %2113, i8* %48, align 1, !tbaa !2446
  %2114 = xor i64 %2094, %2103
  %2115 = lshr i64 %2114, 4
  %2116 = trunc i64 %2115 to i8
  %2117 = and i8 %2116, 1
  store i8 %2117, i8* %49, align 1, !tbaa !2450
  %2118 = icmp eq i64 %2103, 0
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %50, align 1, !tbaa !2447
  %2120 = lshr i64 %2103, 63
  %2121 = trunc i64 %2120 to i8
  store i8 %2121, i8* %51, align 1, !tbaa !2448
  %2122 = lshr i64 %2094, 63
  %2123 = xor i64 %2120, %2122
  %2124 = xor i64 %2120, %2102
  %2125 = add nuw nsw i64 %2123, %2124
  %2126 = icmp eq i64 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %52, align 1, !tbaa !2449
  %2128 = add i64 %2866, 19
  store i64 %2128, i64* %PC, align 8
  %2129 = load i32, i32* %2833, align 4
  %2130 = sext i32 %2129 to i64
  store i64 %2130, i64* %RCX, align 8, !tbaa !2428
  %2131 = shl nsw i64 %2130, 3
  %2132 = add i64 %2131, %2103
  %2133 = add i64 %2866, 24
  store i64 %2133, i64* %PC, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  %2136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2135, i64* %2136, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %2137 = add i64 %2866, 28
  store i64 %2137, i64* %PC, align 8
  %2138 = load i64, i64* %2093, align 8
  store i64 %2138, i64* %RAX, align 8, !tbaa !2428
  %2139 = add i64 %2866, 31
  store i64 %2139, i64* %PC, align 8
  %2140 = load i32, i32* %2097, align 4
  %2141 = add i32 %2140, -1
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RDX, align 8, !tbaa !2428
  %2143 = sext i32 %2141 to i64
  %2144 = shl nsw i64 %2143, 13
  store i64 %2144, i64* %RCX, align 8, !tbaa !2428
  %2145 = lshr i64 %2143, 50
  %2146 = and i64 %2145, 1
  %2147 = add i64 %2144, %2138
  store i64 %2147, i64* %RAX, align 8, !tbaa !2428
  %2148 = icmp ult i64 %2147, %2138
  %2149 = icmp ult i64 %2147, %2144
  %2150 = or i1 %2148, %2149
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %47, align 1, !tbaa !2432
  %2152 = trunc i64 %2147 to i32
  %2153 = and i32 %2152, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153) #8
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %48, align 1, !tbaa !2446
  %2158 = xor i64 %2138, %2147
  %2159 = lshr i64 %2158, 4
  %2160 = trunc i64 %2159 to i8
  %2161 = and i8 %2160, 1
  store i8 %2161, i8* %49, align 1, !tbaa !2450
  %2162 = icmp eq i64 %2147, 0
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %50, align 1, !tbaa !2447
  %2164 = lshr i64 %2147, 63
  %2165 = trunc i64 %2164 to i8
  store i8 %2165, i8* %51, align 1, !tbaa !2448
  %2166 = lshr i64 %2138, 63
  %2167 = xor i64 %2164, %2166
  %2168 = xor i64 %2164, %2146
  %2169 = add nuw nsw i64 %2167, %2168
  %2170 = icmp eq i64 %2169, 2
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %52, align 1, !tbaa !2449
  %2172 = load i64, i64* %RBP, align 8
  %2173 = add i64 %2172, -44
  %2174 = add i64 %2866, 48
  store i64 %2174, i64* %PC, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = sext i32 %2176 to i64
  store i64 %2177, i64* %RCX, align 8, !tbaa !2428
  %2178 = shl nsw i64 %2177, 3
  %2179 = add i64 %2178, %2147
  %2180 = add i64 %2866, 53
  store i64 %2180, i64* %PC, align 8
  %2181 = inttoptr i64 %2179 to double*
  %2182 = load double, double* %2181, align 8
  store double %2182, double* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %2183 = add i64 %2172, -24
  %2184 = add i64 %2866, 57
  store i64 %2184, i64* %PC, align 8
  %2185 = inttoptr i64 %2183 to i64*
  %2186 = load i64, i64* %2185, align 8
  store i64 %2186, i64* %RAX, align 8, !tbaa !2428
  %2187 = add i64 %2172, -40
  %2188 = add i64 %2866, 61
  store i64 %2188, i64* %PC, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = sext i32 %2190 to i64
  %2192 = shl nsw i64 %2191, 13
  store i64 %2192, i64* %RCX, align 8, !tbaa !2428
  %2193 = lshr i64 %2191, 50
  %2194 = and i64 %2193, 1
  %2195 = add i64 %2192, %2186
  store i64 %2195, i64* %RAX, align 8, !tbaa !2428
  %2196 = icmp ult i64 %2195, %2186
  %2197 = icmp ult i64 %2195, %2192
  %2198 = or i1 %2196, %2197
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %47, align 1, !tbaa !2432
  %2200 = trunc i64 %2195 to i32
  %2201 = and i32 %2200, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201) #8
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %48, align 1, !tbaa !2446
  %2206 = xor i64 %2186, %2195
  %2207 = lshr i64 %2206, 4
  %2208 = trunc i64 %2207 to i8
  %2209 = and i8 %2208, 1
  store i8 %2209, i8* %49, align 1, !tbaa !2450
  %2210 = icmp eq i64 %2195, 0
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %50, align 1, !tbaa !2447
  %2212 = lshr i64 %2195, 63
  %2213 = trunc i64 %2212 to i8
  store i8 %2213, i8* %51, align 1, !tbaa !2448
  %2214 = lshr i64 %2186, 63
  %2215 = xor i64 %2212, %2214
  %2216 = xor i64 %2212, %2194
  %2217 = add nuw nsw i64 %2215, %2216
  %2218 = icmp eq i64 %2217, 2
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %52, align 1, !tbaa !2449
  %2220 = add i64 %2866, 72
  store i64 %2220, i64* %PC, align 8
  %2221 = load i32, i32* %2175, align 4
  %2222 = sext i32 %2221 to i64
  store i64 %2222, i64* %RCX, align 8, !tbaa !2428
  %2223 = shl nsw i64 %2222, 3
  %2224 = add i64 %2223, %2195
  %2225 = add i64 %2866, 77
  store i64 %2225, i64* %PC, align 8
  %2226 = inttoptr i64 %2224 to double*
  %2227 = load double, double* %2226, align 8
  %2228 = fmul double %2182, %2227
  store double %2228, double* %56, align 1, !tbaa !2452
  store i64 0, i64* %57, align 1, !tbaa !2452
  %2229 = add i64 %2172, -32
  %2230 = add i64 %2866, 81
  store i64 %2230, i64* %PC, align 8
  %2231 = inttoptr i64 %2229 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %RAX, align 8, !tbaa !2428
  %2233 = load i64, i64* %RBP, align 8
  %2234 = add i64 %2233, -40
  %2235 = add i64 %2866, 84
  store i64 %2235, i64* %PC, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = add i32 %2237, -1
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RDX, align 8, !tbaa !2428
  %2240 = sext i32 %2238 to i64
  %2241 = shl nsw i64 %2240, 13
  store i64 %2241, i64* %RCX, align 8, !tbaa !2428
  %2242 = lshr i64 %2240, 50
  %2243 = and i64 %2242, 1
  %2244 = add i64 %2241, %2232
  store i64 %2244, i64* %RAX, align 8, !tbaa !2428
  %2245 = icmp ult i64 %2244, %2232
  %2246 = icmp ult i64 %2244, %2241
  %2247 = or i1 %2245, %2246
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %47, align 1, !tbaa !2432
  %2249 = trunc i64 %2244 to i32
  %2250 = and i32 %2249, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250) #8
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %48, align 1, !tbaa !2446
  %2255 = xor i64 %2232, %2244
  %2256 = lshr i64 %2255, 4
  %2257 = trunc i64 %2256 to i8
  %2258 = and i8 %2257, 1
  store i8 %2258, i8* %49, align 1, !tbaa !2450
  %2259 = icmp eq i64 %2244, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %50, align 1, !tbaa !2447
  %2261 = lshr i64 %2244, 63
  %2262 = trunc i64 %2261 to i8
  store i8 %2262, i8* %51, align 1, !tbaa !2448
  %2263 = lshr i64 %2232, 63
  %2264 = xor i64 %2261, %2263
  %2265 = xor i64 %2261, %2243
  %2266 = add nuw nsw i64 %2264, %2265
  %2267 = icmp eq i64 %2266, 2
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %52, align 1, !tbaa !2449
  %2269 = load i64, i64* %RBP, align 8
  %2270 = add i64 %2269, -44
  %2271 = add i64 %2866, 101
  store i64 %2271, i64* %PC, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  %2274 = sext i32 %2273 to i64
  store i64 %2274, i64* %RCX, align 8, !tbaa !2428
  %2275 = shl nsw i64 %2274, 3
  %2276 = add i64 %2275, %2244
  %2277 = add i64 %2866, 106
  store i64 %2277, i64* %PC, align 8
  %2278 = load double, double* %56, align 1
  %2279 = inttoptr i64 %2276 to double*
  %2280 = load double, double* %2279, align 8
  %2281 = fdiv double %2278, %2280
  store double %2281, double* %56, align 1, !tbaa !2452
  %2282 = load double, double* %53, align 1
  %2283 = fsub double %2282, %2281
  store double %2283, double* %53, align 1, !tbaa !2452
  %2284 = add i64 %2269, -16
  %2285 = add i64 %2866, 114
  store i64 %2285, i64* %PC, align 8
  %2286 = inttoptr i64 %2284 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RAX, align 8, !tbaa !2428
  %2288 = add i64 %2269, -40
  %2289 = add i64 %2866, 118
  store i64 %2289, i64* %PC, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = sext i32 %2291 to i64
  %2293 = shl nsw i64 %2292, 13
  store i64 %2293, i64* %RCX, align 8, !tbaa !2428
  %2294 = lshr i64 %2292, 50
  %2295 = and i64 %2294, 1
  %2296 = add i64 %2293, %2287
  store i64 %2296, i64* %RAX, align 8, !tbaa !2428
  %2297 = icmp ult i64 %2296, %2287
  %2298 = icmp ult i64 %2296, %2293
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %47, align 1, !tbaa !2432
  %2301 = trunc i64 %2296 to i32
  %2302 = and i32 %2301, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302) #8
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %48, align 1, !tbaa !2446
  %2307 = xor i64 %2287, %2296
  %2308 = lshr i64 %2307, 4
  %2309 = trunc i64 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %49, align 1, !tbaa !2450
  %2311 = icmp eq i64 %2296, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %50, align 1, !tbaa !2447
  %2313 = lshr i64 %2296, 63
  %2314 = trunc i64 %2313 to i8
  store i8 %2314, i8* %51, align 1, !tbaa !2448
  %2315 = lshr i64 %2287, 63
  %2316 = xor i64 %2313, %2315
  %2317 = xor i64 %2313, %2295
  %2318 = add nuw nsw i64 %2316, %2317
  %2319 = icmp eq i64 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %52, align 1, !tbaa !2449
  %2321 = add i64 %2866, 129
  store i64 %2321, i64* %PC, align 8
  %2322 = load i32, i32* %2272, align 4
  %2323 = sext i32 %2322 to i64
  store i64 %2323, i64* %RCX, align 8, !tbaa !2428
  %2324 = shl nsw i64 %2323, 3
  %2325 = add i64 %2324, %2296
  %2326 = add i64 %2866, 134
  store i64 %2326, i64* %PC, align 8
  %2327 = inttoptr i64 %2325 to double*
  store double %2283, double* %2327, align 8
  %2328 = load i64, i64* %RBP, align 8
  %2329 = add i64 %2328, -32
  %2330 = load i64, i64* %PC, align 8
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC, align 8
  %2332 = inttoptr i64 %2329 to i64*
  %2333 = load i64, i64* %2332, align 8
  store i64 %2333, i64* %RAX, align 8, !tbaa !2428
  %2334 = add i64 %2328, -40
  %2335 = add i64 %2330, 8
  store i64 %2335, i64* %PC, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = sext i32 %2337 to i64
  %2339 = shl nsw i64 %2338, 13
  store i64 %2339, i64* %RCX, align 8, !tbaa !2428
  %2340 = lshr i64 %2338, 50
  %2341 = and i64 %2340, 1
  %2342 = add i64 %2339, %2333
  store i64 %2342, i64* %RAX, align 8, !tbaa !2428
  %2343 = icmp ult i64 %2342, %2333
  %2344 = icmp ult i64 %2342, %2339
  %2345 = or i1 %2343, %2344
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %47, align 1, !tbaa !2432
  %2347 = trunc i64 %2342 to i32
  %2348 = and i32 %2347, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348) #8
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %48, align 1, !tbaa !2446
  %2353 = xor i64 %2333, %2342
  %2354 = lshr i64 %2353, 4
  %2355 = trunc i64 %2354 to i8
  %2356 = and i8 %2355, 1
  store i8 %2356, i8* %49, align 1, !tbaa !2450
  %2357 = icmp eq i64 %2342, 0
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %50, align 1, !tbaa !2447
  %2359 = lshr i64 %2342, 63
  %2360 = trunc i64 %2359 to i8
  store i8 %2360, i8* %51, align 1, !tbaa !2448
  %2361 = lshr i64 %2333, 63
  %2362 = xor i64 %2359, %2361
  %2363 = xor i64 %2359, %2341
  %2364 = add nuw nsw i64 %2362, %2363
  %2365 = icmp eq i64 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %52, align 1, !tbaa !2449
  %2367 = add i64 %2328, -44
  %2368 = add i64 %2330, 19
  store i64 %2368, i64* %PC, align 8
  %2369 = inttoptr i64 %2367 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = sext i32 %2370 to i64
  store i64 %2371, i64* %RCX, align 8, !tbaa !2428
  %2372 = shl nsw i64 %2371, 3
  %2373 = add i64 %2372, %2342
  %2374 = add i64 %2330, 24
  store i64 %2374, i64* %PC, align 8
  %2375 = inttoptr i64 %2373 to i64*
  %2376 = load i64, i64* %2375, align 8
  store i64 %2376, i64* %2136, align 1, !tbaa !2452
  store double 0.000000e+00, double* %55, align 1, !tbaa !2452
  %2377 = add i64 %2328, -24
  %2378 = add i64 %2330, 28
  store i64 %2378, i64* %PC, align 8
  %2379 = inttoptr i64 %2377 to i64*
  %2380 = load i64, i64* %2379, align 8
  store i64 %2380, i64* %RAX, align 8, !tbaa !2428
  %2381 = add i64 %2330, 32
  store i64 %2381, i64* %PC, align 8
  %2382 = load i32, i32* %2336, align 4
  %2383 = sext i32 %2382 to i64
  %2384 = shl nsw i64 %2383, 13
  store i64 %2384, i64* %RCX, align 8, !tbaa !2428
  %2385 = lshr i64 %2383, 50
  %2386 = and i64 %2385, 1
  %2387 = add i64 %2384, %2380
  store i64 %2387, i64* %RAX, align 8, !tbaa !2428
  %2388 = icmp ult i64 %2387, %2380
  %2389 = icmp ult i64 %2387, %2384
  %2390 = or i1 %2388, %2389
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %47, align 1, !tbaa !2432
  %2392 = trunc i64 %2387 to i32
  %2393 = and i32 %2392, 255
  %2394 = tail call i32 @llvm.ctpop.i32(i32 %2393) #8
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  store i8 %2397, i8* %48, align 1, !tbaa !2446
  %2398 = xor i64 %2380, %2387
  %2399 = lshr i64 %2398, 4
  %2400 = trunc i64 %2399 to i8
  %2401 = and i8 %2400, 1
  store i8 %2401, i8* %49, align 1, !tbaa !2450
  %2402 = icmp eq i64 %2387, 0
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %50, align 1, !tbaa !2447
  %2404 = lshr i64 %2387, 63
  %2405 = trunc i64 %2404 to i8
  store i8 %2405, i8* %51, align 1, !tbaa !2448
  %2406 = lshr i64 %2380, 63
  %2407 = xor i64 %2404, %2406
  %2408 = xor i64 %2404, %2386
  %2409 = add nuw nsw i64 %2407, %2408
  %2410 = icmp eq i64 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %52, align 1, !tbaa !2449
  %2412 = load i64, i64* %RBP, align 8
  %2413 = add i64 %2412, -44
  %2414 = add i64 %2330, 43
  store i64 %2414, i64* %PC, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = sext i32 %2416 to i64
  store i64 %2417, i64* %RCX, align 8, !tbaa !2428
  %2418 = shl nsw i64 %2417, 3
  %2419 = add i64 %2418, %2387
  %2420 = add i64 %2330, 48
  store i64 %2420, i64* %PC, align 8
  %2421 = inttoptr i64 %2419 to double*
  %2422 = load double, double* %2421, align 8
  store double %2422, double* %56, align 1, !tbaa !2452
  store double 0.000000e+00, double* %58, align 1, !tbaa !2452
  %2423 = add i64 %2412, -24
  %2424 = add i64 %2330, 52
  store i64 %2424, i64* %PC, align 8
  %2425 = inttoptr i64 %2423 to i64*
  %2426 = load i64, i64* %2425, align 8
  store i64 %2426, i64* %RAX, align 8, !tbaa !2428
  %2427 = add i64 %2412, -40
  %2428 = add i64 %2330, 56
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = sext i32 %2430 to i64
  %2432 = shl nsw i64 %2431, 13
  store i64 %2432, i64* %RCX, align 8, !tbaa !2428
  %2433 = lshr i64 %2431, 50
  %2434 = and i64 %2433, 1
  %2435 = add i64 %2432, %2426
  store i64 %2435, i64* %RAX, align 8, !tbaa !2428
  %2436 = icmp ult i64 %2435, %2426
  %2437 = icmp ult i64 %2435, %2432
  %2438 = or i1 %2436, %2437
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %47, align 1, !tbaa !2432
  %2440 = trunc i64 %2435 to i32
  %2441 = and i32 %2440, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441) #8
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %48, align 1, !tbaa !2446
  %2446 = xor i64 %2426, %2435
  %2447 = lshr i64 %2446, 4
  %2448 = trunc i64 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %49, align 1, !tbaa !2450
  %2450 = icmp eq i64 %2435, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %50, align 1, !tbaa !2447
  %2452 = lshr i64 %2435, 63
  %2453 = trunc i64 %2452 to i8
  store i8 %2453, i8* %51, align 1, !tbaa !2448
  %2454 = lshr i64 %2426, 63
  %2455 = xor i64 %2452, %2454
  %2456 = xor i64 %2452, %2434
  %2457 = add nuw nsw i64 %2455, %2456
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %52, align 1, !tbaa !2449
  %2460 = add i64 %2330, 67
  store i64 %2460, i64* %PC, align 8
  %2461 = load i32, i32* %2415, align 4
  %2462 = sext i32 %2461 to i64
  store i64 %2462, i64* %RCX, align 8, !tbaa !2428
  %2463 = shl nsw i64 %2462, 3
  %2464 = add i64 %2463, %2435
  %2465 = add i64 %2330, 72
  store i64 %2465, i64* %PC, align 8
  %2466 = inttoptr i64 %2464 to double*
  %2467 = load double, double* %2466, align 8
  %2468 = fmul double %2422, %2467
  store double %2468, double* %56, align 1, !tbaa !2452
  store i64 0, i64* %57, align 1, !tbaa !2452
  %2469 = add i64 %2412, -32
  %2470 = add i64 %2330, 76
  store i64 %2470, i64* %PC, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i64 %2472, i64* %RAX, align 8, !tbaa !2428
  %2473 = load i64, i64* %RBP, align 8
  %2474 = add i64 %2473, -40
  %2475 = add i64 %2330, 79
  store i64 %2475, i64* %PC, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = add i32 %2477, -1
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RDX, align 8, !tbaa !2428
  %2480 = sext i32 %2478 to i64
  %2481 = shl nsw i64 %2480, 13
  store i64 %2481, i64* %RCX, align 8, !tbaa !2428
  %2482 = lshr i64 %2480, 50
  %2483 = and i64 %2482, 1
  %2484 = add i64 %2481, %2472
  store i64 %2484, i64* %RAX, align 8, !tbaa !2428
  %2485 = icmp ult i64 %2484, %2472
  %2486 = icmp ult i64 %2484, %2481
  %2487 = or i1 %2485, %2486
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %47, align 1, !tbaa !2432
  %2489 = trunc i64 %2484 to i32
  %2490 = and i32 %2489, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490) #8
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %48, align 1, !tbaa !2446
  %2495 = xor i64 %2472, %2484
  %2496 = lshr i64 %2495, 4
  %2497 = trunc i64 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %49, align 1, !tbaa !2450
  %2499 = icmp eq i64 %2484, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %50, align 1, !tbaa !2447
  %2501 = lshr i64 %2484, 63
  %2502 = trunc i64 %2501 to i8
  store i8 %2502, i8* %51, align 1, !tbaa !2448
  %2503 = lshr i64 %2472, 63
  %2504 = xor i64 %2501, %2503
  %2505 = xor i64 %2501, %2483
  %2506 = add nuw nsw i64 %2504, %2505
  %2507 = icmp eq i64 %2506, 2
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %52, align 1, !tbaa !2449
  %2509 = load i64, i64* %RBP, align 8
  %2510 = add i64 %2509, -44
  %2511 = add i64 %2330, 96
  store i64 %2511, i64* %PC, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = sext i32 %2513 to i64
  store i64 %2514, i64* %RCX, align 8, !tbaa !2428
  %2515 = shl nsw i64 %2514, 3
  %2516 = add i64 %2515, %2484
  %2517 = add i64 %2330, 101
  store i64 %2517, i64* %PC, align 8
  %2518 = load double, double* %56, align 1
  %2519 = inttoptr i64 %2516 to double*
  %2520 = load double, double* %2519, align 8
  %2521 = fdiv double %2518, %2520
  store double %2521, double* %56, align 1, !tbaa !2452
  %2522 = load double, double* %53, align 1
  %2523 = fsub double %2522, %2521
  store double %2523, double* %53, align 1, !tbaa !2452
  %2524 = add i64 %2509, -32
  %2525 = add i64 %2330, 109
  store i64 %2525, i64* %PC, align 8
  %2526 = inttoptr i64 %2524 to i64*
  %2527 = load i64, i64* %2526, align 8
  store i64 %2527, i64* %RAX, align 8, !tbaa !2428
  %2528 = add i64 %2509, -40
  %2529 = add i64 %2330, 113
  store i64 %2529, i64* %PC, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = sext i32 %2531 to i64
  %2533 = shl nsw i64 %2532, 13
  store i64 %2533, i64* %RCX, align 8, !tbaa !2428
  %2534 = lshr i64 %2532, 50
  %2535 = and i64 %2534, 1
  %2536 = add i64 %2533, %2527
  store i64 %2536, i64* %RAX, align 8, !tbaa !2428
  %2537 = icmp ult i64 %2536, %2527
  %2538 = icmp ult i64 %2536, %2533
  %2539 = or i1 %2537, %2538
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %47, align 1, !tbaa !2432
  %2541 = trunc i64 %2536 to i32
  %2542 = and i32 %2541, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542) #8
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %48, align 1, !tbaa !2446
  %2547 = xor i64 %2527, %2536
  %2548 = lshr i64 %2547, 4
  %2549 = trunc i64 %2548 to i8
  %2550 = and i8 %2549, 1
  store i8 %2550, i8* %49, align 1, !tbaa !2450
  %2551 = icmp eq i64 %2536, 0
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %50, align 1, !tbaa !2447
  %2553 = lshr i64 %2536, 63
  %2554 = trunc i64 %2553 to i8
  store i8 %2554, i8* %51, align 1, !tbaa !2448
  %2555 = lshr i64 %2527, 63
  %2556 = xor i64 %2553, %2555
  %2557 = xor i64 %2553, %2535
  %2558 = add nuw nsw i64 %2556, %2557
  %2559 = icmp eq i64 %2558, 2
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %52, align 1, !tbaa !2449
  %2561 = add i64 %2330, 124
  store i64 %2561, i64* %PC, align 8
  %2562 = load i32, i32* %2512, align 4
  %2563 = sext i32 %2562 to i64
  store i64 %2563, i64* %RCX, align 8, !tbaa !2428
  %2564 = shl nsw i64 %2563, 3
  %2565 = add i64 %2564, %2536
  %2566 = add i64 %2330, 129
  store i64 %2566, i64* %PC, align 8
  %2567 = inttoptr i64 %2565 to double*
  store double %2523, double* %2567, align 8
  %2568 = load i64, i64* %RBP, align 8
  %2569 = add i64 %2568, -44
  %2570 = load i64, i64* %PC, align 8
  %2571 = add i64 %2570, 3
  store i64 %2571, i64* %PC, align 8
  %2572 = inttoptr i64 %2569 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = add i32 %2573, 1
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RAX, align 8, !tbaa !2428
  %2576 = icmp eq i32 %2573, -1
  %2577 = icmp eq i32 %2574, 0
  %2578 = or i1 %2576, %2577
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %47, align 1, !tbaa !2432
  %2580 = and i32 %2574, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580) #8
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %48, align 1, !tbaa !2446
  %2585 = xor i32 %2573, %2574
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %49, align 1, !tbaa !2450
  %2589 = zext i1 %2577 to i8
  store i8 %2589, i8* %50, align 1, !tbaa !2447
  %2590 = lshr i32 %2574, 31
  %2591 = trunc i32 %2590 to i8
  store i8 %2591, i8* %51, align 1, !tbaa !2448
  %2592 = lshr i32 %2573, 31
  %2593 = xor i32 %2590, %2592
  %2594 = add nuw nsw i32 %2593, %2590
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %52, align 1, !tbaa !2449
  %2597 = add i64 %2570, 9
  store i64 %2597, i64* %PC, align 8
  store i32 %2574, i32* %2572, align 4
  %2598 = load i64, i64* %PC, align 8
  %2599 = add i64 %2598, -284
  store i64 %2599, i64* %PC, align 8, !tbaa !2428
  br label %block_400e8c

block_400e5f:                                     ; preds = %block_400d99
  %2600 = add i64 %2638, -40
  %2601 = add i64 %2676, 8
  store i64 %2601, i64* %PC, align 8
  %2602 = inttoptr i64 %2600 to i32*
  %2603 = load i32, i32* %2602, align 4
  %2604 = add i32 %2603, 1
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RAX, align 8, !tbaa !2428
  %2606 = icmp eq i32 %2603, -1
  %2607 = icmp eq i32 %2604, 0
  %2608 = or i1 %2606, %2607
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %47, align 1, !tbaa !2432
  %2610 = and i32 %2604, 255
  %2611 = tail call i32 @llvm.ctpop.i32(i32 %2610) #8
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = xor i8 %2613, 1
  store i8 %2614, i8* %48, align 1, !tbaa !2446
  %2615 = xor i32 %2603, %2604
  %2616 = lshr i32 %2615, 4
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %49, align 1, !tbaa !2450
  %2619 = zext i1 %2607 to i8
  store i8 %2619, i8* %50, align 1, !tbaa !2447
  %2620 = lshr i32 %2604, 31
  %2621 = trunc i32 %2620 to i8
  store i8 %2621, i8* %51, align 1, !tbaa !2448
  %2622 = lshr i32 %2603, 31
  %2623 = xor i32 %2620, %2622
  %2624 = add nuw nsw i32 %2623, %2620
  %2625 = icmp eq i32 %2624, 2
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %52, align 1, !tbaa !2449
  %2627 = add i64 %2676, 14
  store i64 %2627, i64* %PC, align 8
  store i32 %2604, i32* %2602, align 4
  %2628 = load i64, i64* %PC, align 8
  %2629 = add i64 %2628, -231
  store i64 %2629, i64* %PC, align 8, !tbaa !2428
  br label %block_400d86

block_400d92:                                     ; preds = %block_400d86
  %2630 = add i64 %2909, -44
  %2631 = add i64 %2945, 7
  store i64 %2631, i64* %PC, align 8
  %2632 = inttoptr i64 %2630 to i32*
  store i32 0, i32* %2632, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400d99

block_400e72:                                     ; preds = %block_400d86
  %2633 = add i64 %2945, 7
  store i64 %2633, i64* %PC, align 8
  store i32 1, i32* %2912, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400e79

block_400bb9:                                     ; preds = %block_400bad
  %2634 = add i64 %2678, -40
  %2635 = add i64 %2714, 7
  store i64 %2635, i64* %PC, align 8
  %2636 = inttoptr i64 %2634 to i32*
  store i32 0, i32* %2636, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400bc0

block_400d99:                                     ; preds = %block_400d92, %block_400daa
  %2637 = phi i64 [ %.pre8, %block_400d92 ], [ %661, %block_400daa ]
  %2638 = load i64, i64* %RBP, align 8
  %2639 = add i64 %2638, -44
  %2640 = add i64 %2637, 3
  store i64 %2640, i64* %PC, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RAX, align 8, !tbaa !2428
  %2644 = add i64 %2638, -8
  %2645 = add i64 %2637, 6
  store i64 %2645, i64* %PC, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = add i32 %2647, -2
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RCX, align 8, !tbaa !2428
  %2650 = lshr i32 %2648, 31
  %2651 = sub i32 %2642, %2648
  %2652 = icmp ult i32 %2642, %2648
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %47, align 1, !tbaa !2432
  %2654 = and i32 %2651, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654) #8
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %48, align 1, !tbaa !2446
  %2659 = xor i32 %2648, %2642
  %2660 = xor i32 %2659, %2651
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %49, align 1, !tbaa !2450
  %2664 = icmp eq i32 %2651, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %50, align 1, !tbaa !2447
  %2666 = lshr i32 %2651, 31
  %2667 = trunc i32 %2666 to i8
  store i8 %2667, i8* %51, align 1, !tbaa !2448
  %2668 = lshr i32 %2642, 31
  %2669 = xor i32 %2650, %2668
  %2670 = xor i32 %2666, %2668
  %2671 = add nuw nsw i32 %2670, %2669
  %2672 = icmp eq i32 %2671, 2
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %52, align 1, !tbaa !2449
  %2674 = icmp ne i8 %2667, 0
  %2675 = xor i1 %2674, %2672
  %.v18 = select i1 %2675, i64 17, i64 198
  %2676 = add i64 %2637, %.v18
  store i64 %2676, i64* %PC, align 8, !tbaa !2428
  br i1 %2675, label %block_400daa, label %block_400e5f

block_400bad:                                     ; preds = %block_401128, %block_400b90
  %2677 = phi i64 [ %2090, %block_401128 ], [ %.pre, %block_400b90 ]
  %2678 = load i64, i64* %RBP, align 8
  %2679 = add i64 %2678, -36
  %2680 = add i64 %2677, 3
  store i64 %2680, i64* %PC, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX, align 8, !tbaa !2428
  %2684 = add i64 %2678, -4
  %2685 = add i64 %2677, 6
  store i64 %2685, i64* %PC, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = sub i32 %2682, %2687
  %2689 = icmp ult i32 %2682, %2687
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %47, align 1, !tbaa !2432
  %2691 = and i32 %2688, 255
  %2692 = tail call i32 @llvm.ctpop.i32(i32 %2691) #8
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  store i8 %2695, i8* %48, align 1, !tbaa !2446
  %2696 = xor i32 %2687, %2682
  %2697 = xor i32 %2696, %2688
  %2698 = lshr i32 %2697, 4
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  store i8 %2700, i8* %49, align 1, !tbaa !2450
  %2701 = icmp eq i32 %2688, 0
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %50, align 1, !tbaa !2447
  %2703 = lshr i32 %2688, 31
  %2704 = trunc i32 %2703 to i8
  store i8 %2704, i8* %51, align 1, !tbaa !2448
  %2705 = lshr i32 %2682, 31
  %2706 = lshr i32 %2687, 31
  %2707 = xor i32 %2706, %2705
  %2708 = xor i32 %2703, %2705
  %2709 = add nuw nsw i32 %2708, %2707
  %2710 = icmp eq i32 %2709, 2
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %52, align 1, !tbaa !2449
  %2712 = icmp ne i8 %2704, 0
  %2713 = xor i1 %2712, %2710
  %.v = select i1 %2713, i64 12, i64 1422
  %2714 = add i64 %2677, %.v
  store i64 %2714, i64* %PC, align 8, !tbaa !2428
  br i1 %2713, label %block_400bb9, label %block_40113b

block_400fc7:                                     ; preds = %block_400e79, %block_400fd3
  %2715 = phi i64 [ %1247, %block_400fd3 ], [ %.pre11, %block_400e79 ]
  %2716 = load i64, i64* %RBP, align 8
  %2717 = add i64 %2716, -44
  %2718 = add i64 %2715, 3
  store i64 %2718, i64* %PC, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %RAX, align 8, !tbaa !2428
  %2722 = add i64 %2716, -8
  %2723 = add i64 %2715, 6
  store i64 %2723, i64* %PC, align 8
  %2724 = inttoptr i64 %2722 to i32*
  %2725 = load i32, i32* %2724, align 4
  %2726 = sub i32 %2720, %2725
  %2727 = icmp ult i32 %2720, %2725
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %47, align 1, !tbaa !2432
  %2729 = and i32 %2726, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729) #8
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %48, align 1, !tbaa !2446
  %2734 = xor i32 %2725, %2720
  %2735 = xor i32 %2734, %2726
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %49, align 1, !tbaa !2450
  %2739 = icmp eq i32 %2726, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %50, align 1, !tbaa !2447
  %2741 = lshr i32 %2726, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %51, align 1, !tbaa !2448
  %2743 = lshr i32 %2720, 31
  %2744 = lshr i32 %2725, 31
  %2745 = xor i32 %2744, %2743
  %2746 = xor i32 %2741, %2743
  %2747 = add nuw nsw i32 %2746, %2745
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %52, align 1, !tbaa !2449
  %2750 = icmp ne i8 %2742, 0
  %2751 = xor i1 %2750, %2748
  %.v21 = select i1 %2751, i64 12, i64 113
  %2752 = add i64 %2715, %.v21
  store i64 %2752, i64* %PC, align 8, !tbaa !2428
  br i1 %2751, label %block_400fd3, label %block_401038

block_400d0e:                                     ; preds = %block_400d07, %block_400d1a
  %2753 = phi i64 [ %.pre6, %block_400d07 ], [ %1487, %block_400d1a ]
  %2754 = load i64, i64* %RBP, align 8
  %2755 = add i64 %2754, -40
  %2756 = add i64 %2753, 3
  store i64 %2756, i64* %PC, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RAX, align 8, !tbaa !2428
  %2760 = add i64 %2754, -8
  %2761 = add i64 %2753, 6
  store i64 %2761, i64* %PC, align 8
  %2762 = inttoptr i64 %2760 to i32*
  %2763 = load i32, i32* %2762, align 4
  %2764 = sub i32 %2758, %2763
  %2765 = icmp ult i32 %2758, %2763
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %47, align 1, !tbaa !2432
  %2767 = and i32 %2764, 255
  %2768 = tail call i32 @llvm.ctpop.i32(i32 %2767) #8
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  store i8 %2771, i8* %48, align 1, !tbaa !2446
  %2772 = xor i32 %2763, %2758
  %2773 = xor i32 %2772, %2764
  %2774 = lshr i32 %2773, 4
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  store i8 %2776, i8* %49, align 1, !tbaa !2450
  %2777 = icmp eq i32 %2764, 0
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %50, align 1, !tbaa !2447
  %2779 = lshr i32 %2764, 31
  %2780 = trunc i32 %2779 to i8
  store i8 %2780, i8* %51, align 1, !tbaa !2448
  %2781 = lshr i32 %2758, 31
  %2782 = lshr i32 %2763, 31
  %2783 = xor i32 %2782, %2781
  %2784 = xor i32 %2779, %2781
  %2785 = add nuw nsw i32 %2784, %2783
  %2786 = icmp eq i32 %2785, 2
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %52, align 1, !tbaa !2449
  %2788 = icmp ne i8 %2780, 0
  %2789 = xor i1 %2788, %2786
  %.v16 = select i1 %2789, i64 12, i64 113
  %2790 = add i64 %2753, %.v16
  store i64 %2790, i64* %PC, align 8, !tbaa !2428
  br i1 %2789, label %block_400d1a, label %block_400d7f

block_400bd3:                                     ; preds = %block_400bcc, %block_400bdf
  %2791 = phi i64 [ %.pre5, %block_400bcc ], [ %2060, %block_400bdf ]
  %2792 = load i64, i64* %RBP, align 8
  %2793 = add i64 %2792, -44
  %2794 = add i64 %2791, 3
  store i64 %2794, i64* %PC, align 8
  %2795 = inttoptr i64 %2793 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RAX, align 8, !tbaa !2428
  %2798 = add i64 %2792, -8
  %2799 = add i64 %2791, 6
  store i64 %2799, i64* %PC, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = sub i32 %2796, %2801
  %2803 = icmp ult i32 %2796, %2801
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %47, align 1, !tbaa !2432
  %2805 = and i32 %2802, 255
  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805) #8
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = xor i8 %2808, 1
  store i8 %2809, i8* %48, align 1, !tbaa !2446
  %2810 = xor i32 %2801, %2796
  %2811 = xor i32 %2810, %2802
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %49, align 1, !tbaa !2450
  %2815 = icmp eq i32 %2802, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %50, align 1, !tbaa !2447
  %2817 = lshr i32 %2802, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %51, align 1, !tbaa !2448
  %2819 = lshr i32 %2796, 31
  %2820 = lshr i32 %2801, 31
  %2821 = xor i32 %2820, %2819
  %2822 = xor i32 %2817, %2819
  %2823 = add nuw nsw i32 %2822, %2821
  %2824 = icmp eq i32 %2823, 2
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %52, align 1, !tbaa !2449
  %2826 = icmp ne i8 %2818, 0
  %2827 = xor i1 %2826, %2824
  %.v15 = select i1 %2827, i64 12, i64 289
  %2828 = add i64 %2791, %.v15
  store i64 %2828, i64* %PC, align 8, !tbaa !2428
  br i1 %2827, label %block_400bdf, label %block_400cf4

block_400e8c:                                     ; preds = %block_400e79, %block_400e98
  %2829 = phi i64 [ %2599, %block_400e98 ], [ %.pre11, %block_400e79 ]
  %2830 = load i64, i64* %RBP, align 8
  %2831 = add i64 %2830, -44
  %2832 = add i64 %2829, 3
  store i64 %2832, i64* %PC, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RAX, align 8, !tbaa !2428
  %2836 = add i64 %2830, -8
  %2837 = add i64 %2829, 6
  store i64 %2837, i64* %PC, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = sub i32 %2834, %2839
  %2841 = icmp ult i32 %2834, %2839
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %47, align 1, !tbaa !2432
  %2843 = and i32 %2840, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843) #8
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %48, align 1, !tbaa !2446
  %2848 = xor i32 %2839, %2834
  %2849 = xor i32 %2848, %2840
  %2850 = lshr i32 %2849, 4
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  store i8 %2852, i8* %49, align 1, !tbaa !2450
  %2853 = icmp eq i32 %2840, 0
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %50, align 1, !tbaa !2447
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  store i8 %2856, i8* %51, align 1, !tbaa !2448
  %2857 = lshr i32 %2834, 31
  %2858 = lshr i32 %2839, 31
  %2859 = xor i32 %2858, %2857
  %2860 = xor i32 %2855, %2857
  %2861 = add nuw nsw i32 %2860, %2859
  %2862 = icmp eq i32 %2861, 2
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %52, align 1, !tbaa !2449
  %2864 = icmp ne i8 %2856, 0
  %2865 = xor i1 %2864, %2862
  %.v20 = select i1 %2865, i64 12, i64 289
  %2866 = add i64 %2829, %.v20
  store i64 %2866, i64* %PC, align 8, !tbaa !2428
  br i1 %2865, label %block_400e98, label %block_400fad

block_400d07:                                     ; preds = %block_400bc0
  %2867 = add i64 %3057, 7
  store i64 %2867, i64* %PC, align 8
  store i32 0, i32* %3024, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400d0e

block_40103f:                                     ; preds = %block_401115, %block_401038
  %2868 = phi i64 [ %2978, %block_401115 ], [ %.pre12, %block_401038 ]
  %2869 = load i64, i64* %RBP, align 8
  %2870 = add i64 %2869, -40
  %2871 = add i64 %2868, 3
  store i64 %2871, i64* %PC, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RAX, align 8, !tbaa !2428
  %2875 = add i64 %2869, -8
  %2876 = add i64 %2868, 6
  store i64 %2876, i64* %PC, align 8
  %2877 = inttoptr i64 %2875 to i32*
  %2878 = load i32, i32* %2877, align 4
  %2879 = add i32 %2878, -2
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RCX, align 8, !tbaa !2428
  %2881 = lshr i32 %2879, 31
  %2882 = sub i32 %2873, %2879
  %2883 = icmp ult i32 %2873, %2879
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %47, align 1, !tbaa !2432
  %2885 = and i32 %2882, 255
  %2886 = tail call i32 @llvm.ctpop.i32(i32 %2885) #8
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  store i8 %2889, i8* %48, align 1, !tbaa !2446
  %2890 = xor i32 %2879, %2873
  %2891 = xor i32 %2890, %2882
  %2892 = lshr i32 %2891, 4
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  store i8 %2894, i8* %49, align 1, !tbaa !2450
  %2895 = icmp eq i32 %2882, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %50, align 1, !tbaa !2447
  %2897 = lshr i32 %2882, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %51, align 1, !tbaa !2448
  %2899 = lshr i32 %2873, 31
  %2900 = xor i32 %2881, %2899
  %2901 = xor i32 %2897, %2899
  %2902 = add nuw nsw i32 %2901, %2900
  %2903 = icmp eq i32 %2902, 2
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %52, align 1, !tbaa !2449
  %2905 = icmp ne i8 %2898, 0
  %2906 = xor i1 %2905, %2903
  %.v22 = select i1 %2906, i64 17, i64 233
  %2907 = add i64 %2868, %.v22
  store i64 %2907, i64* %PC, align 8, !tbaa !2428
  br i1 %2906, label %block_401050, label %block_401128

block_400d86:                                     ; preds = %block_400e5f, %block_400d7f
  %2908 = phi i64 [ %2629, %block_400e5f ], [ %.pre7, %block_400d7f ]
  %2909 = load i64, i64* %RBP, align 8
  %2910 = add i64 %2909, -40
  %2911 = add i64 %2908, 3
  store i64 %2911, i64* %PC, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RAX, align 8, !tbaa !2428
  %2915 = add i64 %2909, -8
  %2916 = add i64 %2908, 6
  store i64 %2916, i64* %PC, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = sub i32 %2913, %2918
  %2920 = icmp ult i32 %2913, %2918
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %47, align 1, !tbaa !2432
  %2922 = and i32 %2919, 255
  %2923 = tail call i32 @llvm.ctpop.i32(i32 %2922) #8
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = xor i8 %2925, 1
  store i8 %2926, i8* %48, align 1, !tbaa !2446
  %2927 = xor i32 %2918, %2913
  %2928 = xor i32 %2927, %2919
  %2929 = lshr i32 %2928, 4
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  store i8 %2931, i8* %49, align 1, !tbaa !2450
  %2932 = icmp eq i32 %2919, 0
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %50, align 1, !tbaa !2447
  %2934 = lshr i32 %2919, 31
  %2935 = trunc i32 %2934 to i8
  store i8 %2935, i8* %51, align 1, !tbaa !2448
  %2936 = lshr i32 %2913, 31
  %2937 = lshr i32 %2918, 31
  %2938 = xor i32 %2937, %2936
  %2939 = xor i32 %2934, %2936
  %2940 = add nuw nsw i32 %2939, %2938
  %2941 = icmp eq i32 %2940, 2
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %52, align 1, !tbaa !2449
  %2943 = icmp ne i8 %2935, 0
  %2944 = xor i1 %2943, %2941
  %.v17 = select i1 %2944, i64 12, i64 236
  %2945 = add i64 %2908, %.v17
  store i64 %2945, i64* %PC, align 8, !tbaa !2428
  br i1 %2944, label %block_400d92, label %block_400e72

block_400bcc:                                     ; preds = %block_400bc0
  %2946 = add i64 %3021, -44
  %2947 = add i64 %3057, 7
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %2946 to i32*
  store i32 1, i32* %2948, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_400bd3

block_401115:                                     ; preds = %block_401057
  %2949 = add i64 %69, -40
  %2950 = add i64 %105, 8
  store i64 %2950, i64* %PC, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = add i32 %2952, 1
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RAX, align 8, !tbaa !2428
  %2955 = icmp eq i32 %2952, -1
  %2956 = icmp eq i32 %2953, 0
  %2957 = or i1 %2955, %2956
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %47, align 1, !tbaa !2432
  %2959 = and i32 %2953, 255
  %2960 = tail call i32 @llvm.ctpop.i32(i32 %2959) #8
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  store i8 %2963, i8* %48, align 1, !tbaa !2446
  %2964 = xor i32 %2952, %2953
  %2965 = lshr i32 %2964, 4
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  store i8 %2967, i8* %49, align 1, !tbaa !2450
  %2968 = zext i1 %2956 to i8
  store i8 %2968, i8* %50, align 1, !tbaa !2447
  %2969 = lshr i32 %2953, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %51, align 1, !tbaa !2448
  %2971 = lshr i32 %2952, 31
  %2972 = xor i32 %2969, %2971
  %2973 = add nuw nsw i32 %2972, %2969
  %2974 = icmp eq i32 %2973, 2
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %52, align 1, !tbaa !2449
  %2976 = add i64 %105, 14
  store i64 %2976, i64* %PC, align 8
  store i32 %2953, i32* %2951, align 4
  %2977 = load i64, i64* %PC, align 8
  %2978 = add i64 %2977, -228
  store i64 %2978, i64* %PC, align 8, !tbaa !2428
  br label %block_40103f

block_400e79:                                     ; preds = %block_400e72, %block_400fad
  %2979 = phi i64 [ %.pre9, %block_400e72 ], [ %172, %block_400fad ]
  %2980 = load i64, i64* %RBP, align 8
  %2981 = add i64 %2980, -40
  %2982 = add i64 %2979, 3
  store i64 %2982, i64* %PC, align 8
  %2983 = inttoptr i64 %2981 to i32*
  %2984 = load i32, i32* %2983, align 4
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RAX, align 8, !tbaa !2428
  %2986 = add i64 %2980, -8
  %2987 = add i64 %2979, 6
  store i64 %2987, i64* %PC, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = sub i32 %2984, %2989
  %2991 = icmp ult i32 %2984, %2989
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %47, align 1, !tbaa !2432
  %2993 = and i32 %2990, 255
  %2994 = tail call i32 @llvm.ctpop.i32(i32 %2993) #8
  %2995 = trunc i32 %2994 to i8
  %2996 = and i8 %2995, 1
  %2997 = xor i8 %2996, 1
  store i8 %2997, i8* %48, align 1, !tbaa !2446
  %2998 = xor i32 %2989, %2984
  %2999 = xor i32 %2998, %2990
  %3000 = lshr i32 %2999, 4
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  store i8 %3002, i8* %49, align 1, !tbaa !2450
  %3003 = icmp eq i32 %2990, 0
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %50, align 1, !tbaa !2447
  %3005 = lshr i32 %2990, 31
  %3006 = trunc i32 %3005 to i8
  store i8 %3006, i8* %51, align 1, !tbaa !2448
  %3007 = lshr i32 %2984, 31
  %3008 = lshr i32 %2989, 31
  %3009 = xor i32 %3008, %3007
  %3010 = xor i32 %3005, %3007
  %3011 = add nuw nsw i32 %3010, %3009
  %3012 = icmp eq i32 %3011, 2
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %52, align 1, !tbaa !2449
  %3014 = icmp ne i8 %3006, 0
  %3015 = xor i1 %3014, %3012
  %.v19 = select i1 %3015, i64 12, i64 327
  %3016 = add i64 %2979, %.v19
  %3017 = add i64 %2980, -44
  %3018 = add i64 %3016, 7
  store i64 %3018, i64* %PC, align 8
  %3019 = inttoptr i64 %3017 to i32*
  store i32 0, i32* %3019, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br i1 %3015, label %block_400e8c, label %block_400fc7

block_400bc0:                                     ; preds = %block_400bb9, %block_400cf4
  %3020 = phi i64 [ %.pre4, %block_400bb9 ], [ %142, %block_400cf4 ]
  %3021 = load i64, i64* %RBP, align 8
  %3022 = add i64 %3021, -40
  %3023 = add i64 %3020, 3
  store i64 %3023, i64* %PC, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RAX, align 8, !tbaa !2428
  %3027 = add i64 %3021, -8
  %3028 = add i64 %3020, 6
  store i64 %3028, i64* %PC, align 8
  %3029 = inttoptr i64 %3027 to i32*
  %3030 = load i32, i32* %3029, align 4
  %3031 = sub i32 %3025, %3030
  %3032 = icmp ult i32 %3025, %3030
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %47, align 1, !tbaa !2432
  %3034 = and i32 %3031, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034) #8
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %48, align 1, !tbaa !2446
  %3039 = xor i32 %3030, %3025
  %3040 = xor i32 %3039, %3031
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  store i8 %3043, i8* %49, align 1, !tbaa !2450
  %3044 = icmp eq i32 %3031, 0
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %50, align 1, !tbaa !2447
  %3046 = lshr i32 %3031, 31
  %3047 = trunc i32 %3046 to i8
  store i8 %3047, i8* %51, align 1, !tbaa !2448
  %3048 = lshr i32 %3025, 31
  %3049 = lshr i32 %3030, 31
  %3050 = xor i32 %3049, %3048
  %3051 = xor i32 %3046, %3048
  %3052 = add nuw nsw i32 %3051, %3050
  %3053 = icmp eq i32 %3052, 2
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %52, align 1, !tbaa !2449
  %3055 = icmp ne i8 %3047, 0
  %3056 = xor i1 %3055, %3053
  %.v14 = select i1 %3056, i64 12, i64 327
  %3057 = add i64 %3020, %.v14
  store i64 %3057, i64* %PC, align 8, !tbaa !2428
  br i1 %3056, label %block_400bcc, label %block_400d07
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
define internal fastcc %struct.Memory* @ext_6020e8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005e0_fputs(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401560___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401560___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401560___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4014f0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4014f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4014f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4014f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401564;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401564__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
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
  tail call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #8
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #8
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
  tail call void @callback_sub_401560___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4014f0___libc_csu_init()
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
!2451 = !{!2445, !2445, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
